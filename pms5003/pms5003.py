#
# PMS5003/WEEWX reader
#

import subprocess
import yaml

cmd = [
    "pms5003",
    "-f",
    "/dev/ttyS1"
]
rsp = subprocess.run(cmd, capture_output=True)
data = yaml.load(rsp.stdout)
print(data['pm_1_0_standard'])
