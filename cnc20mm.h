// cnc20mm.h
//
// The SD Card was not working with the Touch screen.
// Solved (?) Added a 220 ohm resistor on the lcd_connector
// between the TFT_MISO and TOUCH_MISO lines (after much
// experimentation).
//
// Here are some more summaries of Pins used by my CNC machines:
//
// BY PIN
//              V1          V2          20mm
//-------------------------------------------------------------
// 13           X_STEP      X_STEP      STEP_EN
// 12           LED_OUT     PWM2        avail_out
// 14           X_DIR       X_DIR       avail_out
// 27           Y_STEP      Y_STEP      avail_out
// 26           Y_DIR       Y_DIR       I2S_BCK
// 25           STEP_EN     STEP_EN     I2S_DATA
// 33           Z_STEP      Z_STEP      I2S_WS (I2S_WCK)
// 32           Z_DIR       Z_DIR       SW_CLK
// 35           avail_in    avail_in    avail_in
// 34           avail_in    avail_in    avail_in
// 39           avail_in    avail_in    avail_in
// 36           SW_DATA     SW_DATA     SW_DATA
//
// 15           avail_out   LED_OUT     LED_OUT
// 2            avail_out   PWM1        SW_LATCH
// 4            SD_CS       SD_CS       SD_CS
// 16/RX2       SW_CLK      SW_CLK      PWM1
// 17/TX2       SW_LATCH    SW_LATCH    PWM2
// 5            TOUCH_CS    TOUCH_CS    TOUCH_CS
// 18           MCLK        MCLK        MCLK
// 19           MISO        MISO        MISO
// 21           TFT_DC      TFT_DC      TFT_DC
// 3/RX0        unused      unused      unused
// 1/TX0        unused      unused      unused
// 22           TFT_CS      TFT_CS      TFT_CS
// 23           MOSI        MOSI        MOSI
//
//
// BY CHANGES
//
// 13           X_STEP      X_STEP      STEP_EN
// 12           LED_OUT     PWM2        avail_out
// 14           X_DIR       X_DIR       avail_out
// 27           Y_STEP      Y_STEP      avail_out
// 26           Y_DIR       Y_DIR       I2S_BCK
// 25           STEP_EN     STEP_EN     I2S_DATA
// 33           Z_STEP      Z_STEP      I2S_WS (I2S_WCK)
// 32           Z_DIR       Z_DIR       SW_CLK
//
// 15           avail_out   LED_OUT     LED_OUT
// 2            avail_out   PWM1        SW_LATCH
// 16/RX2       SW_CLK      SW_CLK      PWM1
// 17/TX2       SW_LATCH    SW_LATCH    PWM2
//
//
// NO CHANGES
//
// 35           avail_in    avail_in    avail_in
// 34           avail_in    avail_in    avail_in
// 39           avail_in    avail_in    avail_in
// 36           SW_DATA     SW_DATA     SW_DATA
//
// 4            SD_CS       SD_CS       SD_CS
// 5            TOUCH_CS    TOUCH_CS    TOUCH_CS
// 18           MCLK        MCLK        MCLK
// 19           MISO        MISO        MISO
// 21           TFT_DC      TFT_DC      TFT_DC
// 3/RX0        unused      unused      unused
// 1/TX0        unused      unused      unused
// 22           TFT_CS      TFT_CS      TFT_CS
// 23           MOSI        MOSI        MOSI




#pragma once

#define WITH_UI         // requires FluidNC_UI
#define WITH_MESH       // FluidNC_UI/gDefs.h::UI_WITH_MESH must be set the same!
#define WITH_PIXELS     // requires adafruitNeoPixels

#include <Machine/MachineConfig.h>  // FluidNC - required
#include <FluidDebug.h>             // FluidNC_extensions

#ifdef WITH_MESH
    #include <Mesh.h>               // FluidNC_extensions
#endif

//-----------------------------------
// ESP32 Pins Used by this Program
//-----------------------------------

// LED PIN moved from 12 to 15 for CNC machine #2
#define G_PIN_LEDS_OUT            GPIO_NUM_15
#define G_PIN_SDCARD_CS           GPIO_NUM_4
    // SDCARD_CS is also defined in Yaml

// TFT pina defined in TFT_eSPI/prhSettings.h
// but noted here for completeness.
//
// #define G_PIN_TFT_CS             GPIO_NUM_22
// #define G_PIN_TFT_DC             GPIO_NUM_21
// #define G_PIN_TOUCH_CS           GPIO_NUM_5

// I2SIn is defined in YAML
//                                    Mach1&2       Mach3
// #define G_PIN_74HC165_CLK         GPIO_NUM_16    32
// #define G_PIN_74HC165_LATCH       GPIO_NUM_17    2
// #define G_PIN_74HC165_DATA        GPIO_NUM_36    36

// pin ins to the 74HC165
// #define PIN7_XZERO       3
// #define PIN7_XLIM        2
// #define PIN7_YZERO       1
// #define PIN7_YLIM        0
// #define PIN7_ZZERO       7
// #define PIN7_ZLIM        6
// #define PIN7_PROBE       5
// #define PIN7_UNUSED      4

// pin ins to display connector
// 1 - VCC
// 2 - TOUCH_CS (GPIO_NUM_5)
// 3 - SPI_CLK  (GPIO_NUM_18)
// 4 - SPI_MISO (GPIO_NUM_19) fs
// 5 - TFT DC   (GPIO_NUM_21)
// 6 - TFT CS   (GPIO_NUM_22)
// 7 - SPI_MOSI (GPIO_NUM_23)
// 8 - GND

// pin ins to sdcard connector
// 1 - VCC      (3.3v)
// 2 - CS       (GPIO_NUM_4)
// 3 - SPI_MOSI (GPIO_NUM_32)
// 4 - SPI_CLK  (GPIO_NUM_18)
// 5 - SPI_MISO (GPIO_NUM_19)
// 6 - GND

// ESP32 SPI defaults listed here for good measure
// #define SPI_CLK                  GPIO_NUM_18
// #define SPI_MISO                 GPIO_NUM_19
// #define SPI_MOSI                 GPIO_NUM_23

// HOOK UP TO ILI9486 "generic" TS with XPT2046
// from BOTTOM of screen with connector in TOP LEFT corner
// pin "1" would be the top right pin
//
//         2 - 5V                    1 - 3.3V
//         4 - 5V                    3 - x
//         6 - GND                   5 - x
//         8 - x                     7 - x
//        10 - x                     9 - GND
//        12 - x                    11 - TP IRQ (unused)
//        14 - GND                  13 - x
//        16 - x                    15 - x
//        18 - LCD_RS (DC)          17 - 3.3V
//        20 - GND                  19 - LCD/TP_SI  (MOSI)
//        22 - RST                  21 - TP_SO      (MISO)
//        24 - LCD_CS (TFT_CS)      23 - LCD/TP_SCK (CLK)
//        26 - TP_CS                25 - GND
//


//-----------------------------------
// the Machine
//-----------------------------------

class cnc20mm : public Machine::MachineConfig
{
    public:

        cnc20mm();

    protected:

        void afterParse() override;
        void group(Configuration::HandlerBase& handler) override;

        void  initSettings();

};  // class cnc20mm



//-----------------------------------
// externs
//-----------------------------------

extern cnc20mm the_machine;
    // in cnc20mm.cpp - the main "machine"

extern void bumpPixel();	// for LED startup sequence
    // in cnc20mm.ino
