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
L Connector_Generic:Conn_01x04 J1
U 1 1 624C7923
P 4400 2100
F 0 "J1" H 4480 2092 50  0000 L CNN
F 1 "Conn_01x04" H 4480 2001 50  0000 L CNN
F 2 "Connector_USB:USB_B_Lumberg_2411_02_Horizontal" H 4400 2100 50  0001 C CNN
F 3 "~" H 4400 2100 50  0001 C CNN
	1    4400 2100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 624C86B7
P 3700 2200
F 0 "J2" H 3618 1775 50  0000 C CNN
F 1 "Conn_01x04" H 3618 1866 50  0000 C CNN
F 2 "cnc3018-PCB:my4pin" H 3700 2200 50  0001 C CNN
F 3 "~" H 3700 2200 50  0001 C CNN
	1    3700 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	3900 2000 4200 2300
Wire Wire Line
	3900 2300 4200 2200
Wire Wire Line
	3900 2200 4200 2100
Wire Wire Line
	3900 2100 4200 2000
$EndSCHEMATC
