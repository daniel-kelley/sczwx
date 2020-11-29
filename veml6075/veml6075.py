#
# VEML6075/WEEWX reader
#

import subprocess
import yaml

cmd = [
    "wx/veml6075/veml6075",
    "-f",
    "/dev/i2c-2"
]
rsp = subprocess.run(cmd, capture_output=True)
data = yaml.load(rsp.stdout)
print(data)
