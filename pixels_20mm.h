//------------------------------------
// a ws2812b LED strip
//------------------------------------
// static object defined in vMachine.cpp

#pragma once

#include "cnc20mm.h"

#ifdef WITH_PIXELS

    #include <Adafruit_NeoPixel.h>

    #define PIXELS_REVERSED
        // cnc20mm uses rotation(1) instead of rotation(3) like all previous machins.
        // The 6 pixels on the cnc20mm machine are reversed, where the 0th pixel is on the right.
        // We change these definitions, and the increment order in bumpPixel, although I came *this*
        // close to just changing the 3D printing and/or wooden piece to use rotation(3) and the
        // "normal" pixel orientation.

    #ifdef PIXELS_REVERSED
        #define PIXEL_SYS_STATE   5
        #define PIXEL_X_STATE     4
        #define PIXEL_A_STATE     3
        #define PIXEL_Y_STATE     2
        #define PIXEL_Z_STATE     1
        #define PIXEL_PROBE_STATE 0
    #else
        #define PIXEL_SYS_STATE   0
        #define PIXEL_X_STATE     1
        #define PIXEL_A_STATE     2
        #define PIXEL_Y_STATE     3
        #define PIXEL_Z_STATE     4
        #define PIXEL_PROBE_STATE 5
    #endif

    #define NUM_PIXELS        6

    #define MY_LED_BLACK    0x000000
    #define MY_LED_RED      0x440000
    #define MY_LED_GREEN    0x003300
    #define MY_LED_BLUE     0x000044
    #define MY_LED_CYAN     0x003333
    #define MY_LED_YELLOW   0x333300
    #define MY_LED_MAGENTA  0x330033
    #define MY_LED_WHITE    0x000044

    extern Adafruit_NeoPixel pixels;

    extern void start_pixels();



#endif
