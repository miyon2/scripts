wget http://mvapich.cse.ohio-state.edu/download/mvapich/mv2/mvapich2-2.3.1.tar.gz
tar xvhf mvapich2-2.3.1.tar.gz
cd mvapich2-2.3.1/
cd limic2-0.5.6/
./configure --enable-module --prefix=/usr --sysconfdir=/etc
make
make install
cd ../
./configure --disable-mcast --with-limic2 --prefix=/home/miyeon/mvapich2
#./configure --prefix=/home/miyeon/mvapich2
#vi ~/.bashrc
#source ~/.bashrc
make -j8 && make install
cd osu_benchmarks/
make clean
./configure CC=/home/miyeon/mvapich2/bin/mpicc CXX=/home/miyeon/mvapich2/bin/mpicxx
make
