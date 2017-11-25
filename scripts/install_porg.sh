# Make build directly
cd $HOME
mkdir -p usr/source
cd $HOME/usr/source

# Download porg source
wget http://sourceforge.net/projects/porg/files/porg-0.10.tar.gz/download -O porg-0.10.tar.gz
tar xf porg-0.10.tar.gz

# Build and install
cd porg-0.10/
./configure --with-porg-logdir=$HOME/var/log/porg --disable-grop --prefix=$HOME/usr
make -j"$(nproc)"
make install
