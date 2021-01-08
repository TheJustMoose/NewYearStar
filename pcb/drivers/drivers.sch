EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "sam. 04 avril 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 10350 1500 1    60   ~ 0
RAW
Text Label 9550 1000 1    60   ~ 0
DTR
Text Label 9750 1000 1    60   ~ 0
0(Rx)
Text Label 9000 1600 0    60   ~ 0
1(Tx)
Text Label 9000 1700 0    60   ~ 0
0(Rx)
Text Label 9000 1800 0    60   ~ 0
Reset
Text Label 10500 1800 0    60   ~ 0
Reset
Text Label 9000 2000 0    60   ~ 0
2
Text Label 9000 2100 0    60   ~ 0
3(**)
Text Label 9000 2200 0    60   ~ 0
4
Text Label 9000 2300 0    60   ~ 0
5(**)
Text Label 9000 2400 0    60   ~ 0
6(**)
Text Label 9000 2500 0    60   ~ 0
7
Text Label 9000 2600 0    60   ~ 0
8
Text Label 9000 2700 0    60   ~ 0
9(**)
Text Label 10500 2700 0    60   ~ 0
10(**/SS)
Text Label 10500 2600 0    60   ~ 0
11(**/MOSI)
Text Label 10500 2500 0    60   ~ 0
12(MISO)
Text Label 10500 2400 0    60   ~ 0
13(SCK)
Text Label 10500 2300 0    60   ~ 0
A0
Text Label 10500 2200 0    60   ~ 0
A1
Text Label 10500 2100 0    60   ~ 0
A2
Text Label 10500 2000 0    60   ~ 0
A3
Text Label 9650 3200 3    60   ~ 0
A4
Text Label 9550 3200 3    60   ~ 0
A5
Text Notes 8550 575  0    60   ~ 0
Shield Arduino Pro Mini \n
Wire Notes Line
	8525 650  9700 650 
Wire Notes Line
	9700 650  9700 475 
Text Label 9950 3200 3    60   ~ 0
A7
Text Label 10050 3200 3    60   ~ 0
A6
$Comp
L Connector_Generic:Conn_01x02 P3
U 1 1 56D74FB3
P 9550 3000
F 0 "P3" H 9550 3150 50  0000 C CNN
F 1 "ADC" V 9650 3000 50  0000 C CNN
F 2 "Socket_Arduino_Pro_Mini:Socket_Strip_Arduino_1x02" H 9550 3000 50  0001 C CNN
F 3 "" H 9550 3000 50  0000 C CNN
	1    9550 3000
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 P5
U 1 1 56D7505C
P 9950 3000
F 0 "P5" H 9950 3150 50  0000 C CNN
F 1 "ADC" V 10050 3000 50  0000 C CNN
F 2 "Socket_Arduino_Pro_Mini:Socket_Strip_Arduino_1x02" H 9950 3000 50  0001 C CNN
F 3 "" H 9950 3000 50  0000 C CNN
	1    9950 3000
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x06 P2
U 1 1 56D75238
P 9750 1200
F 0 "P2" H 9750 1550 50  0000 C CNN
F 1 "COM" V 9850 1200 50  0000 C CNN
F 2 "Socket_Arduino_Pro_Mini:Socket_Strip_Arduino_1x06" H 9750 1200 50  0001 C CNN
F 3 "" H 9750 1200 50  0000 C CNN
	1    9750 1200
	0    -1   1    0   
$EndComp
Text Label 9650 1000 1    60   ~ 0
1(Tx)
$Comp
L power:GND #PWR01
U 1 1 56D7539A
P 10200 1000
F 0 "#PWR01" H 10200 750 50  0001 C CNN
F 1 "GND" H 10200 850 50  0000 C CNN
F 2 "" H 10200 1000 50  0000 C CNN
F 3 "" H 10200 1000 50  0000 C CNN
	1    10200 1000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR02
U 1 1 56D753B8
P 9850 1000
F 0 "#PWR02" H 9850 850 50  0001 C CNN
F 1 "VCC" H 9850 1150 50  0000 C CNN
F 2 "" H 9850 1000 50  0000 C CNN
F 3 "" H 9850 1000 50  0000 C CNN
	1    9850 1000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x12 P1
U 1 1 56D754D1
P 9550 2100
F 0 "P1" H 9550 2750 50  0000 C CNN
F 1 "Digital" V 9650 2100 50  0000 C CNN
F 2 "Socket_Arduino_Pro_Mini:Socket_Strip_Arduino_1x12" H 9550 2100 50  0001 C CNN
F 3 "" H 9550 2100 50  0000 C CNN
	1    9550 2100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x12 P4
U 1 1 56D755F3
P 10050 2100
F 0 "P4" H 10050 2750 50  0000 C CNN
F 1 "Analog" V 10150 2100 50  0000 C CNN
F 2 "Socket_Arduino_Pro_Mini:Socket_Strip_Arduino_1x12" H 10050 2100 50  0001 C CNN
F 3 "" H 10050 2100 50  0000 C CNN
	1    10050 2100
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 56D756B8
P 9250 2800
F 0 "#PWR03" H 9250 2550 50  0001 C CNN
F 1 "GND" H 9250 2650 50  0000 C CNN
F 2 "" H 9250 2800 50  0000 C CNN
F 3 "" H 9250 2800 50  0000 C CNN
	1    9250 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 1900 9250 1900
Wire Wire Line
	9250 1900 9250 2800
Wire Wire Line
	9350 1600 9000 1600
Wire Wire Line
	9000 1700 9350 1700
Wire Wire Line
	9350 1800 9000 1800
Wire Wire Line
	9000 2000 9350 2000
Wire Wire Line
	9350 2100 9000 2100
Wire Wire Line
	9350 2200 9000 2200
Wire Wire Line
	9000 2300 9350 2300
Wire Wire Line
	9350 2400 9000 2400
Wire Wire Line
	9000 2500 9350 2500
Wire Wire Line
	9350 2600 9000 2600
Wire Wire Line
	9350 2700 9000 2700
Wire Wire Line
	10350 1500 10350 1600
Wire Wire Line
	10350 1600 10250 1600
Wire Wire Line
	10250 1700 10350 1700
Wire Wire Line
	10350 1700 10350 2800
$Comp
L power:GND #PWR04
U 1 1 56D75A03
P 10350 2800
F 0 "#PWR04" H 10350 2550 50  0001 C CNN
F 1 "GND" H 10350 2650 50  0000 C CNN
F 2 "" H 10350 2800 50  0000 C CNN
F 3 "" H 10350 2800 50  0000 C CNN
	1    10350 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 1900 10450 1900
Wire Wire Line
	10450 1900 10450 1500
$Comp
L power:VCC #PWR05
U 1 1 56D75A9D
P 10450 1500
F 0 "#PWR05" H 10450 1350 50  0001 C CNN
F 1 "VCC" H 10450 1650 50  0000 C CNN
F 2 "" H 10450 1500 50  0000 C CNN
F 3 "" H 10450 1500 50  0000 C CNN
	1    10450 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 1800 10500 1800
Wire Wire Line
	10500 2000 10250 2000
Wire Wire Line
	10250 2100 10500 2100
Wire Wire Line
	10500 2200 10250 2200
Wire Wire Line
	10250 2300 10500 2300
Wire Wire Line
	10500 2400 10250 2400
Wire Wire Line
	10250 2500 10500 2500
Wire Wire Line
	10500 2600 10250 2600
Wire Wire Line
	10250 2700 10500 2700
Wire Notes Line
	11200 3400 8500 3400
Wire Notes Line
	8500 3400 8500 500 
Text Notes 9650 1600 0    60   ~ 0
1
Wire Wire Line
	9950 1000 9950 950 
Wire Wire Line
	9950 950  10050 950 
Wire Wire Line
	10050 950  10050 1000
Wire Wire Line
	10050 950  10200 950 
Wire Wire Line
	10200 950  10200 1000
Connection ~ 10050 950 
$Comp
L Transistor_FET:IRLML6402 Q3
U 1 1 5FF8E993
P 6450 2000
F 0 "Q3" H 6654 2046 50  0000 L CNN
F 1 "IRLML6402" H 6625 1875 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6650 1925 50  0001 L CIN
F 3 "https://www.infineon.com/dgdl/irlml6402pbf.pdf?fileId=5546d462533600a401535668d5c2263c" H 6450 2000 50  0001 L CNN
	1    6450 2000
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRLML6402 Q2
U 1 1 5FF92572
P 5700 2000
F 0 "Q2" H 5904 2046 50  0000 L CNN
F 1 "IRLML6402" H 5850 1875 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5900 1925 50  0001 L CIN
F 3 "https://www.infineon.com/dgdl/irlml6402pbf.pdf?fileId=5546d462533600a401535668d5c2263c" H 5700 2000 50  0001 L CNN
	1    5700 2000
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRLML6402 Q1
U 1 1 5FF93DED
P 4950 2000
F 0 "Q1" H 5154 2046 50  0000 L CNN
F 1 "IRLML6402" H 5100 1875 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5150 1925 50  0001 L CIN
F 3 "https://www.infineon.com/dgdl/irlml6402pbf.pdf?fileId=5546d462533600a401535668d5c2263c" H 4950 2000 50  0001 L CNN
	1    4950 2000
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRLML6402 Q4
U 1 1 5FF95670
P 7200 2000
F 0 "Q4" H 7404 2046 50  0000 L CNN
F 1 "IRLML6402" H 7350 1875 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7400 1925 50  0001 L CIN
F 3 "https://www.infineon.com/dgdl/irlml6402pbf.pdf?fileId=5546d462533600a401535668d5c2263c" H 7200 2000 50  0001 L CNN
	1    7200 2000
	1    0    0    -1  
$EndComp
$Comp
L CommonLibrary:TPIC6C595 D1
U 1 1 5FF988C6
P 4200 3550
F 0 "D1" H 3975 4150 50  0000 C CNN
F 1 "TPIC6C595" H 4450 4150 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 4600 3100 50  0001 C CNN
F 3 "" H 4600 3100 50  0001 C CNN
	1    4200 3550
	1    0    0    -1  
$EndComp
$Comp
L CommonLibrary:TPIC6C595 D2
U 1 1 5FF995B4
P 4200 5300
F 0 "D2" H 4000 5900 50  0000 C CNN
F 1 "TPIC6C595" H 4475 5900 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 4600 4850 50  0001 C CNN
F 3 "" H 4600 4850 50  0001 C CNN
	1    4200 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5FF9B341
P 4200 4200
F 0 "#PWR011" H 4200 3950 50  0001 C CNN
F 1 "GND" H 4205 4027 50  0000 C CNN
F 2 "" H 4200 4200 50  0001 C CNN
F 3 "" H 4200 4200 50  0001 C CNN
	1    4200 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5FF9BC81
P 4200 5950
F 0 "#PWR013" H 4200 5700 50  0001 C CNN
F 1 "GND" H 4205 5777 50  0000 C CNN
F 2 "" H 4200 5950 50  0001 C CNN
F 3 "" H 4200 5950 50  0001 C CNN
	1    4200 5950
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR010
U 1 1 5FF9C4B7
P 4200 2900
F 0 "#PWR010" H 4200 2750 50  0001 C CNN
F 1 "VCC" H 4215 3073 50  0000 C CNN
F 2 "" H 4200 2900 50  0001 C CNN
F 3 "" H 4200 2900 50  0001 C CNN
	1    4200 2900
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR012
U 1 1 5FF9DE9E
P 4200 4650
F 0 "#PWR012" H 4200 4500 50  0001 C CNN
F 1 "VCC" H 4215 4823 50  0000 C CNN
F 2 "" H 4200 4650 50  0001 C CNN
F 3 "" H 4200 4650 50  0001 C CNN
	1    4200 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 1800 5800 1800
Wire Wire Line
	5800 1800 6150 1800
Connection ~ 5800 1800
Wire Wire Line
	6550 1800 7300 1800
Connection ~ 6550 1800
$Comp
L power:VCC #PWR014
U 1 1 5FFA09AA
P 6150 1800
F 0 "#PWR014" H 6150 1650 50  0001 C CNN
F 1 "VCC" H 6165 1973 50  0000 C CNN
F 2 "" H 6150 1800 50  0001 C CNN
F 3 "" H 6150 1800 50  0001 C CNN
	1    6150 1800
	1    0    0    -1  
$EndComp
Connection ~ 6150 1800
Wire Wire Line
	6150 1800 6550 1800
Wire Wire Line
	4600 4000 4600 4425
Wire Wire Line
	4600 4425 3800 4425
Wire Wire Line
	3800 4425 3800 4850
$Comp
L power:GND #PWR08
U 1 1 5FFA2148
P 3800 3700
F 0 "#PWR08" H 3800 3450 50  0001 C CNN
F 1 "GND" H 3805 3527 50  0000 C CNN
F 2 "" H 3800 3700 50  0001 C CNN
F 3 "" H 3800 3700 50  0001 C CNN
	1    3800 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5FFA2BAD
P 3800 5450
F 0 "#PWR09" H 3800 5200 50  0001 C CNN
F 1 "GND" H 3805 5277 50  0000 C CNN
F 2 "" H 3800 5450 50  0001 C CNN
F 3 "" H 3800 5450 50  0001 C CNN
	1    3800 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5FFA3338
P 3650 5150
F 0 "R2" V 3725 5125 50  0000 C CNN
F 1 "10k" V 3650 5150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3580 5150 50  0001 C CNN
F 3 "~" H 3650 5150 50  0001 C CNN
	1    3650 5150
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR07
U 1 1 5FFA4F26
P 3500 5150
F 0 "#PWR07" H 3500 5000 50  0001 C CNN
F 1 "VCC" V 3515 5277 50  0000 L CNN
F 2 "" H 3500 5150 50  0001 C CNN
F 3 "" H 3500 5150 50  0001 C CNN
	1    3500 5150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 5FFA7630
P 3650 3400
F 0 "R1" V 3725 3375 50  0000 C CNN
F 1 "10k" V 3650 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3580 3400 50  0001 C CNN
F 3 "~" H 3650 3400 50  0001 C CNN
	1    3650 3400
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR06
U 1 1 5FFA8CAB
P 3500 3400
F 0 "#PWR06" H 3500 3250 50  0001 C CNN
F 1 "VCC" V 3515 3527 50  0000 L CNN
F 2 "" H 3500 3400 50  0001 C CNN
F 3 "" H 3500 3400 50  0001 C CNN
	1    3500 3400
	0    -1   -1   0   
$EndComp
Text Label 3425 3100 0    50   ~ 0
12(MISO)
Wire Wire Line
	3800 3100 3400 3100
Wire Wire Line
	3800 3300 3150 3300
Text Label 2750 3300 0    50   ~ 0
13(SCK)
Wire Wire Line
	3800 5050 3150 5050
Wire Wire Line
	3150 5050 3150 3300
Connection ~ 3150 3300
Wire Wire Line
	3150 3300 2675 3300
Wire Wire Line
	3800 3600 2825 3600
Wire Wire Line
	10500 2700 10500 6250
Wire Wire Line
	10500 6250 2825 6250
Wire Wire Line
	2825 6250 2825 5350
Wire Wire Line
	2825 5350 3800 5350
Wire Wire Line
	2825 5350 2825 3600
Connection ~ 2825 5350
$Comp
L Connector:Conn_01x04_Male J5
U 1 1 5FFB629A
P 6100 2650
F 0 "J5" V 6254 2362 50  0000 R CNN
F 1 "Conn_01x04_Male" V 6163 2362 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 6100 2650 50  0001 C CNN
F 3 "~" H 6100 2650 50  0001 C CNN
	1    6100 2650
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x04_Male J1
U 1 1 5FFB7189
P 5075 3200
F 0 "J1" H 5047 3174 50  0000 R CNN
F 1 "Conn_01x04_Male" H 5047 3083 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 5075 3200 50  0001 C CNN
F 3 "~" H 5075 3200 50  0001 C CNN
	1    5075 3200
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 5FFB790B
P 5075 3600
F 0 "J2" H 5047 3574 50  0000 R CNN
F 1 "Conn_01x04_Male" H 5047 3483 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 5075 3600 50  0001 C CNN
F 3 "~" H 5075 3600 50  0001 C CNN
	1    5075 3600
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 5FFB82E0
P 5075 4950
F 0 "J3" H 5047 4924 50  0000 R CNN
F 1 "Conn_01x04_Male" H 5047 4833 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 5075 4950 50  0001 C CNN
F 3 "~" H 5075 4950 50  0001 C CNN
	1    5075 4950
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J4
U 1 1 5FFB8BDE
P 5075 5350
F 0 "J4" H 5047 5324 50  0000 R CNN
F 1 "Conn_01x04_Male" H 5047 5233 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 5075 5350 50  0001 C CNN
F 3 "~" H 5075 5350 50  0001 C CNN
	1    5075 5350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6200 2450 6200 2200
Wire Wire Line
	6200 2200 6550 2200
Wire Wire Line
	6100 2450 6100 2200
Wire Wire Line
	6100 2200 5800 2200
Wire Wire Line
	5050 2200 5050 2275
Wire Wire Line
	5050 2275 6000 2275
Wire Wire Line
	6000 2275 6000 2450
Wire Wire Line
	6300 2450 6300 2275
Wire Wire Line
	6300 2275 7300 2275
Wire Wire Line
	7300 2275 7300 2200
Wire Wire Line
	4600 3100 4875 3100
Wire Wire Line
	4600 3200 4875 3200
Wire Wire Line
	4600 3300 4875 3300
Wire Wire Line
	4600 3400 4875 3400
Wire Wire Line
	4600 3500 4875 3500
Wire Wire Line
	4600 3600 4875 3600
Wire Wire Line
	4600 3700 4875 3700
Wire Wire Line
	4600 3800 4875 3800
Wire Wire Line
	4600 4850 4875 4850
Wire Wire Line
	4600 4950 4875 4950
Wire Wire Line
	4600 5050 4875 5050
Wire Wire Line
	4600 5150 4875 5150
Wire Wire Line
	4600 5250 4875 5250
Wire Wire Line
	4600 5350 4875 5350
Wire Wire Line
	4600 5450 4875 5450
Wire Wire Line
	4600 5550 4875 5550
NoConn ~ 4600 5750
Text Label 4650 2000 0    50   ~ 0
4
Wire Wire Line
	4750 2000 4600 2000
Wire Wire Line
	5500 2000 5350 2000
Wire Wire Line
	6250 2000 6100 2000
Wire Wire Line
	7000 2000 6850 2000
Text Label 5350 2000 0    50   ~ 0
5(**)
Text Label 6100 2000 0    50   ~ 0
6(**)
Text Label 6850 2000 0    50   ~ 0
7
$Comp
L Device:CP C1
U 1 1 5FFF86DA
P 7250 4175
F 0 "C1" H 7368 4221 50  0000 L CNN
F 1 "1000uF" H 7368 4130 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P2.50mm" H 7288 4025 50  0001 C CNN
F 3 "~" H 7250 4175 50  0001 C CNN
	1    7250 4175
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5FFF93FD
P 7250 4325
F 0 "#PWR016" H 7250 4075 50  0001 C CNN
F 1 "GND" H 7255 4152 50  0000 C CNN
F 2 "" H 7250 4325 50  0001 C CNN
F 3 "" H 7250 4325 50  0001 C CNN
	1    7250 4325
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR015
U 1 1 5FFF9E1A
P 7250 4025
F 0 "#PWR015" H 7250 3875 50  0001 C CNN
F 1 "VCC" H 7265 4198 50  0000 C CNN
F 2 "" H 7250 4025 50  0001 C CNN
F 3 "" H 7250 4025 50  0001 C CNN
	1    7250 4025
	1    0    0    -1  
$EndComp
NoConn ~ 10500 2000
NoConn ~ 10500 2100
NoConn ~ 10500 2200
NoConn ~ 10500 2300
NoConn ~ 10500 2600
NoConn ~ 9000 2000
NoConn ~ 9000 2100
NoConn ~ 9000 2600
NoConn ~ 9000 2700
NoConn ~ 9100 2300
NoConn ~ 7600 3100
NoConn ~ 9550 1000
NoConn ~ 10350 1500
NoConn ~ 9550 3200
NoConn ~ 9650 3200
NoConn ~ 9950 3200
NoConn ~ 10050 3200
NoConn ~ 9450 3225
$EndSCHEMATC