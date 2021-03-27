#include <Adafruit_NeoPixel.h>

#define PIN A1
#define NUMPIXELS 60

typedef unsigned int uint;

const uint MAX_BRIGHTNESS = 30;

Adafruit_NeoPixel pixels(NUMPIXELS, PIN, NEO_GRB + NEO_KHZ800);

void setup() {
  pixels.begin();
  Serial.begin(115200);
}

void rgb_all(uint r, uint g, uint b) {
  pixels.clear();
  for (uint i = 0; i < NUMPIXELS; i++)
    pixels.setPixelColor(i, r, g, b);
  pixels.show();
}

void blink_rgb() {
  for (uint i = 0; i < MAX_BRIGHTNESS + 1; i++) {
    rgb_all(0, i, MAX_BRIGHTNESS - i);
    delay(60);
  }

  for (uint i = 0; i < MAX_BRIGHTNESS + 1; i++) {
    rgb_all(i, MAX_BRIGHTNESS - i, 0);
    delay(60);
  }
  
  for (uint i = 0; i < MAX_BRIGHTNESS + 1; i++) {
    rgb_all(MAX_BRIGHTNESS - i, 0, i);
    delay(60);
  }
}

void set_row(uint row, uint r, uint g, uint b) {
  for (uint petal = 0; petal < 5; petal++) {
    uint base = petal*12 + row*3;
    pixels.setPixelColor(base, r, g, b);
    pixels.setPixelColor(base + 1, r, g, b);
    pixels.setPixelColor(base + 2, r, g, b);
  }
}

void set_col(uint col, uint r, uint g, uint b) {
  uint p1 = col / 3;
  uint p2 = 2 - (col % 3);
  uint base = p2 + p1*12;
  pixels.setPixelColor(base + 0, r, g, b);
  pixels.setPixelColor(base + 3, r, g, b);
  pixels.setPixelColor(base + 6, r, g, b);
  pixels.setPixelColor(base + 9, r, g, b);
}

void center_wave() {
  const uint steps = 8;
  uint vals[4*steps] = {40, 0, 0, 0,   // step 0
                        25, 40, 0, 0,  // step 1
                        15, 25, 40, 0, // step 2
                        5, 15, 25, 40, // step 3
                        0, 5, 15, 40,  // step 4
                        0, 0, 5, 40,   // step 5
                        0, 0, 0, 40,   // step 6
                        0, 0, 0, 0};   // step 7
  for (uint s = 0; s < steps; s++) {
    pixels.clear();
    for (uint i = 0; i < 4; i++) {
      uint b = s*4;
      set_row(i, vals[b + i], vals[b + i], vals[b + i]);
    }
    pixels.show();
    delay(100);
  }
}

void round_wave() {
  for (uint s = 0; s < 15; s++) {
    pixels.clear();
    for (uint i = 0; i < 15; i++) {
      uint bri = (i + 15 - s) % 15;
      bri *= 2;
      set_col(i, bri, bri, bri);
    }
    pixels.show();
    delay(100);
  }
}

void loop() {
  for (int i = 0; i < 30; i++)
    blink_rgb();
  for (int i = 0; i < 30; i++)
    round_wave();
  for (int i = 0; i < 30; i++)
    center_wave();
}
//
