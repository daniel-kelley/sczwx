#
# WEEWX BME680 service
#
#
# Configuration:
#
#[Engine]
# ...
#    [[Services]]
#        ...
#        data_services = user.bme680.Add_BME680
#...
#[BME680]
#  dev = /sys/bus/iio/devices/iio:device1

import weewx
import pathlib

from weewx.engine import StdService
from weewx.units import ValueTuple

class Add_BME680(StdService):

    def __init__(self, engine, config_dict):

      # Initialize my superclass first:
      super(Add_BME680, self).__init__(engine, config_dict)

      # Bind to any new loop packet events:
      self.bind(weewx.NEW_LOOP_PACKET, self.new_loop_packet)

      self.dev = config_dict['BME680']['dev']

    def new_loop_packet(self, event):

        self.direct('in_humidityrelative_input', 'extraHumid1', event)
        self.pressure('in_pressure_input', 'pressure', event)
        # using leafWet1 as count
        self.direct('in_resistance_input', 'leafWet1', event)
        self.temperature('in_temp_input', 'extraTemp1', event)

    #
    # Internals
    #
    def val(self, item):
        val = pathlib.Path(self.dev+"/"+item).read_text()
        return float(val.strip())

    def temperature(self, input, item, event):
        system = event.packet['usUnits']
        unit_group = weewx.units.getStandardUnitType(system, item)
        temp_c = self.val(input) / 1000.0
        temp_v = ValueTuple(temp_c, "degree_C", "group_temperature")
        temp_u = weewx.units.convert(temp_v, unit_group[0])
        event.packet[item] = temp_u[0]

    def pressure(self, input, item, event):
        system = event.packet['usUnits']
        unit_group = weewx.units.getStandardUnitType(system, item)
        pres_r = self.val(input)/10.0
        pres_p = ValueTuple(pres_r, "kPa", "group_pressure")
        pres_u = weewx.units.convert(pres_p, unit_group[0])
        event.packet[item] = pres_u[0]

    def direct(self, input, item, event):
        # no conversion needed
        event.packet[item] = self.val(input)
