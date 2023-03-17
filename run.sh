apt-get update > /dev/null 2>&1
echo "===================================="
echo "Install Firefox"
echo "===================================="
apt install firefox -y > /dev/null 2>&1
echo "===================================="
echo "Install RDP"
echo "===================================="
apt install -y xrdp > /dev/null 2>&1
apt install xfce4 -y > /dev/null 2>&1
apt-get install xfce4 xfce4-terminal -y > /dev/null 2>&1
echo "===================================="
echo "Start RDP"
echo "===================================="
sudo sed -i.bak '/fi/a xfce4-session \n' /etc/xrdp/startwm.sh > /dev/null 2>&1
sudo service xrdp start > /dev/null 2>&1
echo "===================================="
