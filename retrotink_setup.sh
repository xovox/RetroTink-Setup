#!/bin/bash

export ANSIBLE_RETRY_FILES_ENABLED=0

retroTinkDir="/home/pi/RetroTink-Setup"

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

source $retroTinkDir/config

hdmi_timings="$(cat hdmi_timings/$tvRegion/default)"

# DIALOG: confirm you want to go ahead

if ! (dpkg -l ansible > /dev/null); then
  apt update
  apt -y install ansible
fi

#exit # run ansible playbook, extra args: hdmi_timings

ansible-playbook RetroTink.yml -i localhost, -e "hdmi_timings='$hdmi_timings'"
#exit # prompt for 240p ES themes
