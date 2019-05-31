#!/bin/bash

##############################################################################
# This file is part of RetroTink-Setup (https://github.com/xovox/RetroTink-Setup)
#
# RetroTink-Setup is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# RetroTink-Setup is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with RetroTink-Setup.  If not, see <https://www.gnu.org/licenses/>.
##############################################################################

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
