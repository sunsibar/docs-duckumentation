

## Installation 


## Running using Docker

First run:

    $ git submodule sync --recursive
    $ git submodule update --init --recursive

## Installing Docker on Ubuntu 16

Then install Docker:

    $ make install-docker-ubuntu16

*Note*: you need to be in group `docker`. The script adds you, but it does not take effect immediately. You need to exit the console and re-enter.

# Compiling

Then compile using:

    $ make compile-docker
