#!/bin/bash
#
# Useful data are passed as arguments to these scripts:
#
# $1 - the system (eg: atari2600, nes, snes, megadrive, fba, etc).
# $2 - the emulator (eg: lr-stella, lr-fceumm, lr-picodrive, pifba, etc).
# $3 - the full path to the rom file.
# $4 - the full command line used to launch the emulator.

source $HOME/RetroTink-Setup/bin/env

mySys="$1"
myEmu="$2"
myRom="$3"
myCmd="$4"

myStripRom="${myRom%.*}"

# if we have timings for this system, use them
hdmiTimings $mySys
