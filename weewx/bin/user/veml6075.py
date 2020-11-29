#
# WEEWX VEML6075 service
#
#
# Configuration:
#
#[Engine]
# ...
#    [[Services]]
#        ...
#        data_services = user.veml6075.Add_VEML6075
#...
#[VEML6075]
#  port = /dev/i2c-2
#  prog = /usr/local/bin/veml6075

import weewx
import subprocess
import yaml
import syslog

from weewx.engine import StdService

class Add_VEML6075(StdService):

    def __init__(self, engine, config_dict):

      # Initialize my superclass first:
      super(Add_VEML6075, self).__init__(engine, config_dict)

      # Bind to any new loop packet events:
      self.bind(weewx.NEW_LOOP_PACKET, self.new_loop_packet)

      # Internal attributes
      self.cmd = [
          config_dict['VEML6075']['prog'], # veml6075
          "-f",
          config_dict['VEML6075']['port'] # "/dev/i2c-2" # from DB
      ]


    def new_loop_packet(self, event):

        rsp = subprocess.run(self.cmd, capture_output=True)
        err = rsp.returncode
        if err == 0:
            data = yaml.load(rsp.stdout)
            if data != None:
                event.packet['UV'] =float(data['uvi'])
            else:
                syslog.syslog(syslog.LOG_INFO, "VEML6075 YAML load error")
        else:
            syslog.syslog(syslog.LOG_INFO, "VEML6075 exec error %d" % err)
