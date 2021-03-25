#include <Adafruit_NeoPixel.h>

#define PIN A1
#define NUMPIXELS 60

typedef unsigned int uint;

const uint MAX_BRIGHTNESS = 15;

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
    delay(20);
  }

  for (uint i = 0; i < MAX_BRIGHTNESS + 1; i++) {
    rgb_all(i, MAX_BRIGHTNESS - i, 0);
    delay(20);
  }
  
  for (uint i = 0; i < MAX_BRIGHTNESS + 1; i++) {
    rgb_all(MAX_BRIGHTNESS - i, 0, i);
    delay(20);
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

void white_wave() {
  uint max = MAX_BRIGHTNESS;
  for (uint i = 0; i < 4; i++) {
    pixels.clear();
    set_row(i, max, max, max);
    Serial.print(i);
    Serial.print(" ");
    Serial.println(max);
    if (i > 0)
      for (int j = i - 1; j >= 0; j--) {
        uint fade = max / (2*(i - j) + 1);
        set_row(j, fade, fade, fade);
        Serial.print(j);
        Serial.print(" ");
        Serial.println(fade);
      }
    Serial.println("-----");
    pixels.show();
    delay(100);
  }
}

void loop() {
  //for (int i = 0; i < 50; i++)
  //  blink_rgb();
  for (int i = 0; i < 50; i++)
    white_wave();
}
