EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 8500 11000 portrait
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R R11
U 1 1 61502373
P 6100 5300
F 0 "R11" V 6170 5346 50  0001 C CNN
F 1 "10K" V 6150 5300 50  0000 C TNN
F 2 "cnc3018-PCB:mySkip2" V 6030 5300 50  0001 C CNN
F 3 "~" H 6100 5300 50  0001 C CNN
	1    6100 5300
	0    1    1    0   
$EndComp
$Comp
L cnc3018_Library:SD_TYP0 M2
U 1 1 61159427
P 6550 4900
F 0 "M2" V 6350 5000 50  0000 L CNN
F 1 "SD_TYP0" H 6500 5050 50  0000 L CNN
F 2 "cnc3018-PCB:my6Pin" H 6350 5050 50  0001 C CNN
F 3 "" H 6350 5050 50  0001 C CNN
	1    6550 4900
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J9
U 1 1 61287997
P 2800 5550
F 0 "J9" V 2800 5250 50  0000 L CNN
F 1 "WS2812B Strip" V 2950 5300 50  0000 L CNN
F 2 "cnc3018-PCB:my3pin" H 2800 5550 50  0001 C CNN
F 3 "~" H 2800 5550 50  0001 C CNN
	1    2800 5550
	0    1    1    0   
$EndComp
Text GLabel 5850 5000 0    50   Input ~ 0
MOSI
Text GLabel 5850 4800 0    50   Input ~ 0
MISO
Text GLabel 5850 4900 0    50   Input ~ 0
MCLK
Text GLabel 5850 5100 0    50   Input ~ 0
SD_CS
$Comp
L power:+3.3V #PWR019
U 1 1 624C5832
P 5850 5200
F 0 "#PWR019" H 5850 5050 50  0001 C CNN
F 1 "+3.3V" V 5850 5350 50  0000 L CNN
F 2 "" H 5850 5200 50  0001 C CNN
F 3 "" H 5850 5200 50  0001 C CNN
	1    5850 5200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR018
U 1 1 62518B20
P 5850 4700
F 0 "#PWR018" H 5850 4450 50  0001 C CNN
F 1 "GND" V 5850 4500 50  0000 C CNN
F 2 "" H 5850 4700 50  0001 C CNN
F 3 "" H 5850 4700 50  0001 C CNN
	1    5850 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	5850 4700 6250 4700
Wire Wire Line
	5850 4800 5950 4800
Wire Wire Line
	5850 4900 6250 4900
Wire Wire Line
	5850 5000 6250 5000
Wire Wire Line
	5850 5100 6250 5100
Wire Wire Line
	5850 5200 6250 5200
Wire Wire Line
	6250 5200 6250 5300
Connection ~ 6250 5200
Wire Wire Line
	5950 5300 5950 4800
Connection ~ 5950 4800
Wire Wire Line
	5950 4800 6250 4800
Text GLabel 3450 5350 1    50   Input ~ 0
TOUCH_CS
Text GLabel 3750 5350 1    50   Input ~ 0
TFT_DC
Text GLabel 3850 5350 1    50   Input ~ 0
TFT_CS
$Comp
L power:+5V #PWR022
U 1 1 626715F3
P 3350 5350
F 0 "#PWR022" H 3350 5200 50  0001 C CNN
F 1 "+5V" V 3350 5550 50  0000 C CNN
F 2 "" H 3350 5350 50  0001 C CNN
F 3 "" H 3350 5350 50  0001 C CNN
	1    3350 5350
	1    0    0    -1  
$EndComp
Text GLabel 3650 5350 1    50   Input ~ 0
MISO
Text GLabel 3950 5350 1    50   Input ~ 0
MOSI
$Comp
L power:GND #PWR023
U 1 1 625FE7F4
P 4050 5350
F 0 "#PWR023" H 4050 5100 50  0001 C CNN
F 1 "GND" V 4050 5150 50  0000 C CNN
F 2 "" H 4050 5350 50  0001 C CNN
F 3 "" H 4050 5350 50  0001 C CNN
	1    4050 5350
	-1   0    0    1   
$EndComp
Text GLabel 3550 5350 1    50   Input ~ 0
MCLK
$Comp
L Connector_Generic:Conn_01x08 J10
U 1 1 612A4EF6
P 3750 5550
F 0 "J10" V 3750 5100 50  0000 R CNN
F 1 "Display" V 3900 5650 50  0000 R CNN
F 2 "cnc3018-PCB:my8Pin" H 3750 5550 50  0001 C CNN
F 3 "~" H 3750 5550 50  0001 C CNN
	1    3750 5550
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR021
U 1 1 627A22B7
P 2900 5350
F 0 "#PWR021" H 2900 5200 50  0001 C CNN
F 1 "+5V" V 2900 5550 50  0000 C CNN
F 2 "" H 2900 5350 50  0001 C CNN
F 3 "" H 2900 5350 50  0001 C CNN
	1    2900 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 627C5D8E
P 2700 5350
F 0 "#PWR020" H 2700 5100 50  0001 C CNN
F 1 "GND" V 2700 5150 50  0000 C CNN
F 2 "" H 2700 5350 50  0001 C CNN
F 3 "" H 2700 5350 50  0001 C CNN
	1    2700 5350
	-1   0    0    1   
$EndComp
Text GLabel 2800 5350 1    50   Input ~ 0
LED
$Comp
L cnc3018_Library:BUCK01 M1
U 1 1 62C77DBA
P 1500 2150
F 0 "M1" V 1429 2388 50  0000 L CNN
F 1 "BUCK01" V 1520 2388 50  0000 L CNN
F 2 "cnc3018-PCB:BUCK01" H 1450 2450 50  0001 C CNN
F 3 "" H 1450 2450 50  0001 C CNN
	1    1500 2150
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 62D3D592
P 1350 2600
F 0 "#PWR09" H 1350 2450 50  0001 C CNN
F 1 "+5V" V 1350 2800 50  0000 C CNN
F 2 "" H 1350 2600 50  0001 C CNN
F 3 "" H 1350 2600 50  0001 C CNN
	1    1350 2600
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 62D464CA
P 1650 1750
F 0 "#PWR06" H 1650 1500 50  0001 C CNN
F 1 "GND" V 1650 1550 50  0000 C CNN
F 2 "" H 1650 1750 50  0001 C CNN
F 3 "" H 1650 1750 50  0001 C CNN
	1    1650 1750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 62D4B6CC
P 1650 2500
F 0 "#PWR010" H 1650 2250 50  0001 C CNN
F 1 "GND" V 1650 2300 50  0000 C CNN
F 2 "" H 1650 2500 50  0001 C CNN
F 3 "" H 1650 2500 50  0001 C CNN
	1    1650 2500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 62E5BE8A
P 2600 1450
F 0 "J2" V 2750 1650 50  0000 R CNN
F 1 "Z_AXIS" V 2750 1500 50  0000 R CNN
F 2 "cnc3018-PCB:my4pin" H 2600 1450 50  0001 C CNN
F 3 "~" H 2600 1450 50  0001 C CNN
	1    2600 1450
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J11
U 1 1 62E98971
P 4650 5550
F 0 "J11" H 4568 5225 50  0000 C CNN
F 1 "PWM" H 4568 5316 50  0000 C CNN
F 2 "cnc3018-PCB:my2pin" H 4650 5550 50  0001 C CNN
F 3 "~" H 4650 5550 50  0001 C CNN
	1    4650 5550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR024
U 1 1 62EC515C
P 4650 5350
F 0 "#PWR024" H 4650 5100 50  0001 C CNN
F 1 "GND" V 4650 5150 50  0000 C CNN
F 2 "" H 4650 5350 50  0001 C CNN
F 3 "" H 4650 5350 50  0001 C CNN
	1    4650 5350
	-1   0    0    1   
$EndComp
Text GLabel 4550 5350 1    50   Input ~ 0
PWM
$Comp
L Device:CP C7
U 1 1 633D0320
P 1500 4400
F 0 "C7" H 1700 4350 50  0000 L CNN
F 1 "220uf 10V" H 1600 4250 50  0000 L CNN
F 2 "cnc3018-PCB:my2pin" H 1538 4250 50  0001 C CNN
F 3 "~" H 1500 4400 50  0001 C CNN
	1    1500 4400
	1    0    0    -1  
$EndComp
Text GLabel 2600 1650 3    50   Input ~ 0
STEP_EN
Text GLabel 2700 1650 3    50   Input ~ 0
X_DIR
Text GLabel 2800 1650 3    50   Input ~ 0
X_STEP
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 624332C3
P 3150 1450
F 0 "J3" V 3300 1650 50  0000 R CNN
F 1 "A_AXIS" V 3300 1500 50  0000 R CNN
F 2 "cnc3018-PCB:my4pin" H 3150 1450 50  0001 C CNN
F 3 "~" H 3150 1450 50  0001 C CNN
	1    3150 1450
	0    -1   -1   0   
$EndComp
Text GLabel 3150 1650 3    50   Input ~ 0
STEP_EN
Text GLabel 3250 1650 3    50   Input ~ 0
A_DIR
Text GLabel 3350 1650 3    50   Input ~ 0
A_STEP
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 6244B6EC
P 3700 1450
F 0 "J4" V 3850 1650 50  0000 R CNN
F 1 "Y_AXIS" V 3850 1500 50  0000 R CNN
F 2 "cnc3018-PCB:my4pin" H 3700 1450 50  0001 C CNN
F 3 "~" H 3700 1450 50  0001 C CNN
	1    3700 1450
	0    -1   -1   0   
$EndComp
Text GLabel 3700 1650 3    50   Input ~ 0
STEP_EN
Text GLabel 3800 1650 3    50   Input ~ 0
Y_DIR
Text GLabel 3900 1650 3    50   Input ~ 0
Y_STEP
$Comp
L Connector_Generic:Conn_01x04 J5
U 1 1 6244FD74
P 4250 1450
F 0 "J5" V 4400 1650 50  0000 R CNN
F 1 "X_AXIS" V 4400 1500 50  0000 R CNN
F 2 "cnc3018-PCB:my4pin" H 4250 1450 50  0001 C CNN
F 3 "~" H 4250 1450 50  0001 C CNN
	1    4250 1450
	0    -1   -1   0   
$EndComp
Text GLabel 4350 1650 3    50   Input ~ 0
Z_DIR
Text GLabel 4450 1650 3    50   Input ~ 0
Z_STEP
$Comp
L power:GND #PWR013
U 1 1 62AB8487
P 2950 2900
F 0 "#PWR013" H 2950 2650 50  0001 C CNN
F 1 "GND" V 2950 2700 50  0000 C CNN
F 2 "" H 2950 2900 50  0001 C CNN
F 3 "" H 2950 2900 50  0001 C CNN
	1    2950 2900
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR012
U 1 1 62AAA655
P 2850 2900
F 0 "#PWR012" H 2850 2750 50  0001 C CNN
F 1 "+5V" V 2850 3100 50  0000 C CNN
F 2 "" H 2850 2900 50  0001 C CNN
F 3 "" H 2850 2900 50  0001 C CNN
	1    2850 2900
	1    0    0    -1  
$EndComp
Text GLabel 3150 2900 1    50   Input ~ 0
LED
NoConn ~ 4050 3900
NoConn ~ 3950 3900
$Comp
L Device:CP C5
U 1 1 61697EE0
P 4400 2900
F 0 "C5" V 4145 2900 50  0001 C CNN
F 1 "10uF" V 4250 2850 50  0000 C CNN
F 2 "cnc3018-PCB:my2pin" H 4438 2750 50  0001 C CNN
F 3 "~" H 4400 2900 50  0001 C CNN
	1    4400 2900
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR015
U 1 1 623FFFB3
P 2850 4050
F 0 "#PWR015" H 2850 3900 50  0001 C CNN
F 1 "+3.3V" V 2850 4300 50  0000 C CNN
F 2 "" H 2850 4050 50  0001 C CNN
F 3 "" H 2850 4050 50  0001 C CNN
	1    2850 4050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR014
U 1 1 624003E7
P 2950 3900
F 0 "#PWR014" H 2950 3650 50  0001 C CNN
F 1 "GND" V 2950 3700 50  0000 C CNN
F 2 "" H 2950 3900 50  0001 C CNN
F 3 "" H 2950 3900 50  0001 C CNN
	1    2950 3900
	1    0    0    -1  
$EndComp
Text GLabel 3250 3900 3    50   Input ~ 0
SD_CS
Text GLabel 4250 3900 3    50   Input ~ 0
MOSI
Text GLabel 3750 3900 3    50   Input ~ 0
MISO
Text GLabel 4150 3900 3    50   Input ~ 0
TFT_CS
Text GLabel 3850 3900 3    50   Input ~ 0
TFT_DC
Text GLabel 3550 3900 3    50   Input ~ 0
TOUCH_CS
Text GLabel 3650 3900 3    50   Input ~ 0
MCLK
Text GLabel 3150 3900 3    50   Input ~ 0
STEP_EN
$Comp
L power:+3.3V #PWR011
U 1 1 62B63A6E
P 4550 2850
F 0 "#PWR011" H 4550 2700 50  0001 C CNN
F 1 "+3.3V" V 4550 3100 50  0000 C CNN
F 2 "" H 4550 2850 50  0001 C CNN
F 3 "" H 4550 2850 50  0001 C CNN
	1    4550 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 2850 4550 2900
Text GLabel 3450 3900 3    50   Input ~ 0
PWM
Text GLabel 3250 2900 1    50   Input ~ 0
A_DIR
Text GLabel 3350 2900 1    50   Input ~ 0
A_STEP
Text GLabel 3450 2900 1    50   Input ~ 0
Y_DIR
Text GLabel 3550 2900 1    50   Input ~ 0
Y_STEP
Text GLabel 3050 2900 1    50   Input ~ 0
Z_DIR
Text GLabel 3050 3900 3    50   Input ~ 0
Z_STEP
$Comp
L Connector_Generic:Conn_01x02 J8
U 1 1 62D1C8A4
P 1150 2600
F 0 "J8" V 1350 2500 50  0000 L CNN
F 1 "USB 5V" V 1250 2400 50  0000 L CNN
F 2 "cnc3018-PCB:my2pin" H 1150 2600 50  0001 C CNN
F 3 "~" H 1150 2600 50  0001 C CNN
	1    1150 2600
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR02
U 1 1 623EE4E0
P 2500 1650
F 0 "#PWR02" H 2500 1500 50  0001 C CNN
F 1 "+3.3V" V 2500 1900 50  0000 C CNN
F 2 "" H 2500 1650 50  0001 C CNN
F 3 "" H 2500 1650 50  0001 C CNN
	1    2500 1650
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR03
U 1 1 623F3E1D
P 3050 1650
F 0 "#PWR03" H 3050 1500 50  0001 C CNN
F 1 "+3.3V" V 3050 1900 50  0000 C CNN
F 2 "" H 3050 1650 50  0001 C CNN
F 3 "" H 3050 1650 50  0001 C CNN
	1    3050 1650
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR04
U 1 1 623F96D8
P 3600 1650
F 0 "#PWR04" H 3600 1500 50  0001 C CNN
F 1 "+3.3V" V 3600 1900 50  0000 C CNN
F 2 "" H 3600 1650 50  0001 C CNN
F 3 "" H 3600 1650 50  0001 C CNN
	1    3600 1650
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR05
U 1 1 623FF08D
P 4150 1650
F 0 "#PWR05" H 4150 1500 50  0001 C CNN
F 1 "+3.3V" V 4150 1900 50  0000 C CNN
F 2 "" H 4150 1650 50  0001 C CNN
F 3 "" H 4150 1650 50  0001 C CNN
	1    4150 1650
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 628952B1
P 1250 1450
F 0 "J1" V 1350 1500 50  0000 C CNN
F 1 "24V" V 1350 1300 50  0000 C CNN
F 2 "cnc3018-PCB:mySkip1" H 1250 1450 50  0001 C CNN
F 3 "~" H 1250 1450 50  0001 C CNN
	1    1250 1450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 633B23E3
P 1250 1650
F 0 "#PWR01" H 1250 1400 50  0001 C CNN
F 1 "GND" V 1250 1450 50  0000 C CNN
F 2 "" H 1250 1650 50  0001 C CNN
F 3 "" H 1250 1650 50  0001 C CNN
	1    1250 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 62874C67
P 1500 4550
F 0 "#PWR017" H 1500 4300 50  0001 C CNN
F 1 "GND" V 1500 4350 50  0000 C CNN
F 2 "" H 1500 4550 50  0001 C CNN
F 3 "" H 1500 4550 50  0001 C CNN
	1    1500 4550
	1    0    0    -1  
$EndComp
Text GLabel 3350 3900 3    50   Input ~ 0
X_SW
Text GLabel 3850 2900 1    50   Input ~ 0
Y_SW
Text GLabel 3950 2900 1    50   Input ~ 0
A_SW
Text GLabel 4150 2900 1    50   Input ~ 0
Z_SW
Text GLabel 4050 2900 1    50   Input ~ 0
PROBE_SW
$Comp
L Connector_Generic:Conn_01x05 J7
U 1 1 62FB22F9
P 6200 1450
F 0 "J7" H 6280 1492 50  0000 L CNN
F 1 "Conn_01x05" H 6280 1401 50  0000 L CNN
F 2 "cnc3018-PCB:my5Pin" H 6200 1450 50  0001 C CNN
F 3 "~" H 6200 1450 50  0001 C CNN
	1    6200 1450
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J6
U 1 1 62FB3EE9
P 5600 1450
F 0 "J6" H 5680 1442 50  0000 L CNN
F 1 "Conn_01x04" H 5680 1351 50  0000 L CNN
F 2 "cnc3018-PCB:my4pin" H 5600 1450 50  0001 C CNN
F 3 "~" H 5600 1450 50  0001 C CNN
	1    5600 1450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 6301AA6C
P 6000 1900
F 0 "R2" V 5950 2150 50  0001 L CNN
F 1 "100" V 6000 1900 50  0000 C CNN
F 2 "cnc3018-PCB:mySkip2" V 5930 1900 50  0001 C CNN
F 3 "~" H 6000 1900 50  0001 C CNN
	1    6000 1900
	-1   0    0    1   
$EndComp
$Comp
L Device:R R6
U 1 1 6302513B
P 5500 2200
F 0 "R6" V 5450 2450 50  0001 L CNN
F 1 "10K" V 5500 2200 50  0000 C CNN
F 2 "cnc3018-PCB:mySkip2" V 5430 2200 50  0001 C CNN
F 3 "~" H 5500 2200 50  0001 C CNN
	1    5500 2200
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C1
U 1 1 63025141
P 6550 2200
F 0 "C1" V 6400 2200 50  0001 C CNN
F 1 "100nf" H 6250 1800 50  0000 C CNN
F 2 "cnc3018-PCB:my2pin" H 6588 2050 50  0001 C CNN
F 3 "~" H 6550 2200 50  0001 C CNN
	1    6550 2200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 630446ED
P 5500 2400
F 0 "R7" V 5450 2650 50  0001 L CNN
F 1 "10K" V 5500 2400 50  0000 C CNN
F 2 "cnc3018-PCB:mySkip2" V 5430 2400 50  0001 C CNN
F 3 "~" H 5500 2400 50  0001 C CNN
	1    5500 2400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R8
U 1 1 63046604
P 5500 2600
F 0 "R8" V 5450 2850 50  0001 L CNN
F 1 "10K" V 5500 2600 50  0000 C CNN
F 2 "cnc3018-PCB:mySkip2" V 5430 2600 50  0001 C CNN
F 3 "~" H 5500 2600 50  0001 C CNN
	1    5500 2600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R9
U 1 1 6304835E
P 5500 2800
F 0 "R9" V 5450 3050 50  0001 L CNN
F 1 "10K" V 5500 2800 50  0000 C CNN
F 2 "cnc3018-PCB:mySkip2" V 5430 2800 50  0001 C CNN
F 3 "~" H 5500 2800 50  0001 C CNN
	1    5500 2800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R10
U 1 1 6304A091
P 5500 3000
F 0 "R10" V 5450 3250 50  0001 L CNN
F 1 "10K" V 5500 3000 50  0000 C CNN
F 2 "cnc3018-PCB:mySkip2" V 5430 3000 50  0001 C CNN
F 3 "~" H 5500 3000 50  0001 C CNN
	1    5500 3000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 63059240
P 5800 1900
F 0 "R1" V 5750 2150 50  0001 L CNN
F 1 "100" V 5800 1900 50  0000 C CNN
F 2 "cnc3018-PCB:mySkip2" V 5730 1900 50  0001 C CNN
F 3 "~" H 5800 1900 50  0001 C CNN
	1    5800 1900
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 63060157
P 6100 1900
F 0 "R3" V 6050 2150 50  0001 L CNN
F 1 "100" V 6100 1900 50  0000 C CNN
F 2 "cnc3018-PCB:mySkip2" V 6030 1900 50  0001 C CNN
F 3 "~" H 6100 1900 50  0001 C CNN
	1    6100 1900
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 6306249D
P 6200 1900
F 0 "R4" V 6150 2150 50  0001 L CNN
F 1 "100" V 6200 1900 50  0000 C CNN
F 2 "cnc3018-PCB:mySkip2" V 6130 1900 50  0001 C CNN
F 3 "~" H 6200 1900 50  0001 C CNN
	1    6200 1900
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 63064249
P 6300 1900
F 0 "R5" V 6250 2150 50  0001 L CNN
F 1 "100" V 6300 1900 50  0000 C CNN
F 2 "cnc3018-PCB:mySkip2" V 6230 1900 50  0001 C CNN
F 3 "~" H 6300 1900 50  0001 C CNN
	1    6300 1900
	-1   0    0    1   
$EndComp
$Comp
L Device:C C2
U 1 1 63077A61
P 6550 2400
F 0 "C2" V 6400 2400 50  0001 C CNN
F 1 "100nf" H 6250 2000 50  0001 C CNN
F 2 "cnc3018-PCB:my2pin" H 6588 2250 50  0001 C CNN
F 3 "~" H 6550 2400 50  0001 C CNN
	1    6550 2400
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C3
U 1 1 630C453D
P 6550 2600
F 0 "C3" V 6400 2600 50  0001 C CNN
F 1 "100nf" H 6250 2200 50  0001 C CNN
F 2 "cnc3018-PCB:my2pin" H 6588 2450 50  0001 C CNN
F 3 "~" H 6550 2600 50  0001 C CNN
	1    6550 2600
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C4
U 1 1 630C6407
P 6550 2800
F 0 "C4" V 6400 2800 50  0001 C CNN
F 1 "100nf" H 6250 2400 50  0001 C CNN
F 2 "cnc3018-PCB:my2pin" H 6588 2650 50  0001 C CNN
F 3 "~" H 6550 2800 50  0001 C CNN
	1    6550 2800
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C6
U 1 1 630C828D
P 6550 3000
F 0 "C6" V 6400 3000 50  0001 C CNN
F 1 "100nf" H 6250 2600 50  0001 C CNN
F 2 "cnc3018-PCB:my2pin" H 6588 2850 50  0001 C CNN
F 3 "~" H 6550 3000 50  0001 C CNN
	1    6550 3000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6700 3000 6700 2800
Wire Wire Line
	6400 1750 6400 1650
Connection ~ 6700 2800
Wire Wire Line
	6700 2800 6700 2600
Connection ~ 6700 2600
Wire Wire Line
	6700 2600 6700 2400
Connection ~ 6700 2400
Wire Wire Line
	6700 2400 6700 2200
Connection ~ 6700 2200
Wire Wire Line
	6700 2200 6700 1750
Wire Wire Line
	6700 1750 6900 1750
$Comp
L power:GND #PWR08
U 1 1 630D5AE7
P 6900 1750
F 0 "#PWR08" H 6900 1500 50  0001 C CNN
F 1 "GND" V 6900 1550 50  0000 C CNN
F 2 "" H 6900 1750 50  0001 C CNN
F 3 "" H 6900 1750 50  0001 C CNN
	1    6900 1750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5350 1750 5250 1750
Connection ~ 5350 2400
Wire Wire Line
	5350 2400 5350 2200
Connection ~ 5350 2200
Wire Wire Line
	5350 2200 5350 1750
$Comp
L power:+3.3V #PWR07
U 1 1 630EDF20
P 5250 1750
F 0 "#PWR07" H 5250 1600 50  0001 C CNN
F 1 "+3.3V" V 5250 1900 50  0000 L CNN
F 2 "" H 5250 1750 50  0001 C CNN
F 3 "" H 5250 1750 50  0001 C CNN
	1    5250 1750
	0    -1   -1   0   
$EndComp
Connection ~ 5350 2600
Wire Wire Line
	5350 2600 5350 2400
Connection ~ 5350 2800
Wire Wire Line
	5350 2800 5350 2600
Wire Wire Line
	5350 3000 5350 2800
Wire Wire Line
	5800 1750 5800 1650
Wire Wire Line
	6000 1750 6000 1650
Wire Wire Line
	6100 1750 6100 1650
Wire Wire Line
	6200 1750 6200 1650
Wire Wire Line
	6300 1750 6300 1650
Text GLabel 5800 3350 3    50   Input ~ 0
PROBE_SW
Text GLabel 6300 3350 3    50   Input ~ 0
X_SW
Text GLabel 6200 3350 3    50   Input ~ 0
Y_SW
Text GLabel 6100 3350 3    50   Input ~ 0
A_SW
Text GLabel 6000 3350 3    50   Input ~ 0
Z_SW
Wire Wire Line
	6300 3350 6300 2200
Wire Wire Line
	6200 3350 6200 2400
Wire Wire Line
	6100 3350 6100 2600
Wire Wire Line
	6000 3350 6000 2800
Wire Wire Line
	5800 3350 5800 3000
NoConn ~ 5500 1650
NoConn ~ 5600 1650
NoConn ~ 5700 1650
Wire Wire Line
	6400 1750 6700 1750
Connection ~ 6700 1750
Wire Wire Line
	6400 2200 6300 2200
Connection ~ 6300 2200
Wire Wire Line
	6300 2200 6300 2050
Wire Wire Line
	6400 2400 6200 2400
Connection ~ 6200 2400
Wire Wire Line
	6200 2400 6200 2050
Wire Wire Line
	6400 2600 6100 2600
Connection ~ 6100 2600
Wire Wire Line
	6100 2600 6100 2050
Wire Wire Line
	6400 2800 6000 2800
Connection ~ 6000 2800
Wire Wire Line
	6000 2800 6000 2050
Wire Wire Line
	6400 3000 5800 3000
Connection ~ 5800 3000
Wire Wire Line
	5800 3000 5800 2050
Wire Wire Line
	5800 3000 5650 3000
Wire Wire Line
	6000 2800 5650 2800
Wire Wire Line
	6100 2600 5650 2600
Wire Wire Line
	6200 2400 5650 2400
Wire Wire Line
	6300 2200 5650 2200
Wire Wire Line
	1350 1650 1350 1750
Wire Wire Line
	2850 3900 2850 4050
$Comp
L power:+3.3V #PWR016
U 1 1 632EA713
P 1500 4250
F 0 "#PWR016" H 1500 4100 50  0001 C CNN
F 1 "+3.3V" V 1500 4500 50  0000 C CNN
F 2 "" H 1500 4250 50  0001 C CNN
F 3 "" H 1500 4250 50  0001 C CNN
	1    1500 4250
	1    0    0    -1  
$EndComp
$Comp
L cnc3018_Library:ESP32_DEV_0 U1
U 1 1 6120DB8C
P 3650 3450
F 0 "U1" H 4378 3546 50  0001 L CNN
F 1 "ESP32_DEV_0" H 4378 3500 50  0001 L CNN
F 2 "cnc3018-PCB:ESP32-DEV_0" H 3100 3550 50  0001 C CNN
F 3 "" H 3100 3550 50  0001 C CNN
	1    3650 3450
	1    0    0    -1  
$EndComp
Text GLabel 3750 2900 1    50   Input ~ 0
X_STEP
Text GLabel 3650 2900 1    50   Input ~ 0
X_DIR
Text GLabel 4250 1650 3    50   Input ~ 0
STEP_EN
Text Notes 750  3450 0    50   ~ 0
ESP pin 12 cannot be HIGH at boot\nand apparently the stepper controller pulls it high.\nSo I had to switch to another PIN, choosing the LED pin 15\nOr maybe a 10K pulldown?\n
$EndSCHEMATC
