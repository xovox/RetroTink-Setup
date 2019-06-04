# Some License Nonsense

RetroTink-Setup :: Utility suite to configure RetroPie for a RetroTink-Ultimate
Copyright (C) 2019 Duncan Brown (https://github.com/xovox)

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.

# RetroTink-Setup

Retro gaming with the $FREE [RetroPie](https://retropie.org.uk) Linux OS on a $35 [Raspberry Pi](https://www.raspberrypi.org) is pretty sweet, but instead of an HDTV... wouldn't you rather do it on a 20+ year old CRT?

The [RetroTink Ultimate](http://www.retrotink.com) is a board for the Raspberry Pi that gives you every analog connection you could want, in true 24-bit RGB color!

This project brings all of the above projects into one easy to swallow integration!

# See it in action!

[![IMAGE ALT TEXT HERE](https://img.youtube.com/vi/QwixXT4_c-0/0.jpg)](https://www.youtube.com/watch?v=QwixXT4_c-0)
Watch an installation on YouTube.

# What You Get

* Easy installation
* Pixel-perfect console emulation
* Pixel-perfect arcade emulation for most games
  * This is achieved with on-load screen resolution changes
* Installation of CRT Friendly EmulationStation themes!
* No annoying EmulationStation yellow text!
* Cleaner save states & files organization!
  * Shared over samba, if smbd is enabled!
* 240p test suite roms for several platforms!
* My unbridled enthusiasm about building this project!

## Emulator Compatibility

I'm aiming to cover everything available, but these are the only platforms I've thoroughly tested.

* arcade
* fba
* mame-libretro
* mastersystem
* megadrive
* n64
* neogeo
* nes
* pcengine
* psx
* retropie
* sega32x
* segacd
* snes
* supergrafx

# NTSC & PAL

Sadly, I don't have a PAL setup to test everything on, I'll need someone else to do that for me.

# Before We Begin

*DO NOT RUN THE RETROPIE UPDATE*

This only works under a vanilla installation of RetroPie 4.4!  If you run the update via the RetroPie menu, it will break everything.  I haven't spent too much time looking into it, other than finding that it's now ignoring custom viewport resolution.

# Installation

I'm assuming you're able to SSH in, or have a monitor & keyboard. I typically connect my Pi via Ethernet when I'm first configuring it for ease.

You can also do the initial configuration with a monitor hooked up to HDMI.

* [Enabling SSH](https://www.raspberrypi.org/documentation/remote-access/ssh/) on the official Raspbian docs.
  * This is best solved by putting your SD card in another machine and creating an empty file called 'ssh' in the boot partition.
* [Wireless Connectivity](https://www.raspberrypi.org/documentation/configuration/wireless/README.md) is an option, but I prefer wired for simplicity.
* SSH Clients
  * [Windows](https://www.raspberrypi.org/documentation/remote-access/ssh/windows.md)
  * [Linux & macOS](https://www.raspberrypi.org/documentation/remote-access/ssh/unix.md)

You can cut & paste this into your terminal.

```
cd &&
git clone https://github.com/xovox/RetroTink-Setup &&
cd RetroTink-Setup &&
/bin/bash ./retrotink_setup.sh
```

# TV Compatibility

## NTSC

| Make 		| Model 	| Tested 	| Issues	| Tested By
|------		|-------	|--------	|--------	|-----------
| Panasonic	| CT-27D10	| Component	| None          | Duncan

# Troubleshooting

See the [troubleshooting doc](TROUBLESHOOTING.md).

# Issues

* Updating fresh install of RetroPie breaks custom_viewport_width

# Tasks

* General
- [ ] Reorganize repo, it grew too organically so things are scattered
- [ ] Build vanilla image people can directly write to their SD card

* Scripts
- [ ] Work well with other RetroPie scripts I'm writing
- [ ] Get rid of env, everything should be discrete scripts in $HOME/RetroPie/scripts/ or something

* On Start Script
- [x] Use per-emulator timings
- [x] Use per-game timings

* On End Script
- [x] Revert to boot's hdmi_timings

* Script Installer
- [x] Write installer wrapper

* Ansible Installer
- [x] Create config.txt using template
- [x] Push RetroArch configs
- [x] Limit what systems we play
- [x] Remove notification text on game start
- [x] Create save states directories
- [x] Create save files directories
- [x] Add save states/files dirs to samba
- [x] Install SD friendly ES themes

* Configs
- [x] /boot/config.txt settings figured out
- [x] Custom retroarch config for each rom

* Video
- [x] Collect NTSC timings
- [ ] Collect PAL timings
- [x] Custom hdmi_timings for each rom via runcommand-onstart

* Alternate Orientation
- [ ] Vertical!

# Footnotes

I've named my project RetroTink-Setup to keep it in line with the RetroPie-Setup naming convention only.  I am not affiliated with Mike Chi & RetroTink.

Shout out to [Vykran](https://github.com/Vykyan/retroTINK-setup) for the initial groundwork, though he seems to be PAL & I'm NTSC... which brought us to where we are now.

```
                                                       .
                                                       ;\
                                                      /  \
                                                      `.  i          ,^^--.
                                                   ___  i  \        /      \              ,',^-_
                                                  /   \ !   \       |       |            / /   /
                                                  \   /  \   \      |       ;      ,__. |    ,'
                                                   4 |    \   `.    |      /      (    `   __>
                                                 ,_| |_.   \    `-__>      >.      `---'\ /
                                                /,.   ..\   `.               `.         | |
                                                U |   | U     `.               \    ,--~   ~--.
--~~~~--_       _--~~~~--_       _--~~~~--_       _--~~~~--_    \  _--~~~~--_   \  /_--~~~~--_ \
         `.   ,'          `.   ,'          `.   ,'          `.  |,'          `.  \,'          `.
           \ /              \ /              \ /              \ /              \ /              \
```
