Super Mario World Hax
=====================

Collection of small SMW hax, a result of me just learning how it all works.

I use OSX, so the following instructions are for that.

0. Have an emulator and a clean SMW ROM that you can play.
1. Download [Maxkas](http://www.smwcentral.net/?p=section&a=details&id=4631). This contains a GUI for patching ROMs and some command line utilities. I use the latter.
2. Make a copy of the ROM to patch and patch it

        cp smw.sfc smw-hacked.sfc
        asar coinlife.asm smw-hacked.sfc

3. Load the hacked ROM into your emulator and enjoy!

Note that by default OpenEmu will copy your ROM into it's own library when you import it. You can disable this in
`Preferences -> Library`. If patch your ROM, you can refresh it by stopping
emulation and starting it again. Quick save/load persist through this, so you
don't need to run from the start every time!

Useful links
------------

* [Basic Tutorial](http://www.smwcentral.net/?p=viewthread&t=47188&page=1#p761832)
* [ROM map](http://www.smwcentral.net/?p=map&type=rom)
* [RAM map](http://www.smwcentral.net/?p=map&type=ram)
* [Annotated Disassembly](http://www.smwcentral.net/?p=section&a=details&id=4727).
  _This is often more useful than ROM map._
* [65861 Assembler Reference](http://wiki.superfamicom.org/snes/show/65816+Reference)
