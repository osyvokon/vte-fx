What is VTE-FX?
===============

VTE-FX is a fork of libvte that aims to make terminal emulators look beautiful.
More specifically, it adds ability to script visual effects in your terminal
with Lua, simple dynamic language that would take only few minutes to learn.
No recompilations, no serious programming background -- literally everyone
can make their own version of terminal!

This project was written by Aleksey Sivokon as a 24-hackathon project.
Thanks to http://24hack.org/ for the great time!


What is libvte?
---------------


How does it works?
------------------

VTE runs embedded Lua interpreter to evaluate user's script.  User script
should define function named ``render`` which actually draws in terminal.  To
make this possible, several drawing methods are exposed to the Lua interpreter.
Also, size and current position of cursor block is passed to ``render`` function,
as well as time value, which is used for animations.


API
===

TODO


Examples
========

Following are fairly simple animations, no script is longer than 30 lines.
Also please keep in mind, that animated GIF are really bad in showing
gradients.

![Example 00](/assets/00.gif)
![Example 01](/assets/01.gif)
![Example 02](/assets/02.gif)
![Example 03](/assets/03.gif)
![Example 04](/assets/04.gif)
![Example 05](/assets/05.gif)
