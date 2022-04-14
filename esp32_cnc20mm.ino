//----------------------------------------------------
// cnc20mm.ino
//----------------------------------------------------
// For lack of a better place to record this analysis, here is a list of
// the known tasks in the system, in the rough order they are started:
//
//    setup/loop (main task)    core1
//    gDisplayTask              core0
//    i2sOutTask                core1
//    I2SI shiftInTask          core1
//    pixelTask                 core1
//
// This does not count 'embedded' tasks started for webServers, telnet, SSDP, etc.
// A quick probe of the WebServer (putting debugging in SDCard upload) gave core1,
// so it is likely all FluidNC related tasks are on core1.
//
// PS, I FINALLY added a re-entrancy boolean to logging to synchronize log calls.
//
//-------------------------------------------------------------------------
// Idea for SDCard cleanup:
//-------------------------------------------------------------------------
// I just hate the spaghetti code in FluidNC with "WebUI" being overloaded for all
// behaviors, and the SD card access in general. However, there is something to the
// idea that you never know when the user will swap the SD card, so it *kind of*
// makes sense to call SD.begin() over and over.
//
// In any case, what I am looking for is some kind of a cross-core semaphore to
// allow the UI (touch and TFT) to use the SPI bus from core0, while allowing the
// SD card to use it from core1, in an atomic manner.
//
// The idea is to bracket the calls to the SD card, i.e. openFile and getNextLine
// along with *at least* the touch screen polling (and get rid of the KLUDGE_FIX_SD_UPLOAD
// in FludNC_UI.cpp), while retaining the SD checksum stuff.  It would also be necessary
// to bracket the calls in SD file upload (which is implemented in WebServer.cpp)
//
// As it is I get really funky behavior from the WebUI, for example while deleting
// files I get a variety of listings back as I delete one file after another.  It
// would also be nice to implement multiple file uploads.  Directory creation does
// not work.  The whole thing's a mess.
//
// Perhaps I have been repreived - Added a 220 ohm resistor on the lcd_connector
// between the TFT_MISO and TOUCH_MISO lines (after much experimentation) and now
// it appears as if the SD card works with the touch-screen.


#include <FluidNC.h>
#include "cnc20mm.h"
#include "pixels_20mm.h"



#define INIT_SD_DURING_SETUP
#define INIT_SD_AGAIN


#ifdef INIT_SD_DURING_SETUP
    #include <SD.h>
#endif

#ifdef INIT_SD_AGAIN
	#include <gStatus.h>	// FluidNC extensions
#endif



#ifdef INIT_SD_AGAIN
	static void start_sdcard()
	{
		g_debug("starting sdCard using FluidNC");
		SDState state = g_status.getSDState(true);
		// info_debug("machine_init() get_sd_state() returned %d",state);
		if (state == SDState::NotPresent)
		{
			g_info("SD Card Not Present");
		}
		else
		{
			if (state != SDState::Idle)
				g_info("SD Card BUSY");
			uint8_t cardType = SD.cardType();
			g_debug("SD Card Type: %s",
				cardType == CARD_NONE ? "NONE" :
				cardType == CARD_MMC  ? "MMC" :
				cardType == CARD_SD   ? "SDSC" :
				cardType == CARD_SDHC ? "SDHC" :
				"UNKNOWN");
			uint64_t cardSize = SD.cardSize() / (1024 * 1024);
			g_info("SD Card Size: %lluMB", cardSize);
			g_info("Total space:  %lluMB", (SD.totalBytes()+1024*1024-1) / (1024 * 1024));
			g_info("Used space:   %lluMB", (SD.usedBytes()+1024*1024-1) / (1024 * 1024));
			SD.end();	// as per the GRBL way
		}
	}
#endif	// INIT_SD_AGAIN



//----------------------------------------------------------
// setup()
//----------------------------------------------------------


void setup()
{
    #ifdef WITH_PIXELS
		pixels.setBrightness(20);
		pixels.show();
		delay(1000);
	#endif

	#ifdef WITH_PIXELS
		bumpPixel();	// 0
    #endif

	delay(1000);

	#ifdef WITH_PIXELS
		bumpPixel();	// 1
    #endif

    #ifdef INIT_SD_DURING_SETUP
        bool sd_ok = SD.begin(G_PIN_SDCARD_CS);
    #endif

    main_init();	// FluidNC setup() method

	#ifdef WITH_PIXELS
		bumpPixel();	// 3
    #endif

    #ifdef INIT_SD_DURING_SETUP
        g_debug("cnc20mm.ino SD.begin() %s during setup()",sd_ok?"WORKED OK":"FAILED");
    #endif

    #ifdef INIT_SD_AGAIN
        start_sdcard();
    #endif

	#ifdef WITH_MESH
	   the_mesh.readMesh();
	#endif

    #ifdef WITH_PIXELS
		start_pixels();
	#endif

    g_debug("cnc20mm.ino setup(core %d) completed %d/%dK",
        xPortGetCoreID(),
        xPortGetFreeHeapSize()/1024,
        xPortGetMinimumEverFreeHeapSize()/1024);
}




//----------------------------------------------------------
// loop()
//----------------------------------------------------------

void loop()
{
    g_debug("cnc20mm.ino loop() started %d/%dK",xPortGetFreeHeapSize()/1024,xPortGetMinimumEverFreeHeapSize()/1024);
    run_once();		// FluidNC loop() method
    delay(1000);    // for display of following message to work with FluidNC asynch debug output
    g_debug("cnc20mm.ino loop() completed %d/%dK",xPortGetFreeHeapSize()/1024,xPortGetMinimumEverFreeHeapSize()/1024);
 }
