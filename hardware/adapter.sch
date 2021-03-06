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
L MCU_Microchip_ATtiny:ATtiny814-SS U1
U 1 1 603E4AEF
P 2500 2700
F 0 "U1" H 2500 3581 50  0000 C CNN
F 1 "ATtiny814-SS" H 2500 3490 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2500 2700 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/40001912A.pdf" H 2500 2700 50  0001 C CNN
	1    2500 2700
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0101
U 1 1 603F483B
P 4150 2650
F 0 "#PWR0101" H 4150 2500 50  0001 C CNN
F 1 "+3V3" V 4165 2778 50  0000 L CNN
F 2 "" H 4150 2650 50  0001 C CNN
F 3 "" H 4150 2650 50  0001 C CNN
	1    4150 2650
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 603F4E50
P 4150 2750
F 0 "#PWR0102" H 4150 2500 50  0001 C CNN
F 1 "GND" V 4155 2622 50  0000 R CNN
F 2 "" H 4150 2750 50  0001 C CNN
F 3 "" H 4150 2750 50  0001 C CNN
	1    4150 2750
	0    1    1    0   
$EndComp
NoConn ~ 4700 2850
NoConn ~ 4700 2950
$Comp
L Connector_Generic:Conn_02x14_Counter_Clockwise J1
U 1 1 603E9A33
P 4900 2650
F 0 "J1" H 4950 3467 50  0000 C CNN
F 1 "Conn_02x14_Counter_Clockwise" H 4950 3376 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 4900 2650 50  0001 C CNN
F 3 "~" H 4900 2650 50  0001 C CNN
	1    4900 2650
	1    0    0    -1  
$EndComp
Text GLabel 5200 3350 2    50   Input ~ 0
SHDN
Text GLabel 5200 3250 2    50   Input ~ 0
CPULSE1
Text GLabel 5200 3150 2    50   Input ~ 0
CPULSE2
Text GLabel 5200 2150 2    50   BiDi ~ 0
SDA
Text GLabel 5200 2050 2    50   BiDi ~ 0
SCL
Text GLabel 4700 2150 0    50   Output ~ 0
RXI
Text GLabel 4700 2250 0    50   Input ~ 0
TXO
Text GLabel 4700 2350 0    50   Output ~ 0
INT0
Text GLabel 4700 2050 0    50   Output ~ 0
RESET
Text GLabel 4700 2450 0    50   Output ~ 0
CONFIG
NoConn ~ 4700 2550
NoConn ~ 4700 3050
NoConn ~ 4700 3150
NoConn ~ 4700 3250
NoConn ~ 4700 3350
NoConn ~ 5200 2250
NoConn ~ 5200 2350
NoConn ~ 5200 2450
NoConn ~ 5200 2550
NoConn ~ 5200 2650
NoConn ~ 5200 2750
NoConn ~ 5200 2850
NoConn ~ 5200 2950
NoConn ~ 5200 3050
$Comp
L power:+3V3 #PWR0103
U 1 1 603FA09B
P 2500 2000
F 0 "#PWR0103" H 2500 1850 50  0001 C CNN
F 1 "+3V3" V 2515 2128 50  0000 L CNN
F 2 "" H 2500 2000 50  0001 C CNN
F 3 "" H 2500 2000 50  0001 C CNN
	1    2500 2000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 603FAA0D
P 2500 3400
F 0 "#PWR0104" H 2500 3150 50  0001 C CNN
F 1 "GND" V 2505 3272 50  0000 R CNN
F 2 "" H 2500 3400 50  0001 C CNN
F 3 "" H 2500 3400 50  0001 C CNN
	1    2500 3400
	0    -1   -1   0   
$EndComp
Text Notes 2300 1150 0    50   ~ 0
FIXME: Pullup R3 on reset line is no longer needed
Text Notes 2300 1250 0    50   ~ 0
FIXME: Short C8 to allow UPDI programming via DTR
Text GLabel 1900 2500 0    50   Output ~ 0
TXO
Text GLabel 1900 2600 0    50   Input ~ 0
RXI
Text GLabel 1900 2300 0    50   Output ~ 0
SCL
Text GLabel 1900 2400 0    50   BiDi ~ 0
SDA
Text GLabel 3100 2800 2    50   Input ~ 0
RESET
Text GLabel 3100 2400 2    50   Output ~ 0
SHDN
Text GLabel 3100 2500 2    50   Output ~ 0
CPULSE1
Text GLabel 3100 2600 2    50   Output ~ 0
CPULSE2
Text GLabel 3100 2900 2    50   Input ~ 0
INT0
Text GLabel 3100 3000 2    50   Input ~ 0
CONFIG
Text Notes 2300 1350 0    50   ~ 0
TODO: Check if Pullups on SDA/SCL/INT lines are really enabled
$Comp
L power:+3V3 #PWR0105
U 1 1 6040655B
P 1150 2550
F 0 "#PWR0105" H 1150 2400 50  0001 C CNN
F 1 "+3V3" H 1165 2723 50  0000 C CNN
F 2 "" H 1150 2550 50  0001 C CNN
F 3 "" H 1150 2550 50  0001 C CNN
	1    1150 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 60406EBD
P 1150 2700
F 0 "C1" H 1265 2746 50  0000 L CNN
F 1 "100n" H 1265 2655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1188 2550 50  0001 C CNN
F 3 "~" H 1150 2700 50  0001 C CNN
	1    1150 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 604076B5
P 1150 2850
F 0 "#PWR0106" H 1150 2600 50  0001 C CNN
F 1 "GND" H 1155 2677 50  0000 C CNN
F 2 "" H 1150 2850 50  0001 C CNN
F 3 "" H 1150 2850 50  0001 C CNN
	1    1150 2850
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 6040F069
P 4150 2650
F 0 "#FLG0101" H 4150 2725 50  0001 C CNN
F 1 "PWR_FLAG" H 4150 2823 50  0000 C CNN
F 2 "" H 4150 2650 50  0001 C CNN
F 3 "~" H 4150 2650 50  0001 C CNN
	1    4150 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 2650 4700 2650
Connection ~ 4150 2650
Wire Wire Line
	4150 2750 4700 2750
NoConn ~ 3100 2700
$Comp
L power:PWR_FLAG #FLG01
U 1 1 604194E4
P 4150 2750
F 0 "#FLG01" H 4150 2825 50  0001 C CNN
F 1 "PWR_FLAG" H 4150 2923 50  0000 C CNN
F 2 "" H 4150 2750 50  0001 C CNN
F 3 "~" H 4150 2750 50  0001 C CNN
	1    4150 2750
	-1   0    0    1   
$EndComp
Connection ~ 4150 2750
Text GLabel 3100 2300 2    50   BiDi ~ 0
UPDI
Text GLabel 6650 2050 2    50   BiDi ~ 0
UPDI
$Comp
L Connector:Conn_01x03_Male J2
U 1 1 60450C3F
P 6450 2150
F 0 "J2" H 6558 2431 50  0000 C CNN
F 1 "Conn_01x03_Male" H 6558 2340 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 6450 2150 50  0001 C CNN
F 3 "~" H 6450 2150 50  0001 C CNN
	1    6450 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 6043D7ED
P 6650 2250
F 0 "#PWR02" H 6650 2000 50  0001 C CNN
F 1 "GND" V 6655 2122 50  0000 R CNN
F 2 "" H 6650 2250 50  0001 C CNN
F 3 "" H 6650 2250 50  0001 C CNN
	1    6650 2250
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR01
U 1 1 60461F05
P 6650 2150
F 0 "#PWR01" H 6650 2000 50  0001 C CNN
F 1 "+3V3" V 6665 2278 50  0000 L CNN
F 2 "" H 6650 2150 50  0001 C CNN
F 3 "" H 6650 2150 50  0001 C CNN
	1    6650 2150
	0    1    1    0   
$EndComp
$EndSCHEMATC
