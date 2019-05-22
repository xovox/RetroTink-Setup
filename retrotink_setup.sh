#!/bin/bash

exit

printBanner() {
	echo "##############################################################################"
	echo "$1"
	echo "##############################################################################"
}

if [ "$EUID" != "0" -o "$UID" != "0" ]; then
	echo -e "We need to be root!\nrun:\n\tsudo $0\n"
	errorExit="true"
fi

if [ "$PWD" != "$HOME/RetroTink-Setup" ]; then
	echo -e "Please move this directory to \"$retroTinkDir\"\n"
        errorExit="true"
fi

printBanner "checking for ansible"

exit confirm your region
hdmi_timings="$(cat hdmi_timings/$myRegion/default)"

exit confirm you want to go ahead

if ! (dpkg -l ansible); then
  apt update
  apt -y install ansible
fi

exit run ansible playbook, extra args: hdmi_timings
exit prompt for 240p ES themes
