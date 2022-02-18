

# Readout Board Specifications

-   Authors: Andrew Peck, Daniel Spitzbart

-   Modification Date: 2022-02-18 16:51

-   Status: This document is missing 61 pieces of information concerning  63 specifications
    -   Specifications are **3.2% complete**.

-   A pdf version of this document can be found [here](./rb-specs.pdf). Please check the timestamp to ensure it is up to date. The master copy of this document is an emacs org mode file found [here](https://gitlab.cern.ch/cms-etl-electronics/readout-board-docs/-/blob/master/docs/Specifications/rb-specs.org).

-   The latest RB schematic can be found here <https://gitlab.cern.ch/cms-etl-electronics/readout-board-pcb/uploads/183954f3a47f967752902acf8ae9c3d3/ETL_RB_V1.6.PDF>


# Table of Contents

1.  [Readout Board Specifications](#org05fbb53)
    1.  [Description](#orgb15e9fc)
    2.  [Interfaces](#org28febbc)
        1.  [Power Board Interface](#org011cece)
        2.  [Module Interface](#org8179a44)
        3.  [Fiber Optic Interface](#orge4290c3)
        4.  [Low Voltage Interface](#org7969624)
        5.  [Programming Interface](#org404a233)
    3.  [Signal Connectivity](#org56a36c4)
        1.  [I2C](#org905c527)
        2.  [IO](#org4d4445e)
        3.  [Uplinks](#org633568c)
        4.  [Downlinks](#org4bc816b)
        5.  [Clocking](#org953974f)
        6.  [VTRX](#orgcfd5821)
    4.  [Monitoring](#org5f84a90)
        1.  [Voltage Monitoring](#orgf8c634e)
    5.  [Low Voltage Distribution](#orge38778b)
    6.  [Bias Voltage Distribution](#org143c6a1)
    7.  [Mechanics](#org08d9dda)
        1.  [Outer Dimensions](#org289f396)
        2.  [Screw Holes & Sizes](#org13e9a10)
        3.  [Thickness](#org58a16f5)
        4.  [Drawings](#orgf52184d)
        5.  [Module Mechanics](#org7765ce3)


<a id="orgb15e9fc"></a>

## Description

The Readout Board will be designed in 3 different flavors, called the RB-3, RB-6, and RB-7, where the suffix number represents the number of &ldquo;full-modules&rdquo; that the Readout Board services.

-   An RB-3 will interface with 3 modules, meaning 12 ETROCs and 12 sensors.
-   An RB-6 will interface with 6 modules, meaning 24 ETROCs and 24 sensors.
-   An RB-7 will interface with 7 modules, meaning 28 ETROCs and 28 sensors.

The Readout Board consists of one or more lpGBTs, a GBT-SCA, a VTRX+, a number of linPOL12 regulators, and associated connectors / passive components required to interface with the external systems.

-   Each RB will have 1 GBT-SCA
-   Each RB will have 2 lpGBTs
-   Each RB will have 1 VTRX+
-   Each RB will have 6 linPOL12s
    -   2 for VTRX+ RX
    -   2 for VTRX+ TX
    -   1 for GBT-SCA analog power
    -   1 for GBT-SCA digital power


<a id="org28febbc"></a>

## Interfaces


<a id="org011cece"></a>

### Power Board Interface

The interface to the power board will consist of:

-   The power board interface will use connector part number <span class="underline">UNKNOWN</span>.
-   The pinout of these connectors is <span class="underline">UNKNOWN</span>.
-   The placement of these connectors is <span class="underline">UNKNOWN</span>.
-   The quantity of these connectors is <span class="underline">UNKNOWN</span>.


<a id="org8179a44"></a>

### Module Interface

1.  Signal Interface

    The signal interface to the module will consist of:
    
    -   The module will use connector part number <span class="underline">UNKNOWN</span>.
    -   The pinout of the module connectors is <span class="underline">UNKNOWN</span>.
    -   The placement of these connectors is <span class="underline">UNKNOWN</span>.

2.  BV Interface

    The BV interface to the module will consist of:
    
    -   The BV to module interface will use connector part number <span class="underline">UNKNOWN</span>.
    -   The pinout of these connectors is <span class="underline">UNKNOWN</span>.
    -   The placement of these connectors is <span class="underline">UNKNOWN</span>.


<a id="orge4290c3"></a>

### Fiber Optic Interface

The fiber optic interface to CMS is through a VTRX+. The Readout Board will host both the VTRX+, as well as the MT Ferrule that is required to connect between the VTRX+ and a &ldquo;naked fanout&rdquo;.

-   The size of the cutout for the MT ferrule is <span class="underline">UNKNOWN</span>.
-   The location of the cutout for the MT ferrule is:
    -   RB-3: <span class="underline">UNKNOWN</span>.
    -   RB-6: <span class="underline">UNKNOWN</span>.
    -   RB-7: <span class="underline">UNKNOWN</span>.


<a id="org7969624"></a>

### Low Voltage Interface

The Readout Board will connect to the low voltage supply to receive ~8V power.

-   The part number for the LV connector is <span class="underline">UNKNOWN</span>.
-   The pinout for the LV connector is <span class="underline">UNKNOWN</span>.
-   The placement for the LV connector is <span class="underline">UNKNOWN</span>.


<a id="org404a233"></a>

### Programming Interface

-   The Readout Board will provide a programming interface to allow fusing/configuration of the lpGBT through I2C.
-   The part number for the programming connector is <span class="underline">UNKNOWN</span>.
-   The pinout for the programming connector is <span class="underline">UNKNOWN</span>.
-   The placement for the programming connector is <span class="underline">UNKNOWN</span>.


<a id="org56a36c4"></a>

## Signal Connectivity


<a id="org905c527"></a>

### I2C

-   The GBT-SCA will provide one I2C connection for each module.
-   All ETROCs in a module will share an I2C master.
-   The Readout Board will provide strong I2C pull-ups.
    -   It is assumed that the modules will not, and have only weak pull-ups.


<a id="org4d4445e"></a>

### IO

-   A GBT-SCA provides 32 tri-stateable 1.5V GPIO
-   An LPGBT provides 16 tri-stateable 1.2V GPIO
-   These IO will be allocated as:
    
    <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
    <caption class="t-above"><span class="table-number">Table 1:</span> Allocation of GPIO on the Readout Board</caption>
    
    <colgroup>
    <col  class="org-left" />
    
    <col  class="org-left" />
    
    <col  class="org-right" />
    
    <col  class="org-right" />
    
    <col  class="org-right" />
    </colgroup>
    <thead>
    <tr>
    <th scope="col" class="org-left">&#xa0;</th>
    <th scope="col" class="org-left">&#xa0;</th>
    <th scope="col" class="org-right">RB-3</th>
    <th scope="col" class="org-right">RB-6</th>
    <th scope="col" class="org-right">RB-7</th>
    </tr>
    </thead>
    
    <tbody>
    <tr>
    <td class="org-left">GBT-SCA RESETB</td>
    <td class="org-left">&#xa0;</td>
    <td class="org-right">1</td>
    <td class="org-right">1</td>
    <td class="org-right">1</td>
    </tr>
    
    
    <tr>
    <td class="org-left">VTRX LD_RESETB</td>
    <td class="org-left">&#xa0;</td>
    <td class="org-right">1</td>
    <td class="org-right">1</td>
    <td class="org-right">1</td>
    </tr>
    
    
    <tr>
    <td class="org-left">VTRX LD_DIS</td>
    <td class="org-left">&#xa0;</td>
    <td class="org-right">1</td>
    <td class="org-right">1</td>
    <td class="org-right">1</td>
    </tr>
    
    
    <tr>
    <td class="org-left">Module Reset</td>
    <td class="org-left">&#xa0;</td>
    <td class="org-right">3</td>
    <td class="org-right">6</td>
    <td class="org-right">7</td>
    </tr>
    
    
    <tr>
    <td class="org-left">PB PGOOD</td>
    <td class="org-left">&#xa0;</td>
    <td class="org-right"><span class="underline">UNKNOWN</span></td>
    <td class="org-right"><span class="underline">UNKNOWN</span></td>
    <td class="org-right"><span class="underline">UNKNOWN</span></td>
    </tr>
    
    
    <tr>
    <td class="org-left">PB EN</td>
    <td class="org-left">&#xa0;</td>
    <td class="org-right"><span class="underline">UNKNOWN</span></td>
    <td class="org-right"><span class="underline">UNKNOWN</span></td>
    <td class="org-right"><span class="underline">UNKNOWN</span></td>
    </tr>
    </tbody>
    </table>


<a id="org633568c"></a>

### Uplinks

Uplinks carry data from the front-end to the back-end.

-   These uplinks will **not** be phase length matched.

1.  Quantity

    -   RB-3 will have <span class="underline">UNKNOWN</span> uplinks
    -   RB-6 will have <span class="underline">UNKNOWN</span> uplinks
    -   RB-7 will have <span class="underline">UNKNOWN</span> uplinks

2.  Data Rates

    -   RB-3 will operate at up to <span class="underline">UNKNOWN</span> Mbps
    -   RB-6 will operate at up to <span class="underline">UNKNOWN</span> Mbps
    -   RB-7 will operate at up to <span class="underline">UNKNOWN</span> Mbps


<a id="org4bc816b"></a>

### Downlinks

Downlinks carry data from the back-end to the front-end.

-   The Readout Board will deliver to each module two downlinks that provide a &ldquo;fast command&rdquo; interface to the ETROC.
-   These fast-command downlinks will run at <span class="underline">UNKNOWN</span> Mbps.
-   The fast command downlinks will be multi-dropped on the module, with each downlink serving 2 ETROCs.
    -   6 downlinks for the RB-3, 12 downlinks for the RB-6, and 14 downlinks for the RB-7.
-   These downlinks will **not** be phase length matched *between* modules, but **will** be phase length matched *within* modules and to their respective clocks.


<a id="org953974f"></a>

### Clocking

-   The Readout Board will be responsible for delivering a 40 MHz point-to-point clock to each of the ETROCs it connects to.
    -   12 clocks for the RB-3, 24 clocks for the RB-6, and 28 clocks for the RB-7.
-   These clocks will **not** be phase length matched *between* modules, but **will** be phase length matched *within* modules.
-   The clock will be distributed only from the **master** lpGBT; the slave lpGBT clock outputs will not be used due to radiation intolerance.


<a id="orgcfd5821"></a>

### VTRX


<a id="org5f84a90"></a>

## Monitoring

A GBT-SCA ASIC provides 31 analog inputs with 12-bit resolution, and 4 analog outputs with 8-bit resolution, with a range of 0 to 1V.

An lpGBT provides 8 analog inputs with 10-bit resolution and 1 analog output with 12-bit resolution.

The Readout Board will monitor the following analog channels:


<a id="orgf8c634e"></a>

### Voltage Monitoring

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
<caption class="t-above"><span class="table-number">Table 2:</span> Allocation of monitoring signals on the Readout Board</caption>

<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-right" />

<col  class="org-right" />

<col  class="org-right" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">&#xa0;</th>
<th scope="col" class="org-left">Type</th>
<th scope="col" class="org-left">Monitored By</th>
<th scope="col" class="org-left">Divider</th>
<th scope="col" class="org-left">LSB</th>
<th scope="col" class="org-left">Range</th>
<th scope="col" class="org-right">Qty. RB-3</th>
<th scope="col" class="org-right">Qty. RB-6</th>
<th scope="col" class="org-right">Qty. RB-7</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">Sensor BV</td>
<td class="org-left">Voltage</td>
<td class="org-left">GBT-SCA</td>
<td class="org-left">82/100082</td>
<td class="org-left">2.980e-01 V</td>
<td class="org-left">1220.3 V</td>
<td class="org-right"><span class="underline">UNKNOWN</span></td>
<td class="org-right"><span class="underline">UNKNOWN</span></td>
<td class="org-right"><span class="underline">UNKNOWN</span></td>
</tr>


<tr>
<td class="org-left">ETROC +1.2V</td>
<td class="org-left">Voltage</td>
<td class="org-left">GBT-SCA</td>
<td class="org-left">2.0/4.2</td>
<td class="org-left">5.128e-04 V</td>
<td class="org-left">2.1 V</td>
<td class="org-right"><span class="underline">UNKNOWN</span></td>
<td class="org-right"><span class="underline">UNKNOWN</span></td>
<td class="org-right"><span class="underline">UNKNOWN</span></td>
</tr>


<tr>
<td class="org-left">PB +1.2V</td>
<td class="org-left">Voltage</td>
<td class="org-left">GBT-SCA</td>
<td class="org-left">2.0/4.2</td>
<td class="org-left">5.128e-04 V</td>
<td class="org-left">2.1 V</td>
<td class="org-right"><span class="underline">UNKNOWN</span></td>
<td class="org-right"><span class="underline">UNKNOWN</span></td>
<td class="org-right"><span class="underline">UNKNOWN</span></td>
</tr>


<tr>
<td class="org-left">RB LV</td>
<td class="org-left">Voltage</td>
<td class="org-left">GBT-SCA</td>
<td class="org-left">1/11</td>
<td class="org-left">2.686e-03 V</td>
<td class="org-left">11.0 V</td>
<td class="org-right">1</td>
<td class="org-right">1</td>
<td class="org-right">1</td>
</tr>


<tr>
<td class="org-left">VTRX +2.5V RX</td>
<td class="org-left">Voltage</td>
<td class="org-left">lpGBT</td>
<td class="org-left">1.5/4.5</td>
<td class="org-left">2.933e-03 V</td>
<td class="org-left">3.0 V</td>
<td class="org-right">1</td>
<td class="org-right">1</td>
<td class="org-right">1</td>
</tr>


<tr>
<td class="org-left">VTRX +2.5V TX</td>
<td class="org-left">Voltage</td>
<td class="org-left">lpGBT</td>
<td class="org-left">1.5/4.5</td>
<td class="org-left">2.933e-03 V</td>
<td class="org-left">3.0 V</td>
<td class="org-right">1</td>
<td class="org-right">1</td>
<td class="org-right">1</td>
</tr>


<tr>
<td class="org-left">GBTX +1.5VD</td>
<td class="org-left">Voltage</td>
<td class="org-left">lpGBT</td>
<td class="org-left">2.0/3.5</td>
<td class="org-left">1.711e-03 V</td>
<td class="org-left">1.8 V</td>
<td class="org-right">1</td>
<td class="org-right">1</td>
<td class="org-right">1</td>
</tr>


<tr>
<td class="org-left">GBTX +1.5VA</td>
<td class="org-left">Voltage</td>
<td class="org-left">lpGBT</td>
<td class="org-left">2.0/3.5</td>
<td class="org-left">1.711e-03 V</td>
<td class="org-left">1.8 V</td>
<td class="org-right">1</td>
<td class="org-right">1</td>
<td class="org-right">1</td>
</tr>


<tr>
<td class="org-left">VTRX Temp</td>
<td class="org-left">Temperature</td>
<td class="org-left">lpGBT</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-right">1</td>
<td class="org-right">1</td>
<td class="org-right">1</td>
</tr>


<tr>
<td class="org-left">RB Temp</td>
<td class="org-left">Temperature</td>
<td class="org-left">GBT-SCA</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-right">1</td>
<td class="org-right">1</td>
<td class="org-right">1</td>
</tr>


<tr>
<td class="org-left">PB Temp</td>
<td class="org-left">Temperature</td>
<td class="org-left"><span class="underline">UNKNOWN</span></td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-right"><span class="underline">UNKNOWN</span></td>
<td class="org-right"><span class="underline">UNKNOWN</span></td>
<td class="org-right"><span class="underline">UNKNOWN</span></td>
</tr>


<tr>
<td class="org-left">Module Temp</td>
<td class="org-left">Temperature</td>
<td class="org-left"><span class="underline">UNKNOWN</span></td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-right"><span class="underline">UNKNOWN</span></td>
<td class="org-right"><span class="underline">UNKNOWN</span></td>
<td class="org-right"><span class="underline">UNKNOWN</span></td>
</tr>


<tr>
<td class="org-left">VTRX RSSI</td>
<td class="org-left">Photocurrent</td>
<td class="org-left">lpGBT</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-right">1</td>
<td class="org-right">1</td>
<td class="org-right">1</td>
</tr>
</tbody>
</table>

-   All voltage dividers will be formed of 0.5% tolerance resistors.
-   All voltage dividers will be decoupled by 0.1 uF capacitors.
-   The ETROC voltage monitors assume that a 1.2k resistor is in series with the `1V2_MON` signal from the module.


<a id="orge38778b"></a>

## Low Voltage Distribution

-   The Readout Board will provide four 47 uF capacitors connected to each 1.2V ETROC supply.
    -   There will be no additional filtering.
-   Analog and digital power for the ETROC will not be distinguished.
-   The low voltage will be ganged such that <span class="underline">UNKNOWN</span> ETROCs share a common power supply.


<a id="org143c6a1"></a>

## Bias Voltage Distribution

-   Bias voltage will be a maximum of <span class="underline">UNKNOWN</span> volts.
-   The bias voltage granularity will be:
    -   <span class="underline">UNKNOWN</span> channels for an RB-3
    -   <span class="underline">UNKNOWN</span> channels for an RB-6
    -   <span class="underline">UNKNOWN</span> channels for an RB-7
-   The Readout Board will provide a filter for each bias voltage channel consisting of a 200 ohm resistor and 1500 pF capacitor, which will be rated for at least 1000V.


<a id="org08d9dda"></a>

## Mechanics


<a id="org289f396"></a>

### Outer Dimensions

-   The outer dimension of the Readout Board will follow an <span class="underline">UNKNOWN</span> shape


<a id="org13e9a10"></a>

### Screw Holes & Sizes

-   The Readout Board will have <span class="underline">UNKNOWN</span> mounting holes of size <span class="underline">UNKNOWN</span> in the following locations:
    1.  <span class="underline">UNKNOWN</span>


<a id="org58a16f5"></a>

### Thickness

-   The Readout Board will be 1.0mm thick with a manufacturing specification of &plusmn; 10%.


<a id="orgf52184d"></a>

### Drawings

A drawing of the Readout Board is available at <span class="underline">UNKNOWN</span>.


<a id="org7765ce3"></a>

### Module Mechanics

-   the module shall be aligned to the Readout Board using an <span class="underline">UNKNOWN</span> keying mechanism

