#!/bin/bash
echo -e "\033[0;32mHow many CPU cores do you want to be used in compiling process? (Default is 1. Press enter for default.)\033[0m"
read -e CPU_CORES
if [ -z "$CPU_CORES" ]
then
	CPU_CORES=1
fi

echo "Starting Windows build.. go pour yourself a coke"

# Compile dependencies
    echo "Building Depends"
	cd depends
	make HOST=x86_64-w64-mingw32 -j$(echo $CPU_CORES)
	cd ..

# Compile
    echo "Building Binaries"
	./autogen.sh
        ./configure --prefix=`pwd`/depends/x86_64-w64-mingw32
	make -j$(echo $CPU_CORES)

# Create zip file of binaries
    mkdir ./whatcoin-windows
	cp src/whatcoind.exe src/whatcoin-cli.exe src/whatcoin-tx.exe src/qt/whatcoin-qt.exe ./whatcoin-windows/
	zip -r Whatcoin-$(git describe --abbrev=0 --tags | sed s/v//)-Windows.zip ./whatcoin-windows
	rm -rf ./whatcoin-windows
