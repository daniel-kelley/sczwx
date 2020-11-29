/*
   pms5003.c

   Copyright (c) 2020 by Daniel Kelley

   Plantower PMS5003 User Space reader

*/

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <ctype.h>
#include <unistd.h>
#include <errno.h>
#include <fcntl.h>
#include <termios.h>

enum {
    EXIT_OK,
    EXIT_ERR_OPEN,
    EXIT_ERR_RX,
    EXIT_ERR_USAGE,
};

typedef struct {
    /* ----------------------- Configuration */
    /* Local serial port */
    char *dev;
    int bits;
    int baud;
    int parity;
    int stop;
    int flow;
    /* Sync limit*/
    unsigned limit;
    /*  ---------------------- State */
    int fd;
    struct termios initial;
    struct termios current;
} sp_t;

#define PM_MSG_LEN      32
#define PM_VAR_LEN      14

typedef struct {
    union {
        uint16_t raw[PM_VAR_LEN];
        struct {
            uint16_t len;
            uint16_t pm_1_0_standard;
            uint16_t pm_2_5_standard;
            uint16_t pm_10_0_standard;
            uint16_t pm_1_0_atmospheric;
            uint16_t pm_2_5_atmospheric;
            uint16_t pm_10_0_atmospheric;
            uint16_t pm_0_3_particle;
            uint16_t pm_0_5_particle;
            uint16_t pm_1_0_particle;
            uint16_t pm_2_5_particle;
            uint16_t pm_5_0_particle;
            uint16_t pm_10_0_particle;
            uint16_t reserved;
        } decoded;
    } u;
} pm_data_t;

static int
sp_save(sp_t *sp)
{
    return tcgetattr(sp->fd, &sp->initial);
}

static int
sp_speed(sp_t *sp)
{
    int baud, rc;

    rc = 0;
    baud = 0;

    switch (sp->baud) {
    case 50:
        baud = B50;
        break;
    case 75:
        baud = B75;
        break;
    case 110:
        baud = B110;
        break;
    case 134:
        baud = B134;
        break;
    case 150:
        baud = B150;
        break;
    case 200:
        baud = B200;
        break;
    case 300:
        baud = B300;
        break;
    case 600:
        baud = B600;
        break;
    case 1200:
        baud = B1200;
        break;
    case 1800:
        baud = B1800;
        break;
    case 2400:
        baud = B2400;
        break;
    case 4800:
        baud = B4800;
        break;
    case 9600:
        baud = B9600;
        break;
    case 19200:
        baud = B19200;
        break;
    case 38400:
        baud = B38400;
        break;
    case 57600:
        baud = B57600;
        break;
    case 115200:
        baud = B115200;
        break;
    case 230400:
        baud = B230400;
        break;
    default:
        rc = -1;
        fprintf(stderr, "Illegal baud rate %d\n", sp->baud);
        break;
    }

    if (rc >= 0) {
        cfsetispeed(&sp->current, baud);
        cfsetospeed(&sp->current, baud);
    }
    return rc;
}

static int
sp_configure(sp_t *sp)
{
    int rc;

    if ((rc=tcgetattr(sp->fd, &sp->current)) >= 0) {
        sp->current.c_cflag = CREAD|CLOCAL|sp->flow;
        sp->current.c_iflag = IGNBRK|IGNPAR;
        sp->current.c_oflag = 0;
        sp->current.c_lflag = 0;
        sp->current.c_cc[VMIN] = 1;
        sp->current.c_cc[VTIME] = 0;
        if (sp->parity) {
            sp->current.c_cflag |= sp->parity;
            sp->current.c_iflag |= PARMRK;
        } else {
            sp->current.c_cflag |= CS8;
        }
        sp->current.c_cflag |= sp->stop;

        if ((rc=sp_speed(sp)) >= 0) {
            tcflush(sp->fd, TCIFLUSH);
            rc = tcsetattr(sp->fd, TCSANOW, &sp->current);
        }
    }

    return rc;
}

static void
sp_restore(sp_t *sp)
{
    tcsetattr(sp->fd, TCSANOW, &sp->initial);
}

static int
sp_open(sp_t *sp)
{
    int rc = -1;

    if (sp != NULL && sp->dev != NULL) {
        if ((rc = sp->fd = open(sp->dev,O_RDWR|O_NOCTTY)) >= 0) {
            rc = sp_configure(sp);
        }
    }

    return rc;
}

static int
sp_close(sp_t *sp)
{
    int rc;

    rc = close(sp->fd);
    sp->fd = -1;

    return rc;
}

int
sp_getc(sp_t *sp)
{
    int len;
    char buf[1];

    len = read(sp->fd, buf, sizeof(buf));

    return (len <= 0) ? -1 : buf[0];
}

/*
  PM2.5 monitor
  9600/8/N/1
  Format: u16 big-endian
  (-1) 0x42 0x4d
  (00) len
  (01) PM1.0 standard ug/m^3
  (02) PM2.5 standard ug/m^3
  (03) PM10  standard ug/m^3
  (04) PM1.0 atmospheric ug/m^3
  (05) PM2.5 atmospheric ug/m^3
  (06) PM10  atmospheric ug/m^3
  (07) #particle > 0.3um/0.1L
  (08) #particle > 0.5um/0.1L
  (09) #particle > 1.0um/0.1L
  (10) #particle > 2.5um/0.1L
  (11) #particle > 5.0um/0.1L
  (12) #particle > 10.0um/0.1L
  (13) Reserved
  (14) Check

 */

static int pm_decode(sp_t *sp, pm_data_t *data)
{
    int c;
    int i;
    int j=0;
    uint16_t xsum=0;

    for (i=0; i<PM_MSG_LEN; i++) {
        c = sp_getc(sp);
        if (c < 0) {
            return -1;
        }
        switch (i) {
        case 0:
            if (c != 0x42) {
                return 1;
            }
            xsum += c;
            break;
        case 1:
            if (c != 0x4d) {
                return 1;
            }
            xsum += c;
            break;
        case 2:
        case 4:
        case 6:
        case 8:
        case 10:
        case 12:
        case 14:
        case 16:
        case 18:
        case 20:
        case 22:
        case 24:
        case 26:
        case 28:
            if (j >= PM_VAR_LEN) {
                fprintf(stderr,"Var overflow\n");
                return 1;
            }
            data->u.raw[j] = (c<<8);
            xsum += c;
            break;
        case 3:
        case 5:
        case 7:
        case 9:
        case 11:
        case 13:
        case 15:
        case 17:
        case 19:
        case 21:
        case 23:
        case 25:
        case 27:
        case 29:
            data->u.raw[j] |= c;
            xsum += c;
            j++;
            break;
        case 30:
            if (c != (xsum>>8)) {
                fprintf(stderr,"Checksum error\n");
                return 1;
            }
            break;
        case 31:
            if (c != (xsum & 0xff)) {
                fprintf(stderr,"Checksum error\n");
                return 1;
            }
            break;
        }
    }

    return 0;
}

#define PM(s) printf(#s ": %u\n", data->u.decoded.s)

static void
pm_print(const pm_data_t *data)
{
    PM(pm_1_0_standard);
    PM(pm_2_5_standard);
    PM(pm_10_0_standard);
    PM(pm_1_0_atmospheric);
    PM(pm_2_5_atmospheric);
    PM(pm_10_0_atmospheric);
    PM(pm_0_3_particle);
    PM(pm_0_5_particle);
    PM(pm_1_0_particle);
    PM(pm_2_5_particle);
    PM(pm_5_0_particle);
    PM(pm_10_0_particle);
}

static int
pms5003(sp_t *sp)
{
    pm_data_t pm_data;
    unsigned i;
    int rc = EXIT_ERR_RX;

    for (i=0; i<sp->limit; i++) {
        int err = pm_decode(sp, &pm_data);
        if (!err) {
            pm_print(&pm_data);
            rc = EXIT_OK;
            break;
        }
    }

    if (rc != EXIT_OK) {
        fprintf(stderr,"%s()=%d\n", __FUNCTION__, rc);
    }

    return rc;
}

static void
usage(void)
{
    fprintf(stderr,
            "pms5003 [-hv] [-f dev]\n"
            "  -h       Print this message\n"
            "  -f dev   Serial device\n"
            "  -c n     Sync limit\n"
        );
}

int
main(int argc,char *argv[])
{
    int c;
    sp_t sp;
    int rc = EXIT_ERR_OPEN;

    memset(&sp, 0, sizeof(sp));
    sp.baud = 9600;
    sp.limit = 20;

    while ((c = getopt(argc, argv, "hf:c:")) != EOF) {
        switch (c) {
        case 'f':
            sp.dev = optarg;
            break;
        case 'c':
            sp.limit = strtoul(optarg,NULL,0);
            break;
        case 'h':
        default:
            usage();
            exit(EXIT_OK);
        }
    }

    if ( (argc - optind) != 0 ) {
        usage();
        exit(EXIT_ERR_USAGE);
    }

    if (sp_open(&sp) < 0) {
        usage();
    } else {
        sp_save(&sp);
        rc = pms5003(&sp);
        sp_restore(&sp);
        sp_close(&sp);
    }
    return rc;
}
