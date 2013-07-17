# download slicer (slic3r) [to run in this folder]

SLICER_VERSION=0-9-10b
SLICER_NAME=slic3r-linux-x86_64-$SLICER_VERSION
wget http://dl.slic3r.org/linux/$SLICER_NAME.tar.gz
tar xvf $SLICER_NAME.tar.gz
rm $SLICER_NAME.tar.gz
mv Slic3r slicer
cd slicer
ls
./bin/slicer
