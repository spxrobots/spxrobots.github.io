+++
title = "EV3"

[extra]
stub = true
see_also = [
  { name = "Lego Mindstorms: A History of Educational Robots", href = "http://hackeducation.com/2015/04/10/mindstorms" }
]
+++

{{ thumb(src="/img/ev3soccer.jpg", cap="An EV3 robot, utilising Gen2 NXT infrared sensors.") }}

The Lego Mindstorms EV3 platform is the third generation of Lego robotics, following on from RCX and NXT. Suitable for Standard and Lightweight [Soccer Robots](@/wiki/soccer.md). Also sees use in the [First Lego League Challenge](@/wiki/fll.md).

## The Brick

### Input and Output

Ports 1-4 are used for sensor input.
Ports A-D are used for motor output. Default motor ports are B (left) and C (right).

## Components

### Sensors

#### Ultrasonic (Distance)

#### Button

#### Colour / Brightness

#### Infrared

## EV3 Scratch Programming

### Program Control

### Robot Movement

#### Turn On-The-Spot 90 Degrees

```
[ move (right: 100) for (1) rotations at (50%) speed ]
```

## Construction

* {{ biglink(
  emoji="🏗️",
  name="Building Instructions: Driving Base",
  href="/doc/ev3-instructions-driving-base.pdf")
}}

## Firmware

For whatever reason, most education EV3 kits come with firmware v1.09H; if you didn't notice the H, that's the home edition. This short section will guide you on updating the bricks to v1.10E, the latest education edition firmware (as at writing). (The content of this section is based on this Reddit post: <https://www.reddit.com/r/mindstorms/comments/pcsacu/how_to_install_and_update_firmware_110e_on_an_ev3>)


1. Download the old EV3 Lab Software, v1.4.5 from here: <https://education.lego.com/en-au/downloads/retiredproducts/mindstorms-ev3-lab/software>
2. Download the latest education firmware at the bottom of this page: <https://education.lego.com/en-au/product-resources/mindstorms-ev3/downloads/firmware-update>
  * Also available directly: <https://assets.education.lego.com/v3/assets/blt293eea581807678a/blt4ac25bc1ed0a5448/5f9a93e3fe49b57a83a1513d/LME-EV3_Firmware_1.10E.bin?locale=en-au>
