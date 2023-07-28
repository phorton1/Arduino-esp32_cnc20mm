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

-

- Problem - Play in the SS Tubes
- Laser vesus Milling
- Stepper Motor Settings
- Documentation (Lack of Movies and Pictures)



## Todo

- movies - milling wood
- movies - laser cutting

- electronics - pic of controller board
- laser - pics of actual laser
- accessories - pic(s) of overall vacuum system
- accessories - pic of actual laser scoop
- accessories - pics of actual Brush Attachment

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


## Stepper Motor Settings

Here, for posterities sake, is a **section of comments** directly
from the **YAML file** that shows the *parameter and switch
settings* for the **Stepper Motors and Controller Boards**:

```perl
# STEPPER MOTOR WIRING
#
#     In general the pins on plugs into the box, facing the left side, are Gnd, A-, A+, B-, B+.
#     The plugs are consistently wired to use Gnd, Green, Red, Black, and White (from left to right)
#
# GENERAL EMPIRICALLY DERIVED IS2OUT SETTINGS
#
#    pulse_us: 16
#    dir_delay_us: 16
#    disable_delay_us: 16
#
# CONTROLLERS / GENERAL
#
#     (A) Current Switches SW1,SW2, and SW3
#
#           SW1   SW2   SW3     Amps
#            0     0     0      NA
#            0     1     0      0.5
#            0     0     1      1.0
#            1     0     0      1.5         <-- used on all motors
#            0     1     1      NA?  1.5?
#            1     1     0      2.0
#            1     0     1      2.5
#            1     1     1      3.0
#
#     (B) Micro-stepping
#         The switch labels are bogus
#         This is somewhat more valid, determined empirically
#
#         S3  S4    steps/rev
#          0   0     1600                   <-- used for 23HE22-2804S small Z motor
#          1   0     3200                   <-- used for 23HSB430B big X,Y,A motors
#          0   1      400
#          1   1      200
#
#     (C) Decay Mode - never quite sure about this.  From board:
#
#         S1  S2
#          0   0      0%
#          1   0     25%                    <-- used for 23HE22-2804S small Z motor
#          0   1     50%
#          1   1    100%                    <-- best for 23HSB430B big motors
#
#     (D) "Torgue" - same fuzziness
#
#         S5  S6
#          1   1     20%
#          0   1     50%                    <-- best for 23HSB430B big motors, also used for 23HE22-2804S small Z motor
#          1   0     75%
#          0   0    100%
#
#
# 23HSB430B big X,Y,A motors
#
#     DONT UNDERSTAND!!!  The X and Y axes are only moving 45mm per revolution
#        even though there are 16 teeth at 3mm per tooth.
#
#     USED TO BE:
#           1 revolution = 48mm
#           1 mm = 3200/48 == 66.667 steps_per_mm
#
#     CHANGING TO:
#           1 revolution = 45mm
#           1mm = 3200/45 == 71.111111 steps_per_mm
#
#     X IS STILL OFF BY +1mm over 300mm, 299/300 * 71.1111 = 70.874
#         but Y is OK ?!?!?
#
#     Using 16us pulses I found that S1=1,S2=1 for "decay" is generally quietest,
#     and I use (S5=0, S6=1) for "50% torque and am starting with the defaults of
#     SW1=1, SW2=0, and SW3=0 for, a current limit of 1.5A, so my settings for the
#     X,Y, and A axis are
#
#          S1 = 1       SW1 = 1
#          S2 = 1       SW2 = 0
#          S3 = 1       SW3 = 0
#          S4 = 0
#          S5 = 0
#          S6 = 1
#
#     The wiring is as follows
#
#       Green:   A-    --> cable green
#       Red:     A+    --> cable red
#       Blue:    B-    --> cable black
#       Yellow:  B+    --> cable white
#
#
# Z Axis using smaller NMEA23 motor (23HE22-2804S) Motors
#
#      The documented wires and my current cable wiring are as follows:
#
#         Blue   B-    --> cable green
#         Red    B+    --> cable red
#         Black  A+    --> cable black
#         Green  A-    --> cable white
#
#     Using switch settings, limited to 1.5A, decay=25%, torque=50%,
#     1600 steps per revolution
#
#          S1 = 1       SW1 = 1
#          S2 = 0       SW2 = 0
#          S3 = 0       SW3 = 0
#          S4 = 0
#          S5 = 1
#          S6 = 0
#
#    1 revolution = 4 millimeters
#    So it is 400 steps_per_mm
```








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