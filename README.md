# RetroTink-Setup

I *love* my RetroPie, and I really want to use my RetroTink with it.  I don't like the custom RetroTink's interface, I need something family-friendly... not exclusively engineer-friendly. 😁  I'm sure my use of an emoji in my README.md disqualifies me as an engineer now!

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

* Raspberry Pi 2 or newer
* A RetroTink!
  * http://www.retrotink.com

# Installation


# TODO

* Scripts
- [ ] Write installer wrapper
- [ ] Onstart script checks for per-game timings

* Ansible
- [ ] Installer

* Video
- [ ] Find someone to figure out PAL timings
