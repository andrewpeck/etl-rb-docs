

# Module Specifications

-   Authors: Andrew Peck, Daniel Spitzbart

-   Modification Date: 2022-02-21 09:55

-   Status: This document is missing 42 pieces of information concerning  37 specifications
    -   Specifications are **-13.5% complete**.

-   A pdf version of this document can be found [here](./module-specs.pdf). Please check the timestamp to ensure it is up to date. The master copy of this document is an emacs org mode file found [here](https://gitlab.cern.ch/cms-etl-electronics/readout-board-docs/-/blob/master/docs/Specifications/module-specs.org).


# Table of Contents

1.  [Module Specifications](#orgba601eb)
2.  [Specifications](#orge68a0cc)
    1.  [Description](#orge4a8b45)
    2.  [Layout](#org7d396bd)
        1.  [Sensor Placement](#org38170b8)
        2.  [Wire bonding](#orga28a76e)
        3.  [Grounding](#org06518d9)
        4.  [Fiducial Markings](#org5b373be)
    3.  [Connectivity](#org32b0195)
        1.  [Readout Board Interface](#org57ede94)
        2.  [I2C](#org50a677e)
        3.  [Low Voltage](#orgece7c5d)
        4.  [Bias Voltage](#org6c04f04)
        5.  [Signal Connectivity](#org1b67c1d)
    4.  [Mechanics](#orgeb89e01)
        1.  [Outer Dimensions](#org2f98dac)
        2.  [Screw Holes & Sizes](#org5a04c69)
        3.  [Thickness](#org844b21c)
        4.  [Drawings](#org25d89c7)
        5.  [Mechanical Interface](#org4ea5733)


# Specifications


## Description

The module PCB is a simple printed circuit board which will host two LGAD sensors, and two LGAD modules. To support these, it will have wire bond pads, a variety of passive components, and a connector interface to attach to a Readout Board (RB).

-   Documentation for the ETROC does not exist.


## Layout

We denote the "top" side of the PCB as that containing the module and BV connectors.

We denote the "bottom" side of the PCB as that containing the sensor.


### Sensor Placement

-   The dimensions of a Sensor+ETROC assembly is <span class="underline">UNKNOWN</span> &times; <span class="underline">UNKNOWN</span> mm.
-   The position of the two Sensor+ETROC assemblies are (positions relative to <span class="underline">UNKNOWN</span>):
    -   x= <span class="underline">UNKNOWN</span> mm;  y= <span class="underline">UNKNOWN</span> mm.
    -   x= <span class="underline">UNKNOWN</span> mm;  y= <span class="underline">UNKNOWN</span> mm.


### Wire bonding

-   A wire bonding diagram of an ETROC is shown in <span class="underline">UNKNOWN</span>
-   The pad pitch will be <span class="underline">UNKNOWN</span> mm.
-   The pad aperture will be <span class="underline">UNKNOWN</span> &times; <span class="underline">UNKNOWN</span> mm.
-   The pad aperture will be NSMD (non-solder-mask-defined) with the mask oversized by <span class="underline">UNKNOWN</span> mm.
-   The wire bond pads will be located <span class="underline">UNKNOWN</span> mm from the edge of the ETROC (measured edge-to-edge).


### Grounding

-   The RB will geometrically isolate analog and digital ground, with specified areas of the PCB filled by a digital ground pour, and others filled by an analog ground pour. The digital and analog grounds will be connected together at a single point.
    -   A drawing of the grounding scheme is shown in <span class="underline">UNKNOWN</span>.


### Fiducial Markings

-   The module PCB will have on its bottom side 4 fiducial markers, composed of circles with crosses through them. These markers shall be placed at:
    1.  <span class="underline">UNKNOWN</span>
    2.  <span class="underline">UNKNOWN</span>
    3.  <span class="underline">UNKNOWN</span>
    4.  <span class="underline">UNKNOWN</span>


## Connectivity


### Readout Board Interface

1.  Signal Interface

    The signal interface to the readout board will consist of:
    
    -   The readout board will use connector part number <span class="underline">UNKNOWN</span>.
    -   The pinout of the readout board connectors is <span class="underline">UNKNOWN</span>.
    -   The placement of these connectors is <span class="underline">UNKNOWN</span>.

2.  BV Interface

    The BV interface to the readout board will consist of:
    
    -   The BV to readout board interface will use connector part number <span class="underline">UNKNOWN</span>.
    -   The pinout of these connectors is <span class="underline">UNKNOWN</span>.
    -   The placement of these connectors is <span class="underline">UNKNOWN</span>.


### I2C

-   The module carries I2C signals (SCL, SCK) from the readout board and distributes it to the 4 ETROCs in a star topology.
-   The module PCB will provide independent I2C addresses for each ETROC on a module. Addresses will be 0/1/2/3 corresponding to the slot, and are set directly by wire bonds.
    -   Addresses **will not** be set by resistors, and can not be modified.
-   The module PCB will **not** provide pull-up resistors on I2C lines. These will be provided by the host-system.


### Low Voltage

The module must receive +1.2V from the readout board, and distribute it to the ETROCs in a low inductance, low resistance path.

-   Each module will receive two *possibly* independent +1.2V supplies.
    -   They will not be connected together in any way on the module, but *may* be ganged together on the RB.

1.  Decoupling

    -   The module will provide decoupling capacitors on the +1.2V supplies. The power filtering network will be composed of:
        1.  <span class="underline">UNKNOWN</span> resistors of <span class="underline">UNKNOWN</span> value
        2.  <span class="underline">UNKNOWN</span> resistors of <span class="underline">UNKNOWN</span> value
    -   Decoupling capacitors will be placed as close as possible to the ETROC, and follow standard practices to maintain low inductance connections.
    -   Decoupling capacitors will be suitably rated to minimize DC bias effects.
    -   To reduce temperature dependence, ceramics will be chosen where possible with minimal temperature dependence (e.g. X7R).

2.  Monitoring

    -   The module will provide **two** feedback voltages for point-of-load monitoring. It will be delivered back to the RB through a 1.2k 0.5% resistor. These point-of-load monitoring resistors will be placed close to each pair of ETROCs at their respective ends of the module.


### Bias Voltage

The module will receive bias voltage from the readout board and distribute it to the modules.

-   BV will be a maximum of <span class="underline">UNKNOWN</span> volts.
-   There will be <span class="underline">UNKNOWN</span> bias voltage supplies for each module.

1.  Decoupling

    -   The BV may or may not be decoupled/filtered on the module PCB <span class="underline">UNKNOWN</span>


### Signal Connectivity

-   Each module will receive two <span class="underline">UNKNOWN</span> MHz downlinks from the RB
-   Each module will receive four 40 MHz clocks from the RB
    -   The clocks shall be length matched and skewed such that for a multi-drop pair of lpGBTs, the clock and data are synchronized at each ETROC's input pads.
-   Each module will have <span class="underline">UNKNOWN</span> uplinks operating at up to <span class="underline">UNKNOWN</span> Mbps.
-   The module will host <span class="underline">UNKNOWN</span> temperature sensors, which will be monitored in the RB.


## Mechanics


### Outer Dimensions

-   The outer dimension of the Module PCB will follow a rectangular shape, with dimensions of <span class="underline">UNKNOWN</span> &times; <span class="underline">UNKNOWN</span>.


### Screw Holes & Sizes

-   The Module PCB will have <span class="underline">UNKNOWN</span> mounting holes of size <span class="underline">UNKNOWN</span> in the following locations:
    1.  <span class="underline">UNKNOWN</span>


### Thickness

-   The Module PCB will be 0.5mm thick with a manufacturing specification of &plusmn; 10%.


### Drawings

A drawing of the Module PCB is available at <span class="underline">UNKNOWN</span>.


### Mechanical Interface

-   the module shall be aligned to the Readout Board using an <span class="underline">UNKNOWN</span> keying mechanism

