sudo pip install Cython paramiko
sudo apt update
sudo apt install -y flatpak xfce4-terminal xserver-xorg-video-dummy x11-xserver-utils xvfb libxrandr-dev libxtst-dev libxkbfile-dev libxdamage-dev libxcomposite-dev libxres-dev libghc-gi-gdk-dev python3-cairo-dev python-gi-dev libavutil-dev liblz4-dev python3-dev python3-pypandoc
cd /tmp
git clone https://github.com/xpra-org/xpra
cd /tmp/xpra
sudo python3 setup.py install

sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak install -y net.waterfox.waterfox

sudo mkdir /run/dbus
sudo dbus-daemon --system

cd /workspace/gitpod-xpra

xpra start :1 --start=xfce4-terminal --bind-ws=0.0.0.0:8080 --no-daemon
