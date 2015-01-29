 
usermod bwach -aG netdev

AWESOME_INSTALLED=$(dpkg-query -W --showformat='${Status}\n' awesome|grep "install ok installed")

if [ "" == "$AWESOME_INSTALLED" ]; then

sudo add-apt-repository ppa:klaus-vormweg/awesome

sudo apt-get update

sudo apt-get install awesome

fi

echo
echo 'Awesome WM installed'
echo 

sudo apt-get install feh xterm xfonts-terminus konsole console-terminus dropbox python-gpgme skype kadu -y

echo
echo 'Apps installed'

rm ~/.config/awesome -rf
ln -s ~/Dropbox/linux/.config/awesome ~/.config/

echo
echo 'Awesome config linked'

rm ~/.kde/share/apps/konsole/* -rf
ln -s ~/Dropbox/linux/.kde/share/apps/konsole/bwach.profile ~/.kde/share/apps/konsole/

echo
echo 'Konsole profile linked'

echo
echo '# wiele monitorów '
echo '# http://awesome.naquadah.org/wiki/Using_Multiple_Screens'

echo
echo '# pokazuje monitory'
echo '# xrandr -q'

echo
echo '# ustawia monitor oznaczony jako "VGA" ma prawo od monitora "LVDS" z rozdzielczoscia 1280x1024'
echo '# xrandr --output VGA1 --mode 1920x1080 --right-of HDMI1'
