+++
title = "LiPo Batteries"
[extra]
see_also = [
  { name = "Why is there so much fear surrounding LiPo batteries?", href = "https://electronics.stackexchange.com/questions/230155/why-is-there-so-much-fear-surrounding-lipo-batteries" },
  { name = "Overcharged LiPo Spontaneous Combustion", href = "https://www.youtube.com/watch?v=EseOhC8n7ro" },
  { name = "Roger's Guide to LiPo Batteries", href = "https://www.rogershobbycenter.com/lipoguide/" }
]
+++

{{ thumb(src="/img/ply-robo-top.jpeg", cap="Charged LiPo Battery attached to a Soccer Robot.") }}

Lithium Polymer (better known as LiPo) batteries are a high density energy storage component. Made up of individual cells, the voltages of each are summed in series for the total output voltage of the battery.

## The LIPO Acronym

* ***LOOK*** for damage.
* ***IDENTIFY*** the battery specifications - charging parameters and maximum current draw.
* ***PROTECT*** the battery in a fireproof bag.
* ***OBSERVE*** always - when charging and in use.

## Usage

Storage between 3.6V and 3.8V per cell - recommended to be closer to 3.6V. Maximum charge to 4.2V per cell. Never let LiPo go below 3.1V per cell. Batteries must be kept in fireproof bags both when charging and not in use.

| Situation      | Cell | 3S    | 4S    |
|----------------|-----:|------:|------:|
| Minimum Charge | 3.1V |  9.3V | 12.4V |
| Low Charge     | 3.3V |  9.9V | 13.2V |
| Storage Charge | 3.6V | 10.8V | 14.4V |
| Maximum Charge | 4.2V | 12.6V | 16.8V |

### Charging Rate

LiPo batteries must be charged at or less than 1x their capacity; 1200mAh battery charged at 1.2A.

## Charging Instructions

1. Check for damage to LiPo, DO NOT proceed if damaged and DO tell someone.
2. Check the capacity of the LiPo (e.g. 1200mAh), and how many cells it has (e.g. 3S). Count the wires on the balance lead and subtract one (4 wires - 1 black wire = 3 cells).
3. Set up the LiPo charger:
  1. Plug it in to power and switch it on.
  1. **Ensure charge rate** is correct. For example, 1.2A charging rate for a 1200mAh battery.
  2. **Ensure cell count** is correct.
3. Plug in the LiPo *power* and *balance* leads.
4. Place the LiPo inside a fireproof bag.
5. Select **`BALANCE CHARGE`** mode.
6. Start charging.
7. Always watch the LiPo and ensure charge does not exceed 4.2V per cell.
