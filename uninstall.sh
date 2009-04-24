#!/bin/bash
# colornvcc
#
# colorize the output of nvcc, Nvidia's cuda c compiler
# 

# Uninstall:

prefix="$HOME/bin"
rm "$prefix/nvcc" "$prefix/colornvcc" "$HOME/.colornvccrc"
sed -i -e "s@^export PATH=\"$prefix:\$PATH\" #added by colornvcc install\.sh\$@@" ~/.bashrc
rmdir "$prefix"
