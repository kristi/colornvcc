Install
=======

You should already have setup `nvcc` in your path.

*Note*: if you cannot run `nvcc -h`, `nvcc` is not in your path.


Quick Install
-------------

Run the `./install.sh` script.

Manual Install
--------------

(e.g. installing into `~/bin`)

1. Copy `colornvcc` into `~/bin`:

    $ cp colornvcc ~/bin

2. Copy `example.colornvccrc` to `~/.colornvccrc`:

    $ cp example.colornvccrc ~/.colornvccrc

3. Find your current `nvcc` path:

    $ which nvcc

4. Edit `~/.colornvccrc` to set the `nvcc` path:

    $ nano ~/.colornvcc

Edit the line which starts with **nvcc:** and use the
path you found in step 3, e.g.:

    nvcc: /usr/local/cuda/bin/nvcc

5. Create a symlink from `colornvcc` to `nvcc`:

    $ ln -s ~/bin/colornvcc ~/bin/nvcc

6. Add `~/bin` to your `PATH`:

    $ export PATH="~/bin:$PATH"

7. Add this export line to your `~/.bashrc` so that your `PATH`
will be automatically set up in future shell sessions.

    $ echo 'export PATH="~/bin:$PATH"' >> ~/.bashrc

8. Make sure you are using the `~/bin/nvcc` executable

    $ which nvcc

This command should return **~/bin/nvcc**.

:)
