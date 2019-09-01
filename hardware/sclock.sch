EESchema Schematic File Version 4
LIBS:sclock-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "sclock"
Date "2019-08-08"
Rev ""
Comp "buckket.org"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR02
U 1 1 5D4A3D1C
P 1250 2100
F 0 "#PWR02" H 1250 1850 50  0001 C CNN
F 1 "GND" H 1255 1927 50  0000 C CNN
F 2 "" H 1250 2100 50  0001 C CNN
F 3 "" H 1250 2100 50  0001 C CNN
	1    1250 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5D4A4030
P 1250 2650
F 0 "#PWR03" H 1250 2400 50  0001 C CNN
F 1 "GND" H 1255 2477 50  0000 C CNN
F 2 "" H 1250 2650 50  0001 C CNN
F 3 "" H 1250 2650 50  0001 C CNN
	1    1250 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5D4A4338
P 2000 2650
F 0 "#PWR05" H 2000 2400 50  0001 C CNN
F 1 "GND" H 2005 2477 50  0000 C CNN
F 2 "" H 2000 2650 50  0001 C CNN
F 3 "" H 2000 2650 50  0001 C CNN
	1    2000 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5D4A44CA
P 1500 1350
F 0 "#PWR04" H 1500 1100 50  0001 C CNN
F 1 "GND" H 1505 1177 50  0000 C CNN
F 2 "" H 1500 1350 50  0001 C CNN
F 3 "" H 1500 1350 50  0001 C CNN
	1    1500 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2100 1250 2100
$Comp
L Device:C C1
U 1 1 5D4A5A08
P 1250 2500
F 0 "C1" H 1365 2546 50  0000 L CNN
F 1 "0.1µF" H 1365 2455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1288 2350 50  0001 C CNN
F 3 "~" H 1250 2500 50  0001 C CNN
	1    1250 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2350 1250 2350
Wire Wire Line
	1050 1950 1400 1950
$Comp
L Device:C C2
U 1 1 5D4A7E00
P 1500 1200
F 0 "C2" H 1615 1246 50  0000 L CNN
F 1 "0.1µF" H 1615 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1538 1050 50  0001 C CNN
F 3 "~" H 1500 1200 50  0001 C CNN
	1    1500 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1050 2000 1050
Wire Wire Line
	2000 1050 2000 1400
Connection ~ 1500 1050
$Comp
L Device:CP C3
U 1 1 5D4A9C25
P 2250 1200
F 0 "C3" H 2368 1246 50  0000 L CNN
F 1 "10µF" H 2368 1155 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 2288 1050 50  0001 C CNN
F 3 "~" H 2250 1200 50  0001 C CNN
	1    2250 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5D4AA9DB
P 2250 1350
F 0 "#PWR07" H 2250 1100 50  0001 C CNN
F 1 "GND" H 2255 1177 50  0000 C CNN
F 2 "" H 2250 1350 50  0001 C CNN
F 3 "" H 2250 1350 50  0001 C CNN
	1    2250 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 5D4AACA0
P 2650 1200
F 0 "L1" H 2702 1246 50  0000 L CNN
F 1 "47µH" H 2702 1155 50  0000 L CNN
F 2 "Inductor_SMD:L_Wuerth_WE-PD-Typ-LS_Handsoldering" H 2650 1200 50  0001 C CNN
F 3 "https://katalog.we-online.de/pbs/datasheet/7447785147.pdf" H 2650 1200 50  0001 C CNN
	1    2650 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 1700 2650 1700
$Comp
L sclock:MAX629 U1
U 1 1 5D4A2987
P 2000 2000
F 0 "U1" H 2000 2050 50  0000 C CNN
F 1 "MAX629" H 2000 1900 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2000 2000 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX629.pdf" H 2000 2000 50  0001 C CNN
	1    2000 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1350 2650 1700
Wire Wire Line
	3050 1700 3150 1700
Connection ~ 4150 1700
Wire Wire Line
	4150 1700 3550 1700
Connection ~ 3550 1700
Connection ~ 3150 1700
Wire Wire Line
	3150 1700 3550 1700
Wire Wire Line
	4150 1700 4350 1700
Wire Wire Line
	3550 1750 3550 1700
$Comp
L power:GND #PWR014
U 1 1 5D4B6A24
P 4150 2000
F 0 "#PWR014" H 4150 1750 50  0001 C CNN
F 1 "GND" H 4155 1827 50  0000 C CNN
F 2 "" H 4150 2000 50  0001 C CNN
F 3 "" H 4150 2000 50  0001 C CNN
	1    4150 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C5
U 1 1 5D4B626A
P 4150 1850
F 0 "C5" H 4268 1896 50  0000 L CNN
F 1 "10µF" H 4268 1805 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 4188 1700 50  0001 C CNN
F 3 "~" H 4150 1850 50  0001 C CNN
	1    4150 1850
	1    0    0    -1  
$EndComp
$Comp
L Diode:MBR0540 D1
U 1 1 5D4AF003
P 2900 1700
F 0 "D1" H 2900 1484 50  0000 C CNN
F 1 "MBR0540" H 2900 1575 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 2900 1525 50  0001 C CNN
F 3 "http://www.mccsemi.com/up_pdf/MBR0520~MBR0580(SOD123).pdf" H 2900 1700 50  0001 C CNN
	1    2900 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	3550 2000 3150 2000
Wire Wire Line
	3150 1950 3150 2000
$Comp
L Device:C C4
U 1 1 5D4ADE16
P 3550 1850
F 0 "C4" H 3665 1896 50  0000 L CNN
F 1 "150pF" H 3665 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3588 1700 50  0001 C CNN
F 3 "~" H 3550 1850 50  0001 C CNN
	1    3550 1850
	1    0    0    -1  
$EndComp
Connection ~ 3150 2000
$Comp
L power:GND #PWR08
U 1 1 5D4AD869
P 3150 2300
F 0 "#PWR08" H 3150 2050 50  0001 C CNN
F 1 "GND" H 3155 2127 50  0000 C CNN
F 2 "" H 3150 2300 50  0001 C CNN
F 3 "" H 3150 2300 50  0001 C CNN
	1    3150 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5D4AD442
P 3150 2150
F 0 "R2" H 3220 2196 50  0000 L CNN
F 1 "31.6k" H 3220 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3080 2150 50  0001 C CNN
F 3 "~" H 3150 2150 50  0001 C CNN
	1    3150 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5D4ABAB8
P 3150 1850
F 0 "R1" H 3220 1896 50  0000 L CNN
F 1 "576k" H 3220 1805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3080 1850 50  0001 C CNN
F 3 "~" H 3150 1850 50  0001 C CNN
	1    3150 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 1700 2650 1700
Connection ~ 2650 1700
Wire Wire Line
	2600 1950 3050 1950
Wire Wire Line
	3050 1950 3050 2000
Wire Wire Line
	3050 2000 3150 2000
Wire Wire Line
	1050 1050 1050 1950
Text GLabel 1400 1700 0    50   Input ~ 0
SHDN
Text Notes 2650 2850 0    50   ~ 0
24V Power Supply
$Comp
L power:+BATT #PWR06
U 1 1 5D4DFC81
P 2250 1050
F 0 "#PWR06" H 2250 900 50  0001 C CNN
F 1 "+BATT" H 2265 1223 50  0000 C CNN
F 2 "" H 2250 1050 50  0001 C CNN
F 3 "" H 2250 1050 50  0001 C CNN
	1    2250 1050
	1    0    0    -1  
$EndComp
Connection ~ 2250 1050
$Comp
L power:+3.3V #PWR01
U 1 1 5D4E0907
P 1050 1050
F 0 "#PWR01" H 1050 900 50  0001 C CNN
F 1 "+3.3V" H 1065 1223 50  0000 C CNN
F 2 "" H 1050 1050 50  0001 C CNN
F 3 "" H 1050 1050 50  0001 C CNN
	1    1050 1050
	1    0    0    -1  
$EndComp
Connection ~ 1050 1050
$Comp
L power:+3.3V #PWR010
U 1 1 5D4E3AAE
P 3850 1000
F 0 "#PWR010" H 3850 850 50  0001 C CNN
F 1 "+3.3V" V 3865 1128 50  0000 L CNN
F 2 "" H 3850 1000 50  0001 C CNN
F 3 "" H 3850 1000 50  0001 C CNN
	1    3850 1000
	0    -1   -1   0   
$EndComp
Text GLabel 3800 1200 0    50   Output ~ 0
SHDN
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5D4E73D9
P 4050 2500
F 0 "J2" H 4130 2492 50  0000 L CNN
F 1 "Conn_01x02" H 4130 2401 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4050 2500 50  0001 C CNN
F 3 "~" H 4050 2500 50  0001 C CNN
	1    4050 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5D4E7B42
P 3850 2600
F 0 "#PWR013" H 3850 2350 50  0001 C CNN
F 1 "GND" V 3855 2472 50  0000 R CNN
F 2 "" H 3850 2600 50  0001 C CNN
F 3 "" H 3850 2600 50  0001 C CNN
	1    3850 2600
	0    1    1    0   
$EndComp
$Comp
L power:+24V #PWR012
U 1 1 5D4E80F6
P 3850 2500
F 0 "#PWR012" H 3850 2350 50  0001 C CNN
F 1 "+24V" V 3865 2628 50  0000 L CNN
F 2 "" H 3850 2500 50  0001 C CNN
F 3 "" H 3850 2500 50  0001 C CNN
	1    3850 2500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2650 1050 2250 1050
Wire Wire Line
	1050 1050 1500 1050
$Comp
L power:+24V #PWR015
U 1 1 5D4FDD99
P 4450 1700
F 0 "#PWR015" H 4450 1550 50  0001 C CNN
F 1 "+24V" V 4465 1828 50  0000 L CNN
F 2 "" H 4450 1700 50  0001 C CNN
F 3 "" H 4450 1700 50  0001 C CNN
	1    4450 1700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5D4E3636
P 3850 1300
F 0 "#PWR011" H 3850 1050 50  0001 C CNN
F 1 "GND" V 3855 1172 50  0000 R CNN
F 2 "" H 3850 1300 50  0001 C CNN
F 3 "" H 3850 1300 50  0001 C CNN
	1    3850 1300
	0    1    1    0   
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5D50569D
P 3850 1000
F 0 "#FLG02" H 3850 1075 50  0001 C CNN
F 1 "PWR_FLAG" H 3850 1173 50  0000 C CNN
F 2 "" H 3850 1000 50  0001 C CNN
F 3 "~" H 3850 1000 50  0001 C CNN
	1    3850 1000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 5D4E2A64
P 4050 1100
F 0 "J1" H 4130 1092 50  0000 L CNN
F 1 "Conn_01x04" H 4130 1001 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 4050 1100 50  0001 C CNN
F 3 "~" H 4050 1100 50  0001 C CNN
	1    4050 1100
	1    0    0    -1  
$EndComp
Connection ~ 3850 1000
$Comp
L power:+BATT #PWR09
U 1 1 5D513F2B
P 3300 1100
F 0 "#PWR09" H 3300 950 50  0001 C CNN
F 1 "+BATT" V 3315 1227 50  0000 L CNN
F 2 "" H 3300 1100 50  0001 C CNN
F 3 "" H 3300 1100 50  0001 C CNN
	1    3300 1100
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5D514588
P 3300 1100
F 0 "#FLG01" H 3300 1175 50  0001 C CNN
F 1 "PWR_FLAG" H 3300 1273 50  0000 C CNN
F 2 "" H 3300 1100 50  0001 C CNN
F 3 "~" H 3300 1100 50  0001 C CNN
	1    3300 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 1100 3300 1100
Connection ~ 3300 1100
Wire Wire Line
	3850 1200 3800 1200
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5D531B6A
P 4350 1700
F 0 "#FLG03" H 4350 1775 50  0001 C CNN
F 1 "PWR_FLAG" H 4350 1873 50  0000 C CNN
F 2 "" H 4350 1700 50  0001 C CNN
F 3 "~" H 4350 1700 50  0001 C CNN
	1    4350 1700
	1    0    0    -1  
$EndComp
Connection ~ 4350 1700
Wire Wire Line
	4350 1700 4450 1700
$EndSCHEMATC