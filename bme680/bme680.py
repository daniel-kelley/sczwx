#
# BCM680/WEEWX reader
#

import pathlib

from pathlib import Path


def val(item):
    val = pathlib.Path("/sys/bus/iio/devices/iio:device1/"+item).read_text()
    return float(val.strip())


t=val("in_temp_input")/1000.0;
h=val("in_humidityrelative_input");
p=val("in_pressure_input");
r=val("in_resistance_input");

print([t,h,p,r])
