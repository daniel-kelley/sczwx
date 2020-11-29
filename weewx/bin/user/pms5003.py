#
# WEEWX PMS5003 service
#
#
# Configuration:
#
#[Engine]
# ...
#    [[Services]]
#        ...
#        data_services = user.pms5003.Add_PMS5003
#...
#[PMS5003]
#  port = /dev/ttyS1
#  prog = /usr/local/bin/pms5003

import weewx
import subprocess
import yaml
import syslog

from weewx.engine import StdService

class Add_PMS5003(StdService):

    def __init__(self, engine, config_dict):

      # Initialize my superclass first:
      super(Add_PMS5003, self).__init__(engine, config_dict)

      # Bind to any new loop packet events:
      self.bind(weewx.NEW_LOOP_PACKET, self.new_loop_packet)

      # Internal attributes
      self.cmd = [
          config_dict['PMS5003']['prog'], # pms5003
          "-f",
          config_dict['PMS5003']['port'] # "/dev/ttyS1" # from DB
      ]


    def new_loop_packet(self, event):

        rsp = subprocess.run(self.cmd, capture_output=True)
        err = rsp.returncode
        if err == 0:
            data = yaml.load(rsp.stdout)
            if data != None:
                event.packet['pm1_0'] =float(data['pm_1_0_standard'])
                event.packet['pm2_5'] =float(data['pm_2_5_standard'])
                event.packet['pm10_0'] = float(data['pm_10_0_standard'])
            else:
                syslog.syslog(syslog.LOG_INFO, "PMS5003 YAML load error")
        else:
            syslog.syslog(syslog.LOG_INFO, "PMS5003 exec error %d" % err)
