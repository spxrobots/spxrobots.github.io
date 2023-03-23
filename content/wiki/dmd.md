+++
title = "Dot-Matrix Display"
[extra]
stub = true
+++

The 32x16, or 512 pixel, Dot-Matrix Display is a simple [LED](@/wiki/electronics.md#leds) panel popularised by Freetronics.

## Power

For a single display, it can be powered straight from the ribbon connector attached to the [microcontroller](@/wiki/arduino.md).

For multiple displays, a stable 5V supply (achieved through a power-pack or [Voltage Step-Down](@/wiki/electronics.md#voltage-regulator)) should be supplied to the back of each panel with approximately 1 Amp available for each panel.

### Warning

MAKE SURE that the positive/negative wires are connected the right way round, or else you will damage the connected microcontroller.

## Programming
