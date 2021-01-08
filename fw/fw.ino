
// columns
// TPIC6C595 ctrl
const int REG_DATA_BIT  = 4;  // pin 2 of TPIC6C595
const int REG_CLK_BIT   = 5;  // pin 15 of TPIC6C595
const int REG_LATCH_BIT = 3;  // pin 10 of TPIC6C595

#define REG_DIR DDRB
#define REG_PORT PORTB

// rows
const int ROW1_BIT = 4;
const int ROW2_BIT = 5;
const int ROW3_BIT = 6;
const int ROW4_BIT = 7;

#define ROW_DIR DDRD
#define ROW_PORT PORTD

const uint16_t mask = 0x7FFF;

uint16_t rows[4];
int timer = 0;
int frame_cnt = 0;
int build_cnt = 0;

void OutRow(uint16_t data) {
  for (uint8_t i = 0; i < 16; i++) {
    if (data & 0x8000)
      bitSet(REG_PORT, REG_DATA_BIT);
    else
      bitClear(REG_PORT, REG_DATA_BIT);
 
    data <<= 1;
 
    bitSet(PORTB, REG_CLK_BIT);
    bitClear(PORTB, REG_CLK_BIT);
  }
}

void LatchIt() {
  bitSet(REG_PORT, REG_LATCH_BIT);
  bitClear(REG_PORT, REG_LATCH_BIT);
}

void setup() {
  REG_DIR |= _BV(REG_DATA_BIT) | _BV(REG_CLK_BIT) | _BV(REG_LATCH_BIT);
  bitClear(REG_PORT, REG_LATCH_BIT);

  ROW_DIR |= _BV(ROW1_BIT) | _BV(ROW2_BIT) | _BV(ROW3_BIT) | _BV(ROW4_BIT);
  bitSet(ROW_PORT, ROW1_BIT);
  bitSet(ROW_PORT, ROW2_BIT);
  bitSet(ROW_PORT, ROW3_BIT);
  bitSet(ROW_PORT, ROW4_BIT);
  
  Serial.begin(115200);
  Serial.println("Start");
}

void SetRows(uint8_t mask) {
  if (mask & 1)
    bitClear(ROW_PORT, ROW1_BIT);
  else
    bitSet(ROW_PORT, ROW1_BIT);

  if (mask & 2)
    bitClear(ROW_PORT, ROW2_BIT);
  else
    bitSet(ROW_PORT, ROW2_BIT);

  if (mask & 4)
    bitClear(ROW_PORT, ROW3_BIT);
  else
    bitSet(ROW_PORT, ROW3_BIT);

  if (mask & 8)
    bitClear(ROW_PORT, ROW4_BIT);
  else
    bitSet(ROW_PORT, ROW4_BIT);
}

void OutFrame() {
  OutRow(rows[0]); SetRows(1); LatchIt();
  delay(1);
  OutRow(rows[1]); SetRows(2); LatchIt();
  delay(1);
  OutRow(rows[2]); SetRows(4); LatchIt();
  delay(1);
  OutRow(rows[3]); SetRows(8); LatchIt();
  delay(1);
}

// 15   14 13 12 11 10  9  8  7  6  5  4  3  2  1  0
//  0    0  0  0  0  1  0  0  0  0  1  0  0  0  0  1
//  0    0  0  0  1  0  0  0  0  1  0  0  0  0  1  0
//  0    0  0  1  0  0  0  0  1  0  0  0  0  1  0  0
//  0    0  1  0  0  0  0  1  0  0  0  0  1  0  0  0
//  0    1  0  0  0  0  1  0  0  0  0  1  0  0  0  0
//  0    0  0  0  0  1  0  0  0  0  1  0  0  0  0  1

void BuildV1Frame() {
  frame_cnt++;
  if (frame_cnt >= 5)
    frame_cnt = 0;

  uint16_t row = 0x421;
  row <<= frame_cnt;

  rows[0] = row;
  rows[1] = row;
  rows[2] = row;
  rows[3] = row;
}

void BuildV2Frame() {
  rows[0] = 0;
  rows[1] = 0;
  rows[2] = 0;
  rows[3] = 0;

  frame_cnt++;
  if (frame_cnt >= 4) {
    frame_cnt = 0;
    rows[3] = mask;
  } else if (frame_cnt == 1) {
    rows[2] = mask;
  } else if (frame_cnt == 2) {
    rows[1] = mask;
  } else if (frame_cnt == 3) {
    rows[0] = mask;
  }
}

void BuildV3Frame() {
  rows[0] = 0;
  rows[1] = 0;
  rows[2] = 0;
  rows[3] = 0;

  frame_cnt++;
  if (frame_cnt >= 5) {
    frame_cnt = 0;
    rows[3] = mask;
  } else if (frame_cnt == 1) {
    rows[2] = mask;
    rows[3] = mask;
  } else if (frame_cnt == 2) {
    rows[1] = mask;
    rows[2] = mask;
    rows[3] = mask;
  } else if (frame_cnt == 3) {
    rows[0] = mask;
    rows[1] = mask;
    rows[2] = mask;
    rows[3] = mask;
  } else if (frame_cnt == 4) {
  }
}

void BuildV4Frame() {
  rows[0] = 0;
  rows[1] = 0;
  rows[2] = 0;
  rows[3] = 0;

  frame_cnt++;
  if (frame_cnt >= 7) {
    frame_cnt = 0;
    rows[3] = mask;
  } else if (frame_cnt == 1) {
    rows[2] = mask;
  } else if (frame_cnt == 2) {
    rows[1] = mask;
  } else if (frame_cnt == 3) {
    rows[0] = mask;
  } else if (frame_cnt == 4) {
    rows[1] = mask;
  } else if (frame_cnt == 5) {
    rows[2] = mask;
  } else if (frame_cnt == 6) {
    rows[3] = mask;
  }
}

void loop() {
  OutFrame();
  timer++;
  if (timer < 50)
    return;

  timer = 0;

  build_cnt++;
  const int k = 40;
  if (build_cnt < k)
    BuildV1Frame();
  else if (build_cnt < 2*k)
    BuildV2Frame();
  else if (build_cnt < 3*k)
    BuildV3Frame();
  else if (build_cnt < 4*k)
    BuildV4Frame();
  else
    build_cnt = 0;
}
