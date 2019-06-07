EESchema Schematic File Version 4
LIBS:ME203_Project-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 8
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
L nixiemisc:LM3478SOIC8 U1
U 1 1 5CAA4E3D
P 5350 4050
F 0 "U1" H 4850 4500 45  0000 C CNN
F 1 "LM3478SOIC8" H 5050 4400 45  0000 C CNN
F 2 "nixiemisc-SOIC8" H 5380 4200 20  0001 C CNN
F 3 "" H 5350 4050 50  0001 C CNN
F 4 "296-38111-1-ND" H 5350 4050 50  0001 C CNN "Digikey"
	1    5350 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 4650 5050 4750
Wire Wire Line
	5050 4750 5200 4750
Wire Wire Line
	5350 4750 5350 4650
$Comp
L SparkFun-PowerSymbols:GND #GND03
U 1 1 5CAA4F97
P 5200 4750
F 0 "#GND03" H 5250 4700 45  0001 L BNN
F 1 "GND" H 5200 4581 45  0000 C CNN
F 2 "" H 5200 4650 60  0001 C CNN
F 3 "" H 5200 4650 60  0001 C CNN
	1    5200 4750
	1    0    0    -1  
$EndComp
Connection ~ 5200 4750
Wire Wire Line
	5200 4750 5350 4750
$Comp
L SparkFun-Capacitors:22NF_22_000PF-0603-50V-10% CC1
U 1 1 5CAA50AE
P 4550 4450
F 0 "CC1" H 4658 4587 45  0000 L CNN
F 1 "22nF" H 4658 4503 45  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4550 4700 20  0001 C CNN
F 3 "" H 4550 4450 50  0001 C CNN
F 4 "732-7935-1-ND" H 4658 4458 60  0001 L CNN "Digikey"
F 5 "0603" H 4658 4416 50  0000 L CNN "Size"
	1    4550 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4250 4550 4150
Wire Wire Line
	4550 4150 4650 4150
$Comp
L SparkFun-Resistors:4.7KOHM-0603-1_10W-1% RC1
U 1 1 5CAA53A1
P 4550 4850
F 0 "RC1" V 4463 4918 45  0000 L CNN
F 1 "4.7KΩ" V 4547 4918 45  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4550 5000 20  0001 C CNN
F 3 "" H 4550 4850 60  0001 C CNN
F 4 "RMCF0805FT4K70CT-ND" V 4634 4918 60  0001 L CNN "Digikey"
F 5 "0603" V 4634 4918 50  0000 L CNN "Size"
	1    4550 4850
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 4650 4550 4550
$Comp
L SparkFun-PowerSymbols:GND #GND02
U 1 1 5CAA5586
P 4550 5150
F 0 "#GND02" H 4600 5100 45  0001 L BNN
F 1 "GND" H 4550 4981 45  0000 C CNN
F 2 "" H 4550 5050 60  0001 C CNN
F 3 "" H 4550 5050 60  0001 C CNN
	1    4550 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 5150 4550 5050
$Comp
L SparkFun-Resistors:47KOHM-0603-1_10W-1% RF1
U 1 1 5CAA5888
P 4350 3950
F 0 "RF1" H 4350 4250 45  0000 C CNN
F 1 "47KΩ" H 4350 4166 45  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4350 4100 20  0001 C CNN
F 3 "" H 4350 3950 60  0001 C CNN
F 4 "0805" H 4350 4071 60  0000 C CNN "Size"
F 5 "RMCF0805FT47K0CT-ND" H 4350 3950 50  0001 C CNN "Digikey"
	1    4350 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 3950 4650 3950
$Comp
L SparkFun-Capacitors:10UF-1210-50V-20% C1
U 1 1 5CAA62B0
P 3800 3800
F 0 "C1" H 3908 3937 45  0000 L CNN
F 1 "100µF" H 3908 3853 45  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 3800 4050 20  0001 C CNN
F 3 "" H 3800 3800 50  0001 C CNN
F 4 "311-2052-1-ND" H 3800 3800 50  0001 C CNN "Digikey"
F 5 "1210" H 3908 3766 50  0000 L CNN "Size"
	1    3800 3800
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-PowerSymbols:GND #GND01
U 1 1 5CAA66EF
P 3800 4000
F 0 "#GND01" H 3850 3950 45  0001 L BNN
F 1 "GND" H 3800 3831 45  0000 C CNN
F 2 "" H 3800 3900 60  0001 C CNN
F 3 "" H 3800 3900 60  0001 C CNN
	1    3800 4000
	1    0    0    -1  
$EndComp
Text HLabel 3650 3550 0    50   Input ~ 0
12V
Wire Wire Line
	3650 3550 3800 3550
Wire Wire Line
	3800 3600 3800 3550
Connection ~ 3800 3550
Wire Wire Line
	3800 3550 5350 3550
$Comp
L nixiemisc:N-MOSFET-SO8S Q1
U 1 1 5CAA73D0
P 6450 3850
F 0 "Q1" H 6591 3937 45  0000 L CNN
F 1 "AO4294" H 6591 3853 45  0000 L CNN
F 2 "nixiemisc-SO-08" H 6480 4000 20  0001 C CNN
F 3 "" H 6450 3850 50  0001 C CNN
F 4 "785-1732-1-ND" H 6450 3850 50  0001 C CNN "Digikey"
F 5 "SO08" H 6591 3766 50  0000 L CNN "Size"
	1    6450 3850
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Capacitors:10NF-0603-50V-10% C2
U 1 1 5CAA7AF3
P 6150 4600
F 0 "C2" H 6258 4737 45  0000 L CNN
F 1 "0.01µF" H 6258 4653 45  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6150 4850 20  0001 C CNN
F 3 "" H 6150 4600 50  0001 C CNN
F 4 "311-3369-1-ND" H 6258 4608 60  0001 L CNN "Digikey"
F 5 "0603" H 6258 4566 50  0000 L CNN "Size"
	1    6150 4600
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Resistors:RESISTOR0603 Rsen1
U 1 1 5CAA7F87
P 6550 4550
F 0 "Rsen1" V 6463 4618 45  0000 L CNN
F 1 "0.06Ω" V 6547 4618 45  0000 L CNN
F 2 "Resistor_SMD:R_2010_5025Metric" H 6550 4700 20  0001 C CNN
F 3 "" H 6550 4550 60  0001 C CNN
F 4 "CSRN2010FK60L0CT-ND" V 6634 4618 60  0001 L CNN "Digikey"
F 5 "2010" V 6634 4618 50  0000 L CNN "Size"
	1    6550 4550
	0    1    1    0   
$EndComp
$Comp
L SparkFun-PowerSymbols:GND #GND04
U 1 1 5CAA8944
P 6400 4750
F 0 "#GND04" H 6450 4700 45  0001 L BNN
F 1 "GND" H 6400 4581 45  0000 C CNN
F 2 "" H 6400 4650 60  0001 C CNN
F 3 "" H 6400 4650 60  0001 C CNN
	1    6400 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4700 6150 4750
Wire Wire Line
	6050 4350 6150 4350
Wire Wire Line
	6150 4400 6150 4350
Wire Wire Line
	6550 4050 6550 4350
Connection ~ 6550 4350
Text Label 6450 4150 2    50   ~ 0
FB
$Comp
L HVPS_SMD:WE-FLEX_ER11_5 T1
U 1 1 5CAAB1DB
P 7100 2800
F 0 "T1" H 7103 3367 45  0000 C CNN
F 1 "WE-FLEX_ER11_5" H 7103 3283 45  0000 C CNN
F 2 "nixiemisc-WE-FLEX_ER11_5" H 7130 2950 20  0001 C CNN
F 3 "" H 7100 2800 60  0001 C CNN
F 4 "1297-1196-1-ND" H 7100 2800 50  0001 C CNN "Digikey"
	1    7100 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2700 6550 2700
Wire Wire Line
	6900 3000 6750 3000
Wire Wire Line
	6750 3000 6750 2600
Wire Wire Line
	6750 2600 6900 2600
Wire Wire Line
	6900 2400 6750 2400
Wire Wire Line
	6750 2400 6750 2150
Wire Wire Line
	6750 2150 7600 2150
Wire Wire Line
	7300 2400 7550 2400
Wire Wire Line
	7550 2400 7550 3200
Wire Wire Line
	7550 3200 7300 3200
Wire Wire Line
	7300 3000 7450 3000
Wire Wire Line
	7450 3000 7450 3300
Wire Wire Line
	7450 3300 6750 3300
Wire Wire Line
	6750 3300 6750 3200
Wire Wire Line
	6750 3200 6900 3200
Wire Wire Line
	7300 2700 7450 2700
Wire Wire Line
	7450 2700 7450 2600
Wire Wire Line
	7450 2600 7300 2600
$Comp
L SparkFun-Capacitors:10UF-1210-50V-20% C3
U 1 1 5CAAE693
P 7900 2400
F 0 "C3" H 8008 2537 45  0000 L CNN
F 1 "0.22µF" H 8008 2453 45  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 7900 2650 20  0001 C CNN
F 3 "" H 7900 2400 50  0001 C CNN
F 4 "445-2296-1-ND" H 8008 2366 60  0001 L CNN "Digikey"
F 5 "1210" H 8008 2366 50  0000 L CNN "Size"
	1    7900 2400
	1    0    0    -1  
$EndComp
Connection ~ 7900 2150
Wire Wire Line
	7300 2900 7900 2900
Wire Wire Line
	7900 2900 7900 3000
Connection ~ 7900 2900
$Comp
L SparkFun-PowerSymbols:GND #GND05
U 1 1 5CAAF992
P 7900 3000
F 0 "#GND05" H 7950 2950 45  0001 L BNN
F 1 "GND" H 7900 2831 45  0000 C CNN
F 2 "" H 7900 2900 60  0001 C CNN
F 3 "" H 7900 2900 60  0001 C CNN
	1    7900 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 2500 7900 2900
Wire Wire Line
	7900 2200 7900 2150
Text HLabel 8350 2150 2    50   Output ~ 0
180V
Wire Wire Line
	5350 2900 5350 3550
Connection ~ 5350 3550
$Comp
L SparkFun-Resistors:1.2MOHM-0603-1_10W-1% R1
U 1 1 5CAB27C1
P 8250 3550
F 0 "R1" V 8208 3618 45  0000 L CNN
F 1 "2.2MΩ" V 8292 3618 45  0000 L CNN
F 2 "0603" H 8250 3700 20  0001 C CNN
F 3 "" H 8250 3550 60  0001 C CNN
F 4 "RES-10055" V 8292 3618 60  0001 L CNN "Field4"
F 5 "0805" V 8400 3700 50  0000 C CNN "Size"
	1    8250 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	8250 3850 8250 3750
Wire Wire Line
	8250 3950 8250 3850
Connection ~ 8250 3850
Wire Wire Line
	8250 3350 8250 2150
Wire Wire Line
	8250 2150 8350 2150
Wire Wire Line
	8250 3850 7900 3850
Text Label 8150 3850 2    50   ~ 0
FB
Wire Wire Line
	6150 4350 6550 4350
Connection ~ 6150 4350
Wire Wire Line
	6050 4150 6450 4150
Wire Wire Line
	6050 3950 6350 3950
Wire Wire Line
	5350 2900 6150 2900
$Comp
L SparkFun-Capacitors:0.18UF-0603-10V-10% CS1
U 1 1 5CAC51AF
P 6150 3100
F 0 "CS1" H 6258 3237 45  0000 L CNN
F 1 "360pF" H 6258 3153 45  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6150 3350 20  0001 C CNN
F 3 "" H 6150 3100 50  0001 C CNN
F 4 "490-1364-1-ND" H 6258 3066 60  0001 L CNN "Digikey"
F 5 "0603" H 6258 3066 50  0000 L CNN "Size"
	1    6150 3100
	1    0    0    -1  
$EndComp
Connection ~ 6150 2900
Wire Wire Line
	6150 2900 6900 2900
$Comp
L SparkFun-Resistors:1.2MOHM-0603-1_10W-1% RS1
U 1 1 5CAC6AED
P 6150 3400
F 0 "RS1" V 6063 3468 45  0000 L CNN
F 1 "249Ω" V 6147 3468 45  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 6150 3550 20  0001 C CNN
F 3 "" H 6150 3400 60  0001 C CNN
F 4 "RNCP1206FTD249RCT-ND" V 6234 3468 60  0001 L CNN "Digikey"
F 5 "1206" V 6234 3468 50  0000 L CNN "Size"
	1    6150 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 3600 6550 3600
Wire Wire Line
	6550 2700 6550 3600
Connection ~ 6550 3600
Wire Wire Line
	6550 3600 6550 3650
$Comp
L nixiemisc:DIODE D1
U 1 1 5CAC9850
P 7700 2150
F 0 "D1" H 7700 2469 45  0000 C CNN
F 1 "ES1FL R3G" H 7700 2385 45  0000 C CNN
F 2 "nixiemisc-DO-219AB" H 7730 2300 20  0001 C CNN
F 3 "" H 7700 2150 50  0001 C CNN
F 4 "DO-219AB" H 7700 2298 50  0000 C CNN "Size"
F 5 "ES1FL R3GCT-ND" H 7700 2150 50  0001 C CNN "Digikey"
	1    7700 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 2150 7900 2150
Wire Wire Line
	7900 2150 8250 2150
Connection ~ 8250 2150
$Comp
L SparkFun-Resistors:8.2KOHM-0603-1_10W-5% R2
U 1 1 5CACFE05
P 8250 4150
F 0 "R2" V 8155 4218 45  0000 L CNN
F 1 "12KΩ" V 8239 4218 45  0000 L CNN
F 2 "0805" H 8250 4300 20  0001 C CNN
F 3 "" H 8250 4150 60  0001 C CNN
F 4 "RES-10646" V 8334 4218 60  0001 L CNN "Field4"
F 5 "0805" V 8350 4300 50  0000 C CNN "Size"
	1    8250 4150
	0    1    1    0   
$EndComp
$Comp
L SparkFun-Resistors:300OHM-0603-1_10W-1% R3
U 1 1 5CAD00A1
P 8250 4550
F 0 "R3" V 8155 4618 45  0000 L CNN
F 1 "3.3KΩ" V 8239 4618 45  0000 L CNN
F 2 "0805" H 8250 4700 20  0001 C CNN
F 3 "" H 8250 4550 60  0001 C CNN
F 4 "RES_10328" V 8334 4618 60  0001 L CNN "Field4"
F 5 "0805" V 8350 4700 50  0000 C CNN "Size"
	1    8250 4550
	0    1    1    0   
$EndComp
Connection ~ 6400 4750
Wire Wire Line
	6150 4750 6400 4750
Wire Wire Line
	6400 4750 6550 4750
$Comp
L SparkFun-PowerSymbols:GND #GND06
U 1 1 5CAD154F
P 8250 4750
F 0 "#GND06" H 8300 4700 45  0001 L BNN
F 1 "GND" H 8250 4581 45  0000 C CNN
F 2 "" H 8250 4650 60  0001 C CNN
F 3 "" H 8250 4650 60  0001 C CNN
	1    8250 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4000 3800 3950
Wire Wire Line
	3800 3950 3650 3950
Connection ~ 3800 3950
Wire Wire Line
	3800 3950 3800 3900
Text HLabel 3650 3950 0    50   BiDi ~ 0
GND
$Comp
L SparkFun-PowerSymbols:GND #GND09
U 1 1 5CD81CFB
P 4100 4000
F 0 "#GND09" H 4150 3950 45  0001 L BNN
F 1 "GND" H 4100 3831 45  0000 C CNN
F 2 "" H 4100 3900 60  0001 C CNN
F 3 "" H 4100 3900 60  0001 C CNN
	1    4100 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3950 4100 3950
Wire Wire Line
	4100 3950 4100 4000
$EndSCHEMATC
