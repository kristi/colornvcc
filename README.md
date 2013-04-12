colornvcc
=========

Colorize and gcc-ize the output of nvcc, NVIDIA's CUDA C compiler.

How does it work?
-----------------

**nvcc** outputs warning and error messages in the format:

    filename(linenum): status: message

**gcc** outputs warning and error messages in the format:

    filename:linenum: status: message

**colornvcc** reformats **nvcc** messages to look like the **gcc** format.
Some color is also added to simplify debugging.

How can I install the script?
-----------------------------

Please refer to the `INSTALL` file.

How can I test the script?
--------------------------

If you have installed colornvcc, go to the `test` folder and simply type:

    $ make
