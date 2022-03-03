# Readout Board Firmware

## Firmware for KCU 105

- Vivado version: 2020.2

### Load the firmware:

* Connect JTAG USB connector to computer
* `Open Hardware manager`
* `Open target` -> `auto connect`. If multiple boards are connected, make sure you select the right one.
* Right click on `xcku`, select bitstream file (Firmware releases on [gitlab](https://gitlab.cern.ch/cms-etl-electronics/module_test_fw/-/releases))
    * latest tested firmware version: v1.0.3
    * If firmware was loaded correctly, single or double cylon mode should run on the KCU board LEDs

To load the firmware into the EEPROM so to keep it even after a power cycle:

* Right click on FPGA, `Add Configuration Memory Device`
* `mt25qu256-spi-x1_x2_x4` -> OK
* Cancel the prompt
* Memory configuration device shows up below FPGA
* Right click, `Program Configuration Memory Device`, needs a `.bin` file. This can take a couple of minutes.
    

## Emulator Firmware

- Quartus 21.1.0
- Needs a USB blaster. Restart computer with blaster connected if there a troubles with Quartus finding the blaster.

### Load firmware

Some instructions can be found [here](https://gitlab.cern.ch/cms-etl-electronics/etroc-emulator/-/blob/master/ETROC%20emulator%20version%201/Firmware20210608/Software_quick_start.pdf).

* Start Quartus, open a project and recompile if necessary
* Start the `Programmer` and load the default `.sof` file onto the board, or load a `.jic` file into 

### Useful firmware versions

* Bounce software: for loopback tests and uplink alignment scans [gitlab](https://gitlab.cern.ch/cms-etl-electronics/etroc-emulator/-/tree/master/ETROC%20emulator%20version%201/Bounce%20test%20firmware)
* ETROC2 v1 firmware [gitlab](https://gitlab.cern.ch/cms-etl-electronics/etroc-emulator/-/tree/master/ETROC%20emulator%20version%201/Firmware20210829)
