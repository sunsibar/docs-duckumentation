## Running using Docker
    
First run:

    $ git submodule sync --recursive
    $ git submodule update --init --recursive

Then install Docker:

    $ make install-docker-ubuntu16

You need to logout and login again for ubuntu groups to be updated.
Then compile using:

    $ make compile-docker

