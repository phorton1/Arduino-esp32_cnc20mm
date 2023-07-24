# CNC Machine based on 20mm Stainless Steel Tubes

**Home** --
**[Design](design.md)** --
**[Details](details.md)** --
**[Electronics](electronics.md)** --
**[Box](box.md)** --
**[Spindle](spindle.md)** --
**[Y-Axis](y_axis.md)** --
**[Table](table.md)** --
**[Build](build.md)** --
**[Laser](laser.md)** --
**[Accessories](accessories.md)** --
**[Software](software.md)** --
**[Notes](notes.md)** --
**[Projects](projects.md)**


After completing the [2nd 3018](https://github.com/phorton1/Arduino-esp32_cnc3018/blob/master/docs/version2.md)
[cnc_machine](https://github.com/phorton1/Arduino-esp32_cnc3018), I felt I was
ready to attempt to make a larger machine.  I wanted to be able to cut 4x8 or 4x4 sheets
of plywood.

The belt driven cnc20mm machine is based on stainless steel 20mm tubes and 3D printed linear bearings that
utilize small inexpensive ball bearings.
It uses these items because it is prohibitively expensive to for me to ship large heavy items
like *aliminum extrusions* and *real linear bearings* and *linear drives* to my build location.
The biggest and heaviest parts are the lumber and stainless steel tubes,
both of which are available lococally.

The version I ended up building will cut a little bigger than 4x4 feet (51x50 inches).

It uses Nema23 motors.  These motors are larger than my previous machines
and so it requires larger, higher power, external controller boards.


## Outline of Documentation

On these pages I will *describe* and *show* the following:

- the basic mechanical **[Design](design.md)** of the machine
- some design **[Details](details.md)**, including Drag Chains, Connectors, etc
- the **[Electronics](electronics.md)** *Schematic* and *PCB* (Printed Circuit Board)
- the main **[Controller Box](box.md)**
- the separate **[Spindle](spindle.md)** controller box
- the *initial build* of the **[Y-Axis](y_axis.md)**
- constructing the **[Table](table.md)** (furniture) to support the machine
- assembling and **[Building](build.md)** the *actual* machine
- upgrading the **[Laser](laser.md)** from 500mw to a whopping **10W diode laser**
- adding **[Accessories](accessories.md)** including the *Spindle Controller* and *Vacuum* System
- installed and understanding the **[FluidNC Software](software.md)** for the *ESP32*
- implementation and historical **[Notes](notes.md)**
- and, finally, a few early **[Wooden Projects](projects.md)** that were made with the machine




## Materials available in this Repository

## Credits

R38 18x37 Drag Chain Model from Darko Saric Lukendic https://grabcad.com/library/cable-chain-18x37-1


## License


## Also See


**Next** - The basic [**Mechanical Design**](design.md) of the machine ...
