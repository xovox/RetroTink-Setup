#!/bin/bash
#
# arguments passed to this script
#
# $1 - system
# $2 - emulator in use
# $3 - full path to rom
# $4 - full emulator command line

source $HOME/RetroTink-Setup/bin/env

mySys="$1"
myEmu="$2"
myRom="$3"
myCmd="$4"

myStripRom="${myRom%.*}"

# if we have timings for this system, use them
hdmiTimings $mySys
