echo "Author: Kelv Gooding"
echo "Date Created: 12/05/2022"
echo

echo "-----| Updating Packages |-----"
echo
sudo apt update -y
echo

echo "-----| Upgrading Packages |-----"
echo
sudo apt upgrade -y
echo

echo "-----| Installing Package: Ansible |-----"
echo
sudo apt install -y ansible sshpass
echo

echo "-----| Installing Package: Python |-----"
echo
sudo apt install python3 -y
echo

echo "-----| Installing Package: Pip |-----"
echo
sudo apt-get install python3-pip
echo

echo "-----| Installing Package: PM2 (Process Manager 2) |-----"
echo
sudo apt-get install npm -y
sudo npm install --g pm2 -y
echo

echo "-----| Installing Package: Open Media Vault |-----"
echo
sudo wget -O - https://raw.githubusercontent.com/OpenMediaVault-Plugin-Developers/installScript/master/install | sudo bash
rm -f openmediavault-omvextrasorg_latest_all6.deb
echo

echo "---| Setup Complete! |---"