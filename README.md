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

NOTE: All games > 240p have their resolution halved since i'm focused on SD CRTs

# See it in action!

* YouTube: [![IMAGE ALT TEXT HERE](https://img.youtube.com/vi/QwixXT4_c-0/0.jpg)](https://www.youtube.com/watch?v=QwixXT4_c-0)

# What You Get

* Easy installation!
* Pixel-perfect console emulation!
* Pixel-perfect arcade emulation for most games!
  * This is achieved with on-load screen resolution changes!
* Automatic rotation for vertical games!
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
- [x] Make 480p compatible

* Alternate Orientation
- [x] Vertical!

# Footnotes

I've named my project RetroTink-Setup to keep it in line with the RetroPie-Setup naming convention only.  I am not affiliated with Mike Chi & RetroTink.

Shout out to [Vykran](https://github.com/Vykyan/retroTINK-setup) for the initial groundwork, though he seems to be PAL & I'm NTSC... which brought us to where we are now.

# Bad Resolutions

According to databases I've looked at, the following roms have a resolution of 0 or > 240p and will not look right.

| rom | resolution | rom | resolution | rom | resolution |
|---- |---- |---- |---- |---- |---- |
| 8ball1.zip | 248 | 8ball.zip | 248 | ace.zip | 304 |
| ainferno.zip | 400 | airduelm72.zip | 256 | airduel.zip | 256 |
| alinvade.zip | 128 | alphamis.zip | 216 | alphaona.zip | 0 |
| alphaone.zip | 0 | ambushh.zip | 222 | ambushj.zip | 222 |
| ambusht.zip | 222 | ambushv.zip | 222 | ambush.zip | 222 |
| amerdart.zip | 241 | aquariumj.zip | 256 | aquarium.zip | 256 |
| arabiana.zip | 234 | arabian.zip | 234 | arcadia.zip | 256 |
| arian.zip | 216 | armorap.zip | 0 | armorar.zip | 0 |
| armora.zip | 0 | ashnojoe.zip | 208 | aso.zip | 216 |
| astdelu1.zip | 0 | astdelux.zip | 0 | asterock.zip | 0 |
| asteroi1.zip | 0 | asteroib.zip | 0 | asteroid.zip | 0 |
| astrof2.zip | 256 | astrof3.zip | 256 | astrof.zip | 256 |
| athena.zip | 216 | avefenixl.zip | 208 | avefenixrf.zip | 208 |
| avefenix.zip | 208 | aztarac.zip | 0 | barrier.zip | 0 |
| battlan2.zip | 256 | battlan3.zip | 256 | battlane2.zip | 256 |
| battlane3.zip | 256 | battlane.zip | 256 | battlera.zip | 242 |
| battroad.zip | 256 | bbonk.zip | 230 | bchopper.zip | 256 |
| bcrusher.zip | 256 | beaminv.zip | 216 | beast.zip | 236 |
| bldwolf.zip | 242 | blitz.zip | 296 | blmbycaru.zip | 256 |
| blmbycar.zip | 256 | blmbycau.zip | 256 | boxingb.zip | 0 |
| bradley.zip | 0 | buccanrsa.zip | 256 | buccanrsb.zip | 256 |
| buccanrs.zip | 256 | bullfgtr.zip | 208 | bwidow.zip | 0 |
| bzone2.zip | 0 | bzonec.zip | 0 | bzone.zip | 0 |
| cabaret.zip | 256 | canvas.zip | 216 | capbowl2.zip | 245 |
| capbowl3.zip | 245 | capbowl4.zip | 245 | capbowl.zip | 245 |
| capitol.zip | 208 | carpolo.zip | 256 | catapult.zip | 236 |
| ccastle2.zip | 255 | ccastle3.zip | 255 | ccastles.zip | 255 |
| cchasm1.zip | 0 | cchasm.zip | 0 | challeng.zip | 256 |
| chboxing.zip | 216 | cheesech.zip | 256 | chwrestl.zip | 216 |
| circus.zip | 256 | cischeat.zip | 216 | clbowl.zip | 245 |
| complexx.zip | 256 | condorn.zip | 208 | condor.zip | 208 |
| copsnrob.zip | 208 | cosmccop.zip | 256 | cosmos.zip | 248 |
| countryc.zip | 216 | crash.zip | 256 | crusherm.zip | 239 |
| crusnu21.zip | 400 | crusnu40.zip | 400 | crusnusa.zip | 400 |
| crusnw13.zip | 400 | crusnw20.zip | 400 | crusnwld.zip | 400 |
| darkwar.zip | 248 | dazzler.zip | 248 | dbreedm72.zip | 256 |
| dbreed.zip | 256 | dbz2.zip | 256 | dbza.zip | 256 |
| dbz.zip | 256 | dealer.zip | 236 | deltrace.zip | 0 |
| demon.zip | 0 | dkgenm72.zip | 256 | dkgensanm72.zip | 256 |
| dkgensan.zip | 256 | dodgem.zip | 768 | dogosokb.zip | 216 |
| dogosoke.zip | 216 | dribling.zip | 216 | driblino.zip | 216 |
| drifto94.zip | 238 | eggventr.zip | 236 | eggvntdx.zip | 236 |
| elecyoy2.zip | 256 | elecyoyo.zip | 256 | elim2a.zip | 0 |
| elim2.zip | 0 | elim4.zip | 0 | equitess.zip | 208 |
| equites.zip | 208 | esb.zip | 0 | falcon.zip | 312 |
| falconz.zip | 208 | fantland.zip | 256 | fax.zip | 256 |
| fenix.zip | 208 | fitegol2.zip | 216 | fitegolf2.zip | 216 |
| fitegolfu.zip | 216 | fitegolf.zip | 216 | galaxygn.zip | 256 |
| gallop.zip | 256 | galpanib.zip | 256 | goldbug.zip | 248 |
| gravitar.zip | 0 | gravitr2.zip | 0 | gravp.zip | 0 |
| griffon.zip | 208 | gundl94.zip | 256 | hal21j.zip | 216 |
| hal21.zip | 216 | hanaawas.zip | 256 | harddrc1.zip | 288 |
| harddrcb.zip | 288 | harddrcg.zip | 288 | harddrvc.zip | 288 |
| hardhat.zip | 256 | hdrivaip.zip | 288 | hdrivair.zip | 288 |
| heartatk.zip | 248 | heatbrlo.zip | 256 | heatbrlu.zip | 256 |
| heatbrl.zip | 256 | hero.zip | 248 | hexionb.zip | 256 |
| hexion.zip | 256 | hharryu.zip | 256 | hharry.zip | 256 |
| hiimpact.zip | 256 | hitme.zip | 190 | hnayayoi.zip | 256 |
| hnfubuki.zip | 256 | holeland.zip | 448 | hunchbak.zip | 248 |
| huncholy.zip | 248 | igmo.zip | 236 | ikaria.zip | 216 |
| ikarijpb.zip | 216 | ikarijp.zip | 216 | ikarinc.zip | 216 |
| ikariram.zip | 216 | ikari.zip | 216 | imgfightj.zip | 256 |
| imgfight.zip | 256 | jcross.zip | 216 | jdreddp.zip | 254 |
| kaos.zip | 256 | keithlcy.zip | 238 | kengoa.zip | 256 |
| kengo.zip | 256 | kidnikiu.zip | 256 | kidniki.zip | 256 |
| kikcubicb.zip | 256 | kikcubic.zip | 256 | killcom.zip | 256 |
| kncljoea.zip | 256 | kncljoe.zip | 256 | kopunch.zip | 208 |
| korokoro.zip | 239 | kouyakyu.zip | 208 | kram2.zip | 256 |
| kram3.zip | 256 | kram.zip | 256 | kungfub2.zip | 256 |
| kungfub3.zip | 256 | kungfub.zip | 256 | kungfud.zip | 256 |
| kungfumd.zip | 256 | kungfum.zip | 256 | ladyfrog.zip | 216 |
| lazercmd.zip | 230 | ldrun2.zip | 256 | ldrun3jp.zip | 256 |
| ldrun3j.zip | 256 | ldrun3.zip | 256 | ldrun4.zip | 256 |
| ldruna.zip | 256 | ldrun.zip | 256 | leprechn.zip | 256 |
| lethalj.zip | 236 | lithero.zip | 256 | llander1.zip | 0 |
| llander.zip | 0 | logger.zip | 248 | lohtb2.zip | 256 |
| lohtb.zip | 256 | lohtj.zip | 256 | loht.zip | 256 |
| lotlot.zip | 256 | ltcasin2.zip | 256 | ltcasino.zip | 256 |
| ltswords.zip | 256 | lunarba1.zip | 0 | lunarbat.zip | 0 |
| madcrash.zip | 216 | madcrush.zip | 216 | mainsnk.zip | 216 |
| majtitlej.zip | 256 | majtitle.zip | 256 | marvins.zip | 216 |
| matchit2.zip | 256 | matchit.zip | 256 | mblkjack.zip | 190 |
| megadon.zip | 236 | megatack.zip | 256 | meosism.zip | 236 |
| mhavoc2.zip | 0 | mhavocp.zip | 0 | mhavocrv.zip | 0 |
| mhavoc.zip | 0 | minferno.zip | 184 | missile2.zip | 231 |
| missile.zip | 231 | mjangels.zip | 239 | mk2chal.zip | 254 |
| mk2r14.zip | 254 | mk2r21.zip | 254 | mk2r32.zip | 254 |
| mk2r42.zip | 254 | mk2r91.zip | 254 | mk2.zip | 254 |
| mk3p40.zip | 254 | mk3r10.zip | 254 | mk3r20.zip | 254 |
| mk3.zip | 254 | mkla1.zip | 256 | mkla2.zip | 256 |
| mkla3.zip | 256 | mkla4.zip | 256 | mkprot9.zip | 256 |
| mkr4.zip | 254 | mk.zip | 254 | mogura.zip | 256 |
| mole.zip | 200 | momoko.zip | 216 | motorace.zip | 256 |
| mpatrolw.zip | 252 | mpatrol.zip | 252 | mrflea.zip | 248 |
| mrheli.zip | 256 | mtrap3.zip | 256 | mtrap4.zip | 256 |
| mtrap.zip | 256 | mustache.zip | 248 | narc3.zip | 400 |
| narc.zip | 400 | natodefa.zip | 256 | natodef.zip | 256 |
| nbahangt.zip | 254 | nbajamr2.zip | 254 | nbajamt1.zip | 254 |
| nbajamt2.zip | 254 | nbajamt3.zip | 254 | nbajamte.zip | 254 |
| nbajam.zip | 254 | nbamaxht.zip | 254 | nbamht1.zip | 254 |
| nbamht.zip | 254 | nextfase.zip | 208 | nitedrvr.zip | 256 |
| nspiritj.zip | 256 | nspirit.zip | 256 | nss_actr.zip | 225 |
| nss_adam.zip | 225 | nss_aten.zip | 225 | nss_con3.zip | 225 |
| nss_fzer.zip | 225 | nss_lwep.zip | 225 | nss_ncaa.zip | 225 |
| nss_rob3.zip | 225 | nss_skin.zip | 225 | nss_smw.zip | 225 |
| nss_ssoc.zip | 225 | nss_sten.zip | 225 | nss.zip | 225 |
| nynyg.zip | 256 | nyny.zip | 256 | nzeroteama.zip | 256 |
| nzeroteam.zip | 256 | offroadc.zip | 400 | omegrace.zip | 0 |
| onetwoe.zip | 256 | onetwo.zip | 256 | openice.zip | 254 |
| orius.zip | 256 | outline.zip | 248 | pengadvb.zip | 216 |
| pepper2.zip | 256 | phantoma.zip | 256 | phoenix2.zip | 208 |
| phoenix3.zip | 208 | phoenixass.zip | 208 | phoenixa.zip | 208 |
| phoenixb.zip | 208 | phoenixc2.zip | 208 | phoenixc3.zip | 208 |
| phoenixc4.zip | 208 | phoenixc.zip | 208 | phoenixdal.zip | 208 |
| phoenixj.zip | 208 | phoenixs.zip | 208 | phoenixt.zip | 208 |
| phoenix.zip | 208 | pleiadbl.zip | 208 | pleiadce.zip | 208 |
| pleiadsb2.zip | 208 | pleiadsi.zip | 208 | pleiadsn.zip | 208 |
| pleiadss.zip | 208 | pleiads.zip | 208 | plygonet.zip | 256 |
| polyplay.zip | 256 | popeyebl.zip | 448 | popeyef.zip | 448 |
| popeyeu.zip | 448 | portrait.zip | 320 | potogold.zip | 256 |
| poundfor.zip | 256 | poundfou.zip | 256 | primella.zip | 256 |
| prosoccr.zip | 256 | qix2.zip | 256 | qixa.zip | 256 |
| qixb.zip | 256 | qix.zip | 256 | quantum1.zip | 0 |
| quantump.zip | 0 | quantum.zip | 0 | quizf1.zip | 256 |
| quizoa.zip | 200 | quizo.zip | 200 | quiztvqq.zip | 239 |
| r2dtank.zip | 256 | rabiolep.zip | 216 | racedcb4.zip | 288 |
| racedcg4.zip | 288 | racedrc1.zip | 288 | racedrc2.zip | 288 |
| racedrc4.zip | 288 | racedrcb.zip | 288 | racedrcg.zip | 288 |
| racedrvc.zip | 288 | radarzn1.zip | 248 | radarznt.zip | 248 |
| radarzon.zip | 248 | rallys.zip | 256 | redbaron.zip | 0 |
| revx.zip | 254 | ripcord.zip | 256 | ripoff.zip | 0 |
| rmpgwt11.zip | 254 | rmpgwt.zip | 254 | robotbwl.zip | 256 |
| rotaryf.zip | 256 | route16a.zip | 256 | route16bl.zip | 256 |
| route16b.zip | 256 | route16c.zip | 256 | route16.zip | 256 |
| routex.zip | 256 | rpunch.zip | 216 | rtype2jc.zip | 256 |
| rtype2j.zip | 256 | rtype2.zip | 256 | rtypeb.zip | 256 |
| rtypejp.zip | 256 | rtypej.zip | 256 | rtypepj.zip | 256 |
| rtypeu.zip | 256 | rtype.zip | 256 | rundeep.zip | 248 |
| sadari.zip | 256 | safarirj.zip | 208 | safarir.zip | 208 |
| sbugger.zip | 256 | scessjoe.zip | 208 | scorpion.zip | 296 |
| sdungeon.zip | 256 | sgladiat.zip | 216 | shangha2.zip | 280 |
| shanghai.zip | 280 | shimpacp.zip | 256 | shimpact.zip | 256 |
| shisen2.zip | 256 | shisen.zip | 256 | shougi2.zip | 256 |
| shougi.zip | 256 | shtrider.zip | 256 | sia2650.zip | 768 |
| sichuan2.zip | 256 | sichuana.zip | 256 | sidetrac.zip | 256 |
| skyskipr.zip | 448 | slithera.zip | 256 | slither.zip | 256 |
| smashtv4.zip | 256 | smashtv5.zip | 256 | smashtv6.zip | 256 |
| smashtv.zip | 256 | solarq.zip | 0 | spacduel.zip | 0 |
| spacecho2.zip | 256 | spacecho.zip | 256 | spacefrt.zip | 248 |
| spacewar.zip | 0 | spacfura.zip | 0 | spacfury.zip | 0 |
| spartanx.zip | 256 | speakresb.zip | 256 | speakres.zip | 256 |
| spectar1.zip | 256 | spectar.zip | 256 | speedatk.zip | 256 |
| speedfrk.zip | 0 | spelnkrj.zip | 256 | spelunk2.zip | 256 |
| spelunkrj.zip | 256 | spelunkr.zip | 256 | spiders2.zip | 256 |
| spiders.zip | 256 | srmp7.zip | 239 | sspeedr.zip | 248 |
| starcas1.zip | 0 | starcase.zip | 0 | starcasp.zip | 0 |
| starcas.zip | 0 | starcrus.zip | 256 | starhawk.zip | 0 |
| startrek.zip | 0 | starwar1.zip | 0 | starwars.zip | 0 |
| steelta1.zip | 288 | steeltag.zip | 288 | steeltal.zip | 288 |
| steeltap.zip | 288 | stellcas.zip | 0 | stoneba2.zip | 256 |
| stonebal.zip | 256 | stratvoxb.zip | 256 | stratvox.zip | 256 |
| strkforc.zip | 256 | stunrn2e.zip | 228 | stunrn3e.zip | 228 |
| stunrun0.zip | 228 | stunrun2.zip | 228 | stunrun3.zip | 228 |
| stunrun4.zip | 228 | stunrun5.zip | 228 | stunrune.zip | 228 |
| stunrunj.zip | 228 | stunrunp.zip | 228 | stunrun.zip | 228 |
| sundance.zip | 0 | supdrapo.zip | 256 | superbik.zip | 248 |
| supertnk.zip | 256 | suprglob.zip | 236 | suprmatk.zip | 231 |
| survival.zip | 208 | svolleyk.zip | 216 | svolleyu.zip | 216 |
| svolley.zip | 216 | syvalionp.zip | 400 | syvalion.zip | 400 |
| tacscan.zip | 0 | tailg.zip | 0 | targc.zip | 256 |
| targ.zip | 256 | taxidrvr.zip | 208 | tempest1.zip | 0 |
| tempest2.zip | 0 | tempest3.zip | 262 | tempest.zip | 0 |
| temptube.zip | 0 | term2la1.zip | 256 | term2la2.zip | 256 |
| term2.zip | 256 | thedeep.zip | 248 | theglob2.zip | 236 |
| theglob3.zip | 236 | theglob.zip | 236 | thief.zip | 256 |
| tickee.zip | 200 | tinv2650.zip | 768 | tnk3j.zip | 216 |
| tnk3.zip | 216 | tomahaw5.zip | 256 | tomahawk.zip | 256 |
| topland.zip | 400 | topsecex.zip | 236 | totcarnp.zip | 256 |
| totcarn.zip | 256 | tourtab2.zip | 200 | tourtabl.zip | 200 |
| travrusa.zip | 256 | trog3.zip | 256 | trogpa6.zip | 256 |
| trogp.zip | 256 | trog.zip | 256 | ttmahjng.zip | 256 |
| ultennis.zip | 256 | umk3r10.zip | 254 | umk3r11.zip | 254 |
| umk3.zip | 254 | untoucha.zip | 256 | usg185.zip | 248 |
| usg252.zip | 248 | usg32.zip | 248 | usg82.zip | 248 |
| usg83x.zip | 248 | usg83.zip | 248 | vamphalf.zip | 236 |
| vangrd2.zip | 216 | vautourza.zip | 208 | vautour.zip | 208 |
| vautourz.zip | 208 | venture2.zip | 256 | venture4.zip | 256 |
| venture.zip | 256 | victorba.zip | 256 | victory.zip | 256 |
| victroad.zip | 216 | videopin.zip | 256 | vigilanta.zip | 256 |
| vigilantbl.zip | 256 | vigilantb.zip | 256 | vigilantc.zip | 256 |
| vigilantd.zip | 256 | vigilantg.zip | 256 | vigilanto.zip | 256 |
| vigilant.zip | 256 | vigilntj.zip | 256 | vigilntu.zip | 256 |
| wallca.zip | 256 | wallc.zip | 256 | wallst.zip | 248 |
| wargods.zip | 400 | warrior.zip | 0 | wotw.zip | 0 |
| wwfmaniab.zip | 254 | wwfmania.zip | 254 | xexexa.zip | 256 |
| xexexj.zip | 256 | xexex.zip | 256 | xmultiplm72.zip | 256 |
| xmultipl.zip | 256 | yanchamr.zip | 256 | yarunara.zip | 239 |
| youjyudn.zip | 256 | yumefuda.zip | 256 | zektor.zip | 0 |
| zeroteama.zip | 256 | zeroteamb.zip | 256 | zeroteamc.zip | 256 |
| zeroteamd.zip | 256 | zeroteamsr.zip | 256 | zeroteams.zip | 256 |
| zeroteam.zip | 256 | zerotm2k.zip | 256 | zookeep2.zip | 256 |
| zookeep3.zip | 256 | zookeep.zip | 256 |

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

|  |
