# Installation

DO NOT install or run QEMU inside of a VM like Virtual Box or VMware

## Linux

Install with `sudo apt-get install qemu qemu-kvm`.

## Mac

To install on Mac, first install the `brew` package manager (if you don't already have it). Paste the following in the terminal.

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Then install QEMU with `brew install qemu`. You may need to manually resolve some dependencies, but if it goes right you should be good to go.

## Windows

You need to get the latest installer for Windows [here](https://www.qemu.org/download/#windows). Run the installer.

You will also need the Intel HAXM driver to run with hardware acceleration. You can run without this, but it is painfully slow. Download and install from [here](https://github.com/intel/haxm/releases). 

# Running

On Linux and Mac, you can just run `./run.sh`. On Windows, if you installed in the default location, run `run.cmd`. If not, just change the script to reflect your path.

