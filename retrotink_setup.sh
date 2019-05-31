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


# pull in our config
source ./config

if [ "$EUID" != "0" -o "$UID" != "0" ]; then
	echo -e "We need to be root!\n\nrun:\n\tsudo $0\n"
	errorExit="true"
fi

if [ "$PWD" != "$retroTinkDir" ]; then
	echo -e "Please move this directory to \"$retroTinkDir\"\n"
        errorExit="true"
fi

if [ "$errorExit" ]; then
	exit
fi

# pull our hdmi timings
hdmi_timings="$(cat hdmi_timings/$tvRegion/default)"

# install ansible
if ! (dpkg -l ansible > /dev/null); then
  apt update
  apt -y install ansible
fi

# Update our system with our boot hdmi_timings
ansible-playbook RetroTink.yml -i localhost, -e "hdmi_timings='$hdmi_timings'"
