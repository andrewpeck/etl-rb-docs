

# Readout Board Specifications

Authors: Andrew Peck, Daniel Spitzbart

Modification Date: 2022-02-18 16:02

Status: This document is missing 60 pieces of information concerning  63 specifications

-   Specifications are **4.8% complete**.

A pdf version of this document can be found [here](./rb-specs.pdf). Please check the timestamp to ensure it is up to date. The master copy of this document is an emacs org mode file found [here](https://gitlab.cern.ch/cms-etl-electronics/readout-board-docs/-/blob/master/docs/Specifications/rb-specs.org).

The latest RB schematic can be found here <https://gitlab.cern.ch/cms-etl-electronics/readout-board-pcb/uploads/183954f3a47f967752902acf8ae9c3d3/ETL_RB_V1.6.PDF>


# Table of Contents

1.  [Readout Board Specifications](#org96d35e3)
    1.  [Description](#org5842613)
    2.  [Drawings](#org6ade331)
    3.  [Interfaces](#org8e83427)
        1.  [Power Board Interface](#org1956093)
        2.  [Module Interface](#org852a828)
        3.  [Fiber Optic Interface](#org1377c6a)
        4.  [Low Voltage Interface](#orgc3512fa)
        5.  [Programming Interface](#org7935b5d)
    4.  [Signal Connectivity](#org47ae2f8)
        1.  [I2C](#org0b1d74c)
        2.  [IO](#org8fddfee)
        3.  [Uplinks](#orgaba5d0a)
        4.  [Downlinks](#org7349b9b)
        5.  [Clocking](#org22ada1c)
        6.  [VTRX](#orgaefe827)
    5.  [Monitoring](#orgdbced04)
        1.  [Voltage Monitoring](#org4d0dfcb)
    6.  [Low Voltage Distribution](#org4b9b9e7)
    7.  [Bias Voltage Distribution](#org09bad7e)
    8.  [Mechanics](#orgbea211b)
        1.  [Outer Dimensions](#org1e896be)
        2.  [Screw Holes & Sizes](#org008c76e)
        3.  [Thickness](#orgd5ccc61)
    9.  [Component List](#org4122a74)


<a id="org5842613"></a>

## Description

The readout board will be designed in 3 different flavors, called the RB-3, RB-6, and RB-7, where the suffix number represents the number of &ldquo;full-modules&rdquo; that the readout board services.

-   An RB-3 will interface with 3 modules, meaning 12 ETROCs and 12 sensors.
-   An RB-6 will interface with 6 modules, meaning 24 ETROCs and 24 sensors.
-   An RB-7 will interface with 7 modules, meaning 28 ETROCs and 28 sensors.

The readout board consists of one or more lpGBTs, a GBT-SCA, a VTRX+, a number of linPOL12 regulators, and associated connectors / passive components required to interface with the external systems.

-   Each RB will have 1 GBT-SCA
-   Each RB will have 2 lpGBTs
-   Each RB will have 1 VTRX+
-   Each RB will have 6 linPOL12s
    -   2 for VTRX+ RX
    -   2 for VTRX+ TX
    -   1 for GBT-SCA analog power
    -   1 for GBT-SCA digital power


<a id="org6ade331"></a>

## Drawings


<a id="org8e83427"></a>

## Interfaces


<a id="org1956093"></a>

### Power Board Interface

The interface to the power board will consist of:

-   The power board interface will use connector part number <span class="underline">UNKNOWN</span>.
-   The pinout of these connectors is <span class="underline">UNKNOWN</span>.
-   The placement of these connectors is <span class="underline">UNKNOWN</span>.
-   The quantity of these connectors is <span class="underline">UNKNOWN</span>.


<a id="org852a828"></a>

### Module Interface

1.  Mechanical Interface

    -   the module shall be aligned to the readout board using an <span class="underline">UNKNOWN</span> keying mechanism

2.  Signal Interface

    The signal interface to the module will consist of:
    
    -   The module will use connector part number <span class="underline">UNKNOWN</span>.
    -   The pinout of the module connectors is <span class="underline">UNKNOWN</span>.
    -   The placement of these connectors is <span class="underline">UNKNOWN</span>.

3.  BV Interface

    The signal interface to the module will consist of:
    
    -   The BV to module interface will use connector part number <span class="underline">UNKNOWN</span>.
    -   The pinout of these connectors is <span class="underline">UNKNOWN</span>.
    -   The placement of these connectors is <span class="underline">UNKNOWN</span>.


<a id="org1377c6a"></a>

### Fiber Optic Interface

The fiber optic interface to CMS is through a VTRX+. The readout board will host both the VTRX+, as well as the MT Ferrule that is required to connect between the VTRX+ and a &ldquo;naked fanout&rdquo;.

-   The size of the cutout for the MT ferrule is <span class="underline">UNKNOWN</span>.
-   The location of the cutout for the MT ferrule is:
    -   RB-3: <span class="underline">UNKNOWN</span>.
    -   RB-6: <span class="underline">UNKNOWN</span>.
    -   RB-7: <span class="underline">UNKNOWN</span>.


<a id="orgc3512fa"></a>

### Low Voltage Interface

The readout board will connect to the low voltage supply to receive ~8V power.

-   The part number for the LV connector is <span class="underline">UNKNOWN</span>.
-   The pinout for the LV connector is <span class="underline">UNKNOWN</span>.
-   The placement for the LV connector is <span class="underline">UNKNOWN</span>.


<a id="org7935b5d"></a>

### Programming Interface

-   The readout board will provide a programming interface to allow fusing/configuration of the lpGBT through I2C.
-   The part number for the programming connector is <span class="underline">UNKNOWN</span>.
-   The pinout for the programming connector is <span class="underline">UNKNOWN</span>.
-   The placement for the programming connector is <span class="underline">UNKNOWN</span>.


<a id="org47ae2f8"></a>

## Signal Connectivity


<a id="org0b1d74c"></a>

### I2C

-   The GBT-SCA will provide one I2C connection for each module.
-   All ETROCs in a module will share an I2C master.
-   The readout board will provide strong I2C pull-ups.
    -   It is assumed that the modules will not, and have only weak pull-ups.


<a id="org8fddfee"></a>

### IO

-   A GBT-SCA provides 32 tri-stateable 1.5V GPIO
-   An LPGBT provides 16 tri-stateable 1.2V GPIO
-   These IO will be allocated as:
    
    <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
    
    
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


<a id="orgaba5d0a"></a>

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


<a id="org7349b9b"></a>

### Downlinks

Downlinks carry data from the back-end to the front-end.

-   The readout board will deliver to each module two downlinks that provide a &ldquo;fast command&rdquo; interface to the ETROC.
-   These fast-command downlinks will run at <span class="underline">UNKNOWN</span> Mbps.
-   The fast command downlinks will be multi-dropped on the module, with each downlink serving 2 ETROCs.
    -   6 downlinks for the RB-3, 12 downlinks for the RB-6, and 14 downlinks for the RB-7.
-   These downlinks will **not** be phase length matched *between* modules, but **will** be phase length matched *within* modules and to their respective clocks.


<a id="org22ada1c"></a>

### Clocking

-   The readout board will be responsible for delivering a 40 MHz point-to-point clock to each of the ETROCs it connects to.
    -   12 clocks for the RB-3, 24 clocks for the RB-6, and 28 clocks for the RB-7.
-   These clocks will **not** be phase length matched *between* modules, but **will** be phase length matched *within* modules.
-   The clock will be distributed only from the **master** lpGBT; the slave lpGBT clock outputs will not be used due to radiation intolerance.


<a id="orgaefe827"></a>

### VTRX


<a id="orgdbced04"></a>

## Monitoring

A GBT-SCA ASIC provides 31 analog inputs with 12-bit resolution, and 4 analog outputs with 8-bit resolution, with a range of 0 to 1V.

An lpGBT provides 8 analog inputs with 10-bit resolution and 1 analog output with 12-bit resolution.

The readout board will monitor the following analog channels:


<a id="org4d0dfcb"></a>

### Voltage Monitoring

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


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


<a id="org4b9b9e7"></a>

## Low Voltage Distribution

-   The readout board will provide four 47 uF capacitors connected to each 1.2V ETROC supply.
    -   There will be no additional filtering.
-   Analog and digital power for the ETROC will not be distinguished.
-   The low voltage will be ganged such that <span class="underline">UNKNOWN</span> ETROCs share a common power supply.


<a id="org09bad7e"></a>

## Bias Voltage Distribution

-   Bias voltage will be a maximum of <span class="underline">UNKNOWN</span> volts.
-   The bias voltage granularity will be:
    -   <span class="underline">UNKNOWN</span> channels for an RB-3
    -   <span class="underline">UNKNOWN</span> channels for an RB-6
    -   <span class="underline">UNKNOWN</span> channels for an RB-7
-   The readout board will provide a filter for each bias voltage channel consisting of a 200 ohm resistor and 1500 pF capacitor, which will be rated for at least 1000V.


<a id="orgbea211b"></a>

## Mechanics


<a id="org1e896be"></a>

### Outer Dimensions

-   The outer dimension of the readout board will follow an <span class="underline">UNKNOWN</span> shape


<a id="org008c76e"></a>

### Screw Holes & Sizes

-   The readout board will have <span class="underline">UNKNOWN</span> mounting holes of size <span class="underline">UNKNOWN</span> in the following locations:
    1.  <span class="underline">UNKNOWN</span>


<a id="orgd5ccc61"></a>

### Thickness

-   The readout board will be 1.0mm thick with a manufacturing specification of &plusmn; 10%.


<a id="org4122a74"></a>

## Component List

