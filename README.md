## Fork this repo

Fork this repo to edit it.


## Running using Docker

First run:

    $ git submodule sync --recursive
    $ git submodule update --init --recursive

# Installing Docker

Then install Docker:

    $ make install-docker-ubuntu16

*Note*: you need to be in group `docker`. The script adds you, but it does not take effect immediately. You need to exit the console and re-enter.

# Compiling

Note: On Ubuntu, make sure to have `git 2.13+` and `git lfs 2.5+`. To install the latest versions of these, run the following commands:

1. `sudo add-apt-repository ppa:git-core/ppa && sudo apt update && sudo apt install git`
2. `curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash`
3. `sudo apt-get install git-lfs`
4. `git lfs install`
5. `git lfs pull` (inside documentation directory)

Then compile using:

    $ make compile-docker
