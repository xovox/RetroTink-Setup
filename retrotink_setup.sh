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
export tvRegion

if [ "$PWD" != "$retroTinkDir" ]; then
	echo -e "Please move this directory to \"$retroTinkDir\"\n"
        errorExit="true"
fi

if [ "$errorExit" ]; then
	exit
fi

# install ansible
if ! (dpkg -l ansible > /dev/null); then
  sudo apt update
  sudo apt -y install ansible
fi

# Run our configuration playbook
ansible-playbook RetroTink.yml -i localhost,
