# RetroTink-Setup

I *love* my RetroPie, and I really want to use my RetroTink with it... but I don't like the custom RetroTink's interface, I need something family-friendly... not exclusively engineer-friendly. 😁 I'm sure my use of an emoji in my README.md disqualifies me as an engineer now!

This project is designed to make running RetroPie with a RetroTink as seamless as possible.  There are other projects that deal with it, but I found myself rewriting them... so here we are!

# Before We Begin

## Warnings

This is for NTSC only!  PAL is eventually coming, though I can't personally test it.

This only works under a vanilla installation of RetroPie 4.4!  If you run the update via the RetroPie menu, it will break everything.  I haven't spent too much time looking into it, other than finding that it's now ignoring custom viewport height & width.

## Notes

I've named my project RetroTink-Setup to keep it in line with the RetroPie-Setup naming convention only.  I am not affiliated with Mike Chi & RetroTink.

Shout out to [Vykran](https://github.com/Vykyan/retroTINK-setup) for the initial groundwork, though he seems to be PAL & I'm NTSC... which brought us to where we are now.

## License

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

# What You Get

* Most importantly, a fairly simple installation path!
* 240p boot & emulation look beautiful!
* Per-rom hdmi_timings & retroarch config for optimal vertical resolutions
* Installation of CRT Friendly EmulationStation themes!
* No annoying EmulationStation yellow text!
* Cleaner save states & files organization!
  * Shared over samba, if smbd is enabled!
* 240p test suite roms for several platforms!
* My unbridled enthusiasm about building this project!

# Requirements

* Raspberry Pi with a full size GPIO
* A RetroTink-Ultimate!
  * http://www.retrotink.com

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

## Better vertical resolution support

The big problem is that not all games use the same vertical resolution.  Once I break down the formula to calculate hdmi_timings into a bash/bc script, I can just use data from a csv to generate all of the required files.

| Rom Count	| Horiz	| Vert
|----------	|------	|-----
| 863		| 256	| 224
| 595		| 320	| 224
| 396		| 256	| 240
| 358		| 288	| 224
| 347		| 320	| 240
| 325		| 384	| 224
| 128		| 336	| 240
| 108		| 384	| 240

