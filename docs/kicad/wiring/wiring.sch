EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
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
L Connector_Generic:Conn_01x04 J?
U 1 1 6277AE95
P 1600 3550
F 0 "J?" H 1850 3450 50  0001 L CNN
F 1 "Y stepper" H 1700 3500 50  0000 L CNN
F 2 "" H 1600 3550 50  0001 C CNN
F 3 "~" H 1600 3550 50  0001 C CNN
	1    1600 3550
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 6277F1C2
P 1600 2850
F 0 "J?" H 1900 2750 50  0001 L CNN
F 1 "Z lim switch" H 1700 2800 50  0000 L CNN
F 2 "" H 1600 2850 50  0001 C CNN
F 3 "~" H 1600 2850 50  0001 C CNN
	1    1600 2850
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 6277F1C8
P 1600 3150
F 0 "J?" H 1900 3050 50  0001 L CNN
F 1 "Z zero switch" H 1700 3100 50  0000 L CNN
F 2 "" H 1600 3150 50  0001 C CNN
F 3 "~" H 1600 3150 50  0001 C CNN
	1    1600 3150
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 6277F1CE
P 1600 2100
F 0 "J?" H 1850 2000 50  0001 L CNN
F 1 "Z stepper" H 1700 2050 50  0000 L CNN
F 2 "" H 1600 2100 50  0001 C CNN
F 3 "~" H 1600 2100 50  0001 C CNN
	1    1600 2100
	-1   0    0    1   
$EndComp
Text Notes 10300 5450 0    59   ~ 0
Z\nY\nA\nX\nG
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 62934EA8
P 2500 5000
F 0 "J?" H 2750 4900 50  0001 L CNN
F 1 "Z stepper" H 2600 4950 50  0001 L CNN
F 2 "" H 2500 5000 50  0001 C CNN
F 3 "~" H 2500 5000 50  0001 C CNN
	1    2500 5000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 62947491
P 2600 5100
F 0 "J?" H 2850 5000 50  0001 L CNN
F 1 "Z stepper" H 2700 5050 50  0001 L CNN
F 2 "" H 2600 5100 50  0001 C CNN
F 3 "~" H 2600 5100 50  0001 C CNN
	1    2600 5100
	-1   0    0    1   
$EndComp
Wire Wire Line
	2300 5200 1800 5200
Wire Wire Line
	1800 5100 2300 5100
Text Notes 10300 5800 0    59   ~ 0
P\nHt
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 62D7FEC4
P 1600 2550
F 0 "J?" H 1950 2450 50  0001 C CNN
F 1 "Probe Jack" H 1950 2500 50  0000 C CNN
F 2 "" H 1600 2550 50  0001 C CNN
F 3 "~" H 1600 2550 50  0001 C CNN
	1    1600 2550
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 62C19B66
P 9300 1000
F 0 "J?" H 9550 900 50  0001 C CNN
F 1 "Spindle" H 9550 950 50  0000 C CNN
F 2 "" H 9300 1000 50  0001 C CNN
F 3 "~" H 9300 1000 50  0001 C CNN
	1    9300 1000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 62EEEDB7
P 4350 7150
F 0 "J?" H 4600 7050 50  0001 C CNN
F 1 "Ht" H 4500 7100 50  0000 C CNN
F 2 "" H 4350 7150 50  0001 C CNN
F 3 "~" H 4350 7150 50  0001 C CNN
	1    4350 7150
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 62F8795B
P 9250 1350
F 0 "#PWR?" H 9250 1200 50  0001 C CNN
F 1 "+12V" V 9250 1550 50  0000 C CNN
F 2 "" H 9250 1350 50  0001 C CNN
F 3 "" H 9250 1350 50  0001 C CNN
	1    9250 1350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62F88846
P 9250 1500
F 0 "#PWR?" H 9250 1250 50  0001 C CNN
F 1 "GND" V 9250 1300 50  0000 C CNN
F 2 "" H 9250 1500 50  0001 C CNN
F 3 "" H 9250 1500 50  0001 C CNN
	1    9250 1500
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 62FD0E76
P 9300 1800
F 0 "J?" H 9550 1700 50  0001 C CNN
F 1 "PWM" H 9550 1750 50  0000 C CNN
F 2 "" H 9300 1800 50  0001 C CNN
F 3 "~" H 9300 1800 50  0001 C CNN
	1    9300 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 4900 2300 4900
Wire Wire Line
	1800 5000 2300 5000
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 62752EF3
P 1600 5100
F 0 "J?" H 1900 4950 50  0001 C CNN
F 1 "A stepper" H 1900 5050 50  0000 C CNN
F 2 "" H 1600 5100 50  0001 C CNN
F 3 "~" H 1600 5100 50  0001 C CNN
	1    1600 5100
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 62752BF5
P 1600 4400
F 0 "J?" H 1950 4300 50  0001 C CNN
F 1 "A lim switch" H 1950 4350 50  0000 C CNN
F 2 "" H 1600 4400 50  0001 C CNN
F 3 "~" H 1600 4400 50  0001 C CNN
	1    1600 4400
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 6277A20A
P 1600 4100
F 0 "J?" H 1850 4000 50  0001 C CNN
F 1 "Y lim switch" H 1950 4050 50  0000 C CNN
F 2 "" H 1600 4100 50  0001 C CNN
F 3 "~" H 1600 4100 50  0001 C CNN
	1    1600 4100
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 6275132D
P 1600 4700
F 0 "J?" H 1950 4600 50  0001 C CNN
F 1 "A zero switch" H 1950 4650 50  0000 C CNN
F 2 "" H 1600 4700 50  0001 C CNN
F 3 "~" H 1600 4700 50  0001 C CNN
	1    1600 4700
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 62FE8E57
P 3400 6600
F 0 "J?" H 3700 6450 50  0001 C CNN
F 1 "X stepper" H 3700 6550 50  0000 C CNN
F 2 "" H 3400 6600 50  0001 C CNN
F 3 "~" H 3400 6600 50  0001 C CNN
	1    3400 6600
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 62FE8E5D
P 3400 5900
F 0 "J?" H 3750 5800 50  0001 C CNN
F 1 "X lim switch" H 3750 5850 50  0000 C CNN
F 2 "" H 3400 5900 50  0001 C CNN
F 3 "~" H 3400 5900 50  0001 C CNN
	1    3400 5900
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 62FE8E63
P 3400 5600
F 0 "J?" H 3650 5500 50  0001 C CNN
F 1 "Y zero switch" H 3750 5550 50  0000 C CNN
F 2 "" H 3400 5600 50  0001 C CNN
F 3 "~" H 3400 5600 50  0001 C CNN
	1    3400 5600
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 62FE8E69
P 3400 6200
F 0 "J?" H 3750 6100 50  0001 C CNN
F 1 "X zero switch" H 3750 6150 50  0000 C CNN
F 2 "" H 3400 6200 50  0001 C CNN
F 3 "~" H 3400 6200 50  0001 C CNN
	1    3400 6200
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 6326919E
P 2500 4200
F 0 "J?" H 2750 4100 50  0001 L CNN
F 1 "Z stepper" H 2600 4150 50  0001 L CNN
F 2 "" H 2500 4200 50  0001 C CNN
F 3 "~" H 2500 4200 50  0001 C CNN
	1    2500 4200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 632691A4
P 2600 4300
F 0 "J?" H 2850 4200 50  0001 L CNN
F 1 "Z stepper" H 2700 4250 50  0001 L CNN
F 2 "" H 2600 4300 50  0001 C CNN
F 3 "~" H 2600 4300 50  0001 C CNN
	1    2600 4300
	-1   0    0    1   
$EndComp
Wire Bus Line
	1800 4000 2200 4000
Wire Bus Line
	2200 4000 2200 4100
Wire Bus Line
	2200 4100 2300 4100
Wire Wire Line
	1800 4100 2100 4100
Wire Wire Line
	2100 4100 2100 4200
Wire Wire Line
	2100 4200 2300 4200
Wire Bus Line
	1800 4300 2050 4300
Wire Wire Line
	1800 4400 2150 4400
Wire Bus Line
	1800 4600 2050 4600
Wire Bus Line
	2050 4600 2050 4300
Connection ~ 2050 4300
Wire Bus Line
	2050 4300 2300 4300
Wire Wire Line
	1800 4700 2150 4700
Wire Wire Line
	2150 4700 2150 4400
Connection ~ 2150 4400
Wire Wire Line
	2150 4400 2300 4400
Wire Wire Line
	2800 4400 3050 4350
Wire Wire Line
	2800 4200 3050 4250
Wire Bus Line
	2800 4100 3050 4200
Wire Wire Line
	2800 5000 3050 5050
Wire Wire Line
	2800 5200 3050 5150
Wire Wire Line
	2800 4900 3050 5000
Wire Bus Line
	3050 5200 3500 5200
Wire Bus Line
	3500 5200 3500 4650
Wire Wire Line
	3050 5150 3450 5150
Wire Wire Line
	3450 5150 3450 4600
Wire Wire Line
	3400 5100 3400 4550
Wire Wire Line
	2800 5100 3400 5100
Wire Wire Line
	3050 5050 3350 5050
Wire Wire Line
	3350 5050 3350 4500
Wire Wire Line
	3050 5000 3300 5000
Wire Wire Line
	3300 5000 3300 4450
Wire Notes Line
	3050 5200 3050 4900
Wire Notes Line
	3050 4900 2900 4850
Wire Notes Line
	2900 4850 2900 5250
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 6349DADC
P 4300 6500
F 0 "J?" H 4550 6400 50  0001 L CNN
F 1 "Z stepper" H 4400 6450 50  0001 L CNN
F 2 "" H 4300 6500 50  0001 C CNN
F 3 "~" H 4300 6500 50  0001 C CNN
	1    4300 6500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 6349DAE2
P 4400 6600
F 0 "J?" H 4650 6500 50  0001 L CNN
F 1 "Z stepper" H 4500 6550 50  0001 L CNN
F 2 "" H 4400 6600 50  0001 C CNN
F 3 "~" H 4400 6600 50  0001 C CNN
	1    4400 6600
	-1   0    0    1   
$EndComp
Wire Wire Line
	4100 6700 3600 6700
Wire Wire Line
	3600 6600 4100 6600
Wire Wire Line
	3600 6400 4100 6400
Wire Wire Line
	3600 6500 4100 6500
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 6349DAEC
P 4300 5700
F 0 "J?" H 4550 5600 50  0001 L CNN
F 1 "Z stepper" H 4400 5650 50  0001 L CNN
F 2 "" H 4300 5700 50  0001 C CNN
F 3 "~" H 4300 5700 50  0001 C CNN
	1    4300 5700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 6349DAF2
P 4400 5800
F 0 "J?" H 4650 5700 50  0001 L CNN
F 1 "Z stepper" H 4500 5750 50  0001 L CNN
F 2 "" H 4400 5800 50  0001 C CNN
F 3 "~" H 4400 5800 50  0001 C CNN
	1    4400 5800
	-1   0    0    1   
$EndComp
Wire Bus Line
	3600 5500 4000 5500
Wire Bus Line
	4000 5500 4000 5600
Wire Bus Line
	4000 5600 4100 5600
Wire Wire Line
	3600 5600 3900 5600
Wire Wire Line
	3900 5600 3900 5700
Wire Wire Line
	3900 5700 4100 5700
Wire Bus Line
	3600 5800 3850 5800
Wire Wire Line
	3600 5900 3950 5900
Wire Bus Line
	3600 6100 3850 6100
Wire Bus Line
	3850 6100 3850 5800
Connection ~ 3850 5800
Wire Bus Line
	3850 5800 4100 5800
Wire Wire Line
	3600 6200 3950 6200
Wire Wire Line
	3950 6200 3950 5900
Connection ~ 3950 5900
Wire Wire Line
	3950 5900 4100 5900
Wire Wire Line
	4600 6500 4850 6550
Wire Wire Line
	4600 6700 4850 6650
Wire Wire Line
	4600 6400 4850 6500
Wire Bus Line
	4850 6700 5300 6700
Wire Wire Line
	4850 6650 5250 6650
Wire Wire Line
	4600 6600 5200 6600
Wire Wire Line
	4850 6550 5150 6550
Wire Wire Line
	4850 6500 5100 6500
Wire Notes Line
	4850 6700 4850 6400
Wire Notes Line
	4850 6400 4700 6350
Wire Notes Line
	4700 6350 4700 6750
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 635B9C81
P 2500 3450
F 0 "J?" H 2750 3350 50  0001 L CNN
F 1 "Z stepper" H 2600 3400 50  0001 L CNN
F 2 "" H 2500 3450 50  0001 C CNN
F 3 "~" H 2500 3450 50  0001 C CNN
	1    2500 3450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 635B9C87
P 2600 3550
F 0 "J?" H 2850 3450 50  0001 L CNN
F 1 "Z stepper" H 2700 3500 50  0001 L CNN
F 2 "" H 2600 3550 50  0001 C CNN
F 3 "~" H 2600 3550 50  0001 C CNN
	1    2600 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	2300 3650 1800 3650
Wire Wire Line
	1800 3550 2300 3550
Wire Wire Line
	1800 3350 2300 3350
Wire Wire Line
	1800 3450 2300 3450
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 635B9C91
P 2500 2650
F 0 "J?" H 2750 2550 50  0001 L CNN
F 1 "Z stepper" H 2600 2600 50  0001 L CNN
F 2 "" H 2500 2650 50  0001 C CNN
F 3 "~" H 2500 2650 50  0001 C CNN
	1    2500 2650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 635B9C97
P 2600 2750
F 0 "J?" H 2850 2650 50  0001 L CNN
F 1 "Z stepper" H 2700 2700 50  0001 L CNN
F 2 "" H 2600 2750 50  0001 C CNN
F 3 "~" H 2600 2750 50  0001 C CNN
	1    2600 2750
	-1   0    0    1   
$EndComp
Wire Bus Line
	1800 2450 2200 2450
Wire Bus Line
	2200 2450 2200 2550
Wire Bus Line
	2200 2550 2300 2550
Wire Wire Line
	1800 2550 2100 2550
Wire Wire Line
	2100 2550 2100 2650
Wire Wire Line
	2100 2650 2300 2650
Wire Bus Line
	1800 2750 2050 2750
Wire Wire Line
	1800 2850 2150 2850
Wire Bus Line
	1800 3050 2050 3050
Wire Bus Line
	2050 3050 2050 2750
Connection ~ 2050 2750
Wire Wire Line
	1800 3150 2150 3150
Wire Wire Line
	2150 3150 2150 2850
Connection ~ 2150 2850
Wire Wire Line
	2150 2850 2300 2850
Wire Wire Line
	2800 2850 3050 2800
Wire Wire Line
	2800 2650 3050 2700
Wire Bus Line
	2800 2550 3050 2650
Wire Wire Line
	2800 3450 3050 3500
Wire Wire Line
	2800 3650 3050 3600
Wire Wire Line
	2800 3350 3050 3450
Wire Bus Line
	3050 3650 3500 3650
Wire Wire Line
	3050 3600 3450 3600
Wire Wire Line
	2800 3550 3400 3550
Wire Wire Line
	3050 3500 3350 3500
Wire Wire Line
	3050 3450 3300 3450
Wire Wire Line
	3300 3450 3300 2900
Wire Notes Line
	3050 3650 3050 3350
Wire Notes Line
	3050 3350 2900 3300
Wire Notes Line
	2900 3300 2900 3700
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 635FD533
P 2500 2000
F 0 "J?" H 2750 1900 50  0001 L CNN
F 1 "Z stepper" H 2600 1950 50  0001 L CNN
F 2 "" H 2500 2000 50  0001 C CNN
F 3 "~" H 2500 2000 50  0001 C CNN
	1    2500 2000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 635FD539
P 2600 2100
F 0 "J?" H 2850 2000 50  0001 L CNN
F 1 "Z stepper" H 2700 2050 50  0001 L CNN
F 2 "" H 2600 2100 50  0001 C CNN
F 3 "~" H 2600 2100 50  0001 C CNN
	1    2600 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	2800 2000 3050 2050
Wire Wire Line
	2800 2200 3050 2150
Wire Wire Line
	2800 1900 3050 2000
Wire Bus Line
	3050 2200 3300 2200
Wire Wire Line
	3050 2150 3350 2150
Wire Wire Line
	2800 2100 3400 2100
Wire Notes Line
	3050 2200 3050 1900
Wire Notes Line
	3050 1900 2900 1850
Wire Notes Line
	2900 1850 2900 2250
Wire Wire Line
	2300 2200 1800 2200
Wire Wire Line
	1800 2100 2300 2100
Wire Wire Line
	1800 1900 2300 1900
Wire Wire Line
	1800 2000 2300 2000
Wire Wire Line
	3350 3500 3350 2950
Wire Wire Line
	3400 3550 3400 3000
Wire Wire Line
	3450 3600 3450 3050
Wire Bus Line
	3500 3650 3500 3100
Wire Bus Line
	3300 2200 3300 2500
Wire Wire Line
	3350 2150 3350 2450
Wire Wire Line
	3400 2100 3400 2400
Wire Wire Line
	3450 2050 3450 2350
Wire Wire Line
	3050 2050 3450 2050
Wire Wire Line
	3500 2000 3500 2300
Wire Wire Line
	3050 2000 3500 2000
Wire Bus Line
	5300 5800 5300 6700
Wire Wire Line
	5250 5750 5250 6650
Wire Wire Line
	5200 5700 5200 6600
Wire Wire Line
	5150 5650 5150 6550
Wire Wire Line
	5100 5600 5100 6500
Wire Wire Line
	4600 5900 4700 5900
Wire Wire Line
	4700 5900 5100 5500
Wire Bus Line
	4600 5800 5100 5450
Wire Wire Line
	4600 5700 5100 5400
Wire Bus Line
	4600 5600 5100 5350
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 63874292
P 1600 1500
F 0 "J?" H 1680 1496 50  0001 L CNN
F 1 "Laser" H 1850 1500 50  0000 L CNN
F 2 "" H 1600 1500 50  0001 C CNN
F 3 "~" H 1600 1500 50  0001 C CNN
	1    1600 1500
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 63862C18
P 1600 1150
F 0 "J?" H 1850 1050 50  0001 C CNN
F 1 "Spindle" H 1850 1100 50  0000 C CNN
F 2 "" H 1600 1150 50  0001 C CNN
F 3 "~" H 1600 1150 50  0001 C CNN
	1    1600 1150
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 638C1E2B
P 2600 1500
F 0 "J?" H 2680 1496 50  0001 L CNN
F 1 "Laser" H 2800 1500 50  0001 L CNN
F 2 "" H 2600 1500 50  0001 C CNN
F 3 "~" H 2600 1500 50  0001 C CNN
	1    2600 1500
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 638C1E31
P 2600 1150
F 0 "J?" H 2850 1050 50  0001 C CNN
F 1 "Spindle" H 2850 1100 50  0001 C CNN
F 2 "" H 2600 1150 50  0001 C CNN
F 3 "~" H 2600 1150 50  0001 C CNN
	1    2600 1150
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 638D1113
P 2500 1050
F 0 "J?" H 2750 950 50  0001 C CNN
F 1 "Spindle" H 2750 1000 50  0001 C CNN
F 2 "" H 2500 1050 50  0001 C CNN
F 3 "~" H 2500 1050 50  0001 C CNN
	1    2500 1050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 638E0190
P 2500 1500
F 0 "J?" H 2580 1496 50  0001 L CNN
F 1 "Laser" H 2700 1500 50  0001 L CNN
F 2 "" H 2500 1500 50  0001 C CNN
F 3 "~" H 2500 1500 50  0001 C CNN
	1    2500 1500
	1    0    0    -1  
$EndComp
Wire Bus Line
	1800 1600 2300 1600
Wire Wire Line
	1800 1050 2300 1050
Wire Wire Line
	1800 1500 2300 1500
Wire Wire Line
	1800 1400 2300 1400
Wire Bus Line
	4550 7150 4700 7100
Wire Wire Line
	1800 1150 2300 1150
Wire Notes Line
	4050 1750 4050 3200
Wire Notes Line
	4050 3200 5250 3200
Wire Notes Line
	5250 3200 5250 1750
Wire Notes Line
	5250 1750 4050 1750
Wire Wire Line
	3300 4450 8150 4450
Wire Wire Line
	3350 4500 8200 4500
Wire Wire Line
	3400 4550 8250 4550
Wire Wire Line
	3450 4600 8300 4600
Wire Bus Line
	3500 4650 8350 4650
$Comp
L Connector_Generic:Conn_01x05 J?
U 1 1 640C88CF
P 9300 4200
F 0 "J?" H 9380 4242 50  0001 L CNN
F 1 "X stepper" H 9450 4200 50  0000 L CNN
F 2 "" H 9300 4200 50  0001 C CNN
F 3 "~" H 9300 4200 50  0001 C CNN
	1    9300 4200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J?
U 1 1 640D86E7
P 9300 3600
F 0 "J?" H 9380 3642 50  0001 L CNN
F 1 "A stepper" H 9450 3600 50  0000 L CNN
F 2 "" H 9300 3600 50  0001 C CNN
F 3 "~" H 9300 3600 50  0001 C CNN
	1    9300 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J?
U 1 1 640E8479
P 9300 3000
F 0 "J?" H 9380 3042 50  0001 L CNN
F 1 "Y stepper" H 9450 3000 50  0000 L CNN
F 2 "" H 9300 3000 50  0001 C CNN
F 3 "~" H 9300 3000 50  0001 C CNN
	1    9300 3000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J?
U 1 1 640F7FD2
P 9300 2400
F 0 "J?" H 9380 2442 50  0001 L CNN
F 1 "Z stepper" H 9450 2400 50  0000 L CNN
F 2 "" H 9300 2400 50  0001 C CNN
F 3 "~" H 9300 2400 50  0001 C CNN
	1    9300 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 2400 9100 2400
Wire Wire Line
	3400 3000 9100 3000
Wire Wire Line
	8850 2950 9100 2900
Wire Wire Line
	3350 2950 8850 2950
Wire Wire Line
	8850 2900 9100 2800
Wire Wire Line
	3300 2900 8850 2900
Wire Wire Line
	8850 3050 9100 3100
Wire Wire Line
	3450 3050 8850 3050
Wire Bus Line
	8850 3100 9100 3200
Wire Bus Line
	3500 3100 8850 3100
Wire Bus Line
	8850 2500 9100 2600
Wire Bus Line
	3300 2500 8850 2500
Wire Wire Line
	8850 2450 9100 2500
Wire Wire Line
	3350 2450 8850 2450
Wire Wire Line
	8850 2350 9100 2300
Wire Wire Line
	3450 2350 8850 2350
Wire Wire Line
	8850 2300 9100 2200
Wire Wire Line
	3500 2300 8850 2300
Wire Wire Line
	8250 3600 9100 3600
Wire Wire Line
	8250 3600 8250 4550
Wire Wire Line
	8200 4500 8200 3550
Wire Wire Line
	8200 3550 8850 3550
Wire Wire Line
	8850 3550 9100 3500
Wire Wire Line
	8550 4200 9100 4200
Wire Wire Line
	8500 4150 8800 4150
Wire Wire Line
	8800 4150 9100 4100
Wire Wire Line
	8450 4100 8800 4100
Wire Wire Line
	8800 4100 9100 4000
Wire Wire Line
	8800 4250 9100 4300
Wire Wire Line
	8600 4250 8800 4250
Wire Bus Line
	8650 4300 8800 4300
Wire Bus Line
	8800 4300 9100 4400
Wire Wire Line
	8150 4450 8150 3500
Wire Wire Line
	8150 3500 8850 3500
Wire Wire Line
	8850 3500 9100 3400
Wire Wire Line
	8300 4600 8300 3650
Wire Wire Line
	8300 3650 8850 3650
Wire Wire Line
	8850 3650 9100 3700
Wire Bus Line
	8350 4650 8350 3700
Wire Bus Line
	8350 3700 8850 3700
Wire Bus Line
	8850 3700 9100 3800
Wire Wire Line
	5200 5700 8550 5700
Wire Wire Line
	8550 5700 8550 4200
Wire Wire Line
	5150 5650 8500 5650
Wire Wire Line
	8500 5650 8500 4150
Wire Wire Line
	8450 4100 8450 5600
Wire Wire Line
	8450 5600 5100 5600
Wire Wire Line
	5250 5750 8600 5750
Wire Wire Line
	8600 5750 8600 4250
Wire Bus Line
	8650 4300 8650 5800
Wire Bus Line
	8650 5800 5300 5800
Wire Wire Line
	7350 4350 7350 5250
Wire Wire Line
	3050 4350 7350 4350
Wire Bus Line
	7400 4300 7400 5200
Wire Bus Line
	2800 4300 7400 4300
Wire Wire Line
	3050 4250 7450 4250
Wire Wire Line
	7450 4250 7450 5150
Wire Bus Line
	7500 4200 7500 5100
Wire Bus Line
	3050 4200 7500 4200
Wire Wire Line
	7650 2800 7650 5000
Wire Wire Line
	3050 2800 7650 2800
Wire Bus Line
	7700 2750 7700 4950
Wire Wire Line
	7750 2700 7750 4900
Wire Wire Line
	3050 2700 7750 2700
Wire Bus Line
	7800 2650 7800 4850
Wire Bus Line
	3050 2650 7800 2650
Wire Wire Line
	4550 7050 5400 7050
Wire Wire Line
	5400 7050 5400 5950
Wire Bus Line
	4700 7100 5450 7100
Wire Bus Line
	5450 7100 5450 6000
Wire Bus Line
	7800 4850 9200 4850
Wire Bus Line
	7700 4950 9200 4950
Wire Bus Line
	7500 5100 9200 5100
Wire Bus Line
	7400 5200 9200 5200
Wire Bus Line
	5100 5350 9200 5350
Wire Bus Line
	5100 5450 9200 5450
Wire Bus Line
	5450 6000 9200 6000
Wire Bus Line
	9200 4850 9200 4950
Connection ~ 9200 4950
Wire Bus Line
	9200 4950 9200 5100
Connection ~ 9200 5100
Wire Bus Line
	9200 5100 9200 5200
Connection ~ 9200 5200
Wire Bus Line
	9200 5200 9200 5350
Connection ~ 9200 5350
Wire Bus Line
	9200 5350 9200 5450
Connection ~ 9200 5450
Wire Bus Line
	9200 5450 9200 5600
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 62A6F17F
P 10200 5800
F 0 "J?" H 10500 5650 50  0001 C CNN
F 1 "Switches2" H 10650 5750 50  0000 C CNN
F 2 "" H 10200 5800 50  0001 C CNN
F 3 "~" H 10200 5800 50  0001 C CNN
	1    10200 5800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J?
U 1 1 62FD4963
P 10200 5250
F 0 "J?" H 10280 5292 50  0001 L CNN
F 1 "Switches" H 10450 5250 50  0000 L CNN
F 2 "" H 10200 5250 50  0001 C CNN
F 3 "~" H 10200 5250 50  0001 C CNN
	1    10200 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 4900 9450 4900
Wire Wire Line
	7650 5000 9600 5000
Wire Wire Line
	5100 5400 9600 5400
Wire Wire Line
	5400 5950 9450 5950
Wire Wire Line
	7450 5150 9600 5150
Wire Wire Line
	7350 5250 10000 5250
Wire Wire Line
	9600 5400 9600 5150
Connection ~ 9600 5150
Wire Wire Line
	9600 5150 10000 5150
Wire Wire Line
	9700 5500 9700 5350
Wire Wire Line
	9700 5350 10000 5350
Wire Wire Line
	5100 5500 9700 5500
Wire Wire Line
	9600 5000 9600 5050
Wire Wire Line
	9600 5050 10000 5050
Wire Wire Line
	9450 5700 10000 5700
Wire Wire Line
	9450 5950 9450 5800
Wire Wire Line
	9450 5800 10000 5800
Wire Wire Line
	9450 4900 9450 5700
Wire Bus Line
	10000 5450 9800 5450
Wire Bus Line
	9800 5450 9800 5600
Wire Bus Line
	9800 5600 9200 5600
Connection ~ 9200 5600
Wire Bus Line
	9200 5600 9200 6000
Wire Notes Line
	5600 1750 5600 6150
Wire Notes Line
	5600 6150 7150 6150
Wire Notes Line
	7150 6150 7150 1750
Wire Notes Line
	7150 1750 5600 1750
Wire Notes Line
	4000 4100 3900 4750
Wire Notes Line
	5250 4100 5150 4750
Wire Wire Line
	2800 1050 3950 1050
Wire Wire Line
	2800 1150 3900 1150
Wire Wire Line
	3900 1150 3900 1900
Wire Wire Line
	3800 2000 3800 1400
Wire Wire Line
	3800 1400 2800 1400
Wire Wire Line
	3750 1500 2800 1500
Wire Wire Line
	3750 1500 3750 2050
Wire Bus Line
	3700 2100 3700 1600
Wire Bus Line
	3700 1600 2800 1600
Wire Wire Line
	3950 1050 3950 1850
Wire Wire Line
	3950 1850 7650 1850
Wire Wire Line
	7650 1850 7650 1000
Wire Wire Line
	7700 1900 7700 1100
Wire Wire Line
	3900 1900 7700 1900
Wire Wire Line
	7650 1000 9100 1000
Wire Wire Line
	7700 1100 9100 1100
Wire Wire Line
	8050 2000 8050 1350
Wire Wire Line
	8050 1350 9250 1350
Wire Wire Line
	3800 2000 8050 2000
Wire Wire Line
	8100 2050 8100 1800
Wire Wire Line
	8100 1800 9100 1800
Wire Wire Line
	3750 2050 8100 2050
Wire Bus Line
	8150 2100 8150 1900
Wire Bus Line
	8150 1500 9250 1500
Wire Bus Line
	3700 2100 8150 2100
Wire Bus Line
	9100 1900 8150 1900
Connection ~ 8150 1900
Wire Bus Line
	8150 1900 8150 1500
Text Notes 1500 1600 2    30   ~ 0
12V\n\nPWM\n\nGND
Wire Bus Line
	2050 2750 2300 2750
Wire Notes Line
	3050 1600 3050 1350
Wire Notes Line
	3050 1350 2950 1300
Wire Notes Line
	2950 1300 2950 1550
Wire Bus Line
	2800 2750 7700 2750
$EndSCHEMATC
