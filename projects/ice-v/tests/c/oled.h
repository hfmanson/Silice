volatile int* const LEDS     = (int*)0x2004;
volatile int* const OLED     = (int*)0x2008;
volatile int* const OLED_RST = (int*)0x2010;

#define OLED_CMD   (1<< 9)
#define OLED_DTA   (1<<10)

#define DELAY      (1<<16)

static inline void wait() { volatile int i; for (i=0;i<1;i++) { } }

#define WAIT wait()

static inline  void oled_init()
{
  volatile int i;
  // reset high
  *(OLED_RST) = 0;
  // wait > 100 msec
  for (i=0;i<DELAY;i++) {  }
  // reset low
  *(OLED_RST) = 1;
  // wait > 300us
  for (i=0;i<DELAY;i++) {  }
  // reset high
  *(OLED_RST) = 0;
  // wait > 300 msec
  for (i=0;i<DELAY;i++) {  }
  // send screen on
  *(OLED) = OLED_CMD | 0xAF;
  // wait > 300 msec
  for (i=0;i<DELAY;i++) {  }
  
  // select auto horiz. increment, 666 RGB 
  *(OLED) = OLED_CMD | 0xA0;
  WAIT;
  *(OLED) = OLED_DTA | 0xA0;
  WAIT;
  // unlock
  *(OLED) = OLED_CMD | 0xFD;
  WAIT;
  *(OLED) = OLED_DTA | 0xB1;
  WAIT;
  // vertical scroll to zero
  *(OLED) = OLED_CMD | 0xA2;
  WAIT;
  *(OLED) = OLED_DTA | 0x00;
  WAIT;
  // done!
}

static inline  void oled_fullscreen()
{
  // set col addr
  *(OLED) = OLED_CMD | 0x15;
  WAIT;
  *(OLED) = OLED_DTA |    0;
  WAIT;
  *(OLED) = OLED_DTA |  127;
  WAIT;
  // set row addr
  *(OLED) = OLED_CMD | 0x75;
  WAIT;
  *(OLED) = OLED_DTA |    0;
  WAIT;
  *(OLED) = OLED_DTA |  127;  
  WAIT;
  // initiate write
  *(OLED) = OLED_CMD | 0x5c;
  WAIT;
}

static inline  void oled_pix(unsigned char r,unsigned char g,unsigned char b)
{
    *(OLED) = OLED_DTA | b;
    WAIT;
    *(OLED) = OLED_DTA | g;
    WAIT;
    *(OLED) = OLED_DTA | r;
    // WAIT;
}

static inline  void oled_clear(unsigned char c)
{
  for (int v=0;v<128;v++) {
    for (int u=0;u<128;u++) {
      oled_pix(c,c,c);
    }  
  }
}
