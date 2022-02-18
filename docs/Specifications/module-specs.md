

# Module Specifications

-   Authors: Andrew Peck, Daniel Spitzbart

-   Modification Date: 2022-02-18 17:09

-   Status: This document is missing 41 pieces of information concerning  34 specifications
    -   Specifications are **-20.6% complete**.

-   A pdf version of this document can be found [here](./module-specs.pdf). Please check the timestamp to ensure it is up to date. The master copy of this document is an emacs org mode file found [here](https://gitlab.cern.ch/cms-etl-electronics/readout-board-docs/-/blob/master/docs/Specifications/module-specs.org).


# Table of Contents

1.  [Module Specifications](#org51b3855)
2.  [Specifications](#org6c83ab5)
    1.  [Description](#org653119f)
    2.  [Layout](#org6470d26)
        1.  [Sensor Placement](#orgd1877f9)
        2.  [Wire bonding](#org62d6e19)
        3.  [Grounding](#orgacc74f9)
        4.  [Fiducial Markings](#org30d8ff9)
    3.  [Connectivity](#org7834f24)
        1.  [Readout Board Interface](#orgfa5e4b8)
        2.  [I2C](#orgab4cd01)
        3.  [Low Voltage](#org695536b)
        4.  [Bias Voltage](#orgc442be7)
        5.  [Signal Connectivity](#orgf7bad95)
    4.  [Mechanics](#org9fe7566)
        1.  [Outer Dimensions](#orgfedea8b)
        2.  [Screw Holes & Sizes](#orgc9ef02c)
        3.  [Thickness](#org3f4e0ed)
        4.  [Drawings](#org8028775)
        5.  [Mechanical Interface](#org7fc33ae)


# Specifications


## Description

The module PCB is a simple printed circuit board which will host two LGAD sensors, and two LGAD modules. To support these, it will have wire bond pads, a variety of passive components, and a connector interface to attach to a Readout Board (RB).

-   Documentation for the ETROC does not exist.


## Layout

We denote the &ldquo;top&rdquo; side of the PCB as that containing the module and BV connectors.

We denote the &ldquo;bottom&rdquo; side of the PCB as that containing the sensor.


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

-   The module PCB will provide independent I2C addresses for each ETROC on a module. Addresses will be 0/1/2/3 corresponding to the slot, and are set directly by wire bonds.
    -   Addresses **will not** be set by resistors, and can not be modified.
-   The module PCB will **not** provide pull-up resistors on I2C lines. These will be provided by the host-system.


### Low Voltage

-   Each module will receive two *possibly* independent +1.2V supplies.
    -   They will not be connected together in any way on the module, but *may* be ganged together on the RB.
-   LV wire bonding is described in the Wire Bonding section

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

-   The module will deliver bias voltage to the ETROC
-   BV will be a maximum of <span class="underline">UNKNOWN</span> volts.
-   BV wire bonding is described in the Wire Bonding section

1.  Decoupling

    -   <span class="underline">UNKNOWN</span>


### Signal Connectivity

-   Each module will receive two <span class="underline">UNKNOWN</span> MHz downlinks from the RB
-   Each module will receive four 40 MHz clocks from the RB
    -   The clocks shall be length matched and skewed such that for a multi-drop pair of lpGBTs, the clock and data are synchronized at each ETROC&rsquo;s input pads.
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

