Live Simulator: 2
=================

Live Simulator: 2 (`DEPLS2`) is a Love Live! School Idol Festival Live Show Simulator written in Lua.

It is currently LL!SIF live simulator that supports variety of different beatmap formats.

How to run
==========

Please see `docs/How_To_Setup.md`

Components
==========

Live Simulator: 2 uses these special components:

* AquaShine Loader (base/core component that runs Live Simulator: 2). Please see `docs/AquaShine.md` for more information about this component.

* NoteLoader, internal component responsible of loading beatmaps from variety of different formats.

Live Simulator: 2 uses these external libraries to run:

* [Yohane Playground Flash Abstraction](https://github.com/MikuAuahDark/Yohane)

* [Shelsha Playground Texture Bank Loader](https://github.com/MikuAuahDark/Shelsha)

* [LuaBit](http://luaforge.net/projects/bit/) (when running under Lua 5.1)

* [tween.lua](https://github.com/kikito/tween.lua) (for most animations)

* [JSON.lua](http://regex.info/blog/lua/json) (to load SIF and LLP beatmap)

Controls
========

* A, S, D, F, Space, J, K, L, Semicolon = Tap notes

* Left Shift = Show debug information (FPS, Elapsed time, ...)

* Left Ctrl = Toggle Autoplay On/Off

* Left Alt = Show note distance

* F5 = Turn the song volume down by 5% (default is 80%)

* F6 = Turn the song volume up by 5%

* Backspace = Restart live simulator

Supported Beatmaps
==================

* Raw SIF beatmap, this is main beatmap format that Live Simulator: 2 internally uses.

* Sukufesu Simulator beatmap, yuyu live simulator beatmap.

* Custom Beatmap Festival project folder.

* MIDI, specialized MIDI file.

* LLPractice beatmap.

* SIFTrain beatmap, both original one and "extended" one were supported.

Screenshots
===========

Beatmap: [Thrilling One Way Custom Beatmap](https://www.youtube.com/watch?v=xfWGjFo5dy8) (example beatmap code `::2`)

Note circle Pre-5.0

![Note circle Pre-5.0](http://i.imgur.com/qTe7zaW.png)

Note circle 5.0 style

![Note circle 5.0 style](http://i.imgur.com/6GbKrrw.png)

Disclaimer
==========

This live simulator also uses many assets from Love Live! School Idol Festival game (background, header, ...)

Special Thanks
==============

* [@yuyu0127_](https://twitter.com/yuyu0127_) - Note circle images.

License
=======

Live Simulator: 2 is licensed under MIT License. See `LICENSE.md` for more details.

Live Simulator: 2 uses Motoya L Maru font. Please see `LICENSE.MTLmr3m` for
Motoya L Maru font license.

Live Simulator: 2 uses image asset from Love Live! School Idol Festival.

Live Simulator: 2 uses these external libraries:

* [tween.lua](https://github.com/kikito/tween.lua)

* [JSON.lua](http://regex.info/blog/lua/json)

* Lua FFT library (`luafft.lua`)

* LuaBit library (`bit.lua`) (fallback: used if `bit` library is unavailable)

Please see respective files (or website) for license of those libraries.
