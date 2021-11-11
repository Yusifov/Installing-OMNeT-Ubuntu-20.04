apt-get update 
apt-get install build-essential gcc g++ bison flex perl \
 python python3 qt5-default libqt5opengl5-dev tcl-dev tk-dev \
 libxml2-dev zlib1g-dev default-jre doxygen graphviz
echo "deb http://tr.archive.ubuntu.com/ubuntu/ bionic main universe" >> /etc/apt/sources.list
apt-get update
apt-get install libwebkitgtk-3.0-0
apt-get install openscenegraph-plugin-osgearth libosgearth-dev
apt-get install openmpi-bin libopenmpi-dev
wget https://github.com/omnetpp/omnetpp/releases/download/omnetpp-5.7/omnetpp-5.7-linux-x86_64.tgz
tar xvfz omnetpp-***
cd omnetpp-***
. setenv
echo "export PATH=$HOME/omnetpp-5.7/bin:$PATH" >> ~/.bashrc
./configure
make
cd samples/dyna
./dyna
make install-menu-item
make install-desktop-icon