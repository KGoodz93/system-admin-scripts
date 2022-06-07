"""
Author: Kelv Gooding
Created: 06/06/2022
Version: 1.000
"""

# Modules

import os
import subprocess

# Variables

user = os.getlogin()
machine_name = os.environ['COMPUTERNAME']
dest_path = fr"..\logs"
dest_file = f"network-devices-{machine_name}.txt"

# Script

netdevices = subprocess.getoutput('arp -a')
print(netdevices)

with open(fr"{os.path.join(dest_path, dest_file)}", "w") as f:
    f.writelines(str(netdevices.strip()))
