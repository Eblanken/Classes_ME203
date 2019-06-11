EESchema Schematic File Version 4
LIBS:ME203_Project-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 7
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
L SparkFun-Clocks:DS3231M RTC1
U 1 1 5CAA48F3
P 6050 3800
F 0 "RTC1" H 6050 4254 45  0000 C CNN
F 1 "DS3231M" H 6050 4170 45  0000 C CNN
F 2 "SO08" H 6050 4250 20  0001 C CNN
F 3 "" H 6050 3800 50  0001 C CNN
F 4 "IC-11985" H 6050 4181 60  0001 C CNN "Field4"
F 5 "DS3231MZ+-ND" H 6050 3800 50  0001 C CNN "Digikey"
	1    6050 3800
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-PowerSymbols:GND #GND014
U 1 1 5CAA518C
P 6900 4300
F 0 "#GND014" H 6950 4250 45  0001 L BNN
F 1 "GND" H 6900 4131 45  0000 C CNN
F 2 "" H 6900 4200 60  0001 C CNN
F 3 "" H 6900 4200 60  0001 C CNN
	1    6900 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 4300 6900 4250
Wire Wire Line
	6650 3900 6650 4250
Wire Wire Line
	6900 4250 6900 4200
Connection ~ 6900 4250
Text HLabel 6950 3700 2    50   BiDi ~ 0
SDA
Text HLabel 6950 3600 2    50   BiDi ~ 0
SCL
Wire Wire Line
	5200 3550 5200 3700
Text HLabel 5100 3700 0    50   Input ~ 0
3V3
Wire Wire Line
	5200 3700 5100 3700
Connection ~ 5200 3700
$Comp
L SparkFun-PowerSymbols:GND #GND013
U 1 1 5CAB25CF
P 5200 4100
F 0 "#GND013" H 5250 4050 45  0001 L BNN
F 1 "GND" H 5200 3931 45  0000 C CNN
F 2 "" H 5200 4000 60  0001 C CNN
F 3 "" H 5200 4000 60  0001 C CNN
	1    5200 4100
	1    0    0    -1  
$EndComp
Text HLabel 5100 4000 0    50   BiDi ~ 0
GND
Wire Wire Line
	5100 4000 5200 4000
Wire Wire Line
	5200 4000 5200 4100
Text Notes 3450 1050 0    50   ~ 0
Shamelessly copied from the Adafruit Chronodot: https://www.digikey.com/catalog/en/partgroup/chronodot-ultra-precise-real-time-clock-v2-1/67868?utm_adgroup=Programmers%20Dev&slid=&gclid=EAIaIQobChMI-LqNkLm84QIVIB-tBh1t-whREAAYASAAEgL9hPD_BwE
$Comp
L SparkFun-Capacitors:1.0UF-0603-16V-10% C6
U 1 1 5CAB4BE9
P 5200 3900
F 0 "C6" H 5300 4050 45  0000 L CNN
F 1 "1.0µF" H 5308 3961 45  0000 L CNN
F 2 "0805" H 5200 4150 20  0001 C CNN
F 3 "" H 5200 3900 50  0001 C CNN
F 4 "CAP-00868" H 5308 3908 60  0001 L CNN "Field4"
F 5 "0805" H 5400 3850 50  0000 C CNN "Size"
	1    5200 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3700 5550 3700
Connection ~ 5200 4000
Wire Wire Line
	6550 3800 6900 3800
Wire Wire Line
	6900 4250 6650 4250
Wire Wire Line
	6650 3900 6550 3900
Text Label 6600 3800 0    50   ~ 0
VBAT
$Comp
L power:+3.3V #PWR?
U 1 1 5CCEF295
P 5200 3550
AR Path="/5CCEF295" Ref="#PWR?"  Part="1" 
AR Path="/5CAA488B/5CCEF295" Ref="#PWR0123"  Part="1" 
F 0 "#PWR0123" H 5200 3400 50  0001 C CNN
F 1 "+3.3V" H 5215 3723 50  0000 C CNN
F 2 "" H 5200 3550 50  0001 C CNN
F 3 "" H 5200 3550 50  0001 C CNN
	1    5200 3550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6550 3600 6950 3600
Wire Wire Line
	6550 3700 6950 3700
$Comp
L SparkFun-Batteries:BATTERY-20MM_SMD_4LEGS BT1
U 1 1 5CB9110A
P 6900 4000
F 0 "BT1" V 6805 4178 45  0000 L CNN
F 1 "BATTERY-20MM_SMD_4LEGS" V 6889 4178 45  0000 L CNN
F 2 "BATTCON_20MM_4LEGS" H 6900 4250 20  0001 C CNN
F 3 "" H 6900 4000 50  0001 C CNN
F 4 "BATT-10373" V 6984 4178 60  0000 L CNN "Field4"
	1    6900 4000
	0    1    1    0   
$EndComp
Text Notes 7550 4200 2    50   ~ 0
Use CR2016
$EndSCHEMATC
