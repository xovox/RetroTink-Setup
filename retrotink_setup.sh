#!/bin/bash


myRegion=ntsc

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

# DIALOG: pick your region

hdmi_timings="$(cat hdmi_timings/$myRegion/default)"

# DIALOG: confirm you want to go ahead

echo "checking for ansible"

if ! (dpkg -l ansible); then
  apt update
  apt -y install ansible
fi

#exit # run ansible playbook, extra args: hdmi_timings

ansible-playbook RetroTink.yml -i localhost, -e "hdmi_timings='$hdmi_timings'"
#exit # prompt for 240p ES themes
