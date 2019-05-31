# ZERO WARRANTY

RetroTink-Setup :: Utility to configure RetroPie for a RetroTink-Ultimate
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

# BIG OLD WARNING

This only works under a vanilla installation of RetroPie 4.4!  If you run the update via the RetroPie menu, it will break everything.  I haven't spent too much time looking into it, other than finding that it's now ignoring custom viewport height & width.

# RetroTink-Setup

NOTE: I've named my project RetroTink-Setup to keep it in line with the RetroPie-Setup naming convention only.  I am not affiliated with Mike Chi & RetroTink.

I *love* my RetroPie, and I really want to use my RetroTink with it... but I don't like the custom RetroTink's interface, I need something family-friendly... not exclusively engineer-friendly. 😁 I'm sure my use of an emoji in my README.md disqualifies me as an engineer now!

This project is designed to make running RetroPie with a RetroTink as seamless as possible.  There are other projects that deal with it, but I found myself rewriting them... so here we are!

Shout out to [Vykran](https://github.com/Vykyan/retroTINK-setup) for the initial groundwork, though he seems to be PAL & I'm NTSC... which brought us to where we are now.

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
* A RetroTink-Ultimate!
  * http://www.retrotink.com

# Installation

```
git clone https://github.com/xovox/RetroTink-Setup
cd RetroTink-Setup
sudo /bin/bash ./retrotink_setup.sh
```

# TV Compatibility

## NTSC

| Make 		| Model 	| Tested 	| Issues
|------		|-------	|--------	|--------
| Panasonic	| CT-27D10	| Component	| None

# Emulator Compatibility

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

# Troubleshooting

See the [troubleshooting doc](TROUBLESHOOTING.md).

# Issues

* Updating fresh install of RetroPie breaks custom_viewport_width & height

# Tasks

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
- [x] Remove notification text on game start
- [x] Create save states directories
- [x] Create save files directories
- [x] Add save states/files dirs to samba
- [x] Install SD friendly ES themes

* Configs
- [x] /boot/config.txt settings figured out

* Video
- [x] Collect NTSC timings
- [ ] Find someone to figure out PAL timings

* Alternate Orientation
- [ ] Vertical!
