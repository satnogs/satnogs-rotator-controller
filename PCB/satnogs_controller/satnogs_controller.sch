EESchema Schematic File Version 2
LIBS:74xgxx
LIBS:74xx
LIBS:ac-dc
LIBS:actel
LIBS:adc-dac
LIBS:Altera
LIBS:analog_devices
LIBS:analog_switches
LIBS:atmel
LIBS:audio
LIBS:brooktre
LIBS:cmos4000
LIBS:cmos_ieee
LIBS:conn
LIBS:contrib
LIBS:cypress
LIBS:dc-dc
LIBS:device
LIBS:digital-audio
LIBS:diode
LIBS:display
LIBS:dsp
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic
LIBS:hc11
LIBS:intel
LIBS:interface
LIBS:ir
LIBS:Lattice
LIBS:linear
LIBS:logo
LIBS:maxim
LIBS:memory
LIBS:microchip
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic32mcu
LIBS:microcontrollers
LIBS:motor_drivers
LIBS:motorola
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:opto
LIBS:Oscillators
LIBS:philips
LIBS:power
LIBS:powerint
LIBS:Power_Management
LIBS:pspice
LIBS:references
LIBS:regul
LIBS:relays
LIBS:rfcom
LIBS:sensors
LIBS:silabs
LIBS:siliconi
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:switches
LIBS:texas
LIBS:transf
LIBS:transistors
LIBS:ttl_ieee
LIBS:valves
LIBS:video
LIBS:Xicor
LIBS:xilinx
LIBS:Zilog
LIBS:satnogs
LIBS:satnogs_controller-cache
EELAYER 25 0
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
L CONN_01X18 P5
U 1 1 568A994A
P 8990 2840
F 0 "P5" H 8990 3790 50  0000 C CNN
F 1 "CONN_01X18" V 9090 2840 50  0000 C CNN
F 2 "satnogs:pin_socket_18" H 8990 2840 60  0001 C CNN
F 3 "-" H 8990 2840 60  0001 C CNN
F 4 "SparkFun PRT-00115" H 8990 2840 60  0001 C CNN "Distributor"
F 5 "-" H 8990 2840 60  0001 C CNN "Manufacturer"
F 6 "1x40 female header PTH pitch 2.54" H 8990 2840 60  0001 C CNN "Package"
F 7 "https://www.sparkfun.com/products/115" H 8990 2840 60  0001 C CNN "Notes"
F 8 "1.42€" H 8990 2840 60  0001 C CNN "Price"
	1    8990 2840
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X02 P3
U 1 1 568AA1BD
P 3480 1410
F 0 "P3" H 3480 1560 50  0000 C CNN
F 1 "CONN_02X02" H 3480 1260 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x02" H 3480 210 60  0001 C CNN
F 3 "https://cdn.sparkfun.com/datasheets/Prototyping/16188.pdf" H 3480 210 60  0001 C CNN
F 4 "SparkFun PRT-12791" H 3480 1410 60  0001 C CNN "Distributor"
F 5 "-" H 3480 1410 60  0001 C CNN "Manufacturer"
F 6 "2x23 pin male PTH header" H 3480 1410 60  0001 C CNN "Package"
F 7 "https://www.sparkfun.com/products/12791" H 3480 1410 60  0001 C CNN "Notes"
F 8 "0.9€" H 3480 1410 60  0001 C CNN "Price"
	1    3480 1410
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X04 P1
U 1 1 568AA2DF
P 2040 1520
F 0 "P1" H 2040 1770 50  0000 C CNN
F 1 "CONN_01X04" V 2140 1520 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x04" H 2040 1520 60  0001 C CNN
F 3 "-" H 2040 1520 60  0001 C CNN
F 4 "SparkFun PRT-00553" H 2040 1520 60  0001 C CNN "Distributor"
F 5 "-" H 2040 1520 60  0001 C CNN "Manufacturer"
F 6 "1x40 pin right-angle PTH pitch 2.54" H 2040 1520 60  0001 C CNN "Package"
F 7 "https://www.sparkfun.com/products/553" H 2040 1520 60  0001 C CNN "Notes"
F 8 "1.85€" H 2040 1520 60  0001 C CNN "Price"
	1    2040 1520
	1    0    0    -1  
$EndComp
NoConn ~ 8790 1990
$Comp
L +5V #PWR01
U 1 1 568AF055
P 8390 2190
F 0 "#PWR01" H 8390 2040 50  0001 C CNN
F 1 "+5V" H 8390 2330 50  0000 C CNN
F 2 "" H 8390 2190 60  0000 C CNN
F 3 "" H 8390 2190 60  0000 C CNN
	1    8390 2190
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR02
U 1 1 568AF072
P 8200 2090
F 0 "#PWR02" H 8200 1840 50  0001 C CNN
F 1 "GND" H 8200 1940 50  0000 C CNN
F 2 "" H 8200 2090 60  0000 C CNN
F 3 "" H 8200 2090 60  0000 C CNN
	1    8200 2090
	0    1    1    0   
$EndComp
Text Label 8690 2290 2    60   ~ 0
M1IN2
Text Label 8690 2390 2    60   ~ 0
M1IN1
Text Label 8690 2690 2    60   ~ 0
SF
Text Label 8690 2790 2    60   ~ 0
M1FB
Text Label 8690 2890 2    60   ~ 0
EN
Text Label 8690 3190 2    60   ~ 0
M2IN2
Text Label 8690 3290 2    60   ~ 0
M2IN1
Text Label 8690 3590 2    60   ~ 0
SF
Text Label 8690 3690 2    60   ~ 0
M2FB
$Comp
L +5V #PWR03
U 1 1 568B1A2F
P 8390 2490
F 0 "#PWR03" H 8390 2340 50  0001 C CNN
F 1 "+5V" H 8390 2630 50  0000 C CNN
F 2 "" H 8390 2490 60  0000 C CNN
F 3 "" H 8390 2490 60  0000 C CNN
	1    8390 2490
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR04
U 1 1 568B1A70
P 8200 2590
F 0 "#PWR04" H 8200 2340 50  0001 C CNN
F 1 "GND" H 8200 2440 50  0000 C CNN
F 2 "" H 8200 2590 60  0000 C CNN
F 3 "" H 8200 2590 60  0000 C CNN
	1    8200 2590
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR05
U 1 1 568B2108
P 8380 3390
F 0 "#PWR05" H 8380 3240 50  0001 C CNN
F 1 "+5V" H 8380 3530 50  0000 C CNN
F 2 "" H 8380 3390 60  0000 C CNN
F 3 "" H 8380 3390 60  0000 C CNN
	1    8380 3390
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR06
U 1 1 568B256F
P 8200 3490
F 0 "#PWR06" H 8200 3240 50  0001 C CNN
F 1 "GND" H 8200 3340 50  0000 C CNN
F 2 "" H 8200 3490 60  0000 C CNN
F 3 "" H 8200 3490 60  0000 C CNN
	1    8200 3490
	0    1    1    0   
$EndComp
$Comp
L CONN_02X04 P4
U 1 1 568B74B0
P 6960 1370
F 0 "P4" H 6960 1620 50  0000 C CNN
F 1 "CONN_02X04" H 6960 1120 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x04" H 6960 170 60  0001 C CNN
F 3 "https://cdn.sparkfun.com/datasheets/Prototyping/16188.pdf" H 6960 170 60  0001 C CNN
F 4 "SparkFun PRT-12791" H 6960 1370 60  0001 C CNN "Distributor"
F 5 "-" H 6960 1370 60  0001 C CNN "Manufacturer"
F 6 "2x23 pin male PTH header" H 6960 1370 60  0001 C CNN "Package"
F 7 "https://www.sparkfun.com/products/12791" H 6960 1370 60  0001 C CNN "Notes"
F 8 "-" H 6960 1370 60  0001 C CNN "Price"
	1    6960 1370
	1    0    0    -1  
$EndComp
Text Label 6600 1320 2    60   ~ 0
D15
Text Label 6600 1420 2    60   ~ 0
SCL2
Text Label 6600 1520 2    60   ~ 0
SDA2
Text Label 1740 1470 2    60   ~ 0
B
Text Label 1740 1570 2    60   ~ 0
A
$Comp
L +5V #PWR07
U 1 1 568BA0DB
P 7450 1180
F 0 "#PWR07" H 7450 1030 50  0001 C CNN
F 1 "+5V" H 7450 1320 50  0000 C CNN
F 2 "" H 7450 1180 60  0000 C CNN
F 3 "" H 7450 1180 60  0000 C CNN
	1    7450 1180
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 568BA22A
P 7450 1560
F 0 "#PWR08" H 7450 1310 50  0001 C CNN
F 1 "GND" H 7450 1410 50  0000 C CNN
F 2 "" H 7450 1560 60  0000 C CNN
F 3 "" H 7450 1560 60  0000 C CNN
	1    7450 1560
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 568BBC8F
P 3140 1600
F 0 "#PWR09" H 3140 1350 50  0001 C CNN
F 1 "GND" H 3140 1450 50  0000 C CNN
F 2 "" H 3140 1600 60  0000 C CNN
F 3 "" H 3140 1600 60  0000 C CNN
	1    3140 1600
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR010
U 1 1 568BBFC2
P 3140 1240
F 0 "#PWR010" H 3140 1090 50  0001 C CNN
F 1 "+5V" H 3140 1380 50  0000 C CNN
F 2 "" H 3140 1240 60  0000 C CNN
F 3 "" H 3140 1240 60  0000 C CNN
	1    3140 1240
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 568BD452
P 5230 2430
F 0 "#PWR011" H 5230 2180 50  0001 C CNN
F 1 "GND" H 5230 2280 50  0000 C CNN
F 2 "" H 5230 2430 60  0000 C CNN
F 3 "" H 5230 2430 60  0000 C CNN
	1    5230 2430
	0    -1   -1   0   
$EndComp
$Comp
L Pro_Micro U1
U 1 1 568BE423
P 4540 2880
F 0 "U1" H 4840 2180 60  0000 C CNN
F 1 "Pro_Micro" H 4540 3580 60  0000 C CNN
F 2 "satnogs:Pro_Micro" H 4540 2780 60  0001 C CNN
F 3 "-" H 4540 2780 60  0001 C CNN
F 4 "SparkFun PRT-00115" H 4540 2880 60  0001 C CNN "Distributor"
F 5 "-" H 4540 2880 60  0001 C CNN "Manufacturer"
F 6 "1x40 female header PTH pitch 2.54" H 4540 2880 60  0001 C CNN "Package"
F 7 "https://www.sparkfun.com/products/115" H 4540 2880 60  0001 C CNN "Notes"
F 8 "1.42€" H 4540 2880 60  0001 C CNN "Price"
	1    4540 2880
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR012
U 1 1 568C244E
P 5570 2630
F 0 "#PWR012" H 5570 2480 50  0001 C CNN
F 1 "+5V" H 5570 2770 50  0000 C CNN
F 2 "" H 5570 2630 60  0000 C CNN
F 3 "" H 5570 2630 60  0000 C CNN
	1    5570 2630
	0    1    1    0   
$EndComp
Text Label 5230 3330 0    60   ~ 0
SDA2
Text Label 5230 3230 0    60   ~ 0
SCL2
Text Label 5230 3130 0    60   ~ 0
D15
Text Label 3850 2730 2    60   ~ 0
SDA1
Text Label 3850 2830 2    60   ~ 0
SCL1
Text Label 3850 2330 2    60   ~ 0
TX
Text Label 3850 2430 2    60   ~ 0
RX
$Comp
L GND #PWR013
U 1 1 568C711B
P 3800 2580
F 0 "#PWR013" H 3800 2330 50  0001 C CNN
F 1 "GND" H 3800 2430 50  0000 C CNN
F 2 "" H 3800 2580 60  0000 C CNN
F 3 "" H 3800 2580 60  0000 C CNN
	1    3800 2580
	0    1    1    0   
$EndComp
Text Label 5230 3430 0    60   ~ 0
M2IN1
Text Label 3850 3430 2    60   ~ 0
M2IN2
Text Label 3850 3230 2    60   ~ 0
SW2
Text Label 3850 3330 2    60   ~ 0
EN
Text Label 3850 3130 2    60   ~ 0
M1IN1
Text Label 3850 3030 2    60   ~ 0
M1IN2
Text Label 3850 2930 2    60   ~ 0
SW1
Text Label 5230 2930 0    60   ~ 0
M1FB
Text Label 5230 2830 0    60   ~ 0
SF
Text Label 5230 3030 0    60   ~ 0
M2FB
Text Label 2160 2700 0    60   ~ 0
B
Text Label 2160 2900 0    60   ~ 0
A
$Comp
L GND #PWR014
U 1 1 568CFD46
P 1660 3310
F 0 "#PWR014" H 1660 3060 50  0001 C CNN
F 1 "GND" H 1660 3160 50  0000 C CNN
F 2 "" H 1660 3310 60  0000 C CNN
F 3 "" H 1660 3310 60  0000 C CNN
	1    1660 3310
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR015
U 1 1 568D0276
P 1660 2260
F 0 "#PWR015" H 1660 2110 50  0001 C CNN
F 1 "+5V" H 1660 2400 50  0000 C CNN
F 2 "" H 1660 2260 60  0000 C CNN
F 3 "" H 1660 2260 60  0000 C CNN
	1    1660 2260
	1    0    0    -1  
$EndComp
Text Label 1160 2550 2    60   ~ 0
TX
$Comp
L C_Small C1
U 1 1 568D2DE9
P 2400 2790
F 0 "C1" H 2410 2860 50  0000 L CNN
F 1 "0.1u" H 2410 2710 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2400 2790 60  0001 C CNN
F 3 "http://www.mouser.com/ds/2/427/vjw1bcbascomseries-223529.pdf" H 2400 2790 60  0001 C CNN
F 4 "Mouser 77-VJ0805Y104KXJCBC " H 2400 2790 60  0001 C CNN "Distributor"
F 5 "VJ0805Y104KXJCW1BC" H 2400 2790 60  0001 C CNN "Manufacturer"
F 6 "0805" H 2400 2790 60  0001 C CNN "Package"
F 7 "16VDC" H 2400 2790 60  0001 C CNN "Notes"
F 8 "0.118€" H 2400 2790 60  0001 C CNN "Price"
	1    2400 2790
	-1   0    0    1   
$EndComp
$Comp
L CP C2
U 1 1 568DB4B3
P 6290 2830
F 0 "C2" H 6315 2930 50  0000 L CNN
F 1 "10u" H 6315 2730 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D6.3_L11.2_P2.5" H 6328 2680 30  0001 C CNN
F 3 "http://www.mouser.com/ds/2/315/ABA0000CE12-465472.pdf" H 6290 2830 60  0001 C CNN
F 4 "Mouser 667-ECA-1EM100B " H 6290 2830 60  0001 C CNN "Distributor"
F 5 "ECA-1EM100B" H 6290 2830 60  0001 C CNN "Manufacturer"
F 6 "ThroughHole:C_Radial_D6.3_L11.2_P2.5" H 6290 2830 60  0001 C CNN "Package"
F 7 "10uF 25VDC 85C" H 6290 2830 60  0001 C CNN "Notes"
F 8 "0.136€" H 6290 2830 60  0001 C CNN "Price"
	1    6290 2830
	1    0    0    -1  
$EndComp
Text Label 5230 2730 0    60   ~ 0
RTS
Text Label 6600 1220 2    60   ~ 0
SF
$Comp
L PWR_FLAG #FLG016
U 1 1 568E938B
P 1750 1300
F 0 "#FLG016" H 1750 1395 50  0001 C CNN
F 1 "PWR_FLAG" H 1750 1550 50  0000 C CNN
F 2 "" H 1750 1300 60  0000 C CNN
F 3 "" H 1750 1300 60  0000 C CNN
	1    1750 1300
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG017
U 1 1 568EAC4F
P 1480 1740
F 0 "#FLG017" H 1480 1835 50  0001 C CNN
F 1 "PWR_FLAG" H 1480 1980 50  0000 C CNN
F 2 "" H 1480 1740 60  0000 C CNN
F 3 "" H 1480 1740 60  0000 C CNN
	1    1480 1740
	-1   0    0    1   
$EndComp
Text Label 1160 2650 2    60   ~ 0
RTS
Text Label 1160 2950 2    60   ~ 0
RTS
Text Label 1690 1670 0    60   ~ 0
VIN
$Comp
L GND #PWR018
U 1 1 5690F6B2
P 1540 1270
F 0 "#PWR018" H 1540 1020 50  0001 C CNN
F 1 "GND" H 1540 1120 50  0000 C CNN
F 2 "" H 1540 1270 60  0000 C CNN
F 3 "" H 1540 1270 60  0000 C CNN
	1    1540 1270
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X03 P2
U 1 1 56913B34
P 5160 1360
F 0 "P2" H 5160 1560 50  0000 C CNN
F 1 "CONN_02X03" H 5160 1160 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03" H 5160 160 60  0001 C CNN
F 3 "https://cdn.sparkfun.com/datasheets/Prototyping/16188.pdf" H 5160 160 60  0001 C CNN
F 4 "SparkFun PRT-12791" H 5160 1360 60  0001 C CNN "Distributor"
F 5 "-" H 5160 1360 60  0001 C CNN "Manufacturer"
F 6 "2x23 pin male PTH header" H 5160 1360 60  0001 C CNN "Package"
F 7 "https://www.sparkfun.com/products/12791" H 5160 1360 60  0001 C CNN "Notes"
F 8 "-" H 5160 1360 60  0001 C CNN "Price"
	1    5160 1360
	1    0    0    -1  
$EndComp
Text Label 4800 1260 2    60   ~ 0
SW2
Text Label 5520 1260 0    60   ~ 0
SW1
$Comp
L GND #PWR019
U 1 1 56915BD8
P 5760 1380
F 0 "#PWR019" H 5760 1130 50  0001 C CNN
F 1 "GND" H 5760 1230 50  0000 C CNN
F 2 "" H 5760 1380 60  0000 C CNN
F 3 "" H 5760 1380 60  0000 C CNN
	1    5760 1380
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR020
U 1 1 56916577
P 5480 1460
F 0 "#PWR020" H 5480 1310 50  0001 C CNN
F 1 "+5V" H 5480 1600 50  0000 C CNN
F 2 "" H 5480 1460 60  0000 C CNN
F 3 "" H 5480 1460 60  0000 C CNN
	1    5480 1460
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR021
U 1 1 5691721C
P 4850 1460
F 0 "#PWR021" H 4850 1310 50  0001 C CNN
F 1 "+5V" H 4850 1600 50  0000 C CNN
F 2 "" H 4850 1460 60  0000 C CNN
F 3 "" H 4850 1460 60  0000 C CNN
	1    4850 1460
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR022
U 1 1 56915C29
P 4570 1380
F 0 "#PWR022" H 4570 1130 50  0001 C CNN
F 1 "GND" H 4570 1230 50  0000 C CNN
F 2 "" H 4570 1380 60  0000 C CNN
F 3 "" H 4570 1380 60  0000 C CNN
	1    4570 1380
	1    0    0    -1  
$EndComp
$Comp
L MAX485 U2
U 1 1 56926E3E
P 1660 2800
F 0 "U2" H 1260 3300 60  0000 C CNN
F 1 "MAX485" H 1310 3200 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 1660 2800 60  0001 C CNN
F 3 "http://www.mouser.com/ds/2/146/SP483_SP485_100_062711-16528.pdf" H 1660 2800 60  0001 C CNN
F 4 "Mouser 701-SP485CN-L " H 1660 2800 60  0001 C CNN "Distributor"
F 5 "SP485CN-L" H 1660 2800 60  0001 C CNN "Manufacturer"
F 6 "SOIC-8 Narrow" H 1660 2800 60  0001 C CNN "Package"
F 7 "Operating Supply Voltage: 5 V" H 1660 2800 60  0001 C CNN "Notes"
F 8 "0.86€" H 1660 2800 60  0001 C CNN "Price"
	1    1660 2800
	1    0    0    -1  
$EndComp
Text Label 1160 3050 2    60   ~ 0
RX
$Comp
L +5V #PWR023
U 1 1 569284F6
P 2400 2600
F 0 "#PWR023" H 2400 2450 50  0001 C CNN
F 1 "+5V" H 2400 2740 50  0000 C CNN
F 2 "" H 2400 2600 60  0000 C CNN
F 3 "" H 2400 2600 60  0000 C CNN
	1    2400 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR024
U 1 1 5692851B
P 2400 3020
F 0 "#PWR024" H 2400 2770 50  0001 C CNN
F 1 "GND" H 2400 2870 50  0000 C CNN
F 2 "" H 2400 3020 60  0000 C CNN
F 3 "" H 2400 3020 60  0000 C CNN
	1    2400 3020
	1    0    0    -1  
$EndComp
Text Label 3050 1020 0    60   ~ 0
I2C-1
Text Label 7920 1860 0    60   ~ 0
DC_MOTORS
Text Label 6370 980  0    60   ~ 0
I2C-2/DevPins
Text Label 4490 1040 0    60   ~ 0
EndStops
Text Label 980  990  0    60   ~ 0
RS485
Text Label 3120 2100 0    60   ~ 0
Microcontroller
$Comp
L SW_PUSH-RESCUE-satnogs_controller SW1
U 1 1 5692605D
P 6010 2830
F 0 "SW1" H 6010 2670 50  0000 C CNN
F 1 "RST" H 6010 2750 50  0000 C CNN
F 2 "satnogs:smd_push2" H 6010 2830 60  0001 C CNN
F 3 "https://www.sparkfun.com/datasheets/Components/Buttons/SMD-Button.pdf" H 6010 2830 60  0001 C CNN
F 4 "SparkFun COM-08720" H 6010 2830 60  0001 C CNN "Distributor"
F 5 "-" H 6010 2830 60  0001 C CNN "Manufacturer"
F 6 "-" H 6010 2830 60  0001 C CNN "Package"
F 7 "https://www.sparkfun.com/products/8720" H 6010 2830 60  0001 C CNN "Notes"
F 8 "0.9€" H 6010 2830 60  0001 C CNN "Price"
	1    6010 2830
	0    1    1    0   
$EndComp
Text Label 3880 1360 0    60   ~ 0
SDA1
Text Label 3880 1460 0    60   ~ 0
SCL1
Text Label 9530 5630 0    60   ~ 0
Note
Text Label 9530 5750 0    60   ~ 0
M1IN1->DIRM1->D6
Text Label 9530 5870 0    60   ~ 0
M1IN2->STEPM1->D5
Text Label 9530 5980 0    60   ~ 0
M2IN1->DIRM2->D10
Text Label 9530 6090 0    60   ~ 0
M2IN2->STEPM2->D9
$Comp
L POLOLU_A4988 U3
U 1 1 56BF6E89
P 3600 4650
F 0 "U3" H 3600 5100 60  0000 C CNN
F 1 "POLOLU_A4988" V 3600 4650 50  0000 C CNN
F 2 "satnogs:SWDIP8_.6W" H 3600 4650 60  0001 C CNN
F 3 "-" H 3600 4650 60  0001 C CNN
F 4 "SparkFun PRT-00115" H 3600 4650 60  0001 C CNN "Distributor"
F 5 "-" H 3600 4650 60  0001 C CNN "Manufacturer"
F 6 "1x40 female header PTH pitch 2.54" H 3600 4650 60  0001 C CNN "Package"
F 7 "https://www.sparkfun.com/products/115" H 3600 4650 60  0001 C CNN "Notes"
F 8 "1.42€" H 3600 4650 60  0001 C CNN "Price"
	1    3600 4650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR025
U 1 1 56BF7622
P 2900 4400
F 0 "#PWR025" H 2900 4250 50  0001 C CNN
F 1 "+5V" H 2900 4540 50  0000 C CNN
F 2 "" H 2900 4400 60  0000 C CNN
F 3 "" H 2900 4400 60  0000 C CNN
	1    2900 4400
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR026
U 1 1 56BF7D44
P 2730 4300
F 0 "#PWR026" H 2730 4050 50  0001 C CNN
F 1 "GND" H 2730 4150 50  0000 C CNN
F 2 "" H 2730 4300 60  0000 C CNN
F 3 "" H 2730 4300 60  0000 C CNN
	1    2730 4300
	0    1    1    0   
$EndComp
Text Label 2730 4500 2    60   ~ 0
1BM1
Text Label 2730 4600 2    60   ~ 0
1AM1
Text Label 2730 4700 2    60   ~ 0
2AM1
Text Label 2730 4800 2    60   ~ 0
2BM1
$Comp
L GND #PWR027
U 1 1 56BF8B54
P 2730 4900
F 0 "#PWR027" H 2730 4650 50  0001 C CNN
F 1 "GND" H 2730 4750 50  0000 C CNN
F 2 "" H 2730 4900 60  0000 C CNN
F 3 "" H 2730 4900 60  0000 C CNN
	1    2730 4900
	0    1    1    0   
$EndComp
$Comp
L CP C3
U 1 1 56BF91ED
P 2770 5270
F 0 "C3" H 2795 5370 50  0000 L CNN
F 1 "100u" H 2795 5170 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D6.3_L11.2_P2.5" H 2808 5120 30  0001 C CNN
F 3 "http://www.mouser.com/ds/2/315/ABA0000CE12-465472.pdf" H 2770 5270 60  0001 C CNN
F 4 "Mouser 667-ECA-1VM101" H 2770 5270 60  0001 C CNN "Distributor"
F 5 "ECA-1VM101" H 2770 5270 60  0001 C CNN "Manufacturer"
F 6 "ThroughHole:C_Radial_D6.3_L11.2_P2.5" H 2770 5270 60  0001 C CNN "Package"
F 7 "100u 35V 85C" H 2770 5270 60  0001 C CNN "Notes"
F 8 "0.235€" H 2770 5270 60  0001 C CNN "Price"
	1    2770 5270
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR028
U 1 1 56BF9813
P 2770 5510
F 0 "#PWR028" H 2770 5260 50  0001 C CNN
F 1 "GND" H 2770 5360 50  0000 C CNN
F 2 "" H 2770 5510 60  0000 C CNN
F 3 "" H 2770 5510 60  0000 C CNN
	1    2770 5510
	1    0    0    -1  
$EndComp
Text Label 2770 5000 0    60   ~ 0
VMOT
$Comp
L Jumper_NO_Small JP1
U 1 1 56BFB286
P 4570 4700
F 0 "JP1" H 4690 4750 50  0000 C CNN
F 1 "Jumper_NO_Small" H 4580 4640 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 4570 4700 50  0001 C CNN
F 3 "https://cdn.sparkfun.com/datasheets/Prototyping/16188.pdf" H 4570 4700 50  0001 C CNN
F 4 "SparkFun PRT-12791" H 4570 4700 60  0001 C CNN "Distributor"
F 5 "-" H 4570 4700 60  0001 C CNN "Manufacturer"
F 6 "2x23 pin male PTH header" H 4570 4700 60  0001 C CNN "Package"
F 7 "https://www.sparkfun.com/products/12791" H 4570 4700 60  0001 C CNN "Notes"
F 8 "-" H 4570 4700 60  0001 C CNN "Price"
	1    4570 4700
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NO_Small JP2
U 1 1 56BFB387
P 4570 4800
F 0 "JP2" H 4690 4850 50  0000 C CNN
F 1 "Jumper_NO_Small" H 4580 4740 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 4570 4800 50  0001 C CNN
F 3 "https://cdn.sparkfun.com/datasheets/Prototyping/16188.pdf" H 4570 4800 50  0001 C CNN
F 4 "SparkFun PRT-12791" H 4570 4800 60  0001 C CNN "Distributor"
F 5 "-" H 4570 4800 60  0001 C CNN "Manufacturer"
F 6 "2x23 pin male PTH header" H 4570 4800 60  0001 C CNN "Package"
F 7 "https://www.sparkfun.com/products/12791" H 4570 4800 60  0001 C CNN "Notes"
F 8 "-" H 4570 4800 60  0001 C CNN "Price"
	1    4570 4800
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NO_Small JP3
U 1 1 56BFB3DE
P 4570 4900
F 0 "JP3" H 4690 4950 50  0000 C CNN
F 1 "Jumper_NO_Small" H 4580 4840 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 4570 4900 50  0001 C CNN
F 3 "https://cdn.sparkfun.com/datasheets/Prototyping/16188.pdf" H 4570 4900 50  0001 C CNN
F 4 "SparkFun PRT-12791" H 4570 4900 60  0001 C CNN "Distributor"
F 5 "-" H 4570 4900 60  0001 C CNN "Manufacturer"
F 6 "2x23 pin male PTH header" H 4570 4900 60  0001 C CNN "Package"
F 7 "https://www.sparkfun.com/products/12791" H 4570 4900 60  0001 C CNN "Notes"
F 8 "-" H 4570 4900 60  0001 C CNN "Price"
	1    4570 4900
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR029
U 1 1 56BFC0F7
P 4830 4570
F 0 "#PWR029" H 4830 4420 50  0001 C CNN
F 1 "+5V" H 4830 4710 50  0000 C CNN
F 2 "" H 4830 4570 60  0000 C CNN
F 3 "" H 4830 4570 60  0000 C CNN
	1    4830 4570
	1    0    0    -1  
$EndComp
Text Label 4470 5000 0    60   ~ 0
EN
Text Label 4460 4900 2    60   ~ 0
MS1M1
$Comp
L R R4
U 1 1 56BFCE50
P 5130 4730
F 0 "R4" V 5210 4730 50  0000 C CNN
F 1 "100k" V 5130 4730 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5060 4730 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/427/dcrcwe3-109170.pdf" H 5130 4730 50  0001 C CNN
F 4 "Mouser 71-CRCW0805J-100K-E3" V 5130 4730 60  0001 C CNN "Distributor"
F 5 "CRCW0805100KJNEA" V 5130 4730 60  0001 C CNN "Manufacturer"
F 6 "0805" V 5130 4730 60  0001 C CNN "Package"
F 7 "1/8W 5%" V 5130 4730 60  0001 C CNN "Notes"
F 8 "0.091€" V 5130 4730 60  0001 C CNN "Price"
	1    5130 4730
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR030
U 1 1 56BFD4D7
P 5130 5040
F 0 "#PWR030" H 5130 4790 50  0001 C CNN
F 1 "GND" H 5130 4890 50  0000 C CNN
F 2 "" H 5130 5040 60  0000 C CNN
F 3 "" H 5130 5040 60  0000 C CNN
	1    5130 5040
	1    0    0    -1  
$EndComp
Text Label 5130 4420 0    60   ~ 0
MS1M1
Text Label 4470 4300 0    60   ~ 0
M1IN1
Text Label 4470 4400 0    60   ~ 0
M1IN2
$Comp
L CONN_01X04 P7
U 1 1 56BFEE7D
P 2210 4650
F 0 "P7" H 2210 4900 50  0000 C CNN
F 1 "CONN_01X04" V 2310 4650 50  0000 C CNN
F 2 "Connect:bornier4" H 2210 4650 50  0001 C CNN
F 3 "https://www.sparkfun.com/datasheets/Prototyping/Screw-Terminal-5mm.pdf" H 2210 4650 50  0001 C CNN
F 4 "SparkFun PRT-08432" H 2210 4650 60  0001 C CNN "Distributor"
F 5 "-" H 2210 4650 60  0001 C CNN "Manufacturer"
F 6 "5mm Pitch 4-Pin" H 2210 4650 60  0001 C CNN "Package"
F 7 "https://www.sparkfun.com/products/8432" H 2210 4650 60  0001 C CNN "Notes"
F 8 "1.8€" H 2210 4650 60  0001 C CNN "Price"
	1    2210 4650
	-1   0    0    1   
$EndComp
$Comp
L POLOLU_A4988 U4
U 1 1 56C0018D
P 7510 4650
F 0 "U4" H 7510 5100 60  0000 C CNN
F 1 "POLOLU_A4988" V 7510 4650 50  0000 C CNN
F 2 "satnogs:SWDIP8_.6W" H 7510 4650 60  0001 C CNN
F 3 "-" H 7510 4650 60  0001 C CNN
F 4 "SparkFun PRT-00115" H 7510 4650 60  0001 C CNN "Distributor"
F 5 "-" H 7510 4650 60  0001 C CNN "Manufacturer"
F 6 "1x40 female header PTH pitch 2.54" H 7510 4650 60  0001 C CNN "Package"
F 7 "https://www.sparkfun.com/products/115" H 7510 4650 60  0001 C CNN "Notes"
F 8 "-" H 7510 4650 60  0001 C CNN "Price"
	1    7510 4650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR031
U 1 1 56C00193
P 6810 4400
F 0 "#PWR031" H 6810 4250 50  0001 C CNN
F 1 "+5V" H 6810 4540 50  0000 C CNN
F 2 "" H 6810 4400 60  0000 C CNN
F 3 "" H 6810 4400 60  0000 C CNN
	1    6810 4400
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR032
U 1 1 56C00199
P 6640 4300
F 0 "#PWR032" H 6640 4050 50  0001 C CNN
F 1 "GND" H 6640 4150 50  0000 C CNN
F 2 "" H 6640 4300 60  0000 C CNN
F 3 "" H 6640 4300 60  0000 C CNN
	1    6640 4300
	0    1    1    0   
$EndComp
Text Label 6640 4500 2    60   ~ 0
1BM2
Text Label 6640 4600 2    60   ~ 0
1AM2
Text Label 6640 4700 2    60   ~ 0
2AM2
Text Label 6640 4800 2    60   ~ 0
2BM2
$Comp
L GND #PWR033
U 1 1 56C001A9
P 6640 4900
F 0 "#PWR033" H 6640 4650 50  0001 C CNN
F 1 "GND" H 6640 4750 50  0000 C CNN
F 2 "" H 6640 4900 60  0000 C CNN
F 3 "" H 6640 4900 60  0000 C CNN
	1    6640 4900
	0    1    1    0   
$EndComp
$Comp
L CP C4
U 1 1 56C001B2
P 6680 5270
F 0 "C4" H 6705 5370 50  0000 L CNN
F 1 "100u" H 6705 5170 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D6.3_L11.2_P2.5" H 6718 5120 30  0001 C CNN
F 3 "http://www.mouser.com/ds/2/315/ABA0000CE12-465472.pdf" H 6680 5270 60  0001 C CNN
F 4 "Mouser 667-ECA-1VM101" H 6680 5270 60  0001 C CNN "Distributor"
F 5 "ECA-1VM101" H 6680 5270 60  0001 C CNN "Manufacturer"
F 6 "ThroughHole:C_Radial_D6.3_L11.2_P2.5" H 6680 5270 60  0001 C CNN "Package"
F 7 "100u 35V 85C" H 6680 5270 60  0001 C CNN "Notes"
F 8 "0.235€" H 6680 5270 60  0001 C CNN "Price"
	1    6680 5270
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR034
U 1 1 56C001B8
P 6680 5510
F 0 "#PWR034" H 6680 5260 50  0001 C CNN
F 1 "GND" H 6680 5360 50  0000 C CNN
F 2 "" H 6680 5510 60  0000 C CNN
F 3 "" H 6680 5510 60  0000 C CNN
	1    6680 5510
	1    0    0    -1  
$EndComp
Text Label 6680 5000 0    60   ~ 0
VMOT
$Comp
L Jumper_NO_Small JP4
U 1 1 56C001C9
P 8480 4700
F 0 "JP4" H 8600 4750 50  0000 C CNN
F 1 "Jumper_NO_Small" H 8490 4640 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 8480 4700 50  0001 C CNN
F 3 "https://cdn.sparkfun.com/datasheets/Prototyping/16188.pdf" H 8480 4700 50  0001 C CNN
F 4 "SparkFun PRT-12791" H 8480 4700 60  0001 C CNN "Distributor"
F 5 "-" H 8480 4700 60  0001 C CNN "Manufacturer"
F 6 "2x23 pin male PTH header" H 8480 4700 60  0001 C CNN "Package"
F 7 "https://www.sparkfun.com/products/12791" H 8480 4700 60  0001 C CNN "Notes"
F 8 "-" H 8480 4700 60  0001 C CNN "Price"
	1    8480 4700
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NO_Small JP5
U 1 1 56C001CF
P 8480 4800
F 0 "JP5" H 8600 4850 50  0000 C CNN
F 1 "Jumper_NO_Small" H 8490 4740 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 8480 4800 50  0001 C CNN
F 3 "https://cdn.sparkfun.com/datasheets/Prototyping/16188.pdf" H 8480 4800 50  0001 C CNN
F 4 "SparkFun PRT-12791" H 8480 4800 60  0001 C CNN "Distributor"
F 5 "-" H 8480 4800 60  0001 C CNN "Manufacturer"
F 6 "2x23 pin male PTH header" H 8480 4800 60  0001 C CNN "Package"
F 7 "https://www.sparkfun.com/products/12791" H 8480 4800 60  0001 C CNN "Notes"
F 8 "-" H 8480 4800 60  0001 C CNN "Price"
	1    8480 4800
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NO_Small JP6
U 1 1 56C001D5
P 8480 4900
F 0 "JP6" H 8600 4950 50  0000 C CNN
F 1 "Jumper_NO_Small" H 8490 4840 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 8480 4900 50  0001 C CNN
F 3 "https://cdn.sparkfun.com/datasheets/Prototyping/16188.pdf" H 8480 4900 50  0001 C CNN
F 4 "SparkFun PRT-12791" H 8480 4900 60  0001 C CNN "Distributor"
F 5 "-" H 8480 4900 60  0001 C CNN "Manufacturer"
F 6 "2x23 pin male PTH header" H 8480 4900 60  0001 C CNN "Package"
F 7 "https://www.sparkfun.com/products/12791" H 8480 4900 60  0001 C CNN "Notes"
F 8 "-" H 8480 4900 60  0001 C CNN "Price"
	1    8480 4900
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR035
U 1 1 56C001E3
P 8740 4570
F 0 "#PWR035" H 8740 4420 50  0001 C CNN
F 1 "+5V" H 8740 4710 50  0000 C CNN
F 2 "" H 8740 4570 60  0000 C CNN
F 3 "" H 8740 4570 60  0000 C CNN
	1    8740 4570
	1    0    0    -1  
$EndComp
Text Label 8380 5000 0    60   ~ 0
EN
Text Label 8370 4900 2    60   ~ 0
MS1M2
$Comp
L R R7
U 1 1 56C001EB
P 9040 4730
F 0 "R7" V 9120 4730 50  0000 C CNN
F 1 "100k" V 9040 4730 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8970 4730 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/427/dcrcwe3-109170.pdf" H 9040 4730 50  0001 C CNN
F 4 "Mouser 71-CRCW0805J-100K-E3 " V 9040 4730 60  0001 C CNN "Distributor"
F 5 "CRCW0805100KJNEA" V 9040 4730 60  0001 C CNN "Manufacturer"
F 6 "0805" V 9040 4730 60  0001 C CNN "Package"
F 7 "1/8W 5%" V 9040 4730 60  0001 C CNN "Notes"
F 8 "0.091€" V 9040 4730 60  0001 C CNN "Price"
	1    9040 4730
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR036
U 1 1 56C001F3
P 9040 5040
F 0 "#PWR036" H 9040 4790 50  0001 C CNN
F 1 "GND" H 9040 4890 50  0000 C CNN
F 2 "" H 9040 5040 60  0000 C CNN
F 3 "" H 9040 5040 60  0000 C CNN
	1    9040 5040
	1    0    0    -1  
$EndComp
Text Label 9040 4420 0    60   ~ 0
MS1M2
Text Label 8380 4300 0    60   ~ 0
M2IN1
Text Label 8380 4400 0    60   ~ 0
M2IN2
$Comp
L CONN_01X04 P8
U 1 1 56C001FC
P 6120 4650
F 0 "P8" H 6120 4900 50  0000 C CNN
F 1 "CONN_01X04" V 6220 4650 50  0000 C CNN
F 2 "Connect:bornier4" H 6120 4650 50  0001 C CNN
F 3 "https://www.sparkfun.com/datasheets/Prototyping/Screw-Terminal-5mm.pdf" H 6120 4650 50  0001 C CNN
F 4 "SparkFun PRT-08432" H 6120 4650 60  0001 C CNN "Distributor"
F 5 "-" H 6120 4650 60  0001 C CNN "Manufacturer"
F 6 "5mm Pitch 4-Pin" H 6120 4650 60  0001 C CNN "Package"
F 7 "https://www.sparkfun.com/products/8432" H 6120 4650 60  0001 C CNN "Notes"
F 8 "1.8€" H 6120 4650 60  0001 C CNN "Price"
	1    6120 4650
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P6
U 1 1 56C0231A
P 1130 4580
F 0 "P6" H 1130 4730 50  0000 C CNN
F 1 "CONN_01X02" V 1230 4580 50  0000 C CNN
F 2 "Connect:bornier2" H 1130 4580 50  0001 C CNN
F 3 "https://www.sparkfun.com/datasheets/Prototyping/Screw-Terminal-5mm.pdf" H 1130 4580 50  0001 C CNN
F 4 "SparkFun PRT-08432" H 1130 4580 60  0001 C CNN "Distributor"
F 5 "-" H 1130 4580 60  0001 C CNN "Manufacturer"
F 6 "5mm Pitch" H 1130 4580 60  0001 C CNN "Package"
F 7 "https://www.sparkfun.com/products/8432" H 1130 4580 60  0001 C CNN "Notes"
F 8 "0.9€" H 1130 4580 60  0001 C CNN "Price"
	1    1130 4580
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR037
U 1 1 56C029F4
P 1540 4630
F 0 "#PWR037" H 1540 4380 50  0001 C CNN
F 1 "GND" H 1540 4480 50  0000 C CNN
F 2 "" H 1540 4630 60  0000 C CNN
F 3 "" H 1540 4630 60  0000 C CNN
	1    1540 4630
	0    -1   -1   0   
$EndComp
Text Label 1540 4530 0    60   ~ 0
VMOT
Text Label 5230 2330 0    60   ~ 0
VIN
$Comp
L GND #PWR038
U 1 1 56BF8632
P 6290 3190
F 0 "#PWR038" H 6290 2940 50  0001 C CNN
F 1 "GND" H 6290 3040 50  0000 C CNN
F 2 "" H 6290 3190 60  0000 C CNN
F 3 "" H 6290 3190 60  0000 C CNN
	1    6290 3190
	1    0    0    -1  
$EndComp
Text Label 6290 2470 0    60   ~ 0
VIN
Text Label 5230 2530 2    60   ~ 0
RST
Text Label 6010 2470 0    60   ~ 0
RST
$Comp
L GND #PWR039
U 1 1 56BFA58E
P 6010 3190
F 0 "#PWR039" H 6010 2940 50  0001 C CNN
F 1 "GND" H 6010 3040 50  0000 C CNN
F 2 "" H 6010 3190 60  0000 C CNN
F 3 "" H 6010 3190 60  0000 C CNN
	1    6010 3190
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 56BFE1A7
P 1190 1510
F 0 "R1" V 1270 1510 50  0000 C CNN
F 1 "120" V 1190 1510 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1120 1510 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/427/dcrcwe3-109170.pdf" H 1190 1510 50  0001 C CNN
F 4 "Mouser 71-CRCW0805120RJNEA " V 1190 1510 60  0001 C CNN "Distributor"
F 5 "CRCW0805120RJNEA" V 1190 1510 60  0001 C CNN "Manufacturer"
F 6 "0805" V 1190 1510 60  0001 C CNN "Package"
F 7 "1/8W 5%" V 1190 1510 60  0001 C CNN "Notes"
F 8 "0.091€" V 1190 1510 60  0001 C CNN "Price"
	1    1190 1510
	-1   0    0    1   
$EndComp
$Comp
L R R3
U 1 1 56BFFBA2
P 3370 2890
F 0 "R3" V 3450 2890 50  0000 C CNN
F 1 "4.7k" V 3370 2890 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3300 2890 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/427/dcrcwe3-109170.pdf" H 3370 2890 50  0001 C CNN
F 4 "Mouser 71-CRCW0805J-4.7K-E3" V 3370 2890 60  0001 C CNN "Distributor"
F 5 "CRCW08054K70JNEA" V 3370 2890 60  0001 C CNN "Manufacturer"
F 6 "0805" V 3370 2890 60  0001 C CNN "Package"
F 7 "1/8W 5%" V 3370 2890 60  0001 C CNN "Notes"
F 8 "0.091€" V 3370 2890 60  0001 C CNN "Price"
	1    3370 2890
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 56BFFDF0
P 3200 2890
F 0 "R2" V 3280 2890 50  0000 C CNN
F 1 "4.7k" V 3200 2890 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3130 2890 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/427/dcrcwe3-109170.pdf" H 3200 2890 50  0001 C CNN
F 4 "Mouser 71-CRCW0805J-4.7K-E3 " V 3200 2890 60  0001 C CNN "Distributor"
F 5 "CRCW08054K70JNEA" V 3200 2890 60  0001 C CNN "Manufacturer"
F 6 "0805" V 3200 2890 60  0001 C CNN "Package"
F 7 "1/8W 5%" V 3200 2890 60  0001 C CNN "Notes"
F 8 "0.091€" V 3200 2890 60  0001 C CNN "Price"
	1    3200 2890
	1    0    0    -1  
$EndComp
Text Label 3200 3260 1    60   ~ 0
SDA1
Text Label 3370 3260 1    60   ~ 0
SCL1
$Comp
L +5V #PWR040
U 1 1 56C00417
P 3290 2480
F 0 "#PWR040" H 3290 2330 50  0001 C CNN
F 1 "+5V" H 3290 2620 50  0000 C CNN
F 2 "" H 3290 2480 60  0000 C CNN
F 3 "" H 3290 2480 60  0000 C CNN
	1    3290 2480
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 56C00C2A
P 6760 2900
F 0 "R6" V 6840 2900 50  0000 C CNN
F 1 "4.7k" V 6760 2900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6690 2900 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/427/dcrcwe3-109170.pdf" H 6760 2900 50  0001 C CNN
F 4 "Mouser 71-CRCW0805J-4.7K-E3 " V 6760 2900 60  0001 C CNN "Distributor"
F 5 "CRCW08054K70JNEA" V 6760 2900 60  0001 C CNN "Manufacturer"
F 6 "0805" V 6760 2900 60  0001 C CNN "Package"
F 7 "1/8W 5%" V 6760 2900 60  0001 C CNN "Notes"
F 8 "0.091€" V 6760 2900 60  0001 C CNN "Price"
	1    6760 2900
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 56C00C30
P 6590 2900
F 0 "R5" V 6670 2900 50  0000 C CNN
F 1 "4.7k" V 6590 2900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6520 2900 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/427/dcrcwe3-109170.pdf" H 6590 2900 50  0001 C CNN
F 4 "Mouser 71-CRCW0805J-4.7K-E3 " V 6590 2900 60  0001 C CNN "Distributor"
F 5 "CRCW08054K70JNEA" V 6590 2900 60  0001 C CNN "Manufacturer"
F 6 "0805" V 6590 2900 60  0001 C CNN "Package"
F 7 "1/8W 5%" V 6590 2900 60  0001 C CNN "Notes"
F 8 " 0.091€ " V 6590 2900 60  0001 C CNN "Price"
	1    6590 2900
	1    0    0    -1  
$EndComp
Text Label 6590 3270 1    60   ~ 0
SDA2
Text Label 6760 3270 1    60   ~ 0
SCL2
$Comp
L +5V #PWR041
U 1 1 56C00C3D
P 6680 2490
F 0 "#PWR041" H 6680 2340 50  0001 C CNN
F 1 "+5V" H 6680 2630 50  0000 C CNN
F 2 "" H 6680 2490 60  0000 C CNN
F 3 "" H 6680 2490 60  0000 C CNN
	1    6680 2490
	1    0    0    -1  
$EndComp
Text Label 1000 4210 0    60   ~ 0
POWER_IN
Text Label 2150 3980 0    60   ~ 0
STEPPER_MOTOR1
Text Label 6070 4070 0    60   ~ 0
STEPPER_MOTOR2
Wire Wire Line
	8790 2190 8390 2190
Wire Wire Line
	8790 2290 8690 2290
Wire Wire Line
	8790 2390 8690 2390
Wire Wire Line
	8790 2490 8390 2490
Wire Wire Line
	8790 2690 8690 2690
Wire Wire Line
	8790 2790 8690 2790
Wire Wire Line
	8790 2890 8690 2890
Wire Wire Line
	8790 3190 8690 3190
Wire Wire Line
	8790 3290 8690 3290
Wire Wire Line
	8790 3390 8380 3390
Wire Wire Line
	8790 3590 8690 3590
Wire Wire Line
	8790 3690 8690 3690
Wire Wire Line
	8790 2090 8200 2090
Wire Wire Line
	8790 2590 8200 2590
Wire Wire Line
	8790 3490 8200 3490
Wire Wire Line
	1350 1470 1840 1470
Wire Wire Line
	1350 1570 1840 1570
Wire Wire Line
	6710 1220 6600 1220
Wire Wire Line
	6710 1320 6600 1320
Wire Wire Line
	6710 1420 6600 1420
Wire Wire Line
	6710 1520 6600 1520
Wire Wire Line
	7320 1520 7210 1520
Wire Wire Line
	7210 1420 7320 1420
Wire Wire Line
	7320 1320 7210 1320
Wire Wire Line
	7210 1220 7320 1220
Wire Wire Line
	1640 1370 1840 1370
Wire Wire Line
	1480 1670 1840 1670
Wire Wire Line
	7320 1420 7320 1520
Wire Wire Line
	7320 1220 7320 1320
Wire Wire Line
	7320 1270 7450 1270
Wire Wire Line
	7450 1270 7450 1180
Connection ~ 7320 1270
Wire Wire Line
	7320 1470 7450 1470
Wire Wire Line
	7450 1470 7450 1560
Connection ~ 7320 1470
Wire Wire Line
	3140 1460 3140 1600
Wire Wire Line
	3140 1360 3140 1240
Wire Wire Line
	3990 2330 3850 2330
Wire Wire Line
	3990 2430 3850 2430
Wire Wire Line
	3990 2730 3850 2730
Wire Wire Line
	3990 2830 3850 2830
Wire Wire Line
	3990 2930 3850 2930
Wire Wire Line
	3990 3030 3850 3030
Wire Wire Line
	3990 3130 3850 3130
Wire Wire Line
	3990 3230 3850 3230
Wire Wire Line
	3990 3330 3850 3330
Wire Wire Line
	5230 3430 5090 3430
Wire Wire Line
	3990 3430 3850 3430
Wire Wire Line
	5090 3330 5230 3330
Wire Wire Line
	5090 3230 5230 3230
Wire Wire Line
	5090 3130 5230 3130
Wire Wire Line
	5090 3030 5230 3030
Wire Wire Line
	5090 2930 5230 2930
Wire Wire Line
	5090 2830 5230 2830
Wire Wire Line
	5090 2630 5570 2630
Wire Wire Line
	3990 2530 3860 2530
Wire Wire Line
	3860 2530 3860 2630
Wire Wire Line
	3860 2630 3990 2630
Wire Wire Line
	1260 2650 1160 2650
Wire Wire Line
	2060 2700 2160 2700
Wire Wire Line
	2060 2900 2160 2900
Wire Wire Line
	1660 3250 1660 3310
Wire Wire Line
	1660 2350 1660 2260
Wire Wire Line
	1260 2550 1160 2550
Wire Wire Line
	1160 2950 1260 2950
Wire Wire Line
	5090 2730 5230 2730
Wire Wire Line
	1750 1370 1750 1300
Wire Wire Line
	1480 1740 1480 1670
Wire Wire Line
	1640 1370 1640 1240
Wire Wire Line
	1640 1240 1540 1240
Wire Wire Line
	1540 1240 1540 1270
Connection ~ 1750 1370
Wire Wire Line
	4910 1260 4800 1260
Wire Wire Line
	4570 1360 4910 1360
Wire Wire Line
	5480 1460 5410 1460
Wire Wire Line
	4910 1460 4850 1460
Wire Wire Line
	5410 1360 5760 1360
Wire Wire Line
	5410 1260 5520 1260
Wire Wire Line
	5760 1360 5760 1380
Wire Wire Line
	4570 1360 4570 1380
Wire Wire Line
	1260 3050 1160 3050
Wire Wire Line
	2400 2690 2400 2600
Wire Wire Line
	2400 2890 2400 3020
Wire Wire Line
	1350 1470 1350 1260
Wire Wire Line
	1350 1260 1190 1260
Wire Wire Line
	1190 1760 1350 1760
Wire Wire Line
	1350 1760 1350 1570
Wire Wire Line
	3880 1360 3730 1360
Wire Wire Line
	3730 1460 3880 1460
Wire Wire Line
	3140 1460 3230 1460
Wire Wire Line
	3140 1360 3230 1360
Wire Wire Line
	3000 4300 2730 4300
Wire Wire Line
	2900 4400 3000 4400
Wire Wire Line
	2410 4500 3000 4500
Wire Wire Line
	2410 4600 3000 4600
Wire Wire Line
	2410 4700 3000 4700
Wire Wire Line
	2410 4800 3000 4800
Wire Wire Line
	3000 4900 2730 4900
Wire Wire Line
	3000 5000 2770 5000
Wire Wire Line
	2770 5000 2770 5120
Wire Wire Line
	2770 5510 2770 5420
Wire Wire Line
	4200 5000 4470 5000
Wire Wire Line
	4200 4900 4470 4900
Wire Wire Line
	4200 4800 4470 4800
Wire Wire Line
	4200 4700 4470 4700
Wire Wire Line
	4200 4600 4470 4600
Wire Wire Line
	4200 4500 4470 4500
Wire Wire Line
	4200 4400 4470 4400
Wire Wire Line
	4200 4300 4470 4300
Wire Wire Line
	4470 4500 4470 4600
Wire Wire Line
	4670 4700 4830 4700
Wire Wire Line
	4830 4800 4670 4800
Wire Wire Line
	4830 4900 4670 4900
Wire Wire Line
	4830 4570 4830 4900
Connection ~ 4830 4800
Connection ~ 4830 4700
Wire Wire Line
	5130 4580 5130 4420
Wire Wire Line
	5130 4880 5130 5040
Wire Wire Line
	6910 4300 6640 4300
Wire Wire Line
	6810 4400 6910 4400
Wire Wire Line
	6320 4500 6910 4500
Wire Wire Line
	6320 4600 6910 4600
Wire Wire Line
	6320 4700 6910 4700
Wire Wire Line
	6320 4800 6910 4800
Wire Wire Line
	6910 4900 6640 4900
Wire Wire Line
	6910 5000 6680 5000
Wire Wire Line
	6680 5000 6680 5120
Wire Wire Line
	6680 5510 6680 5420
Wire Wire Line
	8110 5000 8380 5000
Wire Wire Line
	8110 4900 8380 4900
Wire Wire Line
	8110 4800 8380 4800
Wire Wire Line
	8110 4700 8380 4700
Wire Wire Line
	8110 4600 8380 4600
Wire Wire Line
	8110 4500 8380 4500
Wire Wire Line
	8110 4400 8380 4400
Wire Wire Line
	8110 4300 8380 4300
Wire Wire Line
	8380 4500 8380 4600
Wire Wire Line
	8580 4700 8740 4700
Wire Wire Line
	8740 4800 8580 4800
Wire Wire Line
	8740 4900 8580 4900
Wire Wire Line
	8740 4570 8740 4900
Connection ~ 8740 4800
Connection ~ 8740 4700
Wire Wire Line
	9040 4580 9040 4420
Wire Wire Line
	9040 4880 9040 5040
Wire Wire Line
	1330 4530 1540 4530
Wire Wire Line
	1330 4630 1540 4630
Wire Wire Line
	5090 2330 5230 2330
Wire Wire Line
	6290 2680 6290 2470
Wire Wire Line
	6290 2980 6290 3190
Wire Wire Line
	5090 2430 5230 2430
Wire Wire Line
	6010 2680 6010 2470
Wire Wire Line
	6010 2980 6010 3190
Wire Wire Line
	5090 2530 5230 2530
Wire Wire Line
	3800 2580 3860 2580
Connection ~ 3860 2580
Wire Wire Line
	1190 1760 1190 1660
Wire Wire Line
	1190 1260 1190 1360
Wire Wire Line
	3200 2740 3200 2600
Wire Wire Line
	3200 2600 3370 2600
Wire Wire Line
	3370 2600 3370 2740
Wire Wire Line
	3200 3040 3200 3260
Wire Wire Line
	3370 3040 3370 3260
Wire Wire Line
	3290 2600 3290 2480
Connection ~ 3290 2600
Wire Wire Line
	6590 2750 6590 2610
Wire Wire Line
	6590 2610 6760 2610
Wire Wire Line
	6760 2610 6760 2750
Wire Wire Line
	6590 3050 6590 3270
Wire Wire Line
	6760 3050 6760 3270
Wire Wire Line
	6680 2610 6680 2490
Connection ~ 6680 2610
Wire Wire Line
	8790 2990 8260 2990
Wire Wire Line
	8260 3090 8790 3090
Wire Wire Line
	8260 2990 8260 3090
Wire Wire Line
	8260 3040 8200 3040
Connection ~ 8260 3040
$Comp
L GND #PWR042
U 1 1 56C2583E
P 8200 3040
F 0 "#PWR042" H 8200 2790 50  0001 C CNN
F 1 "GND" H 8200 2890 50  0000 C CNN
F 2 "" H 8200 3040 60  0000 C CNN
F 3 "" H 8200 3040 60  0000 C CNN
	1    8200 3040
	0    1    1    0   
$EndComp
$EndSCHEMATC
