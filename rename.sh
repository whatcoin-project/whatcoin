#!/bin/sh
for i in $(find . -type f | grep -v "^./.git" | grep raptoreum); do
    mv $i $(echo $i| sed "s/raptoreum/whatcoin/")
done
