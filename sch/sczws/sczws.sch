EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "Santa Cruz Weather Station"
Date "2020-11-06"
Rev ""
Comp "Daniel Kelley and Associates"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L sczws:ads-ws1 U?
U 1 1 5F9D8344
P 1750 4650
F 0 "U?" H 1850 5565 50  0001 C CNN
F 1 "ads-ws1" H 1500 3850 50  0000 C CNN
F 2 "" H 1950 4650 50  0001 C CNN
F 3 "" H 1950 4650 50  0001 C CNN
	1    1750 4650
	1    0    0    -1  
$EndComp
$Comp
L sczws:af3660 U?
U 1 1 5F9D9057
P 1550 2150
F 0 "U?" H 2068 2146 50  0001 L CNN
F 1 "af3660" H 1350 1650 50  0000 L CNN
F 2 "" H 1750 2150 50  0001 C CNN
F 3 "" H 1750 2150 50  0001 C CNN
	1    1550 2150
	1    0    0    -1  
$EndComp
$Comp
L sczws:af3686 U?
U 1 1 5F9D9BDA
P 1550 3250
F 0 "U?" H 2118 3296 50  0001 L CNN
F 1 "af3686" H 1350 2750 50  0000 L CNN
F 2 "" H 1800 3550 50  0001 C CNN
F 3 "" H 1800 3550 50  0001 C CNN
	1    1550 3250
	1    0    0    -1  
$EndComp
$Comp
L sczws:af3964 U?
U 1 1 5F9DA1E9
P 1550 1200
F 0 "U?" H 2068 1246 50  0001 L CNN
F 1 "af3964" H 1350 850 50  0000 L CNN
F 2 "" H 1750 1100 50  0001 C CNN
F 3 "" H 1750 1100 50  0001 C CNN
	1    1550 1200
	1    0    0    -1  
$EndComp
$Comp
L sczws:bbg-ws-cpu U?
U 1 1 5F9DA84E
P 6400 5800
F 0 "U?" H 6525 6365 50  0001 C CNN
F 1 "bbg-ws-cpu" H 6250 5350 50  0000 C CNN
F 2 "" H 6600 5400 50  0001 C CNN
F 3 "" H 6600 5400 50  0001 C CNN
	1    6400 5800
	1    0    0    -1  
$EndComp
$Comp
L sczws:mos7703usb U?
U 1 1 5F9DB1AB
P 5200 5800
F 0 "U?" H 4975 6465 50  0001 C CNN
F 1 "mos7703usb" H 5350 5250 50  0000 C CNN
F 2 "" H 5200 5800 50  0001 C CNN
F 3 "" H 5200 5800 50  0001 C CNN
	1    5200 5800
	-1   0    0    -1  
$EndComp
$Comp
L sczws:rain U?
U 1 1 5F9DBEA2
P 850 4900
F 0 "U?" H 1169 4946 50  0001 L CNN
F 1 "rain" H 650 4700 50  0000 L CNN
F 2 "" H 850 4900 50  0001 C CNN
F 3 "" H 850 4900 50  0001 C CNN
	1    850  4900
	1    0    0    -1  
$EndComp
$Comp
L sczws:wind U?
U 1 1 5F9DC401
P 850 4350
F 0 "U?" H 1219 4421 50  0001 L CNN
F 1 "wind" H 650 4050 50  0000 L CNN
F 2 "" H 850 4350 50  0001 C CNN
F 3 "" H 850 4350 50  0001 C CNN
	1    850  4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 4200 1250 4200
Wire Wire Line
	1150 4300 1250 4300
Wire Wire Line
	1150 4400 1250 4400
Wire Wire Line
	1150 4500 1250 4500
Wire Wire Line
	1150 4850 1250 4850
Wire Wire Line
	1150 4950 1250 4950
Wire Wire Line
	2250 4700 2850 4700
Wire Wire Line
	5700 5650 5800 5650
Wire Wire Line
	5700 5750 5800 5750
Wire Wire Line
	5700 5850 5800 5850
Wire Wire Line
	5700 5950 5800 5950
$Comp
L Connector:DB9_Female J1
U 1 1 5FA06761
P 7450 2300
F 0 "J1" H 7630 2346 50  0000 L CNN
F 1 "DB9_Female" H 7630 2255 50  0000 L CNN
F 2 "" H 7450 2300 50  0001 C CNN
F 3 " ~" H 7450 2300 50  0001 C CNN
	1    7450 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1900 1850 1900
Wire Wire Line
	2000 1000 1850 1000
Wire Wire Line
	1850 1200 2000 1200
Wire Wire Line
	1850 1400 2000 1400
Wire Wire Line
	1850 1300 2000 1300
Text Notes 6950 1900 0    50   ~ 0
3V3
Text Notes 6950 2100 0    50   ~ 0
SCL
Text Notes 6950 2200 0    50   ~ 0
SDA
Text Notes 6950 2300 0    50   ~ 0
5V0
Text Notes 6950 2400 0    50   ~ 0
RXD
Text Notes 6950 2600 0    50   ~ 0
TXD
Text Notes 6950 2700 0    50   ~ 0
GND
NoConn ~ 7150 2000
NoConn ~ 7150 2500
Wire Wire Line
	1850 2400 2000 2400
Wire Wire Line
	1850 2200 2000 2200
Wire Wire Line
	1850 2100 2000 2100
NoConn ~ 3550 2000
NoConn ~ 3550 2300
NoConn ~ 3550 2500
NoConn ~ 2800 1100
NoConn ~ 4350 3100
NoConn ~ 4350 3400
Wire Wire Line
	4700 5800 4600 5800
NoConn ~ 4700 5400
NoConn ~ 4700 5700
NoConn ~ 4700 5900
NoConn ~ 4700 6000
NoConn ~ 4700 6100
NoConn ~ 4700 6200
$Comp
L Connector:DB9_Female J2
U 1 1 5FA4B58F
P 9350 6000
F 0 "J2" H 9530 6046 50  0000 L CNN
F 1 "DB9_Female" H 9530 5955 50  0000 L CNN
F 2 "" H 9350 6000 50  0001 C CNN
F 3 " ~" H 9350 6000 50  0001 C CNN
	1    9350 6000
	1    0    0    -1  
$EndComp
Text Notes 8850 5600 0    50   ~ 0
3V3
NoConn ~ 9050 5700
NoConn ~ 9050 6200
Text Notes 8850 5800 0    50   ~ 0
SCL
Text Notes 8850 5900 0    50   ~ 0
SDA
Text Notes 8850 6000 0    50   ~ 0
5V0
Text Notes 8850 6100 0    50   ~ 0
RXD
Text Notes 8850 6300 0    50   ~ 0
TXD
Text Notes 8850 6400 0    50   ~ 0
GND
Wire Wire Line
	8200 5800 9050 5800
Wire Wire Line
	8200 5900 9050 5900
Wire Wire Line
	8200 6000 8650 6000
Wire Wire Line
	8650 6000 8650 6100
Wire Wire Line
	8650 6100 9050 6100
Wire Wire Line
	8200 6100 8550 6100
Wire Wire Line
	8550 6100 8550 6300
Wire Wire Line
	8550 6300 9050 6300
$Comp
L power:GND #PWR?
U 1 1 5FA67741
P 7200 6250
F 0 "#PWR?" H 7200 6000 50  0001 C CNN
F 1 "GND" H 7205 6077 50  0000 C CNN
F 2 "" H 7200 6250 50  0001 C CNN
F 3 "" H 7200 6250 50  0001 C CNN
	1    7200 6250
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5FA67C79
P 7300 5250
F 0 "#PWR?" H 7300 5100 50  0001 C CNN
F 1 "+3V3" H 7315 5423 50  0000 C CNN
F 2 "" H 7300 5250 50  0001 C CNN
F 3 "" H 7300 5250 50  0001 C CNN
	1    7300 5250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FA68320
P 7050 5250
F 0 "#PWR?" H 7050 5100 50  0001 C CNN
F 1 "+5V" H 7065 5423 50  0000 C CNN
F 2 "" H 7050 5250 50  0001 C CNN
F 3 "" H 7050 5250 50  0001 C CNN
	1    7050 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 6000 9050 6000
Wire Wire Line
	8200 5700 8550 5700
Wire Wire Line
	8750 5700 8750 6000
Wire Wire Line
	8200 5500 8450 5500
Wire Wire Line
	8450 5500 8450 6400
$Comp
L power:GND #PWR?
U 1 1 5FA7880D
P 4600 6550
F 0 "#PWR?" H 4600 6300 50  0001 C CNN
F 1 "GND" H 4605 6377 50  0000 C CNN
F 2 "" H 4600 6550 50  0001 C CNN
F 3 "" H 4600 6550 50  0001 C CNN
	1    4600 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 4500 2750 4500
Wire Wire Line
	2750 4500 2750 5000
NoConn ~ 2250 4100
NoConn ~ 2250 4200
NoConn ~ 2250 4300
NoConn ~ 2250 4400
NoConn ~ 2250 4600
NoConn ~ 2250 4900
NoConn ~ 2250 5000
NoConn ~ 2250 5200
$Comp
L Connector:DB9_Female J3
U 1 1 5FAE29F7
P 3700 4600
F 0 "J3" H 3350 5300 50  0000 L CNN
F 1 "DB9_Female" H 3350 5200 50  0000 L CNN
F 2 "" H 3700 4600 50  0001 C CNN
F 3 " ~" H 3700 4600 50  0001 C CNN
	1    3700 4600
	1    0    0    -1  
$EndComp
$Comp
L Connector:DB9_Male J4
U 1 1 5FAE3892
P 9350 4400
F 0 "J4" H 9268 3708 50  0000 C CNN
F 1 "DB9_Male" H 9268 3799 50  0000 C CNN
F 2 "" H 9350 4400 50  0001 C CNN
F 3 " ~" H 9350 4400 50  0001 C CNN
	1    9350 4400
	1    0    0    1   
$EndComp
$Comp
L power:Earth_Protective #PWR?
U 1 1 5FAEE9BB
P 8750 4900
F 0 "#PWR?" H 9000 4650 50  0001 C CNN
F 1 "Earth_Protective" H 9200 4750 50  0001 C CNN
F 2 "" H 8750 4800 50  0001 C CNN
F 3 "~" H 8750 4800 50  0001 C CNN
	1    8750 4900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9050 4700 8750 4700
Wire Wire Line
	8750 4700 8750 4900
Wire Wire Line
	2850 4700 2850 4400
Wire Wire Line
	2850 4400 3400 4400
Wire Wire Line
	3000 4800 3000 4600
Wire Wire Line
	3000 4600 3400 4600
Wire Wire Line
	2250 4800 3000 4800
Wire Wire Line
	3400 5000 2750 5000
$Comp
L power:Earth_Protective #PWR?
U 1 1 5FB20670
P 3100 5400
F 0 "#PWR?" H 3350 5150 50  0001 C CNN
F 1 "Earth_Protective" H 3550 5250 50  0001 C CNN
F 2 "" H 3100 5300 50  0001 C CNN
F 3 "~" H 3100 5300 50  0001 C CNN
	1    3100 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 4900 3100 4900
Wire Wire Line
	3100 4900 3100 5400
Text Notes 1150 2900 0    50   ~ 0
PM
Text Notes 1150 950  0    50   ~ 0
UV
Text Notes 1150 1900 0    50   ~ 0
ENV
$Comp
L Connector:Conn_01x07_Male J6
U 1 1 5FB34D99
P 2200 2200
F 0 "J6" H 2350 2650 50  0000 R CNN
F 1 "Conn_01x07_Male" H 2172 2133 50  0001 R CNN
F 2 "" H 2200 2200 50  0001 C CNN
F 3 "~" H 2200 2200 50  0001 C CNN
	1    2200 2200
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x07_Female J9
U 1 1 5FB36285
P 3350 2200
F 0 "J9" H 3200 2650 50  0000 L CNN
F 1 "Conn_01x07_Female" H 3378 2135 50  0001 L CNN
F 2 "" H 3350 2200 50  0001 C CNN
F 3 "~" H 3350 2200 50  0001 C CNN
	1    3350 2200
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Male J5
U 1 1 5FB372A8
P 2200 1200
F 0 "J5" H 2400 1550 50  0000 R CNN
F 1 "Conn_01x05_Male" H 2308 1490 50  0001 C CNN
F 2 "" H 2200 1200 50  0001 C CNN
F 3 "~" H 2200 1200 50  0001 C CNN
	1    2200 1200
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Female J8
U 1 1 5FB38217
P 2600 1200
F 0 "J8" H 2450 1500 50  0000 L CNN
F 1 "Conn_01x05_Female" H 2628 1135 50  0001 L CNN
F 2 "" H 2600 1200 50  0001 C CNN
F 3 "~" H 2600 1200 50  0001 C CNN
	1    2600 1200
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Male J7
U 1 1 5FB39025
P 2200 3200
F 0 "J7" H 2350 3650 50  0000 R CNN
F 1 "Conn_01x08_Male" H 2172 3083 50  0001 R CNN
F 2 "" H 2200 3200 50  0001 C CNN
F 3 "~" H 2200 3200 50  0001 C CNN
	1    2200 3200
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Female J10
U 1 1 5FB3A3B8
P 4150 3200
F 0 "J10" H 4050 3650 50  0000 C CNN
F 1 "Conn_01x08_Female" H 4042 3594 50  0001 C CNN
F 2 "" H 4150 3200 50  0001 C CNN
F 3 "~" H 4150 3200 50  0001 C CNN
	1    4150 3200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1850 2900 2000 2900
Wire Wire Line
	1850 3000 2000 3000
Wire Wire Line
	1850 3200 2000 3200
Wire Wire Line
	1850 3300 2000 3300
Text Notes 3600 1900 0    50   ~ 0
3V3
Text Notes 3600 2100 0    50   ~ 0
GND
Text Notes 4350 2900 0    50   ~ 0
5V0
Text Notes 4350 3000 0    50   ~ 0
GND
Text Notes 4350 3200 0    50   ~ 0
RXD
Text Notes 4350 3300 0    50   ~ 0
TXD
Text Notes 3600 2200 0    50   ~ 0
SCL
Text Notes 2850 1300 0    50   ~ 0
SCL
Text Notes 3600 2400 0    50   ~ 0
SDA
Text Notes 2850 1400 0    50   ~ 0
SDA
Text Notes 2850 1000 0    50   ~ 0
3V3
Text Notes 2850 1200 0    50   ~ 0
GND
NoConn ~ 4350 3500
NoConn ~ 4350 3600
Wire Wire Line
	1850 1100 2000 1100
Wire Wire Line
	1850 2000 2000 2000
Wire Wire Line
	1850 2300 2000 2300
Wire Wire Line
	1850 2500 2000 2500
Wire Wire Line
	1850 3100 2000 3100
Wire Wire Line
	1850 3400 2000 3400
Wire Wire Line
	1850 3500 2000 3500
Wire Wire Line
	1850 3600 2000 3600
Wire Wire Line
	3550 1900 6900 1900
Wire Wire Line
	2800 1000 6900 1000
Wire Wire Line
	6900 1000 6900 1900
Connection ~ 6900 1900
Wire Wire Line
	6900 1900 7150 1900
Wire Wire Line
	6900 3000 6900 2700
Wire Wire Line
	6900 2700 7150 2700
Wire Wire Line
	4350 3000 6900 3000
Wire Wire Line
	3550 2100 5700 2100
Wire Wire Line
	5700 2100 5700 2700
Wire Wire Line
	5700 2700 5800 2700
Connection ~ 6900 2700
Wire Wire Line
	2800 1200 5800 1200
Wire Wire Line
	5800 1200 5800 2700
Connection ~ 5800 2700
Wire Wire Line
	5800 2700 6900 2700
Wire Wire Line
	2800 1300 5900 1300
Wire Wire Line
	5900 1300 5900 2100
Wire Wire Line
	5900 2100 7150 2100
Wire Wire Line
	3550 2200 5900 2200
Wire Wire Line
	5900 2200 5900 2100
Connection ~ 5900 2100
Wire Wire Line
	2800 1400 6000 1400
Wire Wire Line
	6000 1400 6000 2200
Wire Wire Line
	6000 2200 7150 2200
Wire Wire Line
	3550 2400 6000 2400
Wire Wire Line
	6000 2400 6000 2200
Connection ~ 6000 2200
Wire Wire Line
	6100 2900 6100 2300
Wire Wire Line
	6100 2300 7150 2300
Wire Wire Line
	4350 2900 6100 2900
Wire Wire Line
	6200 3200 6200 2400
Wire Wire Line
	6200 2400 7150 2400
Wire Wire Line
	4350 3200 6200 3200
Wire Wire Line
	6300 3300 6300 2600
Wire Wire Line
	6300 2600 7150 2600
Wire Wire Line
	4350 3300 6300 3300
NoConn ~ 9050 4300
NoConn ~ 9050 4600
NoConn ~ 9050 4500
NoConn ~ 3400 4500
NoConn ~ 3400 4700
NoConn ~ 3400 4800
Wire Wire Line
	4600 5800 4600 6100
$Comp
L Connector:DB9_Female J11
U 1 1 5FD2EB5B
P 7900 4400
F 0 "J11" H 7550 5100 50  0000 L CNN
F 1 "DB9_Female" H 7550 5000 50  0000 L CNN
F 2 "" H 7900 4400 50  0001 C CNN
F 3 " ~" H 7900 4400 50  0001 C CNN
	1    7900 4400
	-1   0    0    -1  
$EndComp
$Comp
L Connector:DB9_Male J12
U 1 1 5FD39207
P 4150 5700
F 0 "J12" H 4068 5008 50  0000 C CNN
F 1 "DB9_Male" H 4068 5099 50  0000 C CNN
F 2 "" H 4150 5700 50  0001 C CNN
F 3 " ~" H 4150 5700 50  0001 C CNN
	1    4150 5700
	-1   0    0    1   
$EndComp
Wire Wire Line
	4700 5500 4450 5500
Wire Wire Line
	4700 5600 4600 5600
Wire Wire Line
	4600 5600 4600 5700
Wire Wire Line
	4600 5700 4450 5700
Wire Wire Line
	8200 4200 9050 4200
Wire Wire Line
	8200 4400 9050 4400
Wire Wire Line
	4450 6100 4600 6100
Connection ~ 4600 6100
Wire Wire Line
	4600 6100 4600 6550
Wire Wire Line
	8200 4800 9050 4800
Text Notes 9500 5000 2    50   ~ 0
EXT \nto J3
Text Notes 9300 6700 0    50   ~ 0
EXT\nTo J1
Text Notes 8350 5100 2    50   ~ 0
INT\nTo J12
Text Notes 4100 6450 0    50   ~ 0
USB Adapter\nTo J11
Text Notes 7450 2850 0    50   ~ 0
To J2
Text Notes 2650 1550 0    50   ~ 0
To J5
Text Notes 3450 2650 0    50   ~ 0
To J6
Text Notes 4300 3750 0    50   ~ 0
To J7
Text Notes 3400 5200 0    50   ~ 0
To J4
Text Notes 4900 1000 0    50   ~ 0
1
Text Notes 4900 1200 0    50   ~ 0
2
Text Notes 4900 1300 0    50   ~ 0
3
Text Notes 4900 1400 0    50   ~ 0
4
Text Notes 4900 1900 0    50   ~ 0
5
Text Notes 4900 2100 0    50   ~ 0
6
Text Notes 4900 2200 0    50   ~ 0
7
Text Notes 4900 2400 0    50   ~ 0
8
Text Notes 4900 2900 0    50   ~ 0
9
Text Notes 4900 3000 0    50   ~ 0
10\n
Text Notes 4900 3200 0    50   ~ 0
11
Text Notes 4900 3300 0    50   ~ 0
12
Text Notes 7700 900  0    50   ~ 0
3V3
Text Notes 7700 1000 0    50   ~ 0
SCL
Text Notes 7700 1100 0    50   ~ 0
SDA
Text Notes 7700 1200 0    50   ~ 0
5V0
Text Notes 7700 1300 0    50   ~ 0
RXD
Text Notes 7700 1400 0    50   ~ 0
TXD
Text Notes 7700 1500 0    50   ~ 0
GND
Text Notes 7950 800  0    50   ~ 0
J8
Text Notes 8100 800  0    50   ~ 0
J9
Text Notes 8250 800  0    50   ~ 0
J10
Text Notes 8450 800  0    50   ~ 0
J1
Text Notes 8750 800  0    50   ~ 0
W1a
Text Notes 9000 800  0    50   ~ 0
W1b
Text Notes 9250 800  0    50   ~ 0
W2a
Text Notes 9500 800  0    50   ~ 0
W2b
Text Notes 7950 900  0    50   ~ 0
1
Text Notes 8100 900  0    50   ~ 0
5
Text Notes 8450 900  0    50   ~ 0
1
Text Notes 8750 900  0    50   ~ 0
RED
Text Notes 9000 1000 0    50   ~ 0
WHT
Text Notes 9000 1100 0    50   ~ 0
BLK
Text Notes 9250 1200 0    50   ~ 0
RED
Text Notes 9250 1500 0    50   ~ 0
BLK
Text Notes 9500 1300 0    50   ~ 0
WHT
Text Notes 9500 1400 0    50   ~ 0
BLK
Text Notes 7950 1500 0    50   ~ 0
2
Text Notes 8100 1500 0    50   ~ 0
6
Text Notes 8250 1500 0    50   ~ 0
10
Text Notes 8450 1500 0    50   ~ 0
5
Text Notes 7950 1000 0    50   ~ 0
3
Text Notes 8100 1000 0    50   ~ 0
7
Text Notes 7950 1100 0    50   ~ 0
4
Text Notes 8100 1100 0    50   ~ 0
8
Text Notes 8250 1200 0    50   ~ 0
9
Text Notes 8250 1300 0    50   ~ 0
11
Text Notes 8250 1400 0    50   ~ 0
12
Text Notes 8450 1000 0    50   ~ 0
2
Text Notes 8450 1100 0    50   ~ 0
7
Text Notes 8450 1200 0    50   ~ 0
3
Text Notes 8450 1300 0    50   ~ 0
8
Text Notes 8450 1400 0    50   ~ 0
9
Text Notes 5150 3500 0    50   ~ 0
12 Conductor 30ga ribbon cable\nNets tied at J1
Wire Notes Line
	9450 800  9450 1550
Wire Notes Line
	7900 1550 7900 800 
Wire Notes Line
	8050 800  8050 1550
Wire Notes Line
	8200 800  8200 1550
Wire Notes Line
	8400 800  8400 1550
Wire Notes Line
	8550 800  8550 1550
Wire Notes Line
	9200 800  9200 1550
Wire Notes Line
	9700 800  9700 1550
Wire Notes Line
	8950 800  8950 1550
Wire Notes Line
	6100 4350 6100 4450
Wire Notes Line
	6050 4350 6050 4450
Wire Notes Line
	6150 4350 6150 4450
Wire Notes Line
	6200 4350 6200 4450
Wire Notes Line
	6250 4350 6250 4450
Wire Notes Line
	6300 4350 6300 4450
Wire Notes Line
	6350 4350 6350 4450
Wire Notes Line
	6400 4350 6400 4450
Wire Notes Line
	6450 4350 6450 4450
Wire Notes Line
	6500 4350 6500 4450
Wire Notes Line
	6550 4350 6550 4450
Wire Notes Line
	6600 4350 6600 4450
Wire Notes Line
	6650 4350 6650 4450
Wire Notes Line
	6700 4350 6700 4450
Wire Notes Line
	6750 4350 6750 4450
Wire Notes Line
	6800 4350 6800 4450
Wire Notes Line
	6850 4350 6850 4450
Wire Notes Line
	6900 4350 6900 4450
Wire Notes Line
	6950 4350 6950 4450
Wire Notes Line
	7000 4350 7000 4450
Wire Notes Line
	7050 4350 7050 4450
Wire Notes Line
	7100 4350 7100 4450
Wire Notes Line
	7150 4350 7150 4450
Text Notes 6000 4500 0    50   ~ 0
1
Text Notes 6000 4350 0    50   ~ 0
2
Wire Notes Line
	7200 4350 7200 4450
Wire Notes Line
	6050 4350 7200 4350
Wire Notes Line
	6050 4450 7200 4450
Wire Notes Line
	6050 4400 7200 4400
Wire Notes Line
	6050 4600 6200 4600
Wire Notes Line
	6200 4600 6200 4650
Wire Notes Line
	6200 4650 6050 4650
Wire Notes Line
	6050 4650 6050 4600
Wire Notes Line
	6500 4600 6550 4600
Wire Notes Line
	6550 4600 6550 4700
Wire Notes Line
	6550 4700 6500 4700
Wire Notes Line
	6500 4700 6500 4600
Wire Notes Line
	6600 4200 6700 4200
Wire Notes Line
	6700 4200 6700 4150
Wire Notes Line
	6700 4150 6600 4150
Wire Notes Line
	6600 4150 6600 4200
Text Notes 6050 4750 0    50   ~ 0
1,3,5
Text Notes 6500 4800 0    50   ~ 0
19,20
Text Notes 6600 4100 0    50   ~ 0
24,26
Wire Notes Line
	6100 4650 6100 4600
Wire Notes Line
	6150 4650 6150 4600
Wire Notes Line
	6500 4650 6550 4650
Wire Notes Line
	6650 4150 6650 4200
Text Notes 5900 4950 0    50   ~ 0
P9 Connections
Wire Notes Line
	5900 3950 7250 3950
Wire Notes Line
	7250 3950 7250 4850
Wire Notes Line
	7250 4850 5900 4850
Wire Notes Line
	5900 4850 5900 3950
Text Notes 7900 1650 0    50   ~ 0
J1 Harness
$Comp
L Connector:DB9_Male P2
U 1 1 5FF13D40
P 9800 2600
F 0 "P2" H 9700 3300 50  0000 L CNN
F 1 "DB9_Male" H 9700 3200 50  0000 L CNN
F 2 "" H 9800 2600 50  0001 C CNN
F 3 " ~" H 9800 2600 50  0001 C CNN
	1    9800 2600
	1    0    0    -1  
$EndComp
$Comp
L Connector:DB9_Male P1
U 1 1 5FF14A4C
P 8750 2600
F 0 "P1" H 8668 3292 50  0000 C CNN
F 1 "DB9_Male" H 8668 3201 50  0000 C CNN
F 2 "" H 8750 2600 50  0001 C CNN
F 3 " ~" H 8750 2600 50  0001 C CNN
	1    8750 2600
	-1   0    0    -1  
$EndComp
NoConn ~ 9050 2400
NoConn ~ 9050 2900
NoConn ~ 9500 2900
NoConn ~ 9500 2400
Wire Wire Line
	9050 2200 9500 2200
Wire Wire Line
	9050 2300 9500 2300
Wire Wire Line
	9050 2500 9500 2500
Wire Wire Line
	9050 2600 9500 2600
Wire Wire Line
	9050 2700 9500 2700
Wire Wire Line
	9050 2800 9500 2800
Wire Wire Line
	9050 3000 9500 3000
Wire Notes Line
	9100 2650 9200 2650
Wire Notes Line
	9200 2650 9200 3050
Wire Notes Line
	9200 3050 9100 3050
Wire Notes Line
	9100 3050 9100 2650
Wire Notes Line
	9350 2150 9450 2150
Wire Notes Line
	9450 2150 9450 2650
Wire Notes Line
	9450 2650 9350 2650
Wire Notes Line
	9350 2650 9350 2150
Text Notes 9100 3200 0    50   ~ 0
W1
Text Notes 9350 2100 0    50   ~ 0
W2
Text Notes 8350 3400 0    50   ~ 0
W1,W2 - Belden 9502 shielded 4 conductor cable\nShields grounded at P2
Wire Notes Line
	7900 800  8550 800 
Wire Notes Line
	7900 1550 8550 1550
Wire Notes Line
	9700 800  8700 800 
Wire Notes Line
	8700 800  8700 1550
Wire Notes Line
	8700 1550 9700 1550
Text Notes 8700 1650 0    50   ~ 0
Cable Pair Assignments
Text Notes 8450 3100 0    50   ~ 0
To J1
Text Notes 9900 3100 0    50   ~ 0
To J2
Text Notes 9400 5250 2    50   ~ 0
From 110VAC\nEarth ground
Text Notes 2850 5750 0    50   ~ 0
To Mast
Text Notes 5850 6500 0    50   ~ 0
BBG Power from USB-micro\nwall wart power supply
$Comp
L Connector:Conn_01x07_Female J?
U 1 1 6004B2C4
P 7750 5800
F 0 "J?" H 7778 5780 50  0001 L CNN
F 1 "Conn_01x07_Female" H 7778 5735 50  0001 L CNN
F 2 "" H 7750 5800 50  0001 C CNN
F 3 "~" H 7750 5800 50  0001 C CNN
	1    7750 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 5500 7200 5500
Wire Wire Line
	7000 5600 7300 5600
Wire Wire Line
	7000 5700 7050 5700
Wire Wire Line
	7000 5800 7550 5800
Wire Wire Line
	7000 5900 7550 5900
Wire Wire Line
	7000 6000 7550 6000
Wire Wire Line
	7000 6100 7550 6100
$Comp
L Connector:Conn_01x03_Male J13
U 1 1 6007B100
P 8000 5600
F 0 "J13" H 7900 5600 50  0000 C CNN
F 1 "Conn_01x03_Male" H 8108 5790 50  0001 C CNN
F 2 "" H 8000 5600 50  0001 C CNN
F 3 "~" H 8000 5600 50  0001 C CNN
	1    8000 5600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J14
U 1 1 6007C202
P 8000 5800
F 0 "J14" H 7900 5750 50  0000 C CNN
F 1 "Conn_01x02_Male" H 8108 5890 50  0001 C CNN
F 2 "" H 8000 5800 50  0001 C CNN
F 3 "~" H 8000 5800 50  0001 C CNN
	1    8000 5800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J15
U 1 1 6007C75D
P 8000 6000
F 0 "J15" H 7900 5950 50  0000 C CNN
F 1 "Conn_01x02_Male" H 8108 6090 50  0001 C CNN
F 2 "" H 8000 6000 50  0001 C CNN
F 3 "~" H 8000 6000 50  0001 C CNN
	1    8000 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 5600 9050 5600
Wire Wire Line
	8450 6400 9050 6400
Wire Wire Line
	7050 5250 7050 5700
Connection ~ 7050 5700
Wire Wire Line
	7050 5700 7550 5700
Wire Wire Line
	7300 5250 7300 5600
Connection ~ 7300 5600
Wire Wire Line
	7300 5600 7550 5600
Wire Wire Line
	7200 6250 7200 5500
Connection ~ 7200 5500
Wire Wire Line
	7200 5500 7550 5500
Text Notes 8300 5500 0    50   ~ 0
1
Text Notes 8300 5600 0    50   ~ 0
2
Text Notes 8300 5700 0    50   ~ 0
3
Text Notes 8300 5800 0    50   ~ 0
4
Text Notes 8300 5900 0    50   ~ 0
5
Text Notes 8300 6000 0    50   ~ 0
6
Text Notes 8300 6100 0    50   ~ 0
7
Text Notes 8950 4200 2    50   ~ 0
1
Text Notes 8950 4400 2    50   ~ 0
2
Text Notes 8950 4800 2    50   ~ 0
3
Text Notes 8950 4700 2    50   ~ 0
4
NoConn ~ 8200 4000
NoConn ~ 8200 4100
NoConn ~ 8200 4300
NoConn ~ 8200 4500
NoConn ~ 8200 4600
NoConn ~ 8200 4700
Text Notes 3150 4400 0    50   ~ 0
BRN
Text Notes 3150 4600 0    50   ~ 0
BLK
Text Notes 3150 4900 0    50   ~ 0
GRY
Text Notes 3150 5000 0    50   ~ 0
GRN
Text Notes 2600 4100 0    50   ~ 0
Prewired\nCable and\nConnector
Text Notes 8900 3950 2    50   ~ 0
4 Conductor\nRibbon Cable
Text Notes 8300 6600 0    50   ~ 0
7 Conductor\nRibbon Cable
Text Notes 6250 4650 0    50   ~ 0
J13
Text Notes 6600 4650 0    50   ~ 0
J14
Text Notes 7050 4550 0    50   ~ 0
P9
Text Notes 6750 4200 0    50   ~ 0
J15
Wire Wire Line
	8550 5700 8550 4000
Wire Wire Line
	8550 4000 9050 4000
Connection ~ 8550 5700
Wire Wire Line
	8550 5700 8750 5700
Wire Wire Line
	9050 4100 8450 4100
Wire Wire Line
	8450 4100 8450 5500
Connection ~ 8450 5500
Wire Wire Line
	3400 4300 2650 4300
Wire Wire Line
	2650 4300 2650 5100
Wire Wire Line
	2650 5100 2250 5100
Wire Wire Line
	3400 4200 2550 4200
Wire Wire Line
	2550 4200 2550 5300
Wire Wire Line
	2550 5300 2250 5300
Text Notes 3150 4200 0    50   ~ 0
BLU
Text Notes 3150 4300 0    50   ~ 0
YEL
$EndSCHEMATC
