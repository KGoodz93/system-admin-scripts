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
dest_file = f"pip-list-{machine_name}.txt"

# Script

pip_list = subprocess.getoutput("pip list")

with open(fr"{os.path.join(dest_path, dest_file)}", "w") as f:
    f.write(str(pip_list))
