os=$(uname -s -r)
hname=$(hostname)
utime1=$(uptime -s)
utime2=$(uptime -p)
ipaddr=$(hostname -I | cut -c -13)
model=$(cat /proc/cpuinfo | grep Model | cut -c 10-40)

echo "Hostname:              $hname"
echo "IP Address:            $ipaddr"
echo "System Boot:           $utime1"
echo "System Uptime:         $utime2"
echo "Model:                 $model"
echo "OS Version:            $os"
echo
df -h /export/*

