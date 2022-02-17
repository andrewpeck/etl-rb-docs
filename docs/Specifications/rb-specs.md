

# Readout Board Specifications

Authors: Andrew Peck, Daniel Spitzbart

Modification Date: 2022-02-17 18:11

Status: This document is missing 34 pieces of information concerning  38 specifications

-   Specifications are **10.5% complete**.

A pdf version of this document can be found [here](./rb-specs.pdf). Please check the timestamp to ensure it is up to date. The master copy of this document is an emacs org mode file found [here](./rb-specs.md).


# Table of Contents

1.  [Readout Board Specifications](#org5170969)
2.  [Specifications](#org54e2a0a)
    1.  [Description](#org03f666c)
    2.  [Interfaces](#orgf58b88d)
        1.  [Power Board](#orgf651952)
        2.  [Module](#org34c2dca)
        3.  [Fiber Optic](#orge69b6bd)
        4.  [Low Voltage](#org5eeac8e)
    3.  [Signal Connectivity](#org69dde14)
        1.  [I2C](#org1016142)
        2.  [SCA IO](#orgddac691)
        3.  [Uplink E-links](#orgf9b433d)
        4.  [Downlink E-links](#org466a6aa)
        5.  [Clocking](#org3ff141f)
        6.  [VTRX](#org774a30c)
    4.  [Monitoring](#orgabe5a1f)
    5.  [Low Voltage Distribution](#org09c4556)
    6.  [Bias Voltage Distribution](#orgda1cb4b)
    7.  [Mechanics](#org0be83a1)
        1.  [**Spec:** Outer Dimensions <span class="underline">UNKNOWN</span>](#org5f6e985)
        2.  [**Spec:** Screw Holes & Sizes <span class="underline">UNKNOWN</span>](#org2dd7a5e)
    8.  [Component List](#org735ea66)


# Specifications


## Description

The readout board will be designed in 3 different flavors, called the RB-3, RB-6, and RB-7, where the suffix number represents the number of &ldquo;full-modules&rdquo; that the readout board services.

The readout board consists of one or more lpGBTs, a GBT-SCA, a VTRX+, a number of linPOL12 regulators, and associated connectors / passive components required to interface with the external systems.

-   **Spec:** Each RB will have 1 GBT-SCA
-   **Spec:** Each RB will have 2 lpGBTs
-   **Spec:** Each RB will have 1 VTRX+
-   **Spec:** Each RB will have 6 linPOL12s
    -   2 for VTRX+ RX
    -   2 for VTRX+ TX
    -   1 for GBT-SCA analog power
    -   1 for GBT-SCA digital power


## Interfaces


### Power Board

The interface to the power board will consist of:

-   **Spec:** The power board interface will use connector part number <span class="underline">UNKNOWN</span>.
-   **Spec:** The pinout of these connectors is <span class="underline">UNKNOWN</span>.
-   **Spec:** The placement of these connectors is <span class="underline">UNKNOWN</span>.
-   **Spec:** The quantity of these connectors is <span class="underline">UNKNOWN</span>.


### Module

1.  Mechanical Interface

    -   **Spec:** the module shall be aligned to the readout board using an <span class="underline">UNKNOWN</span> keying mechanism

2.  Signal Interface

    The signal interface to the module will consist of:
    
    -   **Spec:** The module will use connector part number <span class="underline">UNKNOWN</span>.
    -   **Spec:** The pinout of the module connectors is <span class="underline">UNKNOWN</span>.
    -   **Spec:** The placement of these connectors is <span class="underline">UNKNOWN</span>.

3.  BV Interface

    The signal interface to the module will consist of:
    
    -   **Spec:** The BV to module interface will use connector part number <span class="underline">UNKNOWN</span>.
    -   **Spec:** The pinout of these connectors is <span class="underline">UNKNOWN</span>.
    -   **Spec:** The placement of these connectors is <span class="underline">UNKNOWN</span>.


### Fiber Optic

The fiber optic interface to CMS is through a VTRX+. The readout board will host both the VTRX+, as well as the MT Ferrule that is required to connect between the VTRX+ and a &ldquo;naked fanout&rdquo;.

-   **Spec:** The size of the cutout for the MT ferrule is <span class="underline">UNKNOWN</span>.
-   The location of the cutout for the MT ferrule is:
    -   **Spec:** RB-3: <span class="underline">UNKNOWN</span>.
    -   **Spec:** RB-6: <span class="underline">UNKNOWN</span>.
    -   **Spec:** RB-7: <span class="underline">UNKNOWN</span>.


### Low Voltage

The readout board will connect to the low voltage supply to receive ~8V power.

-   **Spec:** The part number for the LV connector is <span class="underline">UNKNOWN</span>.
-   **Spec:** The pinout for the LV connector is <span class="underline">UNKNOWN</span>.
-   **Spec:** The placement for the LV connector is <span class="underline">UNKNOWN</span>.


## Signal Connectivity


### I2C

-   **Spec:** The GBT-SCA will provide one I2C connection for each module.
-   **Spec:** All ETROCs in a module will share an I2C master.
-   **Spec:** The readout board will provide strong I2C pull-ups.
    -   It is assumed that the modules will not, and have only weak pull-ups.


### SCA IO


### Uplink E-links


### Downlink E-links


### Clocking


### VTRX


## Monitoring

The readout board will monitor the following analog channels:

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-right" />

<col  class="org-right" />

<col  class="org-right" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">&#xa0;</th>
<th scope="col" class="org-right">RB-3</th>
<th scope="col" class="org-right">RB-6</th>
<th scope="col" class="org-right">RB-7</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">Sensor Bias Voltage</td>
<td class="org-right"><span class="underline">UNKNOWN</span></td>
<td class="org-right"><span class="underline">UNKNOWN</span></td>
<td class="org-right"><span class="underline">UNKNOWN</span></td>
</tr>


<tr>
<td class="org-left">ETROC Low Voltage</td>
<td class="org-right"><span class="underline">UNKNOWN</span></td>
<td class="org-right"><span class="underline">UNKNOWN</span></td>
<td class="org-right"><span class="underline">UNKNOWN</span></td>
</tr>


<tr>
<td class="org-left">VTRX +2.5V RX</td>
<td class="org-right">1</td>
<td class="org-right">1</td>
<td class="org-right">1</td>
</tr>


<tr>
<td class="org-left">VTRX +2.5V TX</td>
<td class="org-right">1</td>
<td class="org-right">1</td>
<td class="org-right">1</td>
</tr>


<tr>
<td class="org-left">GBTX +1.5VD</td>
<td class="org-right">1</td>
<td class="org-right">1</td>
<td class="org-right">1</td>
</tr>


<tr>
<td class="org-left">GBTX +1.5VA</td>
<td class="org-right">1</td>
<td class="org-right">1</td>
<td class="org-right">1</td>
</tr>


<tr>
<td class="org-left">RB Low Voltage</td>
<td class="org-right">1</td>
<td class="org-right">1</td>
<td class="org-right">1</td>
</tr>


<tr>
<td class="org-left">VTRX RSSI</td>
<td class="org-right">1</td>
<td class="org-right">1</td>
<td class="org-right">1</td>
</tr>


<tr>
<td class="org-left">VTRX Temperature</td>
<td class="org-right">1</td>
<td class="org-right">1</td>
<td class="org-right">1</td>
</tr>


<tr>
<td class="org-left">Temperature Sensors</td>
<td class="org-right"><span class="underline">UNKNOWN</span></td>
<td class="org-right"><span class="underline">UNKNOWN</span></td>
<td class="org-right"><span class="underline">UNKNOWN</span></td>
</tr>
</tbody>
</table>

-   **Spec:** Bias voltage monitoring will be through a resistive voltage divider:
    -   It is formed of two 50Mohm resistors (HVC1206T5005JET) and one 82k resistor (RR0510P-823-D) with accuracy of 0.5% for each resistor.
    -   The divider 82/100000=0.00082, providing a nominal monitoring range of 0-1219 volts.
    -   The bias voltage will be monitored by the GBT-SCA.

-   **Spec:** VTRX 2.5V will be monitored through a resistive voltage divider:
-   **Spec:** GBTX 1.5V analog / digital will be monitored through a resistive voltage divider:


## Low Voltage Distribution

-   **Spec:** The readout board will provide four 47 uF capacitors connected to each 1.2V ETROC supply.
    -   There will be no additional filtering.
-   **Spec:** Analog and digital power for the ETROC will not be distinguished.
-   **Spec:** The low voltage will be ganged such that <span class="underline">UNKNOWN</span> ETROCs share a common power supply.


## Bias Voltage Distribution

-   **Spec:** Bias voltage will be a maximum of <span class="underline">UNKNOWN</span> volts.
-   The bias voltage granularity will be:
    -   **Spec:** <span class="underline">UNKNOWN</span> channels for an RB-3
    -   **Spec:** <span class="underline">UNKNOWN</span> channels for an RB-6
    -   **Spec:** <span class="underline">UNKNOWN</span> channels for an RB-7
-   **Spec:** The readout board will provide a filter for each bias voltage channel consisting of a 200 ohm resistor and 1500 pF capacitor.


## Mechanics


### **Spec:** Outer Dimensions <span class="underline">UNKNOWN</span>


### **Spec:** Screw Holes & Sizes <span class="underline">UNKNOWN</span>


## Component List

