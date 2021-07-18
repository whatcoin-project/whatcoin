#!/bin/bash
echo -e "\033[0;32mHow many CPU cores do you want to be used in compiling process? (Default is 1. Press enter for default.)\033[0m"
read -e CPU_CORES
if [ -z "$CPU_CORES" ]
then
	CPU_CORES=1
fi

echo "Starting Linux build.. go pour yourself a coke"

# Compile dependencies
    echo "Building Depends"
	cd depends
	make -j$(echo $CPU_CORES)
	cd ..

# Compile
    echo "Building Binaries"
	./autogen.sh
	./configure --enable-glibc-back-compat --prefix=$(pwd)/depends/x86_64-pc-linux-gnu LDFLAGS="-static-libstdc++" --enable-cxx --enable-static --disable-shared --disable-debug --disable-tests --disable-bench --with-pic CPPFLAGS="-fPIC -O3 --param ggc-min-expand=1 --param ggc-min-heapsize=32768" CXXFLAGS="-fPIC -O3 --param ggc-min-expand=1 --param ggc-min-heapsize=32768"
	make -j$(echo $CPU_CORES) 

# Create zip file of binaries
    mkdir ./whatcoin-linux
	cp src/whatcoind src/whatcoin-cli src/whatcoin-tx src/qt/whatcoin-qt ./whatcoin-linux/
	zip -r Whatcoin-$(git describe --abbrev=0 --tags | sed s/v//)-Ubuntu-$(lsb_release -r -s).zip ./whatcoin-linux
	rm -rf ./whatcoin-linux
