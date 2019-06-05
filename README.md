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

The following roms have a resolution > 240p and will not look right.

| 8ball1.zip | 8ball.zip | ace.zip | ainferno.zip | airduelm72.zip | airduel.zip |
|--- |--- |--- |--- |--- |--- |
| alinvade.zip | alphamis.zip | alphaona.zip | alphaone.zip | ambushh.zip | ambushj.zip |
| ambusht.zip | ambushv.zip | ambush.zip | amerdart.zip | aquariumj.zip | aquarium.zip |
| arabiana.zip | arabian.zip | arcadia.zip | arian.zip | armorap.zip | armorar.zip |
| armora.zip | ashnojoe.zip | aso.zip | astdelu1.zip | astdelux.zip | asterock.zip |
| asteroi1.zip | asteroib.zip | asteroid.zip | astrof2.zip | astrof3.zip | astrof.zip |
| athena.zip | avefenixl.zip | avefenixrf.zip | avefenix.zip | aztarac.zip | barrier.zip |
| battlan2.zip | battlan3.zip | battlane2.zip | battlane3.zip | battlane.zip | battlera.zip |
| battroad.zip | bbonk.zip | bchopper.zip | bcrusher.zip | beaminv.zip | beast.zip |
| bldwolf.zip | blitz.zip | blmbycaru.zip | blmbycar.zip | blmbycau.zip | boxingb.zip |
| bradley.zip | buccanrsa.zip | buccanrsb.zip | buccanrs.zip | bullfgtr.zip | bwidow.zip |
| bzone2.zip | bzonec.zip | bzone.zip | cabaret.zip | canvas.zip | capbowl2.zip |
| capbowl3.zip | capbowl4.zip | capbowl.zip | capitol.zip | carpolo.zip | catapult.zip |
| ccastle2.zip | ccastle3.zip | ccastles.zip | cchasm1.zip | cchasm.zip | challeng.zip |
| chboxing.zip | cheesech.zip | chwrestl.zip | circus.zip | cischeat.zip | clbowl.zip |
| complexx.zip | condorn.zip | condor.zip | copsnrob.zip | cosmccop.zip | cosmos.zip |
| countryc.zip | crash.zip | crusherm.zip | crusnu21.zip | crusnu40.zip | crusnusa.zip |
| crusnw13.zip | crusnw20.zip | crusnwld.zip | darkwar.zip | dazzler.zip | dbreedm72.zip |
| dbreed.zip | dbz2.zip | dbza.zip | dbz.zip | dealer.zip | deltrace.zip |
| demon.zip | dkgenm72.zip | dkgensanm72.zip | dkgensan.zip | dodgem.zip | dogosokb.zip |
| dogosoke.zip | dribling.zip | driblino.zip | drifto94.zip | eggventr.zip | eggvntdx.zip |
| elecyoy2.zip | elecyoyo.zip | elim2a.zip | elim2.zip | elim4.zip | equitess.zip |
| equites.zip | esb.zip | falcon.zip | falconz.zip | fantland.zip | fax.zip |
| fenix.zip | fitegol2.zip | fitegolf2.zip | fitegolfu.zip | fitegolf.zip | galaxygn.zip |
| gallop.zip | galpanib.zip | goldbug.zip | gravitar.zip | gravitr2.zip | gravp.zip |
| griffon.zip | gundl94.zip | hal21j.zip | hal21.zip | hanaawas.zip | harddrc1.zip |
| harddrcb.zip | harddrcg.zip | harddrvc.zip | hardhat.zip | hdrivaip.zip | hdrivair.zip |
| heartatk.zip | heatbrlo.zip | heatbrlu.zip | heatbrl.zip | hero.zip | hexionb.zip |
| hexion.zip | hharryu.zip | hharry.zip | hiimpact.zip | hitme.zip | hnayayoi.zip |
| hnfubuki.zip | holeland.zip | hunchbak.zip | huncholy.zip | igmo.zip | ikaria.zip |
| ikarijpb.zip | ikarijp.zip | ikarinc.zip | ikariram.zip | ikari.zip | imgfightj.zip |
| imgfight.zip | jcross.zip | jdreddp.zip | kaos.zip | keithlcy.zip | kengoa.zip |
| kengo.zip | kidnikiu.zip | kidniki.zip | kikcubicb.zip | kikcubic.zip | killcom.zip |
| kncljoea.zip | kncljoe.zip | kopunch.zip | korokoro.zip | kouyakyu.zip | kram2.zip |
| kram3.zip | kram.zip | kungfub2.zip | kungfub3.zip | kungfub.zip | kungfud.zip |
| kungfumd.zip | kungfum.zip | ladyfrog.zip | lazercmd.zip | ldrun2.zip | ldrun3jp.zip |
| ldrun3j.zip | ldrun3.zip | ldrun4.zip | ldruna.zip | ldrun.zip | leprechn.zip |
| lethalj.zip | lithero.zip | llander1.zip | llander.zip | logger.zip | lohtb2.zip |
| lohtb.zip | lohtj.zip | loht.zip | lotlot.zip | ltcasin2.zip | ltcasino.zip |
| ltswords.zip | lunarba1.zip | lunarbat.zip | madcrash.zip | madcrush.zip | mainsnk.zip |
| majtitlej.zip | majtitle.zip | marvins.zip | matchit2.zip | matchit.zip | mblkjack.zip |
| megadon.zip | megatack.zip | meosism.zip | mhavoc2.zip | mhavocp.zip | mhavocrv.zip |
| mhavoc.zip | minferno.zip | missile2.zip | missile.zip | mjangels.zip | mk2chal.zip |
| mk2r14.zip | mk2r21.zip | mk2r32.zip | mk2r42.zip | mk2r91.zip | mk2.zip |
| mk3p40.zip | mk3r10.zip | mk3r20.zip | mk3.zip | mkla1.zip | mkla2.zip |
| mkla3.zip | mkla4.zip | mkprot9.zip | mkr4.zip | mk.zip | mogura.zip |
| mole.zip | momoko.zip | motorace.zip | mpatrolw.zip | mpatrol.zip | mrflea.zip |
| mrheli.zip | mtrap3.zip | mtrap4.zip | mtrap.zip | mustache.zip | narc3.zip |
| narc.zip | natodefa.zip | natodef.zip | nbahangt.zip | nbajamr2.zip | nbajamt1.zip |
| nbajamt2.zip | nbajamt3.zip | nbajamte.zip | nbajam.zip | nbamaxht.zip | nbamht1.zip |
| nbamht.zip | nextfase.zip | nitedrvr.zip | nspiritj.zip | nspirit.zip | nss_actr.zip |
| nss_adam.zip | nss_aten.zip | nss_con3.zip | nss_fzer.zip | nss_lwep.zip | nss_ncaa.zip |
| nss_rob3.zip | nss_skin.zip | nss_smw.zip | nss_ssoc.zip | nss_sten.zip | nss.zip |
| nynyg.zip | nyny.zip | nzeroteama.zip | nzeroteam.zip | offroadc.zip | omegrace.zip |
| onetwoe.zip | onetwo.zip | openice.zip | orius.zip | outline.zip | pengadvb.zip |
| pepper2.zip | phantoma.zip | phoenix2.zip | phoenix3.zip | phoenixass.zip | phoenixa.zip |
| phoenixb.zip | phoenixc2.zip | phoenixc3.zip | phoenixc4.zip | phoenixc.zip | phoenixdal.zip |
| phoenixj.zip | phoenixs.zip | phoenixt.zip | phoenix.zip | pleiadbl.zip | pleiadce.zip |
| pleiadsb2.zip | pleiadsi.zip | pleiadsn.zip | pleiadss.zip | pleiads.zip | plygonet.zip |
| polyplay.zip | popeyebl.zip | popeyef.zip | popeyeu.zip | portrait.zip | potogold.zip |
| poundfor.zip | poundfou.zip | primella.zip | prosoccr.zip | qix2.zip | qixa.zip |
| qixb.zip | qix.zip | quantum1.zip | quantump.zip | quantum.zip | quizf1.zip |
| quizoa.zip | quizo.zip | quiztvqq.zip | r2dtank.zip | rabiolep.zip | racedcb4.zip |
| racedcg4.zip | racedrc1.zip | racedrc2.zip | racedrc4.zip | racedrcb.zip | racedrcg.zip |
| racedrvc.zip | radarzn1.zip | radarznt.zip | radarzon.zip | rallys.zip | redbaron.zip |
| revx.zip | ripcord.zip | ripoff.zip | rmpgwt11.zip | rmpgwt.zip | robotbwl.zip |
| rotaryf.zip | route16a.zip | route16bl.zip | route16b.zip | route16c.zip | route16.zip |
| routex.zip | rpunch.zip | rtype2jc.zip | rtype2j.zip | rtype2.zip | rtypeb.zip |
| rtypejp.zip | rtypej.zip | rtypepj.zip | rtypeu.zip | rtype.zip | rundeep.zip |
| sadari.zip | safarirj.zip | safarir.zip | sbugger.zip | scessjoe.zip | scorpion.zip |
| sdungeon.zip | sgladiat.zip | shangha2.zip | shanghai.zip | shimpacp.zip | shimpact.zip |
| shisen2.zip | shisen.zip | shougi2.zip | shougi.zip | shtrider.zip | sia2650.zip |
| sichuan2.zip | sichuana.zip | sidetrac.zip | skyskipr.zip | slithera.zip | slither.zip |
| smashtv4.zip | smashtv5.zip | smashtv6.zip | smashtv.zip | solarq.zip | spacduel.zip |
| spacecho2.zip | spacecho.zip | spacefrt.zip | spacewar.zip | spacfura.zip | spacfury.zip |
| spartanx.zip | speakresb.zip | speakres.zip | spectar1.zip | spectar.zip | speedatk.zip |
| speedfrk.zip | spelnkrj.zip | spelunk2.zip | spelunkrj.zip | spelunkr.zip | spiders2.zip |
| spiders.zip | srmp7.zip | sspeedr.zip | starcas1.zip | starcase.zip | starcasp.zip |
| starcas.zip | starcrus.zip | starhawk.zip | startrek.zip | starwar1.zip | starwars.zip |
| steelta1.zip | steeltag.zip | steeltal.zip | steeltap.zip | stellcas.zip | stoneba2.zip |
| stonebal.zip | stratvoxb.zip | stratvox.zip | strkforc.zip | stunrn2e.zip | stunrn3e.zip |
| stunrun0.zip | stunrun2.zip | stunrun3.zip | stunrun4.zip | stunrun5.zip | stunrune.zip |
| stunrunj.zip | stunrunp.zip | stunrun.zip | sundance.zip | supdrapo.zip | superbik.zip |
| supertnk.zip | suprglob.zip | suprmatk.zip | survival.zip | svolleyk.zip | svolleyu.zip |
| svolley.zip | syvalionp.zip | syvalion.zip | tacscan.zip | tailg.zip | targc.zip |
| targ.zip | taxidrvr.zip | tempest1.zip | tempest2.zip | tempest3.zip | tempest.zip |
| temptube.zip | term2la1.zip | term2la2.zip | term2.zip | thedeep.zip | theglob2.zip |
| theglob3.zip | theglob.zip | thief.zip | tickee.zip | tinv2650.zip | tnk3j.zip |
| tnk3.zip | tomahaw5.zip | tomahawk.zip | topland.zip | topsecex.zip | totcarnp.zip |
| totcarn.zip | tourtab2.zip | tourtabl.zip | travrusa.zip | trog3.zip | trogpa6.zip |
| trogp.zip | trog.zip | ttmahjng.zip | ultennis.zip | umk3r10.zip | umk3r11.zip |
| umk3.zip | untoucha.zip | usg185.zip | usg252.zip | usg32.zip | usg82.zip |
| usg83x.zip | usg83.zip | vamphalf.zip | vangrd2.zip | vautourza.zip | vautour.zip |
| vautourz.zip | venture2.zip | venture4.zip | venture.zip | victorba.zip | victory.zip |
| victroad.zip | videopin.zip | vigilanta.zip | vigilantbl.zip | vigilantb.zip | vigilantc.zip |
| vigilantd.zip | vigilantg.zip | vigilanto.zip | vigilant.zip | vigilntj.zip | vigilntu.zip |
| wallca.zip | wallc.zip | wallst.zip | wargods.zip | warrior.zip | wotw.zip |
| wwfmaniab.zip | wwfmania.zip | xexexa.zip | xexexj.zip | xexex.zip | xmultiplm72.zip |
| xmultipl.zip | yanchamr.zip | yarunara.zip | youjyudn.zip | yumefuda.zip | zektor.zip |
| zeroteama.zip | zeroteamb.zip | zeroteamc.zip | zeroteamd.zip | zeroteamsr.zip | zeroteams.zip |
| zeroteam.zip | zerotm2k.zip | zookeep2.zip | zookeep3.zip | zookeep.zip |

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

