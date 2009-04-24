#!/bin/bash
# colornvcc
#
# colorize the output of nvcc, Nvidia's cuda c compiler
# 

# Quick Install:

prefix="$HOME/bin"
[ ! -d "$prefix" ] && mkdir "$prefix"
cp colornvcc "$prefix"
sed -e "/^nvcc:/s@/usr/local/cuda/bin/nvcc@$(which nvcc)@" \
  example.colornvccrc > ~/.colornvccrc
which colornvcc 2>&1 >/dev/null || \
  echo "export PATH=\"$prefix:\$PATH\" #added by colornvcc install.sh" >> ~/.bashrc
source ~/.bashrc
ln -s colornvcc "$prefix/nvcc"

# Make sure we can execute colornvcc
if  ! which colornvcc 2>&1 >/dev/null
then
    echo "Error installing colornvcc: can't run colornvcc"
fi

# Make sure nvcc will execute "$prefix/nvcc"
if [ "$(which nvcc)" != "$prefix/nvcc" ]
then
    echo "Error installing colornvcc: nvcc points to wrong executable"
fi

echo "Finished installing colornvcc"

