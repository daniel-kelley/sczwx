/*
   veml6075.c

   Copyright (c) 2020 by Daniel Kelley

   Vishay VEML6075 User Space reader

*/

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <linux/i2c-dev.h>
#include <i2c/smbus.h>

enum {
    EXIT_OK,
    EXIT_ERR_OPEN,
    EXIT_ERR_RX,
    EXIT_ERR_USAGE,
};

#define VEML6075_ADDR           (0x10)
#define VEML6075_UV_CONF        (0x00)
#define VEML6075_UVA_DATA       (0x07)
#define VEML6075_DARK_DATA      (0x08)
#define VEML6075_UVB_DATA       (0x09)
#define VEML6075_UVCOMP1        (0x0a)
#define VEML6075_UVCOMP2        (0x0b)
#define VEML6075_ID             (0x0c)

#define VEML6075_TRIGGER        (1)

typedef enum veml6075_itime_e {
    VEML6075_50MS_T = 0,        /*  50ms integration time */
    VEML6075_100MS_T,           /* 100ms integration time */
    VEML6075_200MS_T,           /* 200ms integration time */
    VEML6075_400MS_T,           /* 400ms integration time */
    VEML6075_800MS_T,           /* 800ms integration time */
} veml6075_itime_t;

typedef struct {
    /* ----------------------- Configuration */
    /* I2C bus */
    char *dev;
    int addr;
    /* Sync limit */
    unsigned limit;
    /* Integration time */
    unsigned itime;
    /* Dynamic range */
    unsigned range;
    /*  ---------------------- State */
    int fd;
} i2c_t;

typedef struct {
    uint16_t val;
    bool valid;
} veml6075_val_t;

typedef struct {
    veml6075_val_t uva;
    veml6075_val_t dark;
    veml6075_val_t uvb;
    veml6075_val_t ir;
    veml6075_val_t vis;
} veml6075_data_t;

/* veml6075_itime_t to usec conversion. */
static int itime_usec[] = {
    50000,
    100000,
    200000,
    400000,
    800000
};

static int
i2c_open(i2c_t *i2c)
{
    int rc = -1;

    if (i2c != NULL && i2c->dev != NULL) {
        if ((rc = i2c->fd = open(i2c->dev,O_RDWR)) >= 0) {
            rc = ioctl(i2c->fd, I2C_SLAVE, i2c->addr);
        }
    }

    return rc;
}

static int
i2c_close(i2c_t *i2c)
{
    int rc;

    rc = close(i2c->fd);
    i2c->fd = -1;

    return rc;
}

static int
veml6075_init(i2c_t *i2c)
{
    int rc;

    rc = i2c_smbus_read_word_data(i2c->fd, VEML6075_ID);

    if (rc == 0x26) {
        rc = i2c_smbus_write_word_data(i2c->fd,
                                       VEML6075_UV_CONF,
                                       (i2c->itime << 4) |
                                       (i2c->range << 3));
    } else {
        rc = -1; /* Error: dev not recognized. */
    }

    return rc;
}

static int veml6075_read_trigger(i2c_t *i2c)
{
    int rc;
    int data;
    do {
        /* Trigger measurement */
        rc = i2c_smbus_read_word_data(i2c->fd, VEML6075_UV_CONF);

        if (rc < 0) {
            break;
        }

        data = rc;
        data |= (VEML6075_TRIGGER << 2);

        rc = i2c_smbus_write_word_data(i2c->fd, VEML6075_UV_CONF, data);

    } while(0);

    return rc;
}

static int veml6075_read_reg(i2c_t *i2c,
                             int reg,
                             veml6075_val_t *data)
{
    int rc;

    rc = i2c_smbus_read_word_data(i2c->fd, reg);

    if (rc < 0) {
        data->valid = false;
    } else {
        data->val = rc;
        data->valid = true;
    }

    return rc;
}

static int
veml6075_data_err(veml6075_data_t *data)
{
    /* Return true if there is any invalid data. */
    return !(data->uva.valid &&
             data->dark.valid &&
             data->uvb.valid &&
             data->ir.valid &&
             data->vis.valid);
}
static int
veml6075_decode(i2c_t *i2c, veml6075_data_t *data)
{
    int rc;
    rc = veml6075_read_trigger(i2c);
    usleep(itime_usec[i2c->itime]);
    if (!rc) {
        veml6075_read_reg(i2c, VEML6075_UVA_DATA, &data->uva);
        veml6075_read_reg(i2c, VEML6075_DARK_DATA, &data->dark);
        veml6075_read_reg(i2c, VEML6075_UVB_DATA, &data->uvb);
        veml6075_read_reg(i2c, VEML6075_UVCOMP1, &data->ir);
        veml6075_read_reg(i2c, VEML6075_UVCOMP2, &data->vis);
        rc = veml6075_data_err(data);
    };

    return rc;
}

#define UV(s) printf(#s ": %d\n", data->s.valid ? (int)data->s.val : -1)

static void
veml6075_print(veml6075_data_t *data)
{
    UV(uva);
    UV(dark);
    UV(uvb);
    UV(ir);
    UV(vis);
}

/* Default values from VEML6075 appnote*/
#define UVA_A_COEF 3.33
#define UVA_B_COEF 2.50
#define UVB_C_COEF 3.66
#define UVB_D_COEF 2.75
#define UVA_RESP 0.00125
#define UVB_RESP 0.00110

static void
uvi_print(veml6075_data_t *data)
{
    double a = UVA_A_COEF;
    double b = UVA_B_COEF;
    double c = UVB_C_COEF;
    double d = UVB_D_COEF;
    double uva_comp = data->uva.val - data->dark.val;
    double uvb_comp = data->uvb.val - data->dark.val;
    double vis_comp = data->vis.val - data->dark.val; /* comp1 */
    double ir_comp  = data->ir.val - data->dark.val;  /* comp2 */
    double uva_i = uva_comp - (a*vis_comp) - (b*ir_comp);
    double uvb_i = uvb_comp - (c*vis_comp) - (d*ir_comp);
    double uvi = ((uva_i * UVA_RESP) + (uvb_i * UVB_RESP)) / 2.0;

    printf("uvi: %f\n", uvi < 0.0 ? 0.0 : uvi);
}

static int
veml6075(i2c_t *i2c)
{
    veml6075_data_t veml6075_data;
    int rc;
    unsigned i;

    rc = veml6075_init(i2c);
    if (!rc) {
        for (i=0; i<i2c->limit; i++) {
            rc = veml6075_decode(i2c, &veml6075_data);
            if (!rc) {
                veml6075_print(&veml6075_data);
                uvi_print(&veml6075_data);
                break;
            }
        }
    }

    return rc;
}

static void
usage(void)
{
    fprintf(stderr,
            "veml6075 [-hv] [-f dev]\n"
            "  -h       Print this message\n"
            "  -f dev   Serial device\n"
            "  -c n     Sync limit\n"
        );
}

int
main(int argc,char *argv[])
{
    int c;
    i2c_t i2c;
    int rc = EXIT_ERR_OPEN;

    memset(&i2c, 0, sizeof(i2c));
    i2c.addr = VEML6075_ADDR;
    i2c.itime = VEML6075_100MS_T;
    i2c.limit = 10;

    while ((c = getopt(argc, argv, "hf:c:")) != EOF) {
        switch (c) {
        case 'f':
            i2c.dev = optarg;
            break;
        case 'c':
            i2c.limit = strtoul(optarg,NULL,0);
            break;
        case 'h':
        default:
            usage();
            exit(EXIT_ERR_USAGE);
        }
    }

    if ( (argc - optind) != 0 ) {
        usage();
        exit(EXIT_ERR_USAGE);
    }

    if (i2c_open(&i2c) < 0) {
        exit(EXIT_ERR_OPEN);
    } else {
        int err = veml6075(&i2c);
        rc = err ? EXIT_ERR_RX : EXIT_OK;
        i2c_close(&i2c);
    }

    return rc;
}
