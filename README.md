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


# TODO

* Scripts
- [ ] Write installer wrapper
- [x] On Start script sets per-emulator timings
- [x] On End script sets us back to default timings
- [ ] On Start script checks for per-game timings
- [ ] Scripts need to work well with other RetroPie projects I'm working on
- [ ] Get rid of env, everything should be discrete scripts in $HOME/RetroPie/scripts/
- [ ] hdmiTimings needs to be smart enough to see if we're running on a CRT

* Ansible Installer
- [ ] Update config.txt using template
- [ ] Update config.txt using 'ini_file' // https://docs.ansible.com/ansible/latest/modules/ini_file_module.html
- [ ] Update RetroArch configs

* Configs
- [x] /boot/config.txt settings figured out
- [ ] /boot/config.txt find changed/added lines

* Video
- [x] Collect NTSC timings
- [ ] Find someone to figure out PAL timings
