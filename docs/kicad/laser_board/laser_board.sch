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
L Connector:Barrel_Jack_Switch J1
U 1 1 62C34180
P 5200 1350
F 0 "J1" H 5257 1667 50  0000 C CNN
F 1 "Barrel_Jack_Switch" H 5257 1576 50  0000 C CNN
F 2 "cnc3018-PCB:myBarrelJack" H 5250 1310 50  0001 C CNN
F 3 "~" H 5250 1310 50  0001 C CNN
	1    5200 1350
	-1   0    0    -1  
$EndComp
$Comp
L Switch:SW_SPDT SW1
U 1 1 62C34D85
P 4100 1550
F 0 "SW1" H 4100 1835 50  0000 C CNN
F 1 "SW_SPDT" H 4100 1744 50  0000 C CNN
F 2 "cnc3018-PCB:SW_DPDT_BLUE_LEVER" H 4100 1550 50  0001 C CNN
F 3 "~" H 4100 1550 50  0001 C CNN
	1    4100 1550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 62C3578C
P 3650 2300
F 0 "J3" H 3568 1975 50  0000 C CNN
F 1 "Conn_01x02" H 3568 2066 50  0000 C CNN
F 2 "cnc3018-PCB:my2pin" H 3650 2300 50  0001 C CNN
F 3 "~" H 3650 2300 50  0001 C CNN
	1    3650 2300
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 62C35E75
P 5250 2200
F 0 "J2" H 5330 2242 50  0000 L CNN
F 1 "Conn_01x03" H 5330 2151 50  0000 L CNN
F 2 "cnc3018-PCB:big_3pin" H 5250 2200 50  0001 C CNN
F 3 "~" H 5250 2200 50  0001 C CNN
	1    5250 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 1450 4650 1450
Wire Wire Line
	3850 2200 5050 2200
Wire Wire Line
	3900 1250 3900 1550
Wire Wire Line
	4300 1550 4300 1450
Wire Wire Line
	4300 1650 4300 2100
Wire Wire Line
	4300 2100 5050 2100
Wire Wire Line
	3850 2300 4650 2300
Wire Wire Line
	4650 1450 4650 2300
Connection ~ 4650 2300
Wire Wire Line
	4650 2300 5050 2300
Wire Wire Line
	4900 1250 3900 1250
Wire Wire Line
	4300 1550 3900 1550
Connection ~ 3900 1550
$EndSCHEMATC
