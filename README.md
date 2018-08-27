## Installation 


Install the [Duckietown Shell](http://github.com/duckietown/duckietown-shell).

Make sure that the `resources` directory is downloaded:

    $ git submodule sync --recursive
    $ git submodule update --init --recursive

## Compilation

Compile using:

    $ dts docs build
    
Re-compile from scratch using:

    $ dts docs clean
    $ dts docs build
    
