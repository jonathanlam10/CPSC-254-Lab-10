#!/bin/bash
#Enter filename and providers version hash on same line
echo -e "Enter a filename followed by the publishers hash"
#error with the filename
error () {
   echo "ERROR: $1"
   exit 1
}

#md5 checksum
get_md5sum() {
    cat $1 | md5sum | head -c 32
}

echo "Your filename: "
read filename

echo "Your publisher hash:"
read publishers_hash

# check if the file matches the hash
if [ ! -f $filename ];
then
    error "File $filename doesn't exist"
elif [ "$(get_md5sum $filename)" = "$publishers_hash" ]; then
    echo "Success: $filename matches provided md5sum hash"
else
    error "$filename doesn't match provided md5sum hash"
fi