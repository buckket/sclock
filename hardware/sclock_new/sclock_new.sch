EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "slock"
Date "2021-03-24"
Rev "1.0"
Comp "buckket.org"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Microchip_ATtiny:ATtiny814-SS U1
U 1 1 6056A7DC
P 2100 6350
F 0 "U1" H 2100 6350 50  0000 C CNN
F 1 "ATtiny814-SS" H 2100 6250 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2100 6350 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/40001912A.pdf" H 2100 6350 50  0001 C CNN
F 4 "ATTINY814-SSN" H 2100 6350 50  0001 C CNN "MPN"
	1    2100 6350
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q2
U 1 1 6056D32C
P 1650 2450
F 0 "Q2" H 1841 2496 50  0000 L CNN
F 1 "MMBT3904" H 1841 2405 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1850 2375 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 1650 2450 50  0001 L CNN
F 4 "MMBT3904LT1G" H 1650 2450 50  0001 C CNN "MPN"
F 5 "NPN 40V 200mA" H 1650 2450 50  0001 C CNN "Value Modifier"
	1    1650 2450
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q1
U 1 1 6056E114
P 1650 1450
F 0 "Q1" H 1841 1496 50  0000 L CNN
F 1 "MMBT3904" H 1841 1405 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1850 1375 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 1650 1450 50  0001 L CNN
F 4 "MMBT3904LT1G" H 1650 1450 50  0001 C CNN "MPN"
F 5 "NPN 40V 200mA" H 1650 1450 50  0001 C CNN "Value Modifier"
	1    1650 1450
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q3
U 1 1 6056F506
P 3200 2450
F 0 "Q3" H 3391 2496 50  0000 L CNN
F 1 "MMBT3904" H 3391 2405 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3400 2375 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 3200 2450 50  0001 L CNN
F 4 "MMBT3904LT1G" H 3200 2450 50  0001 C CNN "MPN"
F 5 "NPN 40V 200mA" H 3200 2450 50  0001 C CNN "Value Modifier"
	1    3200 2450
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q5
U 1 1 6056FEBF
P 5000 2450
F 0 "Q5" H 5191 2496 50  0000 L CNN
F 1 "MMBT3904" H 5191 2405 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5200 2375 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 5000 2450 50  0001 L CNN
F 4 "MMBT3904LT1G" H 5000 2450 50  0001 C CNN "MPN"
F 5 "NPN 40V 200mA" H 5000 2450 50  0001 C CNN "Value Modifier"
	1    5000 2450
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMBT3906 Q6
U 1 1 60571E3E
P 5200 1450
F 0 "Q6" H 4850 1400 50  0000 L CNN
F 1 "MMBT3906" H 4550 1500 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5400 1375 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3906-D.PDF" H 5200 1450 50  0001 L CNN
F 4 "MMBT3906LT1G" H 5200 1450 50  0001 C CNN "MPN"
F 5 "PNP 40V 200mA" H 5200 1450 50  0001 C CNN "Value Modifier"
	1    5200 1450
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4148WS D2
U 1 1 60573679
P 2700 1450
F 0 "D2" V 2654 1530 50  0000 L CNN
F 1 "1N4148WS" V 2745 1530 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-323" H 2700 1275 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85751/1n4148ws.pdf" H 2700 1450 50  0001 C CNN
F 4 "1N4148WS" H 2700 1450 50  0001 C CNN "MPN"
F 5 "75V 150mA" H 2700 1450 50  0001 C CNN "Value Modifier"
	1    2700 1450
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148WS D3
U 1 1 60574875
P 3900 2450
F 0 "D3" V 3854 2530 50  0000 L CNN
F 1 "1N4148WS" V 3945 2530 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-323" H 3900 2275 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85751/1n4148ws.pdf" H 3900 2450 50  0001 C CNN
F 4 "1N4148WS" H 3900 2450 50  0001 C CNN "MPN"
F 5 "75V 150mA" H 3900 2450 50  0001 C CNN "Value Modifier"
	1    3900 2450
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148WS D4
U 1 1 60575518
P 4500 1450
F 0 "D4" V 4454 1530 50  0000 L CNN
F 1 "1N4148WS" V 4545 1530 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-323" H 4500 1275 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85751/1n4148ws.pdf" H 4500 1450 50  0001 C CNN
F 4 "1N4148WS" H 4500 1450 50  0001 C CNN "MPN"
F 5 "75V 150mA" H 4500 1450 50  0001 C CNN "Value Modifier"
	1    4500 1450
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148WS D5
U 1 1 605778D1
P 5700 2450
F 0 "D5" V 5654 2530 50  0000 L CNN
F 1 "1N4148WS" V 5745 2530 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-323" H 5700 2275 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85751/1n4148ws.pdf" H 5700 2450 50  0001 C CNN
F 4 "1N4148WS" H 5700 2450 50  0001 C CNN "MPN"
F 5 "75V 150mA" H 5700 2450 50  0001 C CNN "Value Modifier"
	1    5700 2450
	0    1    1    0   
$EndComp
$Comp
L power:+24V #PWR08
U 1 1 605A4AD2
P 4000 1250
F 0 "#PWR08" H 4000 1100 50  0001 C CNN
F 1 "+24V" H 4015 1423 50  0000 C CNN
F 2 "" H 4000 1250 50  0001 C CNN
F 3 "" H 4000 1250 50  0001 C CNN
	1    4000 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 2250 3900 2300
Wire Wire Line
	3300 2650 3900 2650
Wire Wire Line
	3900 2650 3900 2600
Wire Wire Line
	5700 2250 5700 2300
Wire Wire Line
	5100 2250 5700 2250
Wire Wire Line
	5100 2650 5700 2650
Wire Wire Line
	5700 2650 5700 2600
Wire Wire Line
	4500 1250 4500 1300
Wire Wire Line
	4500 1250 5100 1250
Wire Wire Line
	4500 1600 4500 1650
Wire Wire Line
	4500 1650 5100 1650
Wire Wire Line
	2700 1250 2700 1300
Wire Wire Line
	2700 1250 3300 1250
Wire Wire Line
	2700 1600 2700 1650
Wire Wire Line
	2700 1650 3300 1650
Text GLabel 1050 1450 0    50   Input ~ 0
CPULSE1
Text GLabel 1050 2450 0    50   Input ~ 0
CPULSE2
$Comp
L Device:R R1
U 1 1 60609748
P 1250 1450
F 0 "R1" V 1457 1450 50  0000 C CNN
F 1 "31.6k" V 1366 1450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1180 1450 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 1250 1450 50  0001 C CNN
F 4 "RC0805FR-0731K6L" H 1250 1450 50  0001 C CNN "MPN"
F 5 "1% 1/8W" H 1250 1450 50  0001 C CNN "Value Modifier"
	1    1250 1450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 6060A03C
P 1250 2450
F 0 "R2" V 1457 2450 50  0000 C CNN
F 1 "31.6k" V 1366 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1180 2450 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 1250 2450 50  0001 C CNN
F 4 "RC0805FR-0731K6L" H 1250 2450 50  0001 C CNN "MPN"
F 5 "1% 1/8W" H 1250 2450 50  0001 C CNN "Value Modifier"
	1    1250 2450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 6060ADAB
P 1750 1050
F 0 "R3" V 1957 1050 50  0000 C CNN
F 1 "31.6k" V 1866 1050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1680 1050 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 1750 1050 50  0001 C CNN
F 4 "RC0805FR-0731K6L" H 1750 1050 50  0001 C CNN "MPN"
F 5 "1% 1/8W" H 1750 1050 50  0001 C CNN "Value Modifier"
	1    1750 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 6060C053
P 1750 2050
F 0 "R4" V 1543 2050 50  0000 C CNN
F 1 "31.6k" V 1634 2050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1680 2050 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 1750 2050 50  0001 C CNN
F 4 "RC0805FR-0731K6L" H 1750 2050 50  0001 C CNN "MPN"
F 5 "1% 1/8W" H 1750 2050 50  0001 C CNN "Value Modifier"
	1    1750 2050
	-1   0    0    1   
$EndComp
$Comp
L Timer_RTC:DS3231M U2
U 1 1 60611E3A
P 4550 6650
F 0 "U2" H 4400 6700 50  0000 C CNN
F 1 "DS3231" H 4400 6600 50  0000 C CNN
F 2 "Package_SO:SOIC-16W_7.5x10.3mm_P1.27mm" H 4550 6050 50  0001 C CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/DS3231.pdf" H 4820 6700 50  0001 C CNN
F 4 "DS3231S#T&R" H 4550 6650 50  0001 C CNN "MPN"
F 5 "16-SOIC not M" H 4550 6650 50  0001 C CNN "Value Modifier"
	1    4550 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 6061D9F9
P 5600 6700
F 0 "BT1" H 5718 6796 50  0000 L CNN
F 1 "c" H 5718 6705 50  0000 L CNN
F 2 "sclock:BatteryHolder_Keystone_1066_1x2032" V 5600 6760 50  0001 C CNN
F 3 "https://www.keyelco.com/product-pdf.cfm?p=723" V 5600 6760 50  0001 C CNN
F 4 "1066" H 5600 6700 50  0001 C CNN "MPN"
F 5 "DNP" H 5600 6700 50  0001 C CNN "Population"
F 6 "2032" H 5600 6700 50  0001 C CNN "Value Modifier"
	1    5600 6700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J5
U 1 1 605851BD
P 10050 1850
F 0 "J5" H 10130 1842 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 10130 1751 50  0000 L CNN
F 2 "TerminalBlock_4Ucon:TerminalBlock_4Ucon_1x02_P3.50mm_Horizontal" H 10050 1850 50  0001 C CNN
F 3 "https://www.molex.com/pdm_docs/sd/393570002_sd.pdf" H 10050 1850 50  0001 C CNN
F 4 "0393570002" H 10050 1850 50  0001 C CNN "MPN"
F 5 "3.5mm Pitch" H 10050 1850 50  0001 C CNN "Value Modifier"
F 6 "DNP" H 10050 1850 50  0001 C CNN "Population"
	1    10050 1850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 60585EFE
P 6950 1850
F 0 "J3" H 7030 1842 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 7030 1751 50  0000 L CNN
F 2 "TerminalBlock_4Ucon:TerminalBlock_4Ucon_1x02_P3.50mm_Horizontal" H 6950 1850 50  0001 C CNN
F 3 "https://www.molex.com/pdm_docs/sd/393570002_sd.pdf" H 6950 1850 50  0001 C CNN
F 4 "0393570002" H 6950 1850 50  0001 C CNN "MPN"
F 5 "3.5mm Pitch" H 6950 1850 50  0001 C CNN "Value Modifier"
F 6 "DNP" H 6950 1850 50  0001 C CNN "Population"
	1    6950 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR028
U 1 1 6058711A
P 9850 1950
F 0 "#PWR028" H 9850 1700 50  0001 C CNN
F 1 "GND" V 9855 1822 50  0000 R CNN
F 2 "" H 9850 1950 50  0001 C CNN
F 3 "" H 9850 1950 50  0001 C CNN
	1    9850 1950
	0    1    1    0   
$EndComp
$Comp
L power:+BATT #PWR029
U 1 1 60587A4A
P 9850 1850
F 0 "#PWR029" H 9850 1700 50  0001 C CNN
F 1 "+BATT" V 9865 1977 50  0000 L CNN
F 2 "" H 9850 1850 50  0001 C CNN
F 3 "" H 9850 1850 50  0001 C CNN
	1    9850 1850
	0    -1   -1   0   
$EndComp
Text GLabel 6750 1850 0    50   BiDi ~ 0
COUT1
Text GLabel 6750 1950 0    50   BiDi ~ 0
COUT2
Text GLabel 3950 6450 0    50   Input ~ 0
SCL
Text GLabel 5150 6750 2    50   Output ~ 0
INT
$Comp
L power:PWR_FLAG #FLG01
U 1 1 605A59FB
P 5600 6400
F 0 "#FLG01" H 5600 6475 50  0001 C CNN
F 1 "PWR_FLAG" V 5600 6528 50  0000 L CNN
F 2 "" H 5600 6400 50  0001 C CNN
F 3 "~" H 5600 6400 50  0001 C CNN
	1    5600 6400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 605B56DA
P 4550 7050
F 0 "#PWR011" H 4550 6800 50  0001 C CNN
F 1 "GND" H 4555 6877 50  0000 C CNN
F 2 "" H 4550 7050 50  0001 C CNN
F 3 "" H 4550 7050 50  0001 C CNN
	1    4550 7050
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR09
U 1 1 605BF9DF
P 4450 6250
F 0 "#PWR09" H 4450 6100 50  0001 C CNN
F 1 "+3V3" H 4465 6423 50  0000 C CNN
F 2 "" H 4450 6250 50  0001 C CNN
F 3 "" H 4450 6250 50  0001 C CNN
	1    4450 6250
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR03
U 1 1 605C2176
P 2100 5650
F 0 "#PWR03" H 2100 5500 50  0001 C CNN
F 1 "+3V3" H 2115 5823 50  0000 C CNN
F 2 "" H 2100 5650 50  0001 C CNN
F 3 "" H 2100 5650 50  0001 C CNN
	1    2100 5650
	1    0    0    -1  
$EndComp
Text GLabel 3950 6550 0    50   BiDi ~ 0
SDA
NoConn ~ 4050 6850
NoConn ~ 5050 6450
Wire Wire Line
	5050 6750 5150 6750
Wire Wire Line
	3950 6450 4050 6450
Wire Wire Line
	3950 6550 4050 6550
$Comp
L Device:R R7
U 1 1 6079A17E
P 3700 4550
F 0 "R7" V 3493 4550 50  0000 C CNN
F 1 "10k" V 3584 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3630 4550 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 3700 4550 50  0001 C CNN
F 4 "RC0805FR-0710KL" H 3700 4550 50  0001 C CNN "MPN"
F 5 "1% 1/8W" H 3700 4550 50  0001 C CNN "Value Modifier"
	1    3700 4550
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR07
U 1 1 6079B46D
P 3850 4550
F 0 "#PWR07" H 3850 4400 50  0001 C CNN
F 1 "+3V3" V 3865 4678 50  0000 L CNN
F 2 "" H 3850 4550 50  0001 C CNN
F 3 "" H 3850 4550 50  0001 C CNN
	1    3850 4550
	0    1    1    0   
$EndComp
Text GLabel 3450 4550 0    50   BiDi ~ 0
SDA
Wire Wire Line
	3550 4550 3450 4550
$Comp
L Switch:SW_Push SW1
U 1 1 607A8040
P 1550 4000
F 0 "SW1" H 1550 4285 50  0000 C CNN
F 1 "SW_Push" H 1550 4194 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 1550 4200 50  0001 C CNN
F 3 "https://sten-eswitch-13110800-production.s3.amazonaws.com/system/asset/product_line/data_sheet/165/TL3342.pdf" H 1550 4200 50  0001 C CNN
F 4 "TL3342F160QG/TR" H 1550 4000 50  0001 C CNN "MPN"
F 5 "SPST" H 1550 4000 50  0001 C CNN "Value Modifier"
	1    1550 4000
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 607A8F5E
P 1550 4650
F 0 "SW2" H 1550 4935 50  0000 C CNN
F 1 "SW_Push" H 1550 4844 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 1550 4850 50  0001 C CNN
F 3 "https://sten-eswitch-13110800-production.s3.amazonaws.com/system/asset/product_line/data_sheet/165/TL3342.pdf" H 1550 4850 50  0001 C CNN
F 4 "TL3342F160QG/TR" H 1550 4650 50  0001 C CNN "MPN"
F 5 "SPST" H 1550 4650 50  0001 C CNN "Value Modifier"
	1    1550 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 607A9D6B
P 1750 4650
F 0 "#PWR02" H 1750 4400 50  0001 C CNN
F 1 "GND" H 1755 4477 50  0000 C CNN
F 2 "" H 1750 4650 50  0001 C CNN
F 3 "" H 1750 4650 50  0001 C CNN
	1    1750 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 607AB9D5
P 1750 4000
F 0 "#PWR01" H 1750 3750 50  0001 C CNN
F 1 "GND" H 1755 3827 50  0000 C CNN
F 2 "" H 1750 4000 50  0001 C CNN
F 3 "" H 1750 4000 50  0001 C CNN
	1    1750 4000
	1    0    0    -1  
$EndComp
Text GLabel 1500 5950 0    50   Output ~ 0
SCL
Text GLabel 1500 6050 0    50   BiDi ~ 0
SDA
Text GLabel 1500 6150 0    50   Output ~ 0
TXO
Text GLabel 1500 6250 0    50   Input ~ 0
RXI
$Comp
L power:GND #PWR04
U 1 1 607B2C07
P 2100 7050
F 0 "#PWR04" H 2100 6800 50  0001 C CNN
F 1 "GND" H 2105 6877 50  0000 C CNN
F 2 "" H 2100 7050 50  0001 C CNN
F 3 "" H 2100 7050 50  0001 C CNN
	1    2100 7050
	1    0    0    -1  
$EndComp
Text GLabel 2700 5950 2    50   BiDi ~ 0
UPDI
Text GLabel 2700 6450 2    50   Output ~ 0
SHDN
Text GLabel 2700 6250 2    50   Output ~ 0
CPULSE1
Text GLabel 2700 6350 2    50   Output ~ 0
CPULSE2
Text GLabel 2700 6150 2    50   Input ~ 0
RESET
Text GLabel 2700 6550 2    50   Input ~ 0
INT
Text GLabel 2700 6050 2    50   Input ~ 0
CONFIG
Text GLabel 2700 6650 2    50   Output ~ 0
LED
$Comp
L Device:C C1
U 1 1 607C28A3
P 1200 6600
F 0 "C1" H 1315 6646 50  0000 L CNN
F 1 "0.1µF" H 1315 6555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1238 6450 50  0001 C CNN
F 3 "https://content.kemet.com/datasheets/KEM_C1002_X7R_SMD.pdf" H 1200 6600 50  0001 C CNN
F 4 "C0805C104K5RACTU" H 1200 6600 50  0001 C CNN "MPN"
F 5 "50V X7R" H 1200 6600 50  0001 C CNN "Value Modifier"
	1    1200 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 1450 1100 1450
Wire Wire Line
	1400 1450 1450 1450
Wire Wire Line
	1100 2450 1050 2450
Wire Wire Line
	1400 2450 1450 2450
Wire Wire Line
	3300 1250 4000 1250
Connection ~ 3300 1250
Wire Wire Line
	4500 1250 4000 1250
Connection ~ 4500 1250
Connection ~ 4000 1250
Wire Wire Line
	3300 2250 3900 2250
Wire Wire Line
	3300 1650 3300 1950
Connection ~ 3300 1650
Connection ~ 3300 2250
Wire Wire Line
	5100 1600 5100 1650
Connection ~ 5100 2250
Connection ~ 5100 1650
Wire Wire Line
	5100 1650 5100 1950
Connection ~ 5100 2650
Connection ~ 3900 2650
Text GLabel 3850 1950 2    50   BiDi ~ 0
COUT1
Text GLabel 4500 1950 0    50   BiDi ~ 0
COUT2
Wire Wire Line
	3300 1950 3850 1950
Connection ~ 3300 1950
Wire Wire Line
	3300 1950 3300 2250
Wire Wire Line
	4500 1950 5100 1950
Connection ~ 5100 1950
Wire Wire Line
	5100 1950 5100 2250
Wire Wire Line
	3600 1450 3600 1800
Wire Wire Line
	1750 1800 1750 1900
Wire Wire Line
	1750 1800 3600 1800
Wire Wire Line
	1750 2200 1750 2250
Wire Wire Line
	1750 900  5400 900 
Wire Wire Line
	5400 900  5400 1450
Wire Wire Line
	1750 1250 1750 1200
$Comp
L Transistor_BJT:MMBT3906 Q4
U 1 1 60571604
P 3400 1450
F 0 "Q4" H 3050 1400 50  0000 L CNN
F 1 "MMBT3906" H 2750 1500 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3600 1375 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3906-D.PDF" H 3400 1450 50  0001 L CNN
F 4 "MMBT3906LT1G" H 3400 1450 50  0001 C CNN "MPN"
F 5 "PNP 40V 200mA" H 3400 1450 50  0001 C CNN "Value Modifier"
	1    3400 1450
	-1   0    0    1   
$EndComp
Wire Wire Line
	3000 2450 2400 2450
Wire Wire Line
	2400 2450 2400 1650
Wire Wire Line
	2400 1650 1750 1650
Wire Wire Line
	4800 2450 4800 2950
Wire Wire Line
	4800 2950 1750 2950
Wire Wire Line
	1750 2950 1750 2650
$Comp
L Device:LED D1
U 1 1 6066C650
P 2550 4450
F 0 "D1" V 2589 4332 50  0000 R CNN
F 1 "LED" V 2498 4332 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2550 4450 50  0001 C CNN
F 3 "https://www.we-online.de/katalog/datasheet/150080YS75000.pdf" H 2550 4450 50  0001 C CNN
F 4 "150080YS75000" H 2550 4450 50  0001 C CNN "MPN"
F 5 "590nm Yellow" H 2550 4450 50  0001 C CNN "Value Modifier"
	1    2550 4450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 6066DE0A
P 2550 4650
F 0 "#PWR05" H 2550 4400 50  0001 C CNN
F 1 "GND" H 2555 4477 50  0000 C CNN
F 2 "" H 2550 4650 50  0001 C CNN
F 3 "" H 2550 4650 50  0001 C CNN
	1    2550 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 6066EFCD
P 2550 4150
F 0 "R5" H 2620 4196 50  0000 L CNN
F 1 "470" H 2620 4105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2480 4150 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 2550 4150 50  0001 C CNN
F 4 "RC0805FR-07470RL" H 2550 4150 50  0001 C CNN "MPN"
F 5 "1% 1/8W" H 2550 4150 50  0001 C CNN "Value Modifier"
	1    2550 4150
	1    0    0    -1  
$EndComp
Text GLabel 2550 3950 1    50   Input ~ 0
LED
Wire Wire Line
	2550 3950 2550 4000
Wire Wire Line
	2550 4650 2550 4600
Text GLabel 1350 4000 0    50   Output ~ 0
CONFIG
Text GLabel 1350 4650 0    50   Output ~ 0
RESET
Wire Wire Line
	5100 2650 4550 2650
Connection ~ 4550 2650
Wire Wire Line
	4550 2650 3900 2650
$Comp
L power:GND #PWR010
U 1 1 605CB01D
P 4550 2650
F 0 "#PWR010" H 4550 2400 50  0001 C CNN
F 1 "GND" H 4555 2477 50  0000 C CNN
F 2 "" H 4550 2650 50  0001 C CNN
F 3 "" H 4550 2650 50  0001 C CNN
	1    4550 2650
	1    0    0    -1  
$EndComp
Text Notes 1000 3150 0    50   ~ 0
WARNING: Base resistor calculation assumed coil current of about 6mA at 24V
Text Notes 1000 3250 0    50   ~ 0
If more current is required, reduce resistor size!
Text Notes 5900 3150 2    50   ~ 0
H-Bridge Clock Driver
Text Notes 3950 5050 2    50   ~ 0
I²C Pull-Ups
Text Notes 4700 7450 2    50   ~ 0
RTC IC
Text Notes 5950 7450 2    50   ~ 0
RTC Backup Battery
Text Notes 1750 5050 2    50   ~ 0
Input Buttons
Text Notes 2750 5050 2    50   ~ 0
Status LED
Text Notes 2450 7450 2    50   ~ 0
ATtiny814 SOIC-14
Text Notes 7650 2250 2    50   ~ 0
Clock Connector (Screw Terminal)
Text Notes 10650 1600 2    50   ~ 0
Battery Connector (JST PH/PA)
$Comp
L Mechanical:MountingHole H1
U 1 1 60598584
P 8250 1050
F 0 "H1" H 8350 1096 50  0000 L CNN
F 1 "MountingHole" H 8350 1005 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 8250 1050 50  0001 C CNN
F 3 "~" H 8250 1050 50  0001 C CNN
F 4 "DNP" H 8250 1050 50  0001 C CNN "Population"
F 5 "M2" H 8250 1050 50  0001 C CNN "Value Modifier"
	1    8250 1050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 60598A79
P 8250 1350
F 0 "H2" H 8350 1396 50  0000 L CNN
F 1 "MountingHole" H 8350 1305 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 8250 1350 50  0001 C CNN
F 3 "~" H 8250 1350 50  0001 C CNN
F 4 "DNP" H 8250 1350 50  0001 C CNN "Population"
F 5 "M2" H 8250 1350 50  0001 C CNN "Value Modifier"
	1    8250 1350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 60598F8E
P 8250 1650
F 0 "H3" H 8350 1696 50  0000 L CNN
F 1 "MountingHole" H 8350 1605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 8250 1650 50  0001 C CNN
F 3 "~" H 8250 1650 50  0001 C CNN
F 4 "DNP" H 8250 1650 50  0001 C CNN "Population"
F 5 "M2" H 8250 1650 50  0001 C CNN "Value Modifier"
	1    8250 1650
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 6059953D
P 8250 1950
F 0 "H4" H 8350 1996 50  0000 L CNN
F 1 "MountingHole" H 8350 1905 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 8250 1950 50  0001 C CNN
F 3 "~" H 8250 1950 50  0001 C CNN
F 4 "DNP" H 8250 1950 50  0001 C CNN "Population"
F 5 "M2" H 8250 1950 50  0001 C CNN "Value Modifier"
	1    8250 1950
	1    0    0    -1  
$EndComp
Text Notes 10750 2250 2    50   ~ 0
Battery Connector (Screw Terminal)
Text Notes 8200 2250 0    50   ~ 0
M2 Mouting Holes
Wire Wire Line
	1200 6450 1200 5650
Wire Wire Line
	1200 5650 2100 5650
Connection ~ 2100 5650
Wire Wire Line
	2100 7050 1200 7050
Wire Wire Line
	1200 7050 1200 6750
Connection ~ 2100 7050
Wire Wire Line
	5600 6250 5600 6400
Connection ~ 5600 6400
Wire Wire Line
	5600 6400 5600 6500
Wire Wire Line
	5600 6800 5600 7050
$Comp
L sclock:Conn_FTDI J2
U 1 1 60594B60
P 5200 5100
F 0 "J2" H 5480 5100 50  0000 L CNN
F 1 "Conn_FTDI" H 5480 5009 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Horizontal" H 5200 5100 50  0001 C CNN
F 3 "~" H 5200 5100 50  0001 C CNN
F 4 "2.54mm Pitch" H 5200 5100 50  0001 C CNN "Value Modifier"
F 5 "DNP" H 5200 5100 50  0001 C CNN "Population"
	1    5200 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 60596989
P 5000 4900
F 0 "#PWR012" H 5000 4650 50  0001 C CNN
F 1 "GND" V 5005 4772 50  0000 R CNN
F 2 "" H 5000 4900 50  0001 C CNN
F 3 "" H 5000 4900 50  0001 C CNN
	1    5000 4900
	0    1    1    0   
$EndComp
Text GLabel 5000 5200 0    50   Output ~ 0
RXI
Text GLabel 5000 5300 0    50   Input ~ 0
TXO
NoConn ~ 5000 5400
NoConn ~ 5000 5000
Text Notes 5800 5650 2    50   ~ 0
Serial Interface Connector
$Comp
L power:+3V3 #PWR013
U 1 1 605D7402
P 5000 5100
F 0 "#PWR013" H 5000 4950 50  0001 C CNN
F 1 "+3V3" V 5015 5228 50  0000 L CNN
F 2 "" H 5000 5100 50  0001 C CNN
F 3 "" H 5000 5100 50  0001 C CNN
	1    5000 5100
	0    -1   -1   0   
$EndComp
NoConn ~ 5000 4150
NoConn ~ 5000 4050
NoConn ~ 5500 4050
Text GLabel 5000 3950 0    50   BiDi ~ 0
UPDI
$Comp
L power:GND #PWR015
U 1 1 605901C8
P 5500 4150
F 0 "#PWR015" H 5500 3900 50  0001 C CNN
F 1 "GND" V 5505 4022 50  0000 R CNN
F 2 "" H 5500 4150 50  0001 C CNN
F 3 "" H 5500 4150 50  0001 C CNN
	1    5500 4150
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR014
U 1 1 6058F8BD
P 5500 3950
F 0 "#PWR014" H 5500 3800 50  0001 C CNN
F 1 "+3V3" V 5515 4078 50  0000 L CNN
F 2 "" H 5500 3950 50  0001 C CNN
F 3 "" H 5500 3950 50  0001 C CNN
	1    5500 3950
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J1
U 1 1 6058DCD9
P 5200 4050
F 0 "J1" H 5250 4367 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 5250 4276 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 5200 4050 50  0001 C CNN
F 3 "~" H 5200 4050 50  0001 C CNN
F 4 "2.54mm Pitch" H 5200 4050 50  0001 C CNN "Value Modifier"
F 5 "DNP" H 5200 4050 50  0001 C CNN "Population"
	1    5200 4050
	1    0    0    -1  
$EndComp
Text Notes 5750 4450 2    50   ~ 0
UPDI Programming Header
Wire Wire Line
	5600 6250 4550 6250
Wire Wire Line
	4550 7050 5600 7050
Connection ~ 4550 7050
NoConn ~ 10000 1250
$Comp
L power:GND #PWR031
U 1 1 6059F1E6
P 10000 1350
F 0 "#PWR031" H 10000 1100 50  0001 C CNN
F 1 "GND" V 10005 1222 50  0000 R CNN
F 2 "" H 10000 1350 50  0001 C CNN
F 3 "" H 10000 1350 50  0001 C CNN
	1    10000 1350
	0    1    1    0   
$EndComp
$Comp
L power:+BATT #PWR030
U 1 1 6059E5AA
P 10000 1150
F 0 "#PWR030" H 10000 1000 50  0001 C CNN
F 1 "+BATT" V 10015 1277 50  0000 L CNN
F 2 "" H 10000 1150 50  0001 C CNN
F 3 "" H 10000 1150 50  0001 C CNN
	1    10000 1150
	0    -1   -1   0   
$EndComp
$Comp
L Regulator_Linear:MAX604 U4
U 1 1 606159A6
P 9600 5700
F 0 "U4" H 9600 6042 50  0000 C CNN
F 1 "MAX604" H 9600 5951 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9600 6025 50  0001 C CIN
F 3 "http://datasheets.maximintegrated.com/en/ds/MAX603-MAX604.pdf" H 9600 5650 50  0001 C CNN
F 4 "MAX604ESA+" H 9600 5700 50  0001 C CNN "MPN"
	1    9600 5700
	1    0    0    -1  
$EndComp
$Comp
L sclock:MAX629 U3
U 1 1 6061B0CD
P 7900 4050
F 0 "U3" H 7900 4100 50  0000 C CNN
F 1 "MAX629" H 7900 3950 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9150 3850 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX629.pdf" H 7900 4050 50  0001 C CNN
F 4 "MAX629ESA+" H 7900 4050 50  0001 C CNN "MPN"
	1    7900 4050
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPDT SW3
U 1 1 6055B273
P 7700 5650
F 0 "SW3" H 7700 5935 50  0000 C CNN
F 1 "SW_SPDT" H 7700 5844 50  0000 C CNN
F 2 "Button_Switch_THT:SW_E-Switch_EG1271_DPDT" H 7700 5650 50  0001 C CNN
F 3 "https://sten-eswitch-13110800-production.s3.amazonaws.com/system/asset/product_line/data_sheet/119/EG.pdf" H 7700 5650 50  0001 C CNN
F 4 "EG1271" H 7700 5650 50  0001 C CNN "MPN"
F 5 "SPDT 30V 300mA" H 7700 5650 50  0001 C CNN "Value Modifier"
	1    7700 5650
	1    0    0    -1  
$EndComp
NoConn ~ 7900 5550
$Comp
L power:PWR_FLAG #FLG02
U 1 1 6055E33A
P 7400 5650
F 0 "#FLG02" H 7400 5725 50  0001 C CNN
F 1 "PWR_FLAG" H 7400 5823 50  0000 C CNN
F 2 "" H 7400 5650 50  0001 C CNN
F 3 "~" H 7400 5650 50  0001 C CNN
	1    7400 5650
	-1   0    0    1   
$EndComp
$Comp
L power:+BATT #PWR020
U 1 1 60558FA0
P 7400 5650
F 0 "#PWR020" H 7400 5500 50  0001 C CNN
F 1 "+BATT" V 7415 5777 50  0000 L CNN
F 2 "" H 7400 5650 50  0001 C CNN
F 3 "" H 7400 5650 50  0001 C CNN
	1    7400 5650
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR022
U 1 1 6055CE1E
P 8000 5750
F 0 "#PWR022" H 8000 5600 50  0001 C CNN
F 1 "VCC" V 8015 5878 50  0000 L CNN
F 2 "" H 8000 5750 50  0001 C CNN
F 3 "" H 8000 5750 50  0001 C CNN
	1    8000 5750
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 5650 7500 5650
Connection ~ 7400 5650
$Comp
L power:PWR_FLAG #FLG03
U 1 1 60565F8D
P 8000 5750
F 0 "#FLG03" H 8000 5825 50  0001 C CNN
F 1 "PWR_FLAG" H 8000 5923 50  0000 C CNN
F 2 "" H 8000 5750 50  0001 C CNN
F 3 "~" H 8000 5750 50  0001 C CNN
	1    8000 5750
	-1   0    0    1   
$EndComp
Wire Wire Line
	8000 5750 7900 5750
Connection ~ 8000 5750
$Comp
L power:VCC #PWR025
U 1 1 605680BA
P 8850 5600
F 0 "#PWR025" H 8850 5450 50  0001 C CNN
F 1 "VCC" H 8865 5773 50  0000 C CNN
F 2 "" H 8850 5600 50  0001 C CNN
F 3 "" H 8850 5600 50  0001 C CNN
	1    8850 5600
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR034
U 1 1 60568A56
P 10350 5600
F 0 "#PWR034" H 10350 5450 50  0001 C CNN
F 1 "+3V3" H 10365 5773 50  0000 C CNN
F 2 "" H 10350 5600 50  0001 C CNN
F 3 "" H 10350 5600 50  0001 C CNN
	1    10350 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 60569368
P 9600 6000
F 0 "#PWR027" H 9600 5750 50  0001 C CNN
F 1 "GND" H 9605 5827 50  0000 C CNN
F 2 "" H 9600 6000 50  0001 C CNN
F 3 "" H 9600 6000 50  0001 C CNN
	1    9600 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C5
U 1 1 60569944
P 8850 5750
F 0 "C5" H 8968 5796 50  0000 L CNN
F 1 "10µF" H 8968 5705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 8888 5600 50  0001 C CNN
F 3 "https://content.kemet.com/datasheets/KEM_C1006_X5R_SMD.pdf" H 8850 5750 50  0001 C CNN
F 4 "C0805C106K8PACTU" H 8850 5750 50  0001 C CNN "MPN"
F 5 "10V X5R" H 8850 5750 50  0001 C CNN "Value Modifier"
	1    8850 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C8
U 1 1 6056A751
P 10350 5750
F 0 "C8" H 10468 5796 50  0000 L CNN
F 1 "10µF" H 10468 5705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 10388 5600 50  0001 C CNN
F 3 "https://content.kemet.com/datasheets/KEM_C1006_X5R_SMD.pdf" H 10350 5750 50  0001 C CNN
F 4 "C0805C106K8PACTU" H 10350 5750 50  0001 C CNN "MPN"
F 5 "10V X5R" H 10350 5750 50  0001 C CNN "Value Modifier"
	1    10350 5750
	1    0    0    -1  
$EndComp
Connection ~ 8850 5600
Wire Wire Line
	10000 5600 10350 5600
Connection ~ 10350 5600
Wire Wire Line
	8850 5900 8850 6000
Connection ~ 9600 6000
Wire Wire Line
	10350 5900 10350 6000
Wire Wire Line
	9200 5600 9150 5600
Wire Wire Line
	10350 6000 10050 6000
Wire Wire Line
	10000 5700 10050 5700
Wire Wire Line
	10050 5700 10050 6000
Wire Wire Line
	8850 6000 9600 6000
Connection ~ 10050 6000
Wire Wire Line
	10050 6000 9600 6000
Wire Wire Line
	9200 5700 9150 5700
Wire Wire Line
	9150 5700 9150 5600
Connection ~ 9150 5600
Wire Wire Line
	9150 5600 8850 5600
$Comp
L power:GND #PWR021
U 1 1 605BA8C5
P 7900 4700
F 0 "#PWR021" H 7900 4450 50  0001 C CNN
F 1 "GND" H 7905 4527 50  0000 C CNN
F 2 "" H 7900 4700 50  0001 C CNN
F 3 "" H 7900 4700 50  0001 C CNN
	1    7900 4700
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR016
U 1 1 605C3D66
P 6950 3050
F 0 "#PWR016" H 6950 2900 50  0001 C CNN
F 1 "+3V3" H 6965 3223 50  0000 C CNN
F 2 "" H 6950 3050 50  0001 C CNN
F 3 "" H 6950 3050 50  0001 C CNN
	1    6950 3050
	1    0    0    -1  
$EndComp
Text GLabel 7300 3750 0    50   Input ~ 0
SHDN
$Comp
L Device:C C2
U 1 1 6063BB72
P 7250 3200
F 0 "C2" H 7365 3246 50  0000 L CNN
F 1 "0.1µF" H 7365 3155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7288 3050 50  0001 C CNN
F 3 "https://content.kemet.com/datasheets/KEM_C1002_X7R_SMD.pdf" H 7250 3200 50  0001 C CNN
F 4 "C0805C104K5RACTU" H 7250 3200 50  0001 C CNN "MPN"
F 5 "50V X7R" H 7250 3200 50  0001 C CNN "Value Modifier"
	1    7250 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 6063C367
P 7250 3350
F 0 "#PWR017" H 7250 3100 50  0001 C CNN
F 1 "GND" H 7255 3177 50  0000 C CNN
F 2 "" H 7250 3350 50  0001 C CNN
F 3 "" H 7250 3350 50  0001 C CNN
	1    7250 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 3050 7900 3050
Wire Wire Line
	7900 3050 7900 3450
Connection ~ 7250 3050
$Comp
L Device:C C3
U 1 1 6064D74A
P 7250 4550
F 0 "C3" H 7365 4596 50  0000 L CNN
F 1 "0.1µF" H 7365 4505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7288 4400 50  0001 C CNN
F 3 "https://content.kemet.com/datasheets/KEM_C1002_X7R_SMD.pdf" H 7250 4550 50  0001 C CNN
F 4 "C0805C104K5RACTU" H 7250 4550 50  0001 C CNN "MPN"
F 5 "50V X7R" H 7250 4550 50  0001 C CNN "Value Modifier"
	1    7250 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 4400 7250 4400
$Comp
L power:GND #PWR018
U 1 1 6064F588
P 7250 4700
F 0 "#PWR018" H 7250 4450 50  0001 C CNN
F 1 "GND" H 7255 4527 50  0000 C CNN
F 2 "" H 7250 4700 50  0001 C CNN
F 3 "" H 7250 4700 50  0001 C CNN
	1    7250 4700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR023
U 1 1 6065125D
P 8150 3050
F 0 "#PWR023" H 8150 2900 50  0001 C CNN
F 1 "VCC" H 8165 3223 50  0000 C CNN
F 2 "" H 8150 3050 50  0001 C CNN
F 3 "" H 8150 3050 50  0001 C CNN
	1    8150 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C4
U 1 1 60651B64
P 8150 3200
F 0 "C4" H 8268 3246 50  0000 L CNN
F 1 "10µF" H 8268 3155 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-7343-31_Kemet-D_Pad2.25x2.55mm_HandSolder" H 8188 3050 50  0001 C CNN
F 3 "https://content.kemet.com/datasheets/KEM_T2009_T495.pdf" H 8150 3200 50  0001 C CNN
F 4 "T495D106K035ATE125" H 8150 3200 50  0001 C CNN "MPN"
F 5 "35V" H 8150 3200 50  0001 C CNN "Value Modifier"
F 6 "" H 8150 3200 50  0001 C CNN "Population"
	1    8150 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 60652807
P 8150 3350
F 0 "#PWR024" H 8150 3100 50  0001 C CNN
F 1 "GND" H 8155 3177 50  0000 C CNN
F 2 "" H 8150 3350 50  0001 C CNN
F 3 "" H 8150 3350 50  0001 C CNN
	1    8150 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 60652F29
P 8500 3200
F 0 "L1" H 8552 3246 50  0000 L CNN
F 1 "47µH" H 8552 3155 50  0000 L CNN
F 2 "Inductor_SMD:L_Wuerth_WE-PD-Typ-LS_Handsoldering" H 8500 3200 50  0001 C CNN
F 3 "https://www.eaton.com/content/dam/eaton/products/electronic-components/resources/data-sheet/eaton-dr-high-power-density-high-efficiency-shielded-drum-core-power-inductors-data-sheet.pdf" H 8500 3200 50  0001 C CNN
F 4 "DR125-470-R" H 8500 3200 50  0001 C CNN "MPN"
F 5 "74mOhm DCR" H 8500 3200 50  0001 C CNN "Value Modifier"
	1    8500 3200
	1    0    0    -1  
$EndComp
$Comp
L Diode:MBR0540 D6
U 1 1 60653DA0
P 8700 3750
F 0 "D6" H 8700 3533 50  0000 C CNN
F 1 "MBR0540" H 8700 3624 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 8700 3575 50  0001 C CNN
F 3 "http://www.mccsemi.com/up_pdf/MBR0520~MBR0580(SOD123).pdf" H 8700 3750 50  0001 C CNN
F 4 "MBR0540T3G" H 8700 3750 50  0001 C CNN "MPN"
F 5 "" H 8700 3750 50  0001 C CNN "Value Modifier"
	1    8700 3750
	-1   0    0    1   
$EndComp
$Comp
L Device:R R8
U 1 1 60654CEB
P 8950 3900
F 0 "R8" H 9020 3946 50  0000 L CNN
F 1 "576k" H 9020 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8880 3900 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 8950 3900 50  0001 C CNN
F 4 "RC0805FR-07576KL" H 8950 3900 50  0001 C CNN "MPN"
F 5 "1% 1/8W" H 8950 3900 50  0001 C CNN "Value Modifier"
	1    8950 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 606553D4
P 9200 4550
F 0 "R9" H 9270 4596 50  0000 L CNN
F 1 "31.6k" H 9270 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9130 4550 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 9200 4550 50  0001 C CNN
F 4 "RC0805FR-0731K6L" H 9200 4550 50  0001 C CNN "MPN"
F 5 "1% 1/8W" H 9200 4550 50  0001 C CNN "Value Modifier"
	1    9200 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 60655CF2
P 9450 3900
F 0 "R10" H 9520 3946 50  0000 L CNN
F 1 "274k" H 9520 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9380 3900 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 9450 3900 50  0001 C CNN
F 4 "RC0805FR-07274KL" H 9450 3900 50  0001 C CNN "MPN"
F 5 "1% 1/8W" H 9450 3900 50  0001 C CNN "Value Modifier"
	1    9450 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 4050 8950 4250
Wire Wire Line
	9450 4250 9450 4050
Wire Wire Line
	8150 3050 8500 3050
Connection ~ 8150 3050
Wire Wire Line
	8500 3350 8500 3750
Wire Wire Line
	8500 3750 8550 3750
Connection ~ 8500 3750
Wire Wire Line
	8850 3750 8950 3750
Wire Wire Line
	9450 3750 8950 3750
Connection ~ 8950 3750
$Comp
L power:GND #PWR026
U 1 1 606826C4
P 9200 4700
F 0 "#PWR026" H 9200 4450 50  0001 C CNN
F 1 "GND" H 9205 4527 50  0000 C CNN
F 2 "" H 9200 4700 50  0001 C CNN
F 3 "" H 9200 4700 50  0001 C CNN
	1    9200 4700
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_3_Bridged12 JP1
U 1 1 6065745E
P 9200 4250
F 0 "JP1" H 9200 4454 50  0000 C CNN
F 1 "Jumper_3_Bridged12" H 9200 4363 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9200 4250 50  0001 C CNN
F 3 "~" H 9200 4250 50  0001 C CNN
F 4 "2.54mm Pitch" H 9200 4250 50  0001 C CNN "Value Modifier"
F 5 "DNP" H 9200 4250 50  0001 C CNN "Population"
	1    9200 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 4400 8500 4400
Wire Wire Line
	8500 4400 8500 4000
Connection ~ 9200 4400
$Comp
L Device:CP C7
U 1 1 6068FFBC
P 10300 4050
F 0 "C7" H 10418 4096 50  0000 L CNN
F 1 "10µF" H 10418 4005 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-7343-31_Kemet-D_Pad2.25x2.55mm_HandSolder" H 10338 3900 50  0001 C CNN
F 3 "https://content.kemet.com/datasheets/KEM_T2009_T495.pdf" H 10300 4050 50  0001 C CNN
F 4 "T495D106K035ATE125" H 10300 4050 50  0001 C CNN "MPN"
F 5 "35V" H 10300 4050 50  0001 C CNN "Value Modifier"
F 6 "" H 10300 4050 50  0001 C CNN "Population"
	1    10300 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR033
U 1 1 6069091F
P 10300 4200
F 0 "#PWR033" H 10300 3950 50  0001 C CNN
F 1 "GND" H 10305 4027 50  0000 C CNN
F 2 "" H 10300 4200 50  0001 C CNN
F 3 "" H 10300 4200 50  0001 C CNN
	1    10300 4200
	1    0    0    -1  
$EndComp
$Comp
L power:+24V #PWR032
U 1 1 60691054
P 10300 3750
F 0 "#PWR032" H 10300 3600 50  0001 C CNN
F 1 "+24V" V 10315 3878 50  0000 L CNN
F 2 "" H 10300 3750 50  0001 C CNN
F 3 "" H 10300 3750 50  0001 C CNN
	1    10300 3750
	0    1    1    0   
$EndComp
$Comp
L power:PWR_FLAG #FLG04
U 1 1 60691D46
P 10300 3750
F 0 "#FLG04" H 10300 3825 50  0001 C CNN
F 1 "PWR_FLAG" H 10300 3923 50  0000 C CNN
F 2 "" H 10300 3750 50  0001 C CNN
F 3 "~" H 10300 3750 50  0001 C CNN
	1    10300 3750
	1    0    0    -1  
$EndComp
Connection ~ 10300 3750
Connection ~ 9450 3750
$Comp
L Device:C C6
U 1 1 6069C2A2
P 9800 4050
F 0 "C6" H 9915 4096 50  0000 L CNN
F 1 "150pF" H 9915 4005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 9838 3900 50  0001 C CNN
F 3 "https://content.kemet.com/datasheets/KEM_C1003_C0G_SMD.pdf" H 9800 4050 50  0001 C CNN
F 4 "C0805C151J5GACTU" H 9800 4050 50  0001 C CNN "MPN"
F 5 "50V C0G" H 9800 4050 50  0001 C CNN "Value Modifier"
	1    9800 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 4400 9200 4400
Wire Wire Line
	9450 3750 9800 3750
Wire Wire Line
	9800 3900 9800 3750
Wire Wire Line
	9800 4200 9800 4400
Wire Wire Line
	9800 3750 10300 3750
Connection ~ 9800 3750
Wire Wire Line
	10300 3750 10300 3900
Wire Wire Line
	6950 3050 7250 3050
Wire Wire Line
	6950 3050 6950 4000
Wire Wire Line
	6950 4000 7300 4000
Connection ~ 6950 3050
$Comp
L power:GND #PWR019
U 1 1 6064CF99
P 7300 4150
F 0 "#PWR019" H 7300 3900 50  0001 C CNN
F 1 "GND" V 7305 4022 50  0000 R CNN
F 2 "" H 7300 4150 50  0001 C CNN
F 3 "" H 7300 4150 50  0001 C CNN
	1    7300 4150
	0    1    1    0   
$EndComp
Text Notes 10700 4750 2    50   ~ 0
24V/12V Power Supply
Text Notes 10700 6250 2    50   ~ 0
3V3 Power Supply
Text Notes 8000 6200 2    50   ~ 0
Main Power Switch
$Comp
L Connector:Conn_01x03_Male J4
U 1 1 6059CCF1
P 10200 1250
F 0 "J4" H 10350 1600 50  0000 C CNN
F 1 "Conn_01x03_Male" H 10350 1500 50  0000 C CNN
F 2 "Connector_JST:JST_PH_B3B-PH-K_1x03_P2.00mm_Vertical" H 10200 1250 50  0001 C CNN
F 3 "~" H 10200 1250 50  0001 C CNN
F 4 "DNP" H 10200 1250 50  0001 C CNN "Population"
F 5 "2.00mm Pitch" H 10200 1250 50  0001 C CNN "Value Modifier"
	1    10200 1250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3550 4100 3450 4100
Text GLabel 3450 4100 0    50   BiDi ~ 0
SCL
$Comp
L power:+3V3 #PWR06
U 1 1 6079AD24
P 3850 4100
F 0 "#PWR06" H 3850 3950 50  0001 C CNN
F 1 "+3V3" V 3865 4228 50  0000 L CNN
F 2 "" H 3850 4100 50  0001 C CNN
F 3 "" H 3850 4100 50  0001 C CNN
	1    3850 4100
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 60798F84
P 3700 4100
F 0 "R6" V 3493 4100 50  0000 C CNN
F 1 "10k" V 3584 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3630 4100 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 3700 4100 50  0001 C CNN
F 4 "RC0805FR-0710KL" H 3700 4100 50  0001 C CNN "MPN"
F 5 "1% 1/8W" H 3700 4100 50  0001 C CNN "Value Modifier"
	1    3700 4100
	0    1    1    0   
$EndComp
$EndSCHEMATC