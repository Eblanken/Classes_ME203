EESchema Schematic File Version 4
LIBS:ME203_Project-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 7
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
L SparkFun-Capacitors:1.0UF-0603-16V-10% C?
U 1 1 5CCEF656
P 5850 3700
AR Path="/5CAA488B/5CCEF656" Ref="C?"  Part="1" 
AR Path="/5CCEB9C5/5CCEF656" Ref="C11"  Part="1" 
F 0 "C11" H 5950 3850 45  0000 L CNN
F 1 "1.0µF" H 5950 3750 45  0000 L CNN
F 2 "0805" H 5850 3950 20  0001 C CNN
F 3 "" H 5850 3700 50  0001 C CNN
F 4 "CAP-00868" H 5958 3708 60  0001 L CNN "Field4"
F 5 "0805" H 6050 3650 50  0000 C CNN "Size"
	1    5850 3700
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Pressure:BMP280 U5
U 1 1 5CCEF68F
P 5200 3900
F 0 "U5" H 5429 3996 50  0000 L CNN
F 1 "BMP280" H 5429 3905 50  0000 L CNN
F 2 "Package_LGA:Bosch_LGA-8_2x2.5mm_P0.65mm_ClockwisePinNumbering" H 5200 3200 50  0001 C CNN
F 3 "https://ae-bst.resource.bosch.com/media/_tech/media/datasheets/BST-BMP280-DS001-19.pdf" H 5200 3900 50  0001 C CNN
	1    5200 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3500 5300 3500
Connection ~ 5300 3500
Wire Wire Line
	5300 3500 5850 3500
$Comp
L power:+3.3V #PWR?
U 1 1 5CCEFAB3
P 5850 3400
AR Path="/5CCEFAB3" Ref="#PWR?"  Part="1" 
AR Path="/5CCEB9C5/5CCEFAB3" Ref="#PWR0125"  Part="1" 
F 0 "#PWR0125" H 5850 3250 50  0001 C CNN
F 1 "+3.3V" H 5865 3573 50  0000 C CNN
F 2 "" H 5850 3400 50  0001 C CNN
F 3 "" H 5850 3400 50  0001 C CNN
	1    5850 3400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5850 3500 5850 3400
Connection ~ 5850 3500
$Comp
L SparkFun-PowerSymbols:GND #GND?
U 1 1 5CCF2BFE
P 5850 3800
AR Path="/5CCF2BFE" Ref="#GND?"  Part="1" 
AR Path="/5CCEB9C5/5CCF2BFE" Ref="#GND0125"  Part="1" 
F 0 "#GND0125" H 5900 3750 45  0001 L BNN
F 1 "GND" H 5850 3631 45  0000 C CNN
F 2 "" H 5850 3700 60  0001 C CNN
F 3 "" H 5850 3700 60  0001 C CNN
	1    5850 3800
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-PowerSymbols:GND #GND?
U 1 1 5CCF2CB5
P 5300 4300
AR Path="/5CCF2CB5" Ref="#GND?"  Part="1" 
AR Path="/5CCEB9C5/5CCF2CB5" Ref="#GND0126"  Part="1" 
F 0 "#GND0126" H 5350 4250 45  0001 L BNN
F 1 "GND" H 5300 4131 45  0000 C CNN
F 2 "" H 5300 4200 60  0001 C CNN
F 3 "" H 5300 4200 60  0001 C CNN
	1    5300 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 4200 5300 4200
Wire Wire Line
	5300 4200 5300 4300
Connection ~ 5300 4200
Wire Wire Line
	4800 3700 4550 3700
Wire Wire Line
	4800 3800 4550 3800
Text HLabel 4550 3700 0    50   Input ~ 0
SCL
Text HLabel 4550 3800 0    50   Input ~ 0
SDA
NoConn ~ 4800 3900
NoConn ~ 4800 4000
$Comp
L SparkFun-PowerSymbols:GND #GND?
U 1 1 5CCF43BC
P 4650 4000
AR Path="/5CCF43BC" Ref="#GND?"  Part="1" 
AR Path="/5CCEB9C5/5CCF43BC" Ref="#GND0127"  Part="1" 
F 0 "#GND0127" H 4700 3950 45  0001 L BNN
F 1 "GND" H 4650 3831 45  0000 C CNN
F 2 "" H 4650 3900 60  0001 C CNN
F 3 "" H 4650 3900 60  0001 C CNN
	1    4650 4000
	1    0    0    -1  
$EndComp
Text HLabel 4550 3900 0    50   BiDi ~ 0
GND
Wire Wire Line
	4550 3900 4650 3900
Wire Wire Line
	4650 3900 4650 4000
$Comp
L power:+3.3V #PWR?
U 1 1 5CCF4A5F
P 4650 3500
AR Path="/5CCF4A5F" Ref="#PWR?"  Part="1" 
AR Path="/5CCEB9C5/5CCF4A5F" Ref="#PWR0126"  Part="1" 
F 0 "#PWR0126" H 4650 3350 50  0001 C CNN
F 1 "+3.3V" H 4665 3673 50  0000 C CNN
F 2 "" H 4650 3500 50  0001 C CNN
F 3 "" H 4650 3500 50  0001 C CNN
	1    4650 3500
	-1   0    0    -1  
$EndComp
Text HLabel 4550 3600 0    50   Input ~ 0
3V3
Wire Wire Line
	4550 3600 4650 3600
Wire Wire Line
	4650 3600 4650 3500
$EndSCHEMATC
