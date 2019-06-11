EESchema Schematic File Version 4
LIBS:ME203_Project-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 2600 2000 600  400 
U 5CA6DE17
F0 "Nixie_PSU" 50
F1 "Nixie_PSU.sch" 50
F2 "12V" I R 3200 2100 50 
F3 "180V" O L 2600 2100 50 
F4 "GND" B R 3200 2300 50 
$EndSheet
$Sheet
S 5900 3000 600  300 
U 5CAA488B
F0 "MCU_RTC" 50
F1 "MCU_RTC.sch" 50
F2 "SDA" B L 5900 3100 50 
F3 "SCL" B L 5900 3200 50 
F4 "GND" B R 6500 3200 50 
F5 "3V3" I R 6500 3100 50 
$EndSheet
Wire Wire Line
	3700 2950 3700 3050
Wire Wire Line
	6600 3000 6600 3100
Wire Wire Line
	6600 3100 6500 3100
$Comp
L SparkFun-PowerSymbols:GND #GND07
U 1 1 5CAB466D
P 3300 2400
F 0 "#GND07" H 3350 2350 45  0001 L BNN
F 1 "GND" H 3300 2231 45  0000 C CNN
F 2 "" H 3300 2300 60  0001 C CNN
F 3 "" H 3300 2300 60  0001 C CNN
	1    3300 2400
	-1   0    0    -1  
$EndComp
$Comp
L SparkFun-PowerSymbols:GND #GND08
U 1 1 5CAB4696
P 3700 4900
F 0 "#GND08" H 3750 4850 45  0001 L BNN
F 1 "GND" H 3700 4731 45  0000 C CNN
F 2 "" H 3700 4800 60  0001 C CNN
F 3 "" H 3700 4800 60  0001 C CNN
	1    3700 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 4750 3700 4900
Wire Wire Line
	6500 3200 6600 3200
Wire Wire Line
	6600 3200 6600 3300
Wire Wire Line
	3300 2100 3300 2050
Wire Wire Line
	3200 2100 3300 2100
$Comp
L power:+12V #PWR03
U 1 1 5CAAEB1F
P 3300 2050
F 0 "#PWR03" H 3300 1900 50  0001 C CNN
F 1 "+12V" H 3315 2223 50  0000 C CNN
F 2 "" H 3300 2050 50  0001 C CNN
F 3 "" H 3300 2050 50  0001 C CNN
	1    3300 2050
	-1   0    0    -1  
$EndComp
$Comp
L SparkFun-Resistors:RESISTOR0603 R4
U 1 1 5CAAF7AF
P 2450 2300
F 0 "R4" V 2300 2300 45  0000 L CNN
F 1 "RESISTOR0805" V 2439 2368 45  0001 L CNN
F 2 "0805" H 2450 2450 20  0001 C CNN
F 3 "" H 2450 2300 60  0001 C CNN
F 4 " " V 2492 2368 60  0000 L CNN "Field4"
	1    2450 2300
	0    -1   -1   0   
$EndComp
$Comp
L SparkFun-Resistors:RESISTOR0603 R6
U 1 1 5CAAF887
P 2150 2300
F 0 "R6" V 2000 2300 45  0000 L CNN
F 1 "RESISTOR0805" V 2139 2368 45  0001 L CNN
F 2 "0805" H 2150 2450 20  0001 C CNN
F 3 "" H 2150 2300 60  0001 C CNN
F 4 " " V 2192 2368 60  0000 L CNN "Field4"
	1    2150 2300
	0    -1   -1   0   
$EndComp
$Comp
L SparkFun-Resistors:RESISTOR0603 R8
U 1 1 5CAAF985
P 1850 2300
F 0 "R8" V 1700 2300 45  0000 L CNN
F 1 "RESISTOR0805" V 1839 2368 45  0001 L CNN
F 2 "0805" H 1850 2450 20  0001 C CNN
F 3 "" H 1850 2300 60  0001 C CNN
F 4 " " V 1892 2368 60  0000 L CNN "Field4"
	1    1850 2300
	0    -1   -1   0   
$EndComp
$Comp
L SparkFun-Resistors:RESISTOR0603 R10
U 1 1 5CAAFA55
P 1550 2300
F 0 "R10" V 1400 2300 45  0000 L CNN
F 1 "RESISTOR0805" V 1539 2368 45  0001 L CNN
F 2 "0805" H 1550 2450 20  0001 C CNN
F 3 "" H 1550 2300 60  0001 C CNN
F 4 " " V 1592 2368 60  0000 L CNN "Field4"
	1    1550 2300
	0    -1   -1   0   
$EndComp
$Comp
L SparkFun-Resistors:RESISTOR0603 R12
U 1 1 5CAAFC62
P 1250 2300
F 0 "R12" V 1100 2300 45  0000 L CNN
F 1 "RESISTOR0805" V 1239 2368 45  0001 L CNN
F 2 "0805" H 1250 2450 20  0001 C CNN
F 3 "" H 1250 2300 60  0001 C CNN
F 4 " " V 1292 2368 60  0000 L CNN "Field4"
	1    1250 2300
	0    -1   -1   0   
$EndComp
$Comp
L SparkFun-Resistors:RESISTOR0603 R14
U 1 1 5CAAFC6A
P 950 2300
F 0 "R14" V 800 2300 45  0000 L CNN
F 1 "RESISTOR0805" V 939 2368 45  0001 L CNN
F 2 "0805" H 950 2450 20  0001 C CNN
F 3 "" H 950 2300 60  0001 C CNN
F 4 " " V 992 2368 60  0000 L CNN "Field4"
	1    950  2300
	0    -1   -1   0   
$EndComp
$Comp
L SparkFun-Resistors:RESISTOR0603 R5
U 1 1 5CAB03C8
P 2300 2300
F 0 "R5" V 2150 2300 45  0000 L CNN
F 1 "RESISTOR0805" V 2289 2368 45  0001 L CNN
F 2 "0805" H 2300 2450 20  0001 C CNN
F 3 "" H 2300 2300 60  0001 C CNN
F 4 " " V 2342 2368 60  0000 L CNN "Field4"
	1    2300 2300
	0    -1   -1   0   
$EndComp
$Comp
L SparkFun-Resistors:RESISTOR0603 R7
U 1 1 5CAB03D0
P 2000 2300
F 0 "R7" V 1850 2300 45  0000 L CNN
F 1 "RESISTOR0805" V 1989 2368 45  0001 L CNN
F 2 "0805" H 2000 2450 20  0001 C CNN
F 3 "" H 2000 2300 60  0001 C CNN
F 4 " " V 2042 2368 60  0000 L CNN "Field4"
	1    2000 2300
	0    -1   -1   0   
$EndComp
$Comp
L SparkFun-Resistors:RESISTOR0603 R9
U 1 1 5CAB03D8
P 1700 2300
F 0 "R9" V 1550 2300 45  0000 L CNN
F 1 "RESISTOR0805" V 1689 2368 45  0001 L CNN
F 2 "0805" H 1700 2450 20  0001 C CNN
F 3 "" H 1700 2300 60  0001 C CNN
F 4 " " V 1742 2368 60  0000 L CNN "Field4"
	1    1700 2300
	0    -1   -1   0   
$EndComp
$Comp
L SparkFun-Resistors:RESISTOR0603 R11
U 1 1 5CAB03E0
P 1400 2300
F 0 "R11" V 1250 2300 45  0000 L CNN
F 1 "RESISTOR0805" V 1389 2368 45  0001 L CNN
F 2 "0805" H 1400 2450 20  0001 C CNN
F 3 "" H 1400 2300 60  0001 C CNN
F 4 " " V 1442 2368 60  0000 L CNN "Field4"
	1    1400 2300
	0    -1   -1   0   
$EndComp
$Comp
L SparkFun-Resistors:RESISTOR0603 R13
U 1 1 5CAB03E8
P 1100 2300
F 0 "R13" V 950 2300 45  0000 L CNN
F 1 "RESISTOR0805" V 1089 2368 45  0001 L CNN
F 2 "0805" H 1100 2450 20  0001 C CNN
F 3 "" H 1100 2300 60  0001 C CNN
F 4 " " V 1142 2368 60  0000 L CNN "Field4"
	1    1100 2300
	0    -1   -1   0   
$EndComp
$Comp
L SparkFun-Resistors:RESISTOR0603 R15
U 1 1 5CAB03F0
P 800 2300
F 0 "R15" V 650 2300 45  0000 L CNN
F 1 "RESISTOR0805" V 789 2368 45  0001 L CNN
F 2 "0805" H 800 2450 20  0001 C CNN
F 3 "" H 800 2300 60  0001 C CNN
F 4 " " V 842 2368 60  0000 L CNN "Field4"
	1    800  2300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2600 2100 2450 2100
$Sheet
S 6250 4100 550  800 
U 5CAB0187
F0 "Nixie_Interface" 50
F1 "Nixie_Interface.sch" 50
F2 "CLK" I L 6250 4400 50 
F3 "~BL" I L 6250 4500 50 
F4 "~LE" I L 6250 4600 50 
F5 "DIN" I L 6250 4700 50 
F6 "12V" I L 6250 4200 50 
F7 "GND" B L 6250 4800 50 
F8 "3V3" I L 6250 4300 50 
$EndSheet
Wire Wire Line
	3850 4750 3700 4750
$Comp
L SparkFun-PowerSymbols:GND #GND0101
U 1 1 5CAE7692
P 5950 4850
F 0 "#GND0101" H 6000 4800 45  0001 L BNN
F 1 "GND" H 5950 4681 45  0000 C CNN
F 2 "" H 5950 4750 60  0001 C CNN
F 3 "" H 5950 4750 60  0001 C CNN
	1    5950 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4850 5950 4800
Wire Wire Line
	5950 4800 6250 4800
$Comp
L power:+12V #PWR0101
U 1 1 5CAEA89E
P 5950 4150
F 0 "#PWR0101" H 5950 4000 50  0001 C CNN
F 1 "+12V" H 5965 4323 50  0000 C CNN
F 2 "" H 5950 4150 50  0001 C CNN
F 3 "" H 5950 4150 50  0001 C CNN
	1    5950 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 4200 5950 4200
Wire Wire Line
	5950 4200 5950 4150
Wire Wire Line
	5750 4300 6250 4300
$Sheet
S 4400 6000 550  400 
U 5CAEF0C6
F0 "Main_Supply" 50
F1 "Main_Supply.sch" 50
F2 "12V" O L 4400 6100 50 
F3 "3V3" O L 4400 6200 50 
F4 "GND" B L 4400 6300 50 
$EndSheet
$Comp
L power:+3.3V #PWR0102
U 1 1 5CAEEE29
P 3700 2950
F 0 "#PWR0102" H 3700 2800 50  0001 C CNN
F 1 "+3.3V" H 3715 3123 50  0000 C CNN
F 2 "" H 3700 2950 50  0001 C CNN
F 3 "" H 3700 2950 50  0001 C CNN
	1    3700 2950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0103
U 1 1 5CAF6E42
P 6600 3000
F 0 "#PWR0103" H 6600 2850 50  0001 C CNN
F 1 "+3.3V" H 6615 3173 50  0000 C CNN
F 2 "" H 6600 3000 50  0001 C CNN
F 3 "" H 6600 3000 50  0001 C CNN
	1    6600 3000
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0104
U 1 1 5CAFD1ED
P 5750 4150
F 0 "#PWR0104" H 5750 4000 50  0001 C CNN
F 1 "+3.3V" H 5765 4323 50  0000 C CNN
F 2 "" H 5750 4150 50  0001 C CNN
F 3 "" H 5750 4150 50  0001 C CNN
	1    5750 4150
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-PowerSymbols:GND #GND0102
U 1 1 5CB04EBE
P 4250 6400
F 0 "#GND0102" H 4300 6350 45  0001 L BNN
F 1 "GND" H 4250 6231 45  0000 C CNN
F 2 "" H 4250 6300 60  0001 C CNN
F 3 "" H 4250 6300 60  0001 C CNN
	1    4250 6400
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0105
U 1 1 5CB0510C
P 4000 6000
F 0 "#PWR0105" H 4000 5850 50  0001 C CNN
F 1 "+3V3" H 4015 6173 50  0000 C CNN
F 2 "" H 4000 6000 50  0001 C CNN
F 3 "" H 4000 6000 50  0001 C CNN
	1    4000 6000
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0106
U 1 1 5CB053CA
P 4250 6000
F 0 "#PWR0106" H 4250 5850 50  0001 C CNN
F 1 "+12V" H 4265 6173 50  0000 C CNN
F 2 "" H 4250 6000 50  0001 C CNN
F 3 "" H 4250 6000 50  0001 C CNN
	1    4250 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 6100 4250 6100
Wire Wire Line
	4250 6100 4250 6000
Wire Wire Line
	4400 6200 4000 6200
Wire Wire Line
	4000 6200 4000 6000
Wire Wire Line
	4400 6300 4250 6300
Wire Wire Line
	4250 6300 4250 6400
Wire Wire Line
	5200 3100 5500 3100
Wire Wire Line
	5200 3200 5600 3200
Wire Wire Line
	5300 3400 5200 3400
Wire Wire Line
	5300 3500 5200 3500
Wire Wire Line
	5300 3600 5200 3600
Wire Wire Line
	5300 3700 5200 3700
Wire Wire Line
	5300 3800 5200 3800
Wire Wire Line
	5750 4300 5750 4150
$Comp
L Connector_Generic:Conn_01x12 J1
U 1 1 5CB3BFC0
P 1650 3400
F 0 "J1" V 1867 3346 50  0000 C CNN
F 1 "Conn_01x12" V 1776 3346 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x06_P2.54mm_Vertical" H 1650 3400 50  0001 C CNN
F 3 "~" H 1650 3400 50  0001 C CNN
	1    1650 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	1650 3200 1650 2500
Wire Wire Line
	1650 2500 1700 2500
Wire Wire Line
	1550 3200 1550 2500
Wire Wire Line
	1850 2500 1850 2600
Wire Wire Line
	1850 2600 1750 2600
Wire Wire Line
	1750 2600 1750 3200
Wire Wire Line
	2000 2500 2000 2700
Wire Wire Line
	2000 2700 1850 2700
Wire Wire Line
	1850 2700 1850 3200
Wire Wire Line
	2150 2500 2150 2800
Wire Wire Line
	2150 2800 1950 2800
Wire Wire Line
	1950 2800 1950 3200
Wire Wire Line
	2300 2500 2300 2900
Wire Wire Line
	2300 2900 2050 2900
Wire Wire Line
	2050 2900 2050 3200
Wire Wire Line
	2450 2500 2450 3000
Wire Wire Line
	2450 3000 2150 3000
Wire Wire Line
	2150 3000 2150 3200
Wire Wire Line
	1400 2500 1450 2500
Wire Wire Line
	1450 2500 1450 3200
Wire Wire Line
	1250 2500 1250 2600
Wire Wire Line
	1250 2600 1350 2600
Wire Wire Line
	1350 2600 1350 3200
Wire Wire Line
	1100 2500 1100 2700
Wire Wire Line
	1100 2700 1250 2700
Wire Wire Line
	1250 2700 1250 3200
Wire Wire Line
	950  2500 950  2800
Wire Wire Line
	950  2800 1150 2800
Wire Wire Line
	1150 2800 1150 3200
Wire Wire Line
	800  2500 800  2900
Wire Wire Line
	800  2900 1050 2900
Wire Wire Line
	1050 2900 1050 3200
Wire Wire Line
	800  2100 950  2100
Connection ~ 2450 2100
Connection ~ 2300 2100
Wire Wire Line
	2300 2100 2450 2100
Connection ~ 2150 2100
Wire Wire Line
	2150 2100 2300 2100
Connection ~ 2000 2100
Wire Wire Line
	2000 2100 2150 2100
Connection ~ 1850 2100
Wire Wire Line
	1850 2100 2000 2100
Connection ~ 1700 2100
Wire Wire Line
	1700 2100 1850 2100
Connection ~ 1550 2100
Wire Wire Line
	1550 2100 1700 2100
Connection ~ 1400 2100
Wire Wire Line
	1400 2100 1550 2100
Connection ~ 1250 2100
Wire Wire Line
	1250 2100 1400 2100
Connection ~ 1100 2100
Wire Wire Line
	1100 2100 1250 2100
Connection ~ 950  2100
Wire Wire Line
	950  2100 1100 2100
$Comp
L SparkFun-Hardware:STAND-OFF H1
U 1 1 5CBD7A95
P 5050 1800
F 0 "H1" H 5050 1900 45  0001 C CNN
F 1 "STAND-OFF" H 5050 1700 45  0001 C CNN
F 2 "STAND-OFF" H 5128 1800 20  0000 L CNN
F 3 "" H 5050 1800 50  0001 C CNN
F 4 "XXX-00000" H 5128 1800 60  0001 L CNN "Field4"
	1    5050 1800
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Hardware:STAND-OFF H2
U 1 1 5CBDDAF1
P 5050 1950
F 0 "H2" H 5050 2050 45  0001 C CNN
F 1 "STAND-OFF" H 5050 1850 45  0001 C CNN
F 2 "STAND-OFF" H 5128 1950 20  0000 L CNN
F 3 "" H 5050 1950 50  0001 C CNN
F 4 "XXX-00000" H 5128 1950 60  0001 L CNN "Field4"
	1    5050 1950
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Hardware:STAND-OFF H3
U 1 1 5CBDFF62
P 5050 2100
F 0 "H3" H 5050 2200 45  0001 C CNN
F 1 "STAND-OFF" H 5050 2000 45  0001 C CNN
F 2 "STAND-OFF" H 5128 2100 20  0000 L CNN
F 3 "" H 5050 2100 50  0001 C CNN
F 4 "XXX-00000" H 5128 2100 60  0001 L CNN "Field4"
	1    5050 2100
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Hardware:STAND-OFF H4
U 1 1 5CB5AAF2
P 5050 2250
F 0 "H4" H 5050 2350 45  0001 C CNN
F 1 "STAND-OFF" H 5050 2150 45  0001 C CNN
F 2 "STAND-OFF" H 5128 2250 20  0000 L CNN
F 3 "" H 5050 2250 50  0001 C CNN
F 4 "XXX-00000" H 5128 2250 60  0001 L CNN "Field4"
	1    5050 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 4350 3550 4350
Wire Wire Line
	3850 4250 3550 4250
Wire Wire Line
	3850 4150 3550 4150
Wire Wire Line
	3850 4050 3550 4050
Wire Wire Line
	3850 3950 3550 3950
Wire Wire Line
	3850 3050 3700 3050
Wire Wire Line
	3200 2300 3300 2300
Wire Wire Line
	3300 2300 3300 2400
$Comp
L Connector_Generic:Conn_01x05 J2
U 1 1 5CC52252
P 5500 3600
F 0 "J2" H 5580 3642 50  0000 L CNN
F 1 "Conn_01x05" H 5580 3551 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 5500 3600 50  0001 C CNN
F 3 "~" H 5500 3600 50  0001 C CNN
	1    5500 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x07 J6
U 1 1 5CC68A12
P 3350 4050
F 0 "J6" H 3350 4450 50  0000 C CNN
F 1 "Conn_01x07" H 3270 3616 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x07_P2.54mm_Vertical" H 3350 4050 50  0001 C CNN
F 3 "~" H 3350 4050 50  0001 C CNN
	1    3350 4050
	-1   0    0    -1  
$EndComp
$Comp
L SparkFun-Resistors:10KOHM-0603-1_10W-1% R?
U 1 1 5CC7B7B6
P 3350 4800
AR Path="/5CAA488B/5CC7B7B6" Ref="R?"  Part="1" 
AR Path="/5CC7B7B6" Ref="R17"  Part="1" 
F 0 "R17" V 3250 4850 45  0000 L CNN
F 1 "10KΩ" V 3350 4850 45  0000 L CNN
F 2 "0805" H 3350 4950 20  0001 C CNN
F 3 "" H 3350 4800 60  0001 C CNN
F 4 "RES-00824" V 3392 4868 60  0001 L CNN "Field4"
F 5 "0805" V 3450 4850 50  0000 L CNN "Size"
	1    3350 4800
	0    1    1    0   
$EndComp
$Comp
L SparkFun-LED:LED-GREEN0603 D3
U 1 1 5CC81145
P 3350 5200
F 0 "D3" H 3427 5192 45  0000 L CNN
F 1 "LED-GREEN" H 3427 5108 45  0000 L CNN
F 2 "LED-0603" V 3150 5200 20  0001 C CNN
F 3 "" H 3350 5200 50  0001 C CNN
F 4 "DIO-00821" H 3427 5066 60  0001 L CNN "Field4"
	1    3350 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 5000 3350 5100
$Comp
L SparkFun-PowerSymbols:GND #GND0121
U 1 1 5CC956D5
P 3350 5400
F 0 "#GND0121" H 3400 5350 45  0001 L BNN
F 1 "GND" H 3350 5231 45  0000 C CNN
F 2 "" H 3350 5300 60  0001 C CNN
F 3 "" H 3350 5300 60  0001 C CNN
	1    3350 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 4500 3350 4600
Wire Wire Line
	3350 4500 3850 4500
Wire Wire Line
	6250 4400 5200 4400
Wire Wire Line
	6250 4500 5200 4500
Wire Wire Line
	6250 4600 5200 4600
Wire Wire Line
	6250 4700 5200 4700
$Comp
L SparkFun-Resistors:10KOHM-0603-1_10W-1% R?
U 1 1 5CCD3424
P 2800 4800
AR Path="/5CAA488B/5CCD3424" Ref="R?"  Part="1" 
AR Path="/5CCD3424" Ref="R16"  Part="1" 
F 0 "R16" V 2700 4850 45  0000 L CNN
F 1 "10KΩ" V 2800 4850 45  0000 L CNN
F 2 "0805" H 2800 4950 20  0001 C CNN
F 3 "" H 2800 4800 60  0001 C CNN
F 4 "RES-00824" V 2842 4868 60  0001 L CNN "Field4"
F 5 "0805" V 2900 4850 50  0000 L CNN "Size"
	1    2800 4800
	0    1    1    0   
$EndComp
$Comp
L SparkFun-LED:LED-GREEN0603 D2
U 1 1 5CCD342C
P 2800 5200
F 0 "D2" H 2878 5192 45  0000 L CNN
F 1 "LED-RED" H 2878 5108 45  0000 L CNN
F 2 "LED-0603" V 2600 5200 20  0001 C CNN
F 3 "" H 2800 5200 50  0001 C CNN
F 4 "DIO-00821" H 2877 5066 60  0001 L CNN "Field4"
	1    2800 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 5000 2800 5100
$Comp
L SparkFun-PowerSymbols:GND #GND0122
U 1 1 5CCD3434
P 2800 5400
F 0 "#GND0122" H 2850 5350 45  0001 L BNN
F 1 "GND" H 2800 5231 45  0000 C CNN
F 2 "" H 2800 5300 60  0001 C CNN
F 3 "" H 2800 5300 60  0001 C CNN
	1    2800 5400
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0121
U 1 1 5CCDB5C5
P 2800 4500
F 0 "#PWR0121" H 2800 4350 50  0001 C CNN
F 1 "+3V3" H 2815 4673 50  0000 C CNN
F 2 "" H 2800 4500 50  0001 C CNN
F 3 "" H 2800 4500 50  0001 C CNN
	1    2800 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 4500 2800 4600
$Comp
L SparkFun-PowerSymbols:GND #GND0123
U 1 1 5CCF0135
P 6600 3300
F 0 "#GND0123" H 6650 3250 45  0001 L BNN
F 1 "GND" H 6600 3131 45  0000 C CNN
F 2 "" H 6600 3200 60  0001 C CNN
F 3 "" H 6600 3200 60  0001 C CNN
	1    6600 3300
	1    0    0    -1  
$EndComp
Connection ~ 5500 3100
Wire Wire Line
	5500 3100 5900 3100
Connection ~ 5600 3200
Wire Wire Line
	5600 3200 5900 3200
Text Notes 4450 3950 0    50   ~ 0
Can interfere \nwith boot if pull \ndown affected
$Sheet
S 5850 1300 650  500 
U 5CC63367
F0 "MCU_Audio" 50
F1 "MCU_Audio.sch" 50
F2 "SCL" I L 5850 1700 50 
F3 "SDA" I L 5850 1600 50 
F4 "R" I L 5850 1500 50 
F5 "L" I L 5850 1400 50 
F6 "GND" B R 6500 1700 50 
F7 "3V3" I R 6500 1400 50 
$EndSheet
Wire Wire Line
	5600 1700 5850 1700
Wire Wire Line
	5850 1600 5500 1600
$Comp
L SparkFun-PowerSymbols:GND #GND0128
U 1 1 5CD3095F
P 6600 1800
F 0 "#GND0128" H 6650 1750 45  0001 L BNN
F 1 "GND" H 6600 1631 45  0000 C CNN
F 2 "" H 6600 1700 60  0001 C CNN
F 3 "" H 6600 1700 60  0001 C CNN
	1    6600 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 1700 6600 1700
Wire Wire Line
	6600 1700 6600 1800
$Comp
L power:+3.3V #PWR0127
U 1 1 5CD3729B
P 6600 1300
F 0 "#PWR0127" H 6600 1150 50  0001 C CNN
F 1 "+3.3V" H 6615 1473 50  0000 C CNN
F 2 "" H 6600 1300 50  0001 C CNN
F 3 "" H 6600 1300 50  0001 C CNN
	1    6600 1300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6500 1400 6600 1400
Wire Wire Line
	6600 1400 6600 1300
Wire Wire Line
	3750 3750 3750 3500
Wire Wire Line
	3650 3850 3650 3500
Text Label 3650 3500 3    50   ~ 0
DAC1
Text Label 3750 3500 3    50   ~ 0
DAC2
Connection ~ 3650 3850
Connection ~ 3750 3750
Wire Wire Line
	3750 3750 3550 3750
Wire Wire Line
	3850 3750 3750 3750
Wire Wire Line
	3650 3850 3550 3850
Wire Wire Line
	3850 3850 3650 3850
Wire Wire Line
	5850 1500 5500 1500
Text Label 5500 1500 0    50   ~ 0
DAC1
Text Label 5500 1400 0    50   ~ 0
DAC2
Wire Wire Line
	5500 1400 5850 1400
$Sheet
S 3850 2950 1350 1900
U 5CAEE30A
F0 "ESP32" 50
F1 "ESP32Core.sch" 50
F2 "A4-D36" B L 3850 4350 50 
F3 "A3-D39" B L 3850 4250 50 
F4 "A2-D34" B L 3850 4150 50 
F5 "A13-D35" B L 3850 4050 50 
F6 "A1-DAC1" B L 3850 3850 50 
F7 "A0-DAC2" B L 3850 3750 50 
F8 "SDA-D23" B R 5200 3100 50 
F9 "SCL-D22" B R 5200 3200 50 
F10 "D21" B R 5200 4400 50 
F11 "MISO-D19" B R 5200 3400 50 
F12 "MOSI-D18" B R 5200 3500 50 
F13 "SCK-D5" B R 5200 3600 50 
F14 "A12-D13" B L 3850 4500 50 
F15 "A8-D15" B R 5200 4600 50 
F16 "GND" B L 3850 4750 50 
F17 "3V3" I L 3850 3050 50 
F18 "TX" B R 5200 3700 50 
F19 "RX" B R 5200 3800 50 
F20 "A7-T9-D32" B L 3850 3150 50 
F21 "A9-T8-D33" B L 3850 3950 50 
F22 "A6-T6-D14" B R 5200 4700 50 
F23 "A11-T5-D12" B R 5200 4000 50 
F24 "A5-T0-D4" B R 5200 4500 50 
$EndSheet
$Comp
L Connector_Generic:Conn_01x01 J10
U 1 1 5CD860AB
P 3350 3150
F 0 "J10" H 3270 3017 50  0000 C CNN
F 1 "Conn_01x01" H 3270 3016 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 3350 3150 50  0001 C CNN
F 3 "~" H 3350 3150 50  0001 C CNN
	1    3350 3150
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J12
U 1 1 5CDA279A
P 5500 4000
F 0 "J12" H 5580 3996 50  0000 L CNN
F 1 "Conn_01x01" H 5420 3866 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 5500 4000 50  0001 C CNN
F 3 "~" H 5500 4000 50  0001 C CNN
	1    5500 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 4000 5200 4000
Wire Wire Line
	3550 3150 3850 3150
$Comp
L power:+3V3 #PWR0137
U 1 1 5CDFE14D
P 3100 6000
F 0 "#PWR0137" H 3100 5850 50  0001 C CNN
F 1 "+3V3" H 3115 6173 50  0000 C CNN
F 2 "" H 3100 6000 50  0001 C CNN
F 3 "" H 3100 6000 50  0001 C CNN
	1    3100 6000
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-PowerSymbols:GND #GND0137
U 1 1 5CE021F7
P 3100 6750
F 0 "#GND0137" H 3150 6700 45  0001 L BNN
F 1 "GND" H 3100 6581 45  0000 C CNN
F 2 "" H 3100 6650 60  0001 C CNN
F 3 "" H 3100 6650 60  0001 C CNN
	1    3100 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 6000 3100 6050
Wire Wire Line
	3200 6150 3100 6150
Wire Wire Line
	3200 6050 3100 6050
Connection ~ 3100 6050
Wire Wire Line
	3100 6050 3100 6150
Connection ~ 3100 6650
Wire Wire Line
	3100 6650 3100 6750
Wire Wire Line
	3100 6650 3200 6650
Wire Wire Line
	3200 6550 3100 6550
Wire Wire Line
	3100 6550 3100 6650
$Comp
L Connector_Generic:Conn_01x02 J11
U 1 1 5CE56A33
P 3400 6050
F 0 "J11" H 3480 5996 50  0000 L CNN
F 1 "Conn_01x02" H 3480 5951 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3400 6050 50  0001 C CNN
F 3 "~" H 3400 6050 50  0001 C CNN
	1    3400 6050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J13
U 1 1 5CE56F23
P 3400 6550
F 0 "J13" H 3480 6496 50  0000 L CNN
F 1 "Conn_01x02" H 3480 6451 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3400 6550 50  0001 C CNN
F 3 "~" H 3400 6550 50  0001 C CNN
	1    3400 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 1600 5500 3100
Wire Wire Line
	5600 1700 5600 3200
$EndSCHEMATC