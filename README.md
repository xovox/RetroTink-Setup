# RetroTink-Setup

I *love* my RetroPie, and I really want to use my RetroTink with it... but I don't like the custom RetroTink's interface, I need something family-friendly... not exclusively engineer-friendly. 😁  I'm sure my use of an emoji in my README.md disqualifies me as an engineer now!

This project is designed to make running RetroPie with a RetroTink as seamless as possible.  There are other projects that deal with it, but I found myself rewriting them to fix really obnoxious issues... so here we are!

# Goals

* Run on a vanilla RetroPie installation

* Make it expandable
  * Focus on using configuration files, not hard coded values
  * NTSC & PAL TVs don't behave the same, we should take that into consideration

* Make it maintainable
  * This is why I used Ansible to do most of the heavy lifting
  * Ansible also acts as easy-to-read documentation, for the engineers

# Requirements

* Raspberry Pi with a full size GPIO
* A RetroTink!
  * http://www.retrotink.com

# Installation

```
sudo ./retrotink_setup.sh
```

# TODO

* Scripts
- [ ] Work well with other RetroPie scripts I'm writing
- [ ] Get rid of env, everything should be discrete scripts in $HOME/RetroPie/scripts/
- [ ] hdmiTimings needs to be smart enough to see if we're running on a CRT

* On Start Script
- [x] Use per-emulator timings
- [ ] Use per-game timings

* On End Script
- [x] Revert to boot's hdmi_timings

* Script Installer
- [x] Write installer wrapper

* Ansible Installer
- [x] Create config.txt using template
- [x] Push RetroArch configs
- [x] Limit what systems we play
- [ ] Remove notification text on game start
- [x] Create save states directories
- [x] Create save files directories
- [x] Add save states/files dirs to samba
- [x] Install SD friendly ES themes

* Configs
- [x] /boot/config.txt settings figured out

* Video
- [x] Collect NTSC timings
- [ ] Find someone to figure out PAL timings
