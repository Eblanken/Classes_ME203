EESchema Schematic File Version 4
LIBS:ME203_Project-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 7
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
L Connector_Generic:Conn_01x02 J5
U 1 1 5CAEF785
P 3900 3300
F 0 "J5" V 3866 3112 50  0000 R CNN
F 1 "Conn_01x02" V 3775 3112 50  0001 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 3900 3300 50  0001 C CNN
F 3 "~" H 3900 3300 50  0001 C CNN
	1    3900 3300
	-1   0    0    1   
$EndComp
$Comp
L SparkFun-PowerSymbols:GND #GND0107
U 1 1 5CAEF926
P 4200 3400
F 0 "#GND0107" H 4250 3350 45  0001 L BNN
F 1 "GND" H 4200 3231 45  0000 C CNN
F 2 "" H 4200 3300 60  0001 C CNN
F 3 "" H 4200 3300 60  0001 C CNN
	1    4200 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3200 4200 3200
Wire Wire Line
	4100 3300 4200 3300
Wire Wire Line
	4200 3300 4200 3400
Text HLabel 4050 4000 0    50   Output ~ 0
12V
Text HLabel 4050 4100 0    50   Output ~ 0
3V3
Text HLabel 4050 4200 0    50   BiDi ~ 0
GND
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 5CB00F03
P 3900 2450
F 0 "J4" V 3866 2262 50  0000 R CNN
F 1 "Conn_01x02" V 3775 2262 50  0001 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 3900 2450 50  0001 C CNN
F 3 "~" H 3900 2450 50  0001 C CNN
	1    3900 2450
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR0111
U 1 1 5CB00F10
P 4200 2250
F 0 "#PWR0111" H 4200 2100 50  0001 C CNN
F 1 "+12V" H 4215 2423 50  0000 C CNN
F 2 "" H 4200 2250 50  0001 C CNN
F 3 "" H 4200 2250 50  0001 C CNN
	1    4200 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2350 4200 2350
Wire Wire Line
	4200 2350 4200 2250
Wire Wire Line
	4100 2450 4200 2450
Wire Wire Line
	4200 2450 4200 3200
Text Notes 3000 3200 0    50   ~ 0
DC Barrel Jack Pads
Text Notes 3350 2350 0    50   ~ 0
Switch Pads
Wire Wire Line
	4050 4000 4150 4000
Wire Wire Line
	4150 4000 4150 3900
$Comp
L power:+12V #PWR0112
U 1 1 5CB02A26
P 4150 3900
F 0 "#PWR0112" H 4150 3750 50  0001 C CNN
F 1 "+12V" H 4165 4073 50  0000 C CNN
F 2 "" H 4150 3900 50  0001 C CNN
F 3 "" H 4150 3900 50  0001 C CNN
	1    4150 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4100 4400 3900
Wire Wire Line
	4050 4100 4400 4100
Wire Wire Line
	4050 4200 4150 4200
Wire Wire Line
	4150 4200 4150 4300
$Comp
L SparkFun-PowerSymbols:GND #GND0108
U 1 1 5CB03E0B
P 4150 4300
F 0 "#GND0108" H 4200 4250 45  0001 L BNN
F 1 "GND" H 4150 4131 45  0000 C CNN
F 2 "" H 4150 4200 60  0001 C CNN
F 3 "" H 4150 4200 60  0001 C CNN
	1    4150 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3000 5100 3000
Wire Wire Line
	5100 3000 5100 3200
Wire Wire Line
	5100 3200 5200 3200
$Comp
L power:+12V #PWR0113
U 1 1 5CB110C3
P 4500 2900
F 0 "#PWR0113" H 4500 2750 50  0001 C CNN
F 1 "+12V" H 4515 3073 50  0000 C CNN
F 2 "" H 4500 2900 50  0001 C CNN
F 3 "" H 4500 2900 50  0001 C CNN
	1    4500 2900
	1    0    0    -1  
$EndComp
Connection ~ 5100 3000
$Comp
L SparkFun-Capacitors:10UF-1210-50V-20% C7
U 1 1 5CB113DB
P 4500 3300
F 0 "C7" H 4608 3483 45  0000 L CNN
F 1 "10µF" H 4608 3399 45  0000 L CNN
F 2 "1206" H 4500 3550 20  0001 C CNN
F 3 "" H 4500 3300 50  0001 C CNN
F 4 "CAP-09824" H 4608 3266 60  0001 L CNN "Field4"
F 5 "1206" H 4608 3312 50  0000 L CNN "Size"
F 6 "50V" H 4608 3221 50  0000 L CNN "Potential"
	1    4500 3300
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-PowerSymbols:GND #GND0109
U 1 1 5CB1154F
P 4500 3400
F 0 "#GND0109" H 4550 3350 45  0001 L BNN
F 1 "GND" H 4500 3231 45  0000 C CNN
F 2 "" H 4500 3300 60  0001 C CNN
F 3 "" H 4500 3300 60  0001 C CNN
	1    4500 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3100 4500 3000
Wire Wire Line
	4500 3000 5100 3000
Connection ~ 4500 3000
Wire Wire Line
	4500 3000 4500 2900
Wire Wire Line
	6400 3000 6650 3000
$Comp
L power:+3V3 #PWR0114
U 1 1 5CB1267C
P 4400 3900
F 0 "#PWR0114" H 4400 3750 50  0001 C CNN
F 1 "+3V3" H 4415 4073 50  0000 C CNN
F 2 "" H 4400 3900 50  0001 C CNN
F 3 "" H 4400 3900 50  0001 C CNN
	1    4400 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 3000 7400 2900
$Comp
L power:+3V3 #PWR0115
U 1 1 5CB12BCD
P 7400 2900
F 0 "#PWR0115" H 7400 2750 50  0001 C CNN
F 1 "+3V3" H 7415 3073 50  0000 C CNN
F 2 "" H 7400 2900 50  0001 C CNN
F 3 "" H 7400 2900 50  0001 C CNN
	1    7400 2900
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Capacitors:22UF-0805-6.3V-20% C9
U 1 1 5CB12E44
P 7400 3200
F 0 "C9" H 7508 3337 45  0000 L CNN
F 1 "22µF" H 7508 3253 45  0000 L CNN
F 2 "0805" H 7400 3450 20  0001 C CNN
F 3 "" H 7400 3200 50  0001 C CNN
F 4 "CAP-08402" H 7508 3166 60  0001 L CNN "Field4"
F 5 "0805" H 7508 3166 50  0000 L CNN "Size"
	1    7400 3200
	1    0    0    -1  
$EndComp
Connection ~ 7400 3000
$Comp
L SparkFun-PowerSymbols:GND #GND0110
U 1 1 5CB13068
P 7400 3300
F 0 "#GND0110" H 7450 3250 45  0001 L BNN
F 1 "GND" H 7400 3131 45  0000 C CNN
F 2 "" H 7400 3200 60  0001 C CNN
F 3 "" H 7400 3200 60  0001 C CNN
	1    7400 3300
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Resistors:300KOHM-0603-1_10W-1% R22
U 1 1 5CB1396C
P 6650 3200
F 0 "R22" V 6608 3268 45  0000 L CNN
F 1 "300kΩ" V 6692 3268 45  0000 L CNN
F 2 "0805" H 6650 3350 20  0001 C CNN
F 3 "" H 6650 3200 60  0001 C CNN
F 4 "RES-10809" V 6734 3268 60  0001 L CNN "Field4"
F 5 "0805" V 6800 3350 50  0000 C CNN "Size"
	1    6650 3200
	0    1    1    0   
$EndComp
Connection ~ 6650 3000
$Comp
L SparkFun-Resistors:100KOHM-0603-1_10W-1% R23
U 1 1 5CB14F9F
P 6650 3600
F 0 "R23" V 6608 3668 45  0000 L CNN
F 1 "100KΩ" V 6692 3668 45  0000 L CNN
F 2 "0805" H 6650 3750 20  0001 C CNN
F 3 "" H 6650 3600 60  0001 C CNN
F 4 "RES-07828" V 6734 3668 60  0001 L CNN "Field4"
F 5 "0805" V 6800 3650 50  0000 L CNN "Size"
	1    6650 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	6650 3400 6500 3400
Connection ~ 6650 3400
$Comp
L SparkFun-PowerSymbols:GND #GND0111
U 1 1 5CB15664
P 6650 3800
F 0 "#GND0111" H 6700 3750 45  0001 L BNN
F 1 "GND" H 6650 3631 45  0000 C CNN
F 2 "" H 6650 3700 60  0001 C CNN
F 3 "" H 6650 3700 60  0001 C CNN
	1    6650 3800
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-PowerSymbols:GND #GND0112
U 1 1 5CB159C2
P 6400 3800
F 0 "#GND0112" H 6450 3750 45  0001 L BNN
F 1 "GND" H 6400 3631 45  0000 C CNN
F 2 "" H 6400 3700 60  0001 C CNN
F 3 "" H 6400 3700 60  0001 C CNN
	1    6400 3800
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Capacitors:3.3NF-0603-100V-10% C8
U 1 1 5CB160D2
P 4900 3600
F 0 "C8" H 5008 3737 45  0000 L CNN
F 1 "3.3nF" H 5008 3653 45  0000 L CNN
F 2 "0603" H 4900 3850 20  0001 C CNN
F 3 "" H 4900 3600 50  0001 C CNN
F 4 "CAP-09633" H 5008 3566 60  0001 L CNN "Field4"
F 5 "0603" H 5008 3566 50  0000 L CNN "Size"
	1    4900 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3300 4900 3300
Wire Wire Line
	4900 3300 4900 3400
$Comp
L SparkFun-PowerSymbols:GND #GND0113
U 1 1 5CB16DFA
P 4900 3700
F 0 "#GND0113" H 4950 3650 45  0001 L BNN
F 1 "GND" H 4900 3531 45  0000 C CNN
F 2 "" H 4900 3600 60  0001 C CNN
F 3 "" H 4900 3600 60  0001 C CNN
	1    4900 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3000 7400 3000
$Comp
L TPS82140SILR:TPS82140SILR U3
U 1 1 5CC472C9
P 5800 3300
F 0 "U3" H 5800 3967 50  0000 C CNN
F 1 "TPS82140SILR" H 5800 3876 50  0000 C CNN
F 2 "PSON65P280X300X153-9N" H 5800 3300 50  0001 L BNN
F 3 "TPS82140SILR" H 5800 3300 50  0001 L BNN
F 4 "Module Texas Instruments" H 5800 3300 50  0001 L BNN "Field4"
F 5 "None" H 5800 3300 50  0001 L BNN "Field5"
F 6 "17V Input 2A Synchronous Step-Down Converter MicroSiP™ Module With Integrated Inductor 8-uSiP -40 to 125" H 5800 3300 50  0001 L BNN "Field6"
F 7 "Texas Instruments" H 5800 3300 50  0001 L BNN "Field7"
F 8 "Unavailable" H 5800 3300 50  0001 L BNN "Field8"
	1    5800 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3400 6500 4350
Wire Wire Line
	6500 4350 5200 4350
Wire Wire Line
	5200 4350 5200 3400
Wire Wire Line
	6400 3600 6400 3700
Connection ~ 6400 3700
Wire Wire Line
	6400 3700 6400 3800
$EndSCHEMATC
