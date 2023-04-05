sudo pip install Cython
sudo apt update
sudo apt install -y x11-xserver-utils libxrandr-dev libxtst-dev libxkbfile-dev libxdamage-dev libxcomposite-dev libxres-dev libghc-gi-gdk-dev python3-cairo-dev python-gi-dev libavutil-dev liblz4-dev python3-dev python3-pypandoc
cd /tmp
git clone https://github.com/xpra-org/xpra
cd /tmp/xpra
sudo python3 setup.py install