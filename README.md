SNES Hax
========

Collection of small hax for various SNES games, a result of me just learning
how it all works.

I use OSX, so the following instructions are for that.

0. Have an emulator and a clean ROM that you can play.
1. Download [Maxkas](http://www.smwcentral.net/?p=section&a=details&id=4631). This contains a GUI for patching ROMs and some command line utilities. I use the latter.
2. Make a copy of the ROM to patch and patch it

        cp smw.sfc smw-hacked.sfc
        asar smw-coinlife.asm smw-hacked.sfc

3. Load the hacked ROM into your emulator and enjoy!

Note that by default OpenEmu will copy your ROM into it's own library when you import it. You can disable this in
`Preferences -> Library`. If patch your ROM, you can refresh it by stopping
emulation and starting it again. Quick save/load persist through this, so you
don't need to run from the start every time!

Tools
-----

### Debugger

I've been using [Geiger's Snes9x
Debugger](http://www.romhacking.net/utilities/241/) under wine.

    brew install wine winetricks
    winetricks vcrun2005
    wine Snes9X1.51.ep10r2.exe

### Enjoy2

For controlling above debugger with a gamepad, I used
[Enjoy2](https://github.com/fyhuang/enjoy2/) to map gamepad inputs to the
keyboard. The 1.2 release was broken for me, I needed to compile it myself with
[a revert](https://github.com/fyhuang/enjoy2/issues/14) of the broken code.

### ROM Headers

[NSRT](http://www.romhacking.net/?page=utilities&author=782) can add or strip
headers to ROMs, which you might need when creating compatible binary patch
files.

    ./nsrt -addhead headerless-rom.sfc

### Creating IPS files

I don't know how to do this yet :(

Useful links
------------

* [Basic ASM Tutorial](http://www.smwcentral.net/?p=viewthread&t=47188&page=1#p761832)
* [SMW ROM map](http://www.smwcentral.net/?p=map&type=rom)
* [SMW RAM map](http://www.smwcentral.net/?p=map&type=ram)
* [SMW Annotated Disassembly](http://www.smwcentral.net/?p=section&a=details&id=4727).
  _This is often more useful than ROM map._
* [65861 Assembler Reference](http://wiki.superfamicom.org/snes/show/65816+Reference)
