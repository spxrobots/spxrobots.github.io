+++
title = "Pixy Cam"

[extra]
stub = true
see_also = [
  { name = "PixyCam Setup for Arduino", href = "https://docs.pixycam.com/wiki/doku.php?id=wiki:v1:hooking_up_pixy_to_a_microcontroller_-28like_an_arduino-29" }
]
+++

{{ wikiimg(
  href="/img/pixy.jpg"
  caption="The 1st Gen PixyCam"
) }}
{{ wikiimg(
  href = "/img/pixy-track.gif"
  caption = "A example of how capable the humble PixyCam is at tracking many objects all at once."
) }}

The Pixy Cam (formerly known as CMUCam5) is a computer-vision enabled camera sensor for detecting and locating various coloured objects within its view.

## Sample Code

```c
#include <SPI.h>
#include <Pixy.h>

#define BALL_SIGNATURE 1

typedef struct {
  int16_t x; // centred horizontal position in frame (-160 to 159)
  int16_t y; // centred horizontal position in frame (-100 to 99)
  uint16_t width; // width (1 to 320)
  uint16_t height; // height (1 to 200)
  uint16_t size; // average of width and height
} Ball;

Pixy pixy;
Ball ball;

// finds the biggest block matching the ball colour
bool findBall() {
  uint16_t nBlocks = pixy.getBlocks();
  Block* block = NULL;
  int maxArea = 0;
  // go through each block the pixy found
  for (int i = 0; i < nBlocks; ++i) {
    // get a pointer to the block array element
    Block* b = &pixy.blocks[i];
    int area = b->width * b->height;
    // if the ball looks like a ball (right colour) and is bigger than the last one
    // set block to be the ball
    if (b.signature == BALL_SIGNATURE && area > maxArea) {
      block = b;
      maxArea = area;
    }
  }
  // if we did find a ball
  // compute data so it is useful (ball struct)
  if (block != NULL) {
    ball.x = (int16_t)(block->x + block->width / 2) - 160;
    ball.y = (int16_t)(block->y + block->height / 2) - 100;
    ball.width = block->width;
    ball.height = block->height;
    ball.size = (w + h) / 2;
    return true;
  }
  else {
    return false;
  }
}

void setup() {
  pixy.init();
}

void loop() {
  if (findBall() && ball.size > 10) {
    if (ball.x < -50) {
      // go left
    } else if (ball.x > 50) {
      // go right
    } else {
      // ball in the middle
    }
  }
}
```
