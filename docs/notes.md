# esp32_cnc20mm - Various Implementation Notes

**[Home](readme.md)** --
**[Design](design.md)** --
**Details** --
**[Electronics](electronics.md)** --
**[Box](box.md)** --
**[Spindle](spindle.md)** --
**[Y-Axis](y_axis.md)** --
**[Table](table.md)** --
**[Build](build.md)** --
**[Laser](laser.md)** --
**[Accessories](accessories.md)** --
**[Software](software.md)** --
**Notes** --
**[Projects](projects.md)**

## Problem - Play in the SS Tubes


## Laser vesus Milling

As I ended up doing most of my **laser cutting** using the
Metal Honeycomb, this machine is kind of *overkill* for doing
most of the projects that I end up using the machine for.

And, although more experiments and projects are necessary,
due largely to the *Play in the SS Tubes* discussed above, the
**milling** capabilitiies of the machine, particularly on
*large pieces* of plywood, or god forbid, **aluminum** (which I have
experimented on a little) have not been overwhelmingly sucessful.

It is *really slow* to cut through 3/4" plywood *1/8" at a time*,
at a few inches per minute.  So much so that, for anything serious,
it results in jobs that take **hours** to run.  And all it takes is
**a few missed steps** on the stepper motors, and the whole project
is **ruined**.

I seem get a lot more mis-steps using the *spindle* than I do
using the *laser*. I suspect that the **100V DC** power running
to the spindle is probably *pulse width modulated* and results
in a lot of electrical noise going through the spindle power cable, which
runs in parallel for many feet with the stepper motor cables, thus affecting
the stepper motors and causing them to miss (or add extra) steps.
It is *very frustrating* to have the machine
grinding away for several hours, vacuuming all the dust up, only
to have it *ruin the workpiece*.   And that has happened multiple
times, including multiple times while trying to make the same
piece.

I suspect that my for workflow, due to these limitations, if
I actually want to **cut large pieces of plywood**, which,
by the way just happens to be the specific task of an upcoming project
for which I basically built this damned machine, that I will have to
resort to using the **laser engraving** capabilities of the machine to
*draw* on the wood, and then cut it out with a **circular** or **jig-saw**.

The other major project that I built the machine for involves
millling an **1/8" aluminum panel** about 24x16" ..  I *may*
end up doing that in smaller pieces on my 2nd chcn machine
with it's 300W spindle as that machine seems to be more rigid,
and the spindle power supply for that is NOT run parallel to
the stepper motor cables (it just hangs off to the side), and
so there is less noise, as given by the fact that THAT machine
had no problem milling the pieces of wood used in THIS machine,
but I suspect THIS machine would have problems trying to do so.


## Documentation (Lack of Movies and Pictures)

I did not do a very good job of filming and photographing
[this project](build.md),
or the many
[improvements](laser.md)
and
[additions](accessories.md) I made to the resulting machine.

Nor did I do a particularly good job of documenting the
[wood-working projects](projects.md)
that I subsquently made using this machine.

I *may* subsquently, on **future projects** take the time to
*film the machine in action* and *demonstrate* it's cpabilities
in more detail.   However, for now, at least I have
**documented** it to some degree for posterities sake.

We'll see!


**Next** - some early [**Projects**](projects.md) made using the machine ...