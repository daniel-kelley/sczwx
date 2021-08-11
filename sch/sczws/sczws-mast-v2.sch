EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "Santa Cruz Weather Station Mast V2"
Date "2020-11-06"
Rev ""
Comp "Daniel Kelley and Associates"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L sczws:af3660 U?
U 1 1 5F9D9057
P 1100 6100
F 0 "U?" H 1618 6096 50  0001 L CNN
F 1 "af3660" H 900 5600 50  0000 L CNN
F 2 "" H 1300 6100 50  0001 C CNN
F 3 "" H 1300 6100 50  0001 C CNN
	1    1100 6100
	1    0    0    -1  
$EndComp
$Comp
L sczws:af3686 U?
U 1 1 5F9D9BDA
P 1100 7200
F 0 "U?" H 1668 7246 50  0001 L CNN
F 1 "af3686" H 900 6700 50  0000 L CNN
F 2 "" H 1350 7500 50  0001 C CNN
F 3 "" H 1350 7500 50  0001 C CNN
	1    1100 7200
	1    0    0    -1  
$EndComp
$Comp
L Connector:DB9_Female J13
U 1 1 5FA06761
P 5900 6250
F 0 "J13" H 6080 6296 50  0000 L CNN
F 1 "DB9_Female" H 6080 6205 50  0000 L CNN
F 2 "" H 5900 6250 50  0001 C CNN
F 3 " ~" H 5900 6250 50  0001 C CNN
	1    5900 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 5850 1400 5850
Text Notes 5400 5850 0    50   ~ 0
3V3
Text Notes 5400 6050 0    50   ~ 0
SCL
Text Notes 5400 6150 0    50   ~ 0
SDA
Text Notes 5400 6250 0    50   ~ 0
5V0
Text Notes 5400 6350 0    50   ~ 0
RXD
Text Notes 5400 6550 0    50   ~ 0
TXD
Text Notes 5400 6650 0    50   ~ 0
GND
NoConn ~ 5600 5950
NoConn ~ 5600 6450
Wire Wire Line
	1400 6350 1550 6350
Wire Wire Line
	1400 6150 1550 6150
Wire Wire Line
	1400 6050 1550 6050
NoConn ~ 2000 5950
NoConn ~ 2000 6250
NoConn ~ 2000 6450
NoConn ~ 1250 5050
NoConn ~ 2800 7050
NoConn ~ 2800 7350
$Comp
L Connector:DB9_Female J21
U 1 1 5FA4B58F
P 9000 1350
F 0 "J21" H 9180 1396 50  0000 L CNN
F 1 "DB9_Female" H 9180 1305 50  0000 L CNN
F 2 "" H 9000 1350 50  0001 C CNN
F 3 " ~" H 9000 1350 50  0001 C CNN
	1    9000 1350
	1    0    0    -1  
$EndComp
$Comp
L Connector:DB9_Male J28
U 1 1 5FAE3892
P 6150 4250
F 0 "J28" H 6068 3558 50  0000 C CNN
F 1 "DB9_Male" H 6068 3649 50  0000 C CNN
F 2 "" H 6150 4250 50  0001 C CNN
F 3 " ~" H 6150 4250 50  0001 C CNN
	1    6150 4250
	-1   0    0    1   
$EndComp
Text Notes 700  6850 0    50   ~ 0
PM
Text Notes 700  5850 0    50   ~ 0
ENV
$Comp
L Connector:Conn_01x07_Male J18
U 1 1 5FB34D99
P 1750 6150
F 0 "J18" H 1900 6600 50  0000 R CNN
F 1 "Conn_01x07_Male" H 1722 6083 50  0001 R CNN
F 2 "" H 1750 6150 50  0001 C CNN
F 3 "~" H 1750 6150 50  0001 C CNN
	1    1750 6150
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x07_Female J15
U 1 1 5FB36285
P 1800 6150
F 0 "J15" H 1650 6600 50  0000 L CNN
F 1 "Conn_01x07_Female" H 1828 6085 50  0001 L CNN
F 2 "" H 1800 6150 50  0001 C CNN
F 3 "~" H 1800 6150 50  0001 C CNN
	1    1800 6150
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Female J16
U 1 1 5FB38217
P 1050 5150
F 0 "J16" H 900 5450 50  0000 L CNN
F 1 "Conn_01x05_Female" H 1078 5085 50  0001 L CNN
F 2 "" H 1050 5150 50  0001 C CNN
F 3 "~" H 1050 5150 50  0001 C CNN
	1    1050 5150
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Male J17
U 1 1 5FB39025
P 1750 7150
F 0 "J17" H 1900 7600 50  0000 R CNN
F 1 "Conn_01x08_Male" H 1722 7033 50  0001 R CNN
F 2 "" H 1750 7150 50  0001 C CNN
F 3 "~" H 1750 7150 50  0001 C CNN
	1    1750 7150
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Female J14
U 1 1 5FB3A3B8
P 2600 7150
F 0 "J14" H 2500 7600 50  0000 C CNN
F 1 "Conn_01x08_Female" H 2492 7544 50  0001 C CNN
F 2 "" H 2600 7150 50  0001 C CNN
F 3 "~" H 2600 7150 50  0001 C CNN
	1    2600 7150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1400 6850 1550 6850
Wire Wire Line
	1400 6950 1550 6950
Wire Wire Line
	1400 7150 1550 7150
Wire Wire Line
	1400 7250 1550 7250
Text Notes 2050 5850 0    50   ~ 0
3V3
Text Notes 2050 6050 0    50   ~ 0
GND
Text Notes 2800 6850 0    50   ~ 0
5V0
Text Notes 2800 6950 0    50   ~ 0
GND
Text Notes 2800 7150 0    50   ~ 0
RXD
Text Notes 2800 7250 0    50   ~ 0
TXD
Text Notes 2050 6150 0    50   ~ 0
SCL
Text Notes 1300 5250 0    50   ~ 0
SCL
Text Notes 2050 6350 0    50   ~ 0
SDA
Text Notes 1300 5350 0    50   ~ 0
SDA
Text Notes 1300 4950 0    50   ~ 0
3V3
Text Notes 1300 5150 0    50   ~ 0
GND
NoConn ~ 2800 7450
NoConn ~ 2800 7550
Wire Wire Line
	1400 5950 1550 5950
Wire Wire Line
	1400 6250 1550 6250
Wire Wire Line
	1400 6450 1550 6450
Wire Wire Line
	1400 7050 1550 7050
Wire Wire Line
	1400 7350 1550 7350
Wire Wire Line
	1400 7450 1550 7450
Wire Wire Line
	1400 7550 1550 7550
Wire Wire Line
	2000 5850 5350 5850
Wire Wire Line
	1250 4950 5350 4950
Wire Wire Line
	5350 4950 5350 5850
Connection ~ 5350 5850
Wire Wire Line
	5350 5850 5600 5850
Wire Wire Line
	5350 6950 5350 6650
Wire Wire Line
	5350 6650 5600 6650
Wire Wire Line
	2800 6950 5350 6950
Wire Wire Line
	2000 6050 4150 6050
Wire Wire Line
	4150 6050 4150 6650
Wire Wire Line
	4150 6650 4250 6650
Connection ~ 5350 6650
Wire Wire Line
	1250 5150 4250 5150
Wire Wire Line
	4250 5150 4250 6650
Connection ~ 4250 6650
Wire Wire Line
	4250 6650 5350 6650
Wire Wire Line
	1250 5250 4350 5250
Wire Wire Line
	4350 5250 4350 6050
Wire Wire Line
	4350 6050 5600 6050
Wire Wire Line
	2000 6150 4350 6150
Wire Wire Line
	4350 6150 4350 6050
Connection ~ 4350 6050
Wire Wire Line
	1250 5350 4450 5350
Wire Wire Line
	4450 5350 4450 6150
Wire Wire Line
	4450 6150 5600 6150
Wire Wire Line
	2000 6350 4450 6350
Wire Wire Line
	4450 6350 4450 6150
Connection ~ 4450 6150
Wire Wire Line
	4550 6850 4550 6250
Wire Wire Line
	4550 6250 5600 6250
Wire Wire Line
	2800 6850 4550 6850
Wire Wire Line
	4650 7150 4650 6350
Wire Wire Line
	4650 6350 5600 6350
Wire Wire Line
	2800 7150 4650 7150
Wire Wire Line
	4750 7250 4750 6550
Wire Wire Line
	4750 6550 5600 6550
Wire Wire Line
	2800 7250 4750 7250
Text Notes 5900 6800 0    50   ~ 0
To J28
Text Notes 1900 6600 0    50   ~ 0
To J18
Text Notes 2750 7700 0    50   ~ 0
To J17
Text Notes 3350 4950 0    50   ~ 0
1
Text Notes 3350 5150 0    50   ~ 0
2
Text Notes 3350 5250 0    50   ~ 0
3
Text Notes 3350 5350 0    50   ~ 0
4
Text Notes 3350 5850 0    50   ~ 0
5
Text Notes 3350 6050 0    50   ~ 0
6
Text Notes 3350 6150 0    50   ~ 0
7
Text Notes 3350 6350 0    50   ~ 0
8
Text Notes 3350 6850 0    50   ~ 0
9
Text Notes 3350 6950 0    50   ~ 0
10\n
Text Notes 3350 7150 0    50   ~ 0
11
Text Notes 3350 7250 0    50   ~ 0
12
Text Notes 3450 7600 0    50   ~ 0
12 Conductor 30ga ribbon cable\nNets tied at J1\nRecycled from Mast V1
$Comp
L sczws:af3964 U?
U 1 1 60E2C836
P 1100 1150
F 0 "U?" H 1618 1196 50  0001 L CNN
F 1 "af3964" H 900 800 50  0000 L CNN
F 2 "" H 1300 1050 50  0001 C CNN
F 3 "" H 1300 1050 50  0001 C CNN
	1    1100 1150
	1    0    0    -1  
$EndComp
$Comp
L Connector:DB9_Female J23
U 1 1 60E2C83C
P 6250 1350
F 0 "J23" H 6430 1396 50  0000 L CNN
F 1 "DB9_Female" H 6430 1305 50  0000 L CNN
F 2 "" H 6250 1350 50  0001 C CNN
F 3 " ~" H 6250 1350 50  0001 C CNN
	1    6250 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 950  1400 950 
Wire Wire Line
	1400 1150 1550 1150
Wire Wire Line
	1400 1350 1550 1350
Wire Wire Line
	1400 1250 1550 1250
Text Notes 5750 950  0    50   ~ 0
3V3
Text Notes 5750 1150 0    50   ~ 0
SCL
Text Notes 5750 1250 0    50   ~ 0
SDA
Text Notes 5750 1750 0    50   ~ 0
GND
NoConn ~ 5950 1050
NoConn ~ 5950 1550
NoConn ~ 2350 1050
NoConn ~ 2350 1550
Text Notes 700  900  0    50   ~ 0
UV
$Comp
L Connector:Conn_01x05_Male J25
U 1 1 60E2C868
P 1750 1150
F 0 "J25" H 1950 1500 50  0000 R CNN
F 1 "Conn_01x05_Male" H 1858 1440 50  0001 C CNN
F 2 "" H 1750 1150 50  0001 C CNN
F 3 "~" H 1750 1150 50  0001 C CNN
	1    1750 1150
	-1   0    0    -1  
$EndComp
Text Notes 2400 950  0    50   ~ 0
3V3
Text Notes 2400 1150 0    50   ~ 0
GND
Text Notes 2400 1250 0    50   ~ 0
SCL
Text Notes 2400 1350 0    50   ~ 0
SDA
Wire Wire Line
	1400 1050 1550 1050
Wire Wire Line
	2350 1150 4500 1150
Wire Wire Line
	4500 1150 4500 1750
Wire Wire Line
	4700 1150 5950 1150
Wire Wire Line
	2350 1250 4700 1250
Wire Wire Line
	4700 1250 4700 1150
Wire Wire Line
	4800 1250 5950 1250
Text Notes 6250 1900 0    50   ~ 0
To J22
Wire Wire Line
	2350 950  5950 950 
Wire Wire Line
	4500 1750 5950 1750
$Comp
L Connector:DB9_Male J22
U 1 1 60E9CD13
P 7950 1350
F 0 "J22" H 8400 1350 50  0000 C CNN
F 1 "DB9_Male" H 8350 1450 50  0000 C CNN
F 2 "" H 7950 1350 50  0001 C CNN
F 3 " ~" H 7950 1350 50  0001 C CNN
	1    7950 1350
	-1   0    0    1   
$EndComp
NoConn ~ 8250 1650
Wire Wire Line
	8250 950  8700 950 
Wire Wire Line
	8250 1150 8700 1150
Wire Wire Line
	8250 1250 8700 1250
Wire Wire Line
	8250 1750 8700 1750
NoConn ~ 8250 1550
NoConn ~ 8250 1450
NoConn ~ 8250 1350
NoConn ~ 8250 1050
NoConn ~ 8700 1050
NoConn ~ 8700 1350
NoConn ~ 8700 1450
NoConn ~ 8700 1550
NoConn ~ 8700 1650
Text Notes 8000 750  0    50   ~ 0
UV to PM interconnect
Wire Wire Line
	2350 1350 4800 1350
Wire Wire Line
	4800 1350 4800 1250
$Comp
L Connector:Conn_01x07_Female J24
U 1 1 60E2C862
P 2150 1250
F 0 "J24" H 2000 1700 50  0000 L CNN
F 1 "Conn_01x07_Female" H 2178 1185 50  0001 L CNN
F 2 "" H 2150 1250 50  0001 C CNN
F 3 "~" H 2150 1250 50  0001 C CNN
	1    2150 1250
	-1   0    0    -1  
$EndComp
NoConn ~ 2350 1450
$Comp
L Connector:DB9_Female J26
U 1 1 60ED29DD
P 8450 4250
F 0 "J26" H 8630 4296 50  0000 L CNN
F 1 "DB9_Female" H 8630 4205 50  0000 L CNN
F 2 "" H 8450 4250 50  0001 C CNN
F 3 " ~" H 8450 4250 50  0001 C CNN
	1    8450 4250
	1    0    0    -1  
$EndComp
Text Notes 7950 3850 0    50   ~ 0
3V3
Text Notes 7950 4050 0    50   ~ 0
SCL
Text Notes 7950 4150 0    50   ~ 0
SDA
Text Notes 7950 4250 0    50   ~ 0
5V0
Text Notes 7950 4350 0    50   ~ 0
RXD
Text Notes 7950 4550 0    50   ~ 0
TXD
Text Notes 7950 4650 0    50   ~ 0
GND
NoConn ~ 8150 3950
NoConn ~ 8150 4450
$Comp
L Connector:DB9_Male J27
U 1 1 60ED29F6
P 6150 2950
F 0 "J27" H 6068 2258 50  0000 C CNN
F 1 "DB9_Male" H 6068 2349 50  0000 C CNN
F 2 "" H 6150 2950 50  0001 C CNN
F 3 " ~" H 6150 2950 50  0001 C CNN
	1    6150 2950
	-1   0    0    1   
$EndComp
Text Notes 8450 4800 0    50   ~ 0
To J2
Text Notes 6500 2400 0    50   ~ 0
To J21
Wire Wire Line
	6450 4250 8150 4250
Wire Wire Line
	6450 4350 8150 4350
Wire Wire Line
	6450 4550 8150 4550
NoConn ~ 6450 3950
NoConn ~ 6450 4450
Wire Wire Line
	6450 3850 7700 3850
Wire Wire Line
	6450 4150 7400 4150
Wire Wire Line
	6450 4050 7500 4050
Wire Wire Line
	6450 4650 7300 4650
Wire Wire Line
	6450 2550 7700 2550
Wire Wire Line
	7700 2550 7700 3850
Connection ~ 7700 3850
Wire Wire Line
	7700 3850 8150 3850
Wire Wire Line
	6450 2750 7500 2750
Wire Wire Line
	7500 2750 7500 4050
Connection ~ 7500 4050
Wire Wire Line
	7500 4050 8150 4050
Wire Wire Line
	6450 2850 7400 2850
Wire Wire Line
	7400 2850 7400 4150
Connection ~ 7400 4150
Wire Wire Line
	7400 4150 8150 4150
Wire Wire Line
	6450 3350 7300 3350
Wire Wire Line
	7300 3350 7300 4650
Connection ~ 7300 4650
Wire Wire Line
	7300 4650 8150 4650
NoConn ~ 6450 2650
NoConn ~ 6450 2950
NoConn ~ 6450 3050
NoConn ~ 6450 3150
NoConn ~ 6450 3250
Text Notes 6500 3700 0    50   ~ 0
To J13
Text Notes 7400 1650 0    50   ~ 0
To J23
Text Notes 9200 1600 0    50   ~ 0
To J27
Text Notes 850  5200 0    50   ~ 0
NC
Text Notes 6800 4850 0    50   ~ 0
PM Shelter Interconnect
Text Notes 2250 1700 0    50   ~ 0
UV Sensor Shelter
Text Notes 1800 7750 0    50   ~ 0
PM Housing
$EndSCHEMATC
