EESchema Schematic File Version 4
EELAYER 26 0
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
L Device:LED D?
U 1 1 5EC83A8B
P 10300 4250
F 0 "D?" H 10292 3995 50  0000 C CNN
F 1 "LED" H 10292 4086 50  0000 C CNN
F 2 "" H 10300 4250 50  0001 C CNN
F 3 "~" H 10300 4250 50  0001 C CNN
	1    10300 4250
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5EC83B94
P 10300 4700
F 0 "D?" H 10292 4445 50  0000 C CNN
F 1 "LED" H 10292 4536 50  0000 C CNN
F 2 "" H 10300 4700 50  0001 C CNN
F 3 "~" H 10300 4700 50  0001 C CNN
	1    10300 4700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5EC83C54
P 10300 5200
F 0 "D?" H 10292 4945 50  0000 C CNN
F 1 "LED" H 10292 5036 50  0000 C CNN
F 2 "" H 10300 5200 50  0001 C CNN
F 3 "~" H 10300 5200 50  0001 C CNN
	1    10300 5200
	0    -1   -1   0   
$EndComp
$Comp
L Motor:Motor_DC M?
U 1 1 5EC83EE6
P 10400 2500
F 0 "M?" H 10558 2496 50  0000 L CNN
F 1 "Motor_DC" H 10558 2405 50  0000 L CNN
F 2 "" H 10400 2410 50  0001 C CNN
F 3 "~" H 10400 2410 50  0001 C CNN
	1    10400 2500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J?
U 1 1 5EC83F89
P 10300 3600
F 0 "J?" H 10406 3878 50  0000 C CNN
F 1 "Conn_01x03_Male" H 10406 3787 50  0000 C CNN
F 2 "" H 10300 3600 50  0001 C CNN
F 3 "~" H 10300 3600 50  0001 C CNN
	1    10300 3600
	0    1    1    0   
$EndComp
$Comp
L RF_Module:ESP-07 U?
U 1 1 5EC8416E
P 5100 4150
F 0 "U?" H 5100 5128 50  0000 C CNN
F 1 "ESP-07" H 5100 5037 50  0000 C CNN
F 2 "RF_Module:ESP-07" H 5100 4150 50  0001 C CNN
F 3 "http://wiki.ai-thinker.com/_media/esp8266/esp8266_series_modules_user_manual_v1.1.pdf" H 4750 4250 50  0001 C CNN
	1    5100 4150
	1    0    0    -1  
$EndComp
$Comp
L Analog_Switch:ADG417BR U?
U 1 1 5EC848E1
P 1250 1000
F 0 "U?" H 1250 1267 50  0000 C CNN
F 1 "ADG417BR" H 1250 1176 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 1250 900 50  0001 C CNN
F 3 "http://www.analog.com/media/en/technical-documentation/data-sheets/ADG417.pdf" H 1250 1000 50  0001 C CNN
	1    1250 1000
	1    0    0    -1  
$EndComp
$Comp
L Analog_Switch:ADG417BR U?
U 1 1 5EC84973
P 2700 1700
F 0 "U?" H 2700 1967 50  0000 C CNN
F 1 "ADG417BR" H 2700 1876 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2700 1600 50  0001 C CNN
F 3 "http://www.analog.com/media/en/technical-documentation/data-sheets/ADG417.pdf" H 2700 1700 50  0001 C CNN
	1    2700 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:Transformer_1P_1S T?
U 1 1 5EC84AD3
P 3800 1900
F 0 "T?" H 3800 2278 50  0000 C CNN
F 1 "Transformer_1P_1S" H 3800 2187 50  0000 C CNN
F 2 "" H 3800 1900 50  0001 C CNN
F 3 "~" H 3800 1900 50  0001 C CNN
	1    3800 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:Transformer_1P_1S T?
U 1 1 5EC84B25
P 3750 2700
F 0 "T?" H 3750 3078 50  0000 C CNN
F 1 "Transformer_1P_1S" H 3750 2987 50  0000 C CNN
F 2 "" H 3750 2700 50  0001 C CNN
F 3 "~" H 3750 2700 50  0001 C CNN
	1    3750 2700
	1    0    0    -1  
$EndComp
$Comp
L Driver_Motor:L298HN U?
U 1 1 5EC84D0A
P 7300 2300
F 0 "U?" H 7300 3178 50  0000 C CNN
F 1 "L298HN" H 7300 3087 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-15_P2.54x2.54mm_StaggerOdd_Lead4.58mm_Vertical" H 7350 1650 50  0001 L CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00000240.pdf" H 7450 2550 50  0001 C CNN
	1    7300 2300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U?
U 1 1 5EC85391
P 5950 2000
F 0 "U?" H 5950 2325 50  0000 C CNN
F 1 "74LS32" H 5950 2234 50  0000 C CNN
F 2 "" H 5950 2000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 5950 2000 50  0001 C CNN
	1    5950 2000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U?
U 2 1 5EC8541A
P 5950 2700
F 0 "U?" H 5950 3025 50  0000 C CNN
F 1 "74LS32" H 5950 2934 50  0000 C CNN
F 2 "" H 5950 2700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 5950 2700 50  0001 C CNN
	2    5950 2700
	1    0    0    -1  
$EndComp
$Comp
L pspice:DIODE D?
U 1 1 5EC85713
P 8300 2050
F 0 "D?" V 8254 2178 50  0000 L CNN
F 1 "DIODE" V 8345 2178 50  0000 L CNN
F 2 "" H 8300 2050 50  0001 C CNN
F 3 "~" H 8300 2050 50  0001 C CNN
	1    8300 2050
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 5EC859AE
P 2000 1800
F 0 "J?" H 2106 2078 50  0000 C CNN
F 1 "Conn_01x04_Male" H 2106 1987 50  0000 C CNN
F 2 "" H 2000 1800 50  0001 C CNN
F 3 "~" H 2000 1800 50  0001 C CNN
	1    2000 1800
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x10_Male J?
U 1 1 5EC85ACF
P 9050 2750
F 0 "J?" H 9023 2630 50  0000 R CNN
F 1 "Conn_01x10_Male" H 9023 2721 50  0000 R CNN
F 2 "" H 9050 2750 50  0001 C CNN
F 3 "~" H 9050 2750 50  0001 C CNN
	1    9050 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	950  1000 550  1000
Wire Wire Line
	1550 1000 1800 1000
Wire Wire Line
	1800 1000 1800 1600
Wire Wire Line
	1800 1900 1550 1900
Wire Wire Line
	1550 1900 1550 1400
Wire Wire Line
	1550 1400 550  1400
Wire Wire Line
	2000 1600 2400 1600
Wire Wire Line
	2400 1600 2400 1700
Wire Wire Line
	3400 1700 3000 1700
Wire Wire Line
	5650 1900 4850 1900
Wire Wire Line
	4850 1900 4850 1700
Wire Wire Line
	4850 1700 4200 1700
Wire Wire Line
	5650 2600 4850 2600
Wire Wire Line
	4850 2600 4850 1900
Connection ~ 4850 1900
Wire Wire Line
	4200 2100 4400 2100
Wire Wire Line
	4400 2100 4400 2900
Wire Wire Line
	4400 2900 4150 2900
Wire Wire Line
	3400 2100 2350 2100
Wire Wire Line
	2350 2100 2350 1900
Wire Wire Line
	2350 1900 2000 1900
Wire Wire Line
	3350 2900 2350 2900
Wire Wire Line
	2350 2900 2350 2100
Connection ~ 2350 2100
Wire Wire Line
	3350 2500 2450 2500
Wire Wire Line
	2450 2500 2450 1800
Wire Wire Line
	2450 1800 2400 1800
Wire Wire Line
	2400 1800 2400 1700
Connection ~ 2400 1700
Wire Wire Line
	5100 3350 5100 3050
Wire Wire Line
	5100 3050 4550 3050
Wire Wire Line
	4550 3050 4550 2500
Wire Wire Line
	4550 2500 4150 2500
Wire Wire Line
	7400 1600 7300 1600
Wire Wire Line
	7300 1600 6400 1600
Wire Wire Line
	6400 1600 6400 3050
Wire Wire Line
	6400 3050 5100 3050
Connection ~ 7300 1600
Connection ~ 5100 3050
Wire Wire Line
	4400 2900 4400 3250
Wire Wire Line
	4400 3250 3750 3250
Wire Wire Line
	3750 3250 3750 5150
Wire Wire Line
	3750 5150 5100 5150
Wire Wire Line
	5100 5150 5100 4850
Connection ~ 4400 2900
Wire Wire Line
	7300 3000 7300 5150
Wire Wire Line
	7300 5150 5100 5150
Connection ~ 5100 5150
Wire Wire Line
	9000 3150 10200 3150
Wire Wire Line
	10200 3150 10200 3800
Wire Wire Line
	9050 2250 10400 2250
Wire Wire Line
	10400 2250 10400 2300
Wire Wire Line
	10400 2800 10000 2800
Wire Wire Line
	10000 2800 10000 2450
Wire Wire Line
	10000 2450 9050 2450
Wire Wire Line
	9050 2950 10300 2950
Wire Wire Line
	10300 2950 10300 3800
Wire Wire Line
	9850 2750 9850 2900
Wire Wire Line
	9850 2900 10400 2900
Wire Wire Line
	10400 2900 10400 3800
Wire Wire Line
	9050 2750 9850 2750
Wire Wire Line
	10300 4550 10300 4400
Wire Wire Line
	10300 5050 10300 4850
Wire Wire Line
	10300 5350 10300 5550
Wire Wire Line
	10300 5550 10200 5550
Wire Wire Line
	10200 5550 10200 3800
Connection ~ 10200 3800
Wire Wire Line
	10300 4100 10300 3800
Connection ~ 10300 3800
Wire Wire Line
	10400 3800 10400 5200
Wire Wire Line
	10400 5200 10350 5200
Connection ~ 10400 3800
Wire Wire Line
	8850 2250 8850 1850
Wire Wire Line
	8850 1850 8300 1850
Wire Wire Line
	8850 2450 8500 2450
Wire Wire Line
	8500 2450 8500 2250
Wire Wire Line
	8500 2250 8300 2250
Wire Wire Line
	7900 2100 8100 2100
Wire Wire Line
	8100 2100 8100 1850
Wire Wire Line
	8100 1850 8300 1850
Connection ~ 8300 1850
Wire Wire Line
	8300 2250 8050 2250
Wire Wire Line
	8050 2250 8050 2200
Wire Wire Line
	8050 2200 7900 2200
Connection ~ 8300 2250
Wire Wire Line
	8850 2950 8300 2950
Wire Wire Line
	8300 2950 8300 2400
Wire Wire Line
	8300 2400 7900 2400
Wire Wire Line
	8850 3150 8100 3150
Wire Wire Line
	8100 3150 8100 2500
Wire Wire Line
	8100 2500 7900 2500
Wire Wire Line
	5650 2100 5400 2100
Wire Wire Line
	5400 2100 5400 3300
Wire Wire Line
	5400 3300 5750 3300
Wire Wire Line
	5750 3300 5750 3550
Wire Wire Line
	5750 3550 5700 3550
Wire Wire Line
	5650 2800 5500 2800
Wire Wire Line
	5500 2800 5500 3200
Wire Wire Line
	5500 3200 5950 3200
Wire Wire Line
	5950 3200 5950 3650
Wire Wire Line
	5950 3650 5700 3650
Wire Wire Line
	8850 2750 8500 2750
Wire Wire Line
	8500 2750 8500 3750
Wire Wire Line
	8500 3750 5700 3750
Wire Wire Line
	6250 2000 6550 2000
Wire Wire Line
	6550 2000 6550 1800
Wire Wire Line
	6550 1800 6700 1800
Wire Wire Line
	6250 2700 6250 2200
Wire Wire Line
	6250 2200 6700 2200
$EndSCHEMATC
