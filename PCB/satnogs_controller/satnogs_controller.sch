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
Text Label 8510 2200 2    60   ~ 0
M1IN2
Text Label 8510 2300 2    60   ~ 0
M1IN1
Text Label 8510 2700 2    60   ~ 0
M1FB
Text Label 8510 3150 2    60   ~ 0
M2IN2
Text Label 8510 3250 2    60   ~ 0
M2IN1
Text Label 8510 3550 2    60   ~ 0
SF
Text Label 8510 3650 2    60   ~ 0
M2FB
$Comp
L CONN_02X04 P4
U 1 1 568B74B0
P 7855 1280
F 0 "P4" H 7855 1530 50  0000 C CNN
F 1 "I2C" H 7855 1030 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x04" H 7855 80  60  0001 C CNN
F 3 "https://cdn.sparkfun.com/datasheets/Prototyping/16188.pdf" H 7855 80  60  0001 C CNN
F 4 "SparkFun PRT-12791" H 7855 1280 60  0001 C CNN "Distributor"
F 5 "-" H 7855 1280 60  0001 C CNN "Manufacturer"
F 6 "2x23 pin male PTH header" H 7855 1280 60  0001 C CNN "Package"
F 7 "https://www.sparkfun.com/products/12791" H 7855 1280 60  0001 C CNN "Notes"
F 8 "-" H 7855 1280 60  0001 C CNN "Price"
	1    7855 1280
	1    0    0    -1  
$EndComp
Text Label 7495 1230 2    60   ~ 0
SCL2
Text Label 7495 1130 2    60   ~ 0
SDA2
Text Label 1745 4075 0    60   ~ 0
B
Text Label 1745 4175 0    60   ~ 0
A
$Comp
L +5V #PWR01
U 1 1 568BA0DB
P 8235 1130
F 0 "#PWR01" H 8235 980 50  0001 C CNN
F 1 "+5V" H 8235 1270 50  0000 C CNN
F 2 "" H 8235 1130 60  0000 C CNN
F 3 "" H 8235 1130 60  0000 C CNN
	1    8235 1130
	0    1    1    0   
$EndComp
$Comp
L GND #PWR02
U 1 1 568BA22A
P 8365 1430
F 0 "#PWR02" H 8365 1180 50  0001 C CNN
F 1 "GND" H 8365 1280 50  0000 C CNN
F 2 "" H 8365 1430 60  0000 C CNN
F 3 "" H 8365 1430 60  0000 C CNN
	1    8365 1430
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR03
U 1 1 568BBC8F
P 4755 1230
F 0 "#PWR03" H 4755 980 50  0001 C CNN
F 1 "GND" H 4755 1080 50  0000 C CNN
F 2 "" H 4755 1230 60  0000 C CNN
F 3 "" H 4755 1230 60  0000 C CNN
	1    4755 1230
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR04
U 1 1 568BBFC2
P 4605 1130
F 0 "#PWR04" H 4605 980 50  0001 C CNN
F 1 "+5V" H 4605 1270 50  0000 C CNN
F 2 "" H 4605 1130 60  0000 C CNN
F 3 "" H 4605 1130 60  0000 C CNN
	1    4605 1130
	0    1    1    0   
$EndComp
$Comp
L GND #PWR05
U 1 1 568BD452
P 5510 2145
F 0 "#PWR05" H 5510 1895 50  0001 C CNN
F 1 "GND" H 5510 1995 50  0000 C CNN
F 2 "" H 5510 2145 60  0000 C CNN
F 3 "" H 5510 2145 60  0000 C CNN
	1    5510 2145
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR06
U 1 1 568C244E
P 5720 2345
F 0 "#PWR06" H 5720 2195 50  0001 C CNN
F 1 "+5V" H 5720 2485 50  0000 C CNN
F 2 "" H 5720 2345 60  0000 C CNN
F 3 "" H 5720 2345 60  0000 C CNN
	1    5720 2345
	0    1    1    0   
$EndComp
Text Label 5510 3445 0    60   ~ 0
SDA2
Text Label 5510 3345 0    60   ~ 0
SCL2
Text Label 5510 2545 0    60   ~ 0
SDA1
Text Label 5510 2445 0    60   ~ 0
SCL1
Text Label 3980 2245 2    60   ~ 0
TX
Text Label 3980 2345 2    60   ~ 0
RX
$Comp
L GND #PWR07
U 1 1 568C711B
P 3845 2545
F 0 "#PWR07" H 3845 2295 50  0001 C CNN
F 1 "GND" H 3845 2395 50  0000 C CNN
F 2 "" H 3845 2545 60  0000 C CNN
F 3 "" H 3845 2545 60  0000 C CNN
	1    3845 2545
	0    1    1    0   
$EndComp
Text Label 5510 3545 0    60   ~ 0
M2IN1
Text Label 3980 3345 2    60   ~ 0
M2IN2
Text Label 3980 2845 2    60   ~ 0
SW2
Text Label 3980 3245 2    60   ~ 0
EN
Text Label 3980 3045 2    60   ~ 0
M1IN1
Text Label 3980 2945 2    60   ~ 0
M1IN2
Text Label 3980 2745 2    60   ~ 0
SW1
Text Label 5510 2845 0    60   ~ 0
M1FB
Text Label 3980 3145 2    60   ~ 0
SF
Text Label 5510 2945 0    60   ~ 0
M2FB
Text Label 2050 1730 0    60   ~ 0
B
Text Label 2050 1930 0    60   ~ 0
A
$Comp
L GND #PWR08
U 1 1 568CFD46
P 1550 2340
F 0 "#PWR08" H 1550 2090 50  0001 C CNN
F 1 "GND" H 1550 2190 50  0000 C CNN
F 2 "" H 1550 2340 60  0000 C CNN
F 3 "" H 1550 2340 60  0000 C CNN
	1    1550 2340
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR09
U 1 1 568D0276
P 1550 1290
F 0 "#PWR09" H 1550 1140 50  0001 C CNN
F 1 "+5V" H 1550 1430 50  0000 C CNN
F 2 "" H 1550 1290 60  0000 C CNN
F 3 "" H 1550 1290 60  0000 C CNN
	1    1550 1290
	1    0    0    -1  
$EndComp
Text Label 1050 2080 2    60   ~ 0
TX
$Comp
L C_Small C1
U 1 1 568D2DE9
P 2810 1820
F 0 "C1" H 2820 1890 50  0000 L CNN
F 1 "0.1u" H 2820 1740 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2810 1820 60  0001 C CNN
F 3 "http://www.mouser.com/ds/2/427/vjw1bcbascomseries-223529.pdf" H 2810 1820 60  0001 C CNN
F 4 "Mouser 77-VJ0805Y104KXJCBC " H 2810 1820 60  0001 C CNN "Distributor"
F 5 "VJ0805Y104KXJCW1BC" H 2810 1820 60  0001 C CNN "Manufacturer"
F 6 "0805" H 2810 1820 60  0001 C CNN "Package"
F 7 "16VDC" H 2810 1820 60  0001 C CNN "Notes"
F 8 "0.118€" H 2810 1820 60  0001 C CNN "Price"
	1    2810 1820
	-1   0    0    1   
$EndComp
Text Label 3980 2645 2    60   ~ 0
RTS
$Comp
L PWR_FLAG #FLG010
U 1 1 568E938B
P 2590 3255
F 0 "#FLG010" H 2590 3350 50  0001 C CNN
F 1 "PWR_FLAG" H 2585 3440 50  0000 C CNN
F 2 "" H 2590 3255 60  0000 C CNN
F 3 "" H 2590 3255 60  0000 C CNN
	1    2590 3255
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG011
U 1 1 568EAC4F
P 2280 3205
F 0 "#FLG011" H 2280 3300 50  0001 C CNN
F 1 "PWR_FLAG" H 2280 3395 50  0000 C CNN
F 2 "" H 2280 3205 60  0000 C CNN
F 3 "" H 2280 3205 60  0000 C CNN
	1    2280 3205
	1    0    0    -1  
$EndComp
Text Label 1050 1680 2    60   ~ 0
RTS
Text Label 1050 1980 2    60   ~ 0
RTS
$Comp
L CONN_02X03 P2
U 1 1 56913B34
P 6055 1270
F 0 "P2" H 6055 1470 50  0000 C CNN
F 1 "End-Stops" H 6055 1070 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03" H 6055 70  60  0001 C CNN
F 3 "https://cdn.sparkfun.com/datasheets/Prototyping/16188.pdf" H 6055 70  60  0001 C CNN
F 4 "SparkFun PRT-12791" H 6055 1270 60  0001 C CNN "Distributor"
F 5 "-" H 6055 1270 60  0001 C CNN "Manufacturer"
F 6 "2x23 pin male PTH header" H 6055 1270 60  0001 C CNN "Package"
F 7 "https://www.sparkfun.com/products/12791" H 6055 1270 60  0001 C CNN "Notes"
F 8 "-" H 6055 1270 60  0001 C CNN "Price"
	1    6055 1270
	1    0    0    -1  
$EndComp
Text Label 5695 1170 2    60   ~ 0
SW2
Text Label 6415 1170 0    60   ~ 0
SW1
$Comp
L GND #PWR012
U 1 1 56915BD8
P 6655 1290
F 0 "#PWR012" H 6655 1040 50  0001 C CNN
F 1 "GND" H 6655 1140 50  0000 C CNN
F 2 "" H 6655 1290 60  0000 C CNN
F 3 "" H 6655 1290 60  0000 C CNN
	1    6655 1290
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR013
U 1 1 56916577
P 6375 1370
F 0 "#PWR013" H 6375 1220 50  0001 C CNN
F 1 "+5V" H 6375 1510 50  0000 C CNN
F 2 "" H 6375 1370 60  0000 C CNN
F 3 "" H 6375 1370 60  0000 C CNN
	1    6375 1370
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR014
U 1 1 5691721C
P 5745 1370
F 0 "#PWR014" H 5745 1220 50  0001 C CNN
F 1 "+5V" H 5745 1510 50  0000 C CNN
F 2 "" H 5745 1370 60  0000 C CNN
F 3 "" H 5745 1370 60  0000 C CNN
	1    5745 1370
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR015
U 1 1 56915C29
P 5465 1290
F 0 "#PWR015" H 5465 1040 50  0001 C CNN
F 1 "GND" H 5465 1140 50  0000 C CNN
F 2 "" H 5465 1290 60  0000 C CNN
F 3 "" H 5465 1290 60  0000 C CNN
	1    5465 1290
	1    0    0    -1  
$EndComp
$Comp
L MAX485 U2
U 1 1 56926E3E
P 1550 1830
F 0 "U2" H 1150 2330 60  0000 C CNN
F 1 "MAX485" H 1200 2230 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 1550 1830 60  0001 C CNN
F 3 "http://www.mouser.com/ds/2/146/SP483_SP485_100_062711-16528.pdf" H 1550 1830 60  0001 C CNN
F 4 "Mouser 701-SP485CN-L " H 1550 1830 60  0001 C CNN "Distributor"
F 5 "SP485CN-L" H 1550 1830 60  0001 C CNN "Manufacturer"
F 6 "SOIC-8 Narrow" H 1550 1830 60  0001 C CNN "Package"
F 7 "Operating Supply Voltage: 5 V" H 1550 1830 60  0001 C CNN "Notes"
F 8 "0.86€" H 1550 1830 60  0001 C CNN "Price"
	1    1550 1830
	1    0    0    -1  
$EndComp
Text Label 1050 1580 2    60   ~ 0
RX
$Comp
L +5V #PWR016
U 1 1 569284F6
P 2810 1630
F 0 "#PWR016" H 2810 1480 50  0001 C CNN
F 1 "+5V" H 2810 1770 50  0000 C CNN
F 2 "" H 2810 1630 60  0000 C CNN
F 3 "" H 2810 1630 60  0000 C CNN
	1    2810 1630
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 5692851B
P 2810 2050
F 0 "#PWR017" H 2810 1800 50  0001 C CNN
F 1 "GND" H 2810 1900 50  0000 C CNN
F 2 "" H 2810 2050 60  0000 C CNN
F 3 "" H 2810 2050 60  0000 C CNN
	1    2810 2050
	1    0    0    -1  
$EndComp
Text Label 7495 1330 2    60   ~ 0
SDA1
Text Label 7495 1430 2    60   ~ 0
SCL1
$Comp
L POLOLU_A4988 U3
U 1 1 56BF6E89
P 5740 4715
F 0 "U3" H 5740 5165 60  0000 C CNN
F 1 "POLOLU_A4988" V 5740 4715 50  0000 C CNN
F 2 "satnogs:pololu-a4988" H 5740 4715 60  0001 C CNN
F 3 "-" H 5740 4715 60  0001 C CNN
F 4 "SparkFun PRT-00115" H 5740 4715 60  0001 C CNN "Distributor"
F 5 "-" H 5740 4715 60  0001 C CNN "Manufacturer"
F 6 "1x40 female header PTH pitch 2.54" H 5740 4715 60  0001 C CNN "Package"
F 7 "https://www.sparkfun.com/products/115" H 5740 4715 60  0001 C CNN "Notes"
F 8 "1.42€" H 5740 4715 60  0001 C CNN "Price"
	1    5740 4715
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR018
U 1 1 56BF7622
P 5040 4465
F 0 "#PWR018" H 5040 4315 50  0001 C CNN
F 1 "+5V" H 5040 4605 50  0000 C CNN
F 2 "" H 5040 4465 60  0000 C CNN
F 3 "" H 5040 4465 60  0000 C CNN
	1    5040 4465
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR019
U 1 1 56BF7D44
P 4870 4365
F 0 "#PWR019" H 4870 4115 50  0001 C CNN
F 1 "GND" H 4870 4215 50  0000 C CNN
F 2 "" H 4870 4365 60  0000 C CNN
F 3 "" H 4870 4365 60  0000 C CNN
	1    4870 4365
	0    1    1    0   
$EndComp
Text Label 4870 4565 2    60   ~ 0
1BM1
Text Label 4870 4665 2    60   ~ 0
1AM1
Text Label 4870 4765 2    60   ~ 0
2AM1
Text Label 4870 4865 2    60   ~ 0
2BM1
$Comp
L GND #PWR020
U 1 1 56BF8B54
P 4870 4965
F 0 "#PWR020" H 4870 4715 50  0001 C CNN
F 1 "GND" H 4870 4815 50  0000 C CNN
F 2 "" H 4870 4965 60  0000 C CNN
F 3 "" H 4870 4965 60  0000 C CNN
	1    4870 4965
	0    1    1    0   
$EndComp
$Comp
L CP C3
U 1 1 56BF91ED
P 4910 5335
F 0 "C3" H 4935 5435 50  0000 L CNN
F 1 "100u" H 4935 5235 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D6.3_L11.2_P2.5" H 4948 5185 30  0001 C CNN
F 3 "http://www.mouser.com/ds/2/315/ABA0000CE12-465472.pdf" H 4910 5335 60  0001 C CNN
F 4 "Mouser 667-ECA-1VM101" H 4910 5335 60  0001 C CNN "Distributor"
F 5 "ECA-1VM101" H 4910 5335 60  0001 C CNN "Manufacturer"
F 6 "ThroughHole:C_Radial_D6.3_L11.2_P2.5" H 4910 5335 60  0001 C CNN "Package"
F 7 "100u 35V 85C" H 4910 5335 60  0001 C CNN "Notes"
F 8 "0.235€" H 4910 5335 60  0001 C CNN "Price"
	1    4910 5335
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 56BF9813
P 4910 5575
F 0 "#PWR021" H 4910 5325 50  0001 C CNN
F 1 "GND" H 4910 5425 50  0000 C CNN
F 2 "" H 4910 5575 60  0000 C CNN
F 3 "" H 4910 5575 60  0000 C CNN
	1    4910 5575
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NO_Small JP1
U 1 1 56BFB286
P 6710 4765
F 0 "JP1" H 6830 4815 50  0000 C CNN
F 1 "Jumper_NO_Small" H 6720 4705 50  0001 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 6710 4765 50  0001 C CNN
F 3 "https://cdn.sparkfun.com/datasheets/Prototyping/16188.pdf" H 6710 4765 50  0001 C CNN
F 4 "SparkFun PRT-12791" H 6710 4765 60  0001 C CNN "Distributor"
F 5 "-" H 6710 4765 60  0001 C CNN "Manufacturer"
F 6 "2x23 pin male PTH header" H 6710 4765 60  0001 C CNN "Package"
F 7 "https://www.sparkfun.com/products/12791" H 6710 4765 60  0001 C CNN "Notes"
F 8 "-" H 6710 4765 60  0001 C CNN "Price"
	1    6710 4765
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NO_Small JP2
U 1 1 56BFB387
P 6710 4865
F 0 "JP2" H 6830 4915 50  0000 C CNN
F 1 "Jumper_NO_Small" H 6720 4805 50  0001 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 6710 4865 50  0001 C CNN
F 3 "https://cdn.sparkfun.com/datasheets/Prototyping/16188.pdf" H 6710 4865 50  0001 C CNN
F 4 "SparkFun PRT-12791" H 6710 4865 60  0001 C CNN "Distributor"
F 5 "-" H 6710 4865 60  0001 C CNN "Manufacturer"
F 6 "2x23 pin male PTH header" H 6710 4865 60  0001 C CNN "Package"
F 7 "https://www.sparkfun.com/products/12791" H 6710 4865 60  0001 C CNN "Notes"
F 8 "-" H 6710 4865 60  0001 C CNN "Price"
	1    6710 4865
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NO_Small JP3
U 1 1 56BFB3DE
P 6710 4965
F 0 "JP3" H 6830 5015 50  0000 C CNN
F 1 "Jumper_NO_Small" H 6720 4905 50  0001 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 6710 4965 50  0001 C CNN
F 3 "https://cdn.sparkfun.com/datasheets/Prototyping/16188.pdf" H 6710 4965 50  0001 C CNN
F 4 "SparkFun PRT-12791" H 6710 4965 60  0001 C CNN "Distributor"
F 5 "-" H 6710 4965 60  0001 C CNN "Manufacturer"
F 6 "2x23 pin male PTH header" H 6710 4965 60  0001 C CNN "Package"
F 7 "https://www.sparkfun.com/products/12791" H 6710 4965 60  0001 C CNN "Notes"
F 8 "-" H 6710 4965 60  0001 C CNN "Price"
	1    6710 4965
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR022
U 1 1 56BFC0F7
P 6970 4635
F 0 "#PWR022" H 6970 4485 50  0001 C CNN
F 1 "+5V" H 6970 4775 50  0000 C CNN
F 2 "" H 6970 4635 60  0000 C CNN
F 3 "" H 6970 4635 60  0000 C CNN
	1    6970 4635
	1    0    0    -1  
$EndComp
Text Label 6610 5065 0    60   ~ 0
EN
Text Label 6600 4965 2    60   ~ 0
MS1M1
$Comp
L R R4
U 1 1 56BFCE50
P 7270 4795
F 0 "R4" V 7350 4795 50  0000 C CNN
F 1 "100k" V 7270 4795 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7200 4795 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/427/dcrcwe3-109170.pdf" H 7270 4795 50  0001 C CNN
F 4 "Mouser 71-CRCW0805J-100K-E3" V 7270 4795 60  0001 C CNN "Distributor"
F 5 "CRCW0805100KJNEA" V 7270 4795 60  0001 C CNN "Manufacturer"
F 6 "0805" V 7270 4795 60  0001 C CNN "Package"
F 7 "1/8W 5%" V 7270 4795 60  0001 C CNN "Notes"
F 8 "0.091€" V 7270 4795 60  0001 C CNN "Price"
	1    7270 4795
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR023
U 1 1 56BFD4D7
P 7270 5105
F 0 "#PWR023" H 7270 4855 50  0001 C CNN
F 1 "GND" H 7270 4955 50  0000 C CNN
F 2 "" H 7270 5105 60  0000 C CNN
F 3 "" H 7270 5105 60  0000 C CNN
	1    7270 5105
	1    0    0    -1  
$EndComp
Text Label 7270 4485 0    60   ~ 0
MS1M1
Text Label 6610 4465 0    60   ~ 0
M1IN1
Text Label 6610 4365 0    60   ~ 0
M1IN2
$Comp
L CONN_01X04 P7
U 1 1 56BFEE7D
P 4350 4715
F 0 "P7" H 4350 4965 50  0000 C CNN
F 1 "Motor1" V 4450 4715 50  0000 C CNN
F 2 "Connect:bornier4" H 4350 4715 50  0001 C CNN
F 3 "https://www.sparkfun.com/datasheets/Prototyping/Screw-Terminal-5mm.pdf" H 4350 4715 50  0001 C CNN
F 4 "SparkFun PRT-08432" H 4350 4715 60  0001 C CNN "Distributor"
F 5 "-" H 4350 4715 60  0001 C CNN "Manufacturer"
F 6 "5mm Pitch 4-Pin" H 4350 4715 60  0001 C CNN "Package"
F 7 "https://www.sparkfun.com/products/8432" H 4350 4715 60  0001 C CNN "Notes"
F 8 "1.8€" H 4350 4715 60  0001 C CNN "Price"
	1    4350 4715
	-1   0    0    1   
$EndComp
$Comp
L POLOLU_A4988 U4
U 1 1 56C0018D
P 9240 4710
F 0 "U4" H 9240 5160 60  0000 C CNN
F 1 "POLOLU_A4988" V 9240 4710 50  0000 C CNN
F 2 "satnogs:pololu-a4988" H 9240 4710 60  0001 C CNN
F 3 "-" H 9240 4710 60  0001 C CNN
F 4 "SparkFun PRT-00115" H 9240 4710 60  0001 C CNN "Distributor"
F 5 "-" H 9240 4710 60  0001 C CNN "Manufacturer"
F 6 "1x40 female header PTH pitch 2.54" H 9240 4710 60  0001 C CNN "Package"
F 7 "https://www.sparkfun.com/products/115" H 9240 4710 60  0001 C CNN "Notes"
F 8 "-" H 9240 4710 60  0001 C CNN "Price"
	1    9240 4710
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR024
U 1 1 56C00193
P 8540 4460
F 0 "#PWR024" H 8540 4310 50  0001 C CNN
F 1 "+5V" H 8540 4600 50  0000 C CNN
F 2 "" H 8540 4460 60  0000 C CNN
F 3 "" H 8540 4460 60  0000 C CNN
	1    8540 4460
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR025
U 1 1 56C00199
P 8370 4360
F 0 "#PWR025" H 8370 4110 50  0001 C CNN
F 1 "GND" H 8370 4210 50  0000 C CNN
F 2 "" H 8370 4360 60  0000 C CNN
F 3 "" H 8370 4360 60  0000 C CNN
	1    8370 4360
	0    1    1    0   
$EndComp
Text Label 8370 4560 2    60   ~ 0
1BM2
Text Label 8370 4660 2    60   ~ 0
1AM2
Text Label 8370 4760 2    60   ~ 0
2AM2
Text Label 8370 4860 2    60   ~ 0
2BM2
$Comp
L GND #PWR026
U 1 1 56C001A9
P 8370 4960
F 0 "#PWR026" H 8370 4710 50  0001 C CNN
F 1 "GND" H 8370 4810 50  0000 C CNN
F 2 "" H 8370 4960 60  0000 C CNN
F 3 "" H 8370 4960 60  0000 C CNN
	1    8370 4960
	0    1    1    0   
$EndComp
$Comp
L CP C4
U 1 1 56C001B2
P 8410 5330
F 0 "C4" H 8435 5430 50  0000 L CNN
F 1 "100u" H 8435 5230 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D6.3_L11.2_P2.5" H 8448 5180 30  0001 C CNN
F 3 "http://www.mouser.com/ds/2/315/ABA0000CE12-465472.pdf" H 8410 5330 60  0001 C CNN
F 4 "Mouser 667-ECA-1VM101" H 8410 5330 60  0001 C CNN "Distributor"
F 5 "ECA-1VM101" H 8410 5330 60  0001 C CNN "Manufacturer"
F 6 "ThroughHole:C_Radial_D6.3_L11.2_P2.5" H 8410 5330 60  0001 C CNN "Package"
F 7 "100u 35V 85C" H 8410 5330 60  0001 C CNN "Notes"
F 8 "0.235€" H 8410 5330 60  0001 C CNN "Price"
	1    8410 5330
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR027
U 1 1 56C001B8
P 8410 5570
F 0 "#PWR027" H 8410 5320 50  0001 C CNN
F 1 "GND" H 8410 5420 50  0000 C CNN
F 2 "" H 8410 5570 60  0000 C CNN
F 3 "" H 8410 5570 60  0000 C CNN
	1    8410 5570
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NO_Small JP4
U 1 1 56C001C9
P 10210 4760
F 0 "JP4" H 10330 4810 50  0000 C CNN
F 1 "Jumper_NO_Small" H 10220 4700 50  0001 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 10210 4760 50  0001 C CNN
F 3 "https://cdn.sparkfun.com/datasheets/Prototyping/16188.pdf" H 10210 4760 50  0001 C CNN
F 4 "SparkFun PRT-12791" H 10210 4760 60  0001 C CNN "Distributor"
F 5 "-" H 10210 4760 60  0001 C CNN "Manufacturer"
F 6 "2x23 pin male PTH header" H 10210 4760 60  0001 C CNN "Package"
F 7 "https://www.sparkfun.com/products/12791" H 10210 4760 60  0001 C CNN "Notes"
F 8 "-" H 10210 4760 60  0001 C CNN "Price"
	1    10210 4760
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NO_Small JP5
U 1 1 56C001CF
P 10210 4860
F 0 "JP5" H 10330 4910 50  0000 C CNN
F 1 "Jumper_NO_Small" H 10220 4800 50  0001 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 10210 4860 50  0001 C CNN
F 3 "https://cdn.sparkfun.com/datasheets/Prototyping/16188.pdf" H 10210 4860 50  0001 C CNN
F 4 "SparkFun PRT-12791" H 10210 4860 60  0001 C CNN "Distributor"
F 5 "-" H 10210 4860 60  0001 C CNN "Manufacturer"
F 6 "2x23 pin male PTH header" H 10210 4860 60  0001 C CNN "Package"
F 7 "https://www.sparkfun.com/products/12791" H 10210 4860 60  0001 C CNN "Notes"
F 8 "-" H 10210 4860 60  0001 C CNN "Price"
	1    10210 4860
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NO_Small JP6
U 1 1 56C001D5
P 10210 4960
F 0 "JP6" H 10330 5010 50  0000 C CNN
F 1 "Jumper_NO_Small" H 10220 4900 50  0001 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 10210 4960 50  0001 C CNN
F 3 "https://cdn.sparkfun.com/datasheets/Prototyping/16188.pdf" H 10210 4960 50  0001 C CNN
F 4 "SparkFun PRT-12791" H 10210 4960 60  0001 C CNN "Distributor"
F 5 "-" H 10210 4960 60  0001 C CNN "Manufacturer"
F 6 "2x23 pin male PTH header" H 10210 4960 60  0001 C CNN "Package"
F 7 "https://www.sparkfun.com/products/12791" H 10210 4960 60  0001 C CNN "Notes"
F 8 "-" H 10210 4960 60  0001 C CNN "Price"
	1    10210 4960
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR028
U 1 1 56C001E3
P 10470 4630
F 0 "#PWR028" H 10470 4480 50  0001 C CNN
F 1 "+5V" H 10470 4770 50  0000 C CNN
F 2 "" H 10470 4630 60  0000 C CNN
F 3 "" H 10470 4630 60  0000 C CNN
	1    10470 4630
	1    0    0    -1  
$EndComp
Text Label 10110 5060 0    60   ~ 0
EN
Text Label 10100 4960 2    60   ~ 0
MS1M2
$Comp
L R R7
U 1 1 56C001EB
P 10770 4790
F 0 "R7" V 10850 4790 50  0000 C CNN
F 1 "100k" V 10770 4790 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 10700 4790 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/427/dcrcwe3-109170.pdf" H 10770 4790 50  0001 C CNN
F 4 "Mouser 71-CRCW0805J-100K-E3 " V 10770 4790 60  0001 C CNN "Distributor"
F 5 "CRCW0805100KJNEA" V 10770 4790 60  0001 C CNN "Manufacturer"
F 6 "0805" V 10770 4790 60  0001 C CNN "Package"
F 7 "1/8W 5%" V 10770 4790 60  0001 C CNN "Notes"
F 8 "0.091€" V 10770 4790 60  0001 C CNN "Price"
	1    10770 4790
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR029
U 1 1 56C001F3
P 10770 5100
F 0 "#PWR029" H 10770 4850 50  0001 C CNN
F 1 "GND" H 10770 4950 50  0000 C CNN
F 2 "" H 10770 5100 60  0000 C CNN
F 3 "" H 10770 5100 60  0000 C CNN
	1    10770 5100
	1    0    0    -1  
$EndComp
Text Label 10770 4480 0    60   ~ 0
MS1M2
Text Label 10110 4460 0    60   ~ 0
M2IN1
Text Label 10110 4360 0    60   ~ 0
M2IN2
$Comp
L CONN_01X04 P8
U 1 1 56C001FC
P 7850 4710
F 0 "P8" H 7850 4960 50  0000 C CNN
F 1 "Motor2" V 7950 4710 50  0000 C CNN
F 2 "Connect:bornier4" H 7850 4710 50  0001 C CNN
F 3 "https://www.sparkfun.com/datasheets/Prototyping/Screw-Terminal-5mm.pdf" H 7850 4710 50  0001 C CNN
F 4 "SparkFun PRT-08432" H 7850 4710 60  0001 C CNN "Distributor"
F 5 "-" H 7850 4710 60  0001 C CNN "Manufacturer"
F 6 "5mm Pitch 4-Pin" H 7850 4710 60  0001 C CNN "Package"
F 7 "https://www.sparkfun.com/products/8432" H 7850 4710 60  0001 C CNN "Notes"
F 8 "1.8€" H 7850 4710 60  0001 C CNN "Price"
	1    7850 4710
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR030
U 1 1 56BF8632
P 2280 3260
F 0 "#PWR030" H 2280 3010 50  0001 C CNN
F 1 "GND" H 2280 3110 50  0000 C CNN
F 2 "" H 2280 3260 60  0000 C CNN
F 3 "" H 2280 3260 60  0000 C CNN
	1    2280 3260
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 56BFE1A7
P 2550 1820
F 0 "R1" V 2630 1820 50  0000 C CNN
F 1 "120" V 2550 1820 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2480 1820 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/427/dcrcwe3-109170.pdf" H 2550 1820 50  0001 C CNN
F 4 "Mouser 71-CRCW0805120RJNEA " V 2550 1820 60  0001 C CNN "Distributor"
F 5 "CRCW0805120RJNEA" V 2550 1820 60  0001 C CNN "Manufacturer"
F 6 "0805" V 2550 1820 60  0001 C CNN "Package"
F 7 "1/8W 5%" V 2550 1820 60  0001 C CNN "Notes"
F 8 "0.091€" V 2550 1820 60  0001 C CNN "Price"
	1    2550 1820
	-1   0    0    1   
$EndComp
$Comp
L R R3
U 1 1 56BFFBA2
P 6510 2820
F 0 "R3" V 6590 2820 50  0000 C CNN
F 1 "4.7k" V 6510 2820 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6440 2820 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/427/dcrcwe3-109170.pdf" H 6510 2820 50  0001 C CNN
F 4 "Mouser 71-CRCW0805J-4.7K-E3" V 6510 2820 60  0001 C CNN "Distributor"
F 5 "CRCW08054K70JNEA" V 6510 2820 60  0001 C CNN "Manufacturer"
F 6 "0805" V 6510 2820 60  0001 C CNN "Package"
F 7 "1/8W 5%" V 6510 2820 60  0001 C CNN "Notes"
F 8 "0.091€" V 6510 2820 60  0001 C CNN "Price"
	1    6510 2820
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 56BFFDF0
P 6340 2820
F 0 "R2" V 6420 2820 50  0000 C CNN
F 1 "4.7k" V 6340 2820 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6270 2820 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/427/dcrcwe3-109170.pdf" H 6340 2820 50  0001 C CNN
F 4 "Mouser 71-CRCW0805J-4.7K-E3 " V 6340 2820 60  0001 C CNN "Distributor"
F 5 "CRCW08054K70JNEA" V 6340 2820 60  0001 C CNN "Manufacturer"
F 6 "0805" V 6340 2820 60  0001 C CNN "Package"
F 7 "1/8W 5%" V 6340 2820 60  0001 C CNN "Notes"
F 8 "0.091€" V 6340 2820 60  0001 C CNN "Price"
	1    6340 2820
	1    0    0    -1  
$EndComp
Text Label 6340 3190 1    60   ~ 0
SDA1
Text Label 6510 3190 1    60   ~ 0
SCL1
$Comp
L +5V #PWR031
U 1 1 56C00417
P 6430 2410
F 0 "#PWR031" H 6430 2260 50  0001 C CNN
F 1 "+5V" H 6430 2550 50  0000 C CNN
F 2 "" H 6430 2410 60  0000 C CNN
F 3 "" H 6430 2410 60  0000 C CNN
	1    6430 2410
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 56C00C2A
P 6930 2825
F 0 "R6" V 7010 2825 50  0000 C CNN
F 1 "4.7k" V 6930 2825 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6860 2825 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/427/dcrcwe3-109170.pdf" H 6930 2825 50  0001 C CNN
F 4 "Mouser 71-CRCW0805J-4.7K-E3 " V 6930 2825 60  0001 C CNN "Distributor"
F 5 "CRCW08054K70JNEA" V 6930 2825 60  0001 C CNN "Manufacturer"
F 6 "0805" V 6930 2825 60  0001 C CNN "Package"
F 7 "1/8W 5%" V 6930 2825 60  0001 C CNN "Notes"
F 8 "0.091€" V 6930 2825 60  0001 C CNN "Price"
	1    6930 2825
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 56C00C30
P 6760 2825
F 0 "R5" V 6840 2825 50  0000 C CNN
F 1 "4.7k" V 6760 2825 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6690 2825 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/427/dcrcwe3-109170.pdf" H 6760 2825 50  0001 C CNN
F 4 "Mouser 71-CRCW0805J-4.7K-E3 " V 6760 2825 60  0001 C CNN "Distributor"
F 5 "CRCW08054K70JNEA" V 6760 2825 60  0001 C CNN "Manufacturer"
F 6 "0805" V 6760 2825 60  0001 C CNN "Package"
F 7 "1/8W 5%" V 6760 2825 60  0001 C CNN "Notes"
F 8 " 0.091€ " V 6760 2825 60  0001 C CNN "Price"
	1    6760 2825
	1    0    0    -1  
$EndComp
Text Label 6760 3195 1    60   ~ 0
SDA2
Text Label 6930 3195 1    60   ~ 0
SCL2
$Comp
L +5V #PWR032
U 1 1 56C00C3D
P 6850 2415
F 0 "#PWR032" H 6850 2265 50  0001 C CNN
F 1 "+5V" H 6850 2555 50  0000 C CNN
F 2 "" H 6850 2415 60  0000 C CNN
F 3 "" H 6850 2415 60  0000 C CNN
	1    6850 2415
	1    0    0    -1  
$EndComp
Text Notes 9980 2000 0    60   ~ 0
M1IN1->STEPM1->D6\nM1IN2->DIRM1->D5\nM2IN1->STEPM2->D10\nM2IN2->DIRM2->D9
$Comp
L R R8
U 1 1 57044B38
P 2390 1450
F 0 "R8" V 2470 1450 50  0000 C CNN
F 1 "4.7k" V 2390 1450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2320 1450 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/427/dcrcwe3-109170.pdf" H 2390 1450 50  0001 C CNN
F 4 "Mouser 71-CRCW0805J-4.7K-E3 " V 2390 1450 60  0001 C CNN "Distributor"
F 5 "CRCW08054K70JNEA" V 2390 1450 60  0001 C CNN "Manufacturer"
F 6 "0805" V 2390 1450 60  0001 C CNN "Package"
F 7 "1/8W 5%" V 2390 1450 60  0001 C CNN "Notes"
F 8 "0.091€" V 2390 1450 60  0001 C CNN "Price"
	1    2390 1450
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 57044C41
P 2390 2210
F 0 "R9" V 2470 2210 50  0000 C CNN
F 1 "4.7k" V 2390 2210 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2320 2210 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/427/dcrcwe3-109170.pdf" H 2390 2210 50  0001 C CNN
F 4 "Mouser 71-CRCW0805J-4.7K-E3 " V 2390 2210 60  0001 C CNN "Distributor"
F 5 "CRCW08054K70JNEA" V 2390 2210 60  0001 C CNN "Manufacturer"
F 6 "0805" V 2390 2210 60  0001 C CNN "Package"
F 7 "1/8W 5%" V 2390 2210 60  0001 C CNN "Notes"
F 8 "0.091€" V 2390 2210 60  0001 C CNN "Price"
	1    2390 2210
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR033
U 1 1 5704629C
P 2390 2490
F 0 "#PWR033" H 2390 2240 50  0001 C CNN
F 1 "GND" H 2390 2340 50  0000 C CNN
F 2 "" H 2390 2490 60  0000 C CNN
F 3 "" H 2390 2490 60  0000 C CNN
	1    2390 2490
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR034
U 1 1 57046967
P 2390 1170
F 0 "#PWR034" H 2390 1020 50  0001 C CNN
F 1 "+5V" H 2390 1310 50  0000 C CNN
F 2 "" H 2390 1170 60  0000 C CNN
F 3 "" H 2390 1170 60  0000 C CNN
	1    2390 1170
	1    0    0    -1  
$EndComp
NoConn ~ 4120 2445
NoConn ~ 5380 2245
Text Notes 7265 905  0    60   ~ 12
I2C-1,2
Text Notes 5385 910  0    61   ~ 12
EndStops
$Comp
L GND #PWR035
U 1 1 5705B539
P 8365 1230
F 0 "#PWR035" H 8365 980 50  0001 C CNN
F 1 "GND" H 8365 1080 50  0000 C CNN
F 2 "" H 8365 1230 60  0000 C CNN
F 3 "" H 8365 1230 60  0000 C CNN
	1    8365 1230
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR036
U 1 1 5705B836
P 8235 1330
F 0 "#PWR036" H 8235 1180 50  0001 C CNN
F 1 "+5V" H 8235 1470 50  0000 C CNN
F 2 "" H 8235 1330 60  0000 C CNN
F 3 "" H 8235 1330 60  0000 C CNN
	1    8235 1330
	0    1    1    0   
$EndComp
Text Notes 8230 1795 0    61   ~ 12
DC Motors
Text Notes 3370 2005 0    61   ~ 12
Microcontroller
Text Notes 890  960  0    61   ~ 12
RS485
Text Notes 5365 4155 0    61   ~ 12
Stepper motor 1
Text Notes 8865 4145 0    61   ~ 12
Stepper motor 2
Text Notes 3880 905  0    60   ~ 12
Dev pins
Text Label 5510 2645 0    60   ~ 0
A3
Text Label 5510 2745 0    60   ~ 0
A2
NoConn ~ 5380 3045
Text Label 3845 1130 2    60   ~ 0
A3
Text Label 3845 1230 2    60   ~ 0
A2
Text Notes 5900 2180 0    61   ~ 0
Regulator in pro-mini, is MIC5205:\n5V@150mA with reverse-current protection
NoConn ~ 5380 3145
Text Notes 885  2800 0    61   ~ 0
Failsafe-biasing network for \nlegacy transceivers like SP485CN-L\n
$Comp
L RJ45 J1
U 1 1 57E50EE6
P 1165 3825
F 0 "J1" H 1365 4325 50  0000 C CNN
F 1 "RJ45" H 1015 4325 50  0000 C CNN
F 2 "Connect:RJ45_8" H 1165 3825 50  0001 C CNN
F 3 "" H 1165 3825 50  0000 C CNN
	1    1165 3825
	0    -1   -1   0   
$EndComp
$Comp
L Jumper_NO_Small JP8
U 1 1 57E516D1
P 2530 3955
F 0 "JP8" H 2650 4005 50  0000 C CNN
F 1 "Jumper_NO_Small" H 2540 3895 50  0001 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 2530 3955 50  0001 C CNN
F 3 "https://cdn.sparkfun.com/datasheets/Prototyping/16188.pdf" H 2530 3955 50  0001 C CNN
F 4 "SparkFun PRT-12791" H 2530 3955 60  0001 C CNN "Distributor"
F 5 "-" H 2530 3955 60  0001 C CNN "Manufacturer"
F 6 "2x23 pin male PTH header" H 2530 3955 60  0001 C CNN "Package"
F 7 "https://www.sparkfun.com/products/12791" H 2530 3955 60  0001 C CNN "Notes"
F 8 "-" H 2530 3955 60  0001 C CNN "Price"
	1    2530 3955
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NO_Small JP7
U 1 1 57E52083
P 2530 3850
F 0 "JP7" H 2650 3900 50  0000 C CNN
F 1 "Jumper_NO_Small" H 2540 3790 50  0001 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 2530 3850 50  0001 C CNN
F 3 "https://cdn.sparkfun.com/datasheets/Prototyping/16188.pdf" H 2530 3850 50  0001 C CNN
F 4 "SparkFun PRT-12791" H 2530 3850 60  0001 C CNN "Distributor"
F 5 "-" H 2530 3850 60  0001 C CNN "Manufacturer"
F 6 "2x23 pin male PTH header" H 2530 3850 60  0001 C CNN "Package"
F 7 "https://www.sparkfun.com/products/12791" H 2530 3850 60  0001 C CNN "Notes"
F 8 "-" H 2530 3850 60  0001 C CNN "Price"
	1    2530 3850
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X03 P1
U 1 1 57E56529
P 4225 1230
F 0 "P1" H 4225 1430 50  0000 C CNN
F 1 "Dev-Pins" H 4225 1030 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03" H 4225 30  50  0001 C CNN
F 3 "" H 4225 30  50  0000 C CNN
	1    4225 1230
	1    0    0    -1  
$EndComp
Text Label 5510 3245 0    60   ~ 0
PB5
Text Label 3845 1330 2    60   ~ 0
PB5
$Comp
L +5V #PWR037
U 1 1 57E6A1D1
P 4605 1330
F 0 "#PWR037" H 4605 1180 50  0001 C CNN
F 1 "+5V" H 4605 1470 50  0000 C CNN
F 2 "" H 4605 1330 60  0000 C CNN
F 3 "" H 4605 1330 60  0000 C CNN
	1    4605 1330
	0    1    1    0   
$EndComp
$Comp
L ARDUINO_PRO_MINI U1
U 1 1 57E6C46B
P 4750 2795
F 0 "U1" H 4750 2795 60  0000 C CNN
F 1 "ARDUINO_PRO_MINI" H 4760 1855 60  0000 C CNN
F 2 "satnogs:arduino-pro-mini" H 4750 2695 60  0001 C CNN
F 3 "" H 4750 2695 60  0000 C CNN
	1    4750 2795
	1    0    0    -1  
$EndComp
$Comp
L FILTER FB1
U 1 1 57E7000D
P 1225 6245
F 0 "FB1" H 1225 6395 50  0000 C CNN
F 1 "FILTER" H 1225 6145 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 1225 6245 50  0001 C CNN
F 3 "BLM21PG300SN1D" H 1225 6245 50  0001 C CNN
	1    1225 6245
	1    0    0    -1  
$EndComp
$Comp
L FUSE F1
U 1 1 57E70188
P 1860 6245
F 0 "F1" H 1960 6295 50  0000 C CNN
F 1 "FUSE" H 1760 6195 50  0000 C CNN
F 2 "SMD_Packages:Fuse_SMD" H 1860 6245 50  0001 C CNN
F 3 "0154002.DR" H 1860 6245 50  0001 C CNN
	1    1860 6245
	1    0    0    -1  
$EndComp
Text Notes 705  3035 0    61   ~ 12
Input Connector
Text Notes 5345 5840 0    61   ~ 0
Note for microstepping\nMS1 	MS2 	MS3 	Microstep Resolution\nLow 	Low 	Low 	Full step\nHigh 	Low 	Low 	Half step\nLow 	High 	Low 	Quarter step\nHigh 	High 	Low 	Eighth step\nHigh 	High 	High 	Sixteenth step
Text Notes 705  4560 0    61   ~ 0
802.3af Standards\nT568A color\n10/100 mode B, DC on spares
Text Notes 715  4670 0    61   ~ 0
Input from PoE 24W, 24V@1A
$Comp
L CP C5
U 1 1 57E7EF06
P 7275 2830
F 0 "C5" H 7300 2930 50  0000 L CNN
F 1 "10u" H 7300 2730 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D6.3_L11.2_P2.5" H 7313 2680 30  0001 C CNN
F 3 "http://www.mouser.com/ds/2/315/ABA0000CE12-465472.pdf" H 7275 2830 60  0001 C CNN
F 4 "Mouser 667-ECA-1EM100B " H 7275 2830 60  0001 C CNN "Distributor"
F 5 "ECA-1EM100B" H 7275 2830 60  0001 C CNN "Manufacturer"
F 6 "ThroughHole:C_Radial_D6.3_L11.2_P2.5" H 7275 2830 60  0001 C CNN "Package"
F 7 "10uF 25VDC 85C" H 7275 2830 60  0001 C CNN "Notes"
F 8 "0.136€" H 7275 2830 60  0001 C CNN "Price"
	1    7275 2830
	1    0    0    -1  
$EndComp
Text Label 8510 2600 2    60   ~ 0
SF
Wire Wire Line
	7605 1130 7495 1130
Wire Wire Line
	7605 1230 7495 1230
Wire Wire Line
	7605 1330 7495 1330
Wire Wire Line
	7605 1430 7495 1430
Wire Wire Line
	8365 1430 8105 1430
Wire Wire Line
	8105 1330 8235 1330
Wire Wire Line
	4120 2245 3980 2245
Wire Wire Line
	4120 2345 3980 2345
Wire Wire Line
	4120 2845 3980 2845
Wire Wire Line
	4120 2945 3980 2945
Wire Wire Line
	4120 3045 3980 3045
Wire Wire Line
	4120 3145 3980 3145
Wire Wire Line
	4120 3245 3980 3245
Wire Wire Line
	4120 3345 3980 3345
Wire Wire Line
	3845 2545 4120 2545
Wire Wire Line
	1150 1680 1050 1680
Wire Wire Line
	1550 2280 1550 2340
Wire Wire Line
	1550 1380 1550 1290
Wire Wire Line
	1150 1580 1050 1580
Wire Wire Line
	1050 1980 1150 1980
Wire Wire Line
	5805 1170 5695 1170
Wire Wire Line
	5465 1270 5805 1270
Wire Wire Line
	6375 1370 6305 1370
Wire Wire Line
	5805 1370 5745 1370
Wire Wire Line
	6305 1270 6655 1270
Wire Wire Line
	6305 1170 6415 1170
Wire Wire Line
	6655 1270 6655 1290
Wire Wire Line
	5465 1270 5465 1290
Wire Wire Line
	1150 2080 1050 2080
Wire Wire Line
	2810 1720 2810 1630
Wire Wire Line
	2810 1920 2810 2050
Wire Wire Line
	5140 4365 4870 4365
Wire Wire Line
	5040 4465 5140 4465
Wire Wire Line
	4550 4565 5140 4565
Wire Wire Line
	4550 4665 5140 4665
Wire Wire Line
	4550 4765 5140 4765
Wire Wire Line
	4550 4865 5140 4865
Wire Wire Line
	5140 4965 4870 4965
Wire Wire Line
	4655 5065 5140 5065
Wire Wire Line
	4910 5065 4910 5185
Wire Wire Line
	4910 5575 4910 5485
Wire Wire Line
	6340 5065 6610 5065
Wire Wire Line
	6340 4965 6610 4965
Wire Wire Line
	6340 4865 6610 4865
Wire Wire Line
	6340 4765 6610 4765
Wire Wire Line
	6340 4665 6610 4665
Wire Wire Line
	6340 4565 6610 4565
Wire Wire Line
	6340 4465 6610 4465
Wire Wire Line
	6340 4365 6610 4365
Wire Wire Line
	6610 4565 6610 4665
Wire Wire Line
	6810 4765 6970 4765
Wire Wire Line
	6970 4865 6810 4865
Wire Wire Line
	6970 4965 6810 4965
Wire Wire Line
	6970 4635 6970 4965
Connection ~ 6970 4865
Connection ~ 6970 4765
Wire Wire Line
	7270 4645 7270 4485
Wire Wire Line
	7270 4945 7270 5105
Wire Wire Line
	8640 4360 8370 4360
Wire Wire Line
	8540 4460 8640 4460
Wire Wire Line
	8050 4560 8640 4560
Wire Wire Line
	8050 4660 8640 4660
Wire Wire Line
	8050 4760 8640 4760
Wire Wire Line
	8050 4860 8640 4860
Wire Wire Line
	8640 4960 8370 4960
Wire Wire Line
	8155 5060 8640 5060
Wire Wire Line
	8410 5060 8410 5180
Wire Wire Line
	8410 5570 8410 5480
Wire Wire Line
	9840 5060 10110 5060
Wire Wire Line
	9840 4960 10110 4960
Wire Wire Line
	9840 4860 10110 4860
Wire Wire Line
	9840 4760 10110 4760
Wire Wire Line
	9840 4660 10110 4660
Wire Wire Line
	9840 4560 10110 4560
Wire Wire Line
	9840 4460 10110 4460
Wire Wire Line
	9840 4360 10110 4360
Wire Wire Line
	10110 4560 10110 4660
Wire Wire Line
	10310 4760 10470 4760
Wire Wire Line
	10470 4860 10310 4860
Wire Wire Line
	10470 4960 10310 4960
Wire Wire Line
	10470 4630 10470 4960
Connection ~ 10470 4860
Connection ~ 10470 4760
Wire Wire Line
	10770 4640 10770 4480
Wire Wire Line
	10770 4940 10770 5100
Wire Wire Line
	5380 2045 5510 2045
Wire Wire Line
	6340 2670 6340 2530
Wire Wire Line
	6340 2530 6510 2530
Wire Wire Line
	6510 2530 6510 2670
Wire Wire Line
	6340 2970 6340 3190
Wire Wire Line
	6510 2970 6510 3190
Wire Wire Line
	6430 2530 6430 2410
Connection ~ 6430 2530
Wire Wire Line
	6760 2675 6760 2535
Wire Wire Line
	6760 2535 6930 2535
Wire Wire Line
	6930 2535 6930 2675
Wire Wire Line
	6760 2975 6760 3195
Wire Wire Line
	6930 2975 6930 3195
Wire Wire Line
	6850 2535 6850 2415
Connection ~ 6850 2535
Wire Wire Line
	2390 1600 2390 1730
Wire Wire Line
	2390 1930 2390 2060
Wire Wire Line
	2390 1300 2390 1170
Wire Wire Line
	2390 2360 2390 2490
Wire Wire Line
	5380 3545 5510 3545
Wire Wire Line
	5380 3445 5510 3445
Wire Wire Line
	5380 3345 5510 3345
Wire Wire Line
	5380 2945 5510 2945
Wire Wire Line
	5380 2845 5510 2845
Wire Wire Line
	5380 2745 5510 2745
Wire Wire Line
	5380 2545 5510 2545
Wire Wire Line
	5380 2445 5510 2445
Wire Wire Line
	5380 2345 5720 2345
Wire Wire Line
	5380 2145 5510 2145
Wire Wire Line
	2390 1730 1950 1730
Wire Wire Line
	1950 1930 2390 1930
Wire Wire Line
	2550 1670 2550 1640
Wire Wire Line
	2550 1640 2390 1640
Connection ~ 2390 1640
Wire Wire Line
	2550 1970 2550 2000
Wire Wire Line
	2550 2000 2390 2000
Connection ~ 2390 2000
Wire Wire Line
	8105 1230 8365 1230
Wire Wire Line
	8105 1130 8235 1130
Wire Wire Line
	4475 1130 4605 1130
Wire Wire Line
	4475 1230 4755 1230
Wire Wire Line
	3975 1130 3845 1130
Wire Wire Line
	3975 1230 3845 1230
Wire Wire Line
	4120 2745 3980 2745
Wire Wire Line
	4120 2645 3980 2645
Wire Wire Line
	5380 2645 5510 2645
Wire Wire Line
	5380 3245 5510 3245
Wire Wire Line
	3975 1330 3845 1330
Wire Wire Line
	4475 1330 4605 1330
Wire Wire Line
	8650 2200 8510 2200
Wire Wire Line
	8650 2600 8510 2600
Wire Wire Line
	8650 3550 8510 3550
Wire Wire Line
	8650 3650 8510 3650
Wire Wire Line
	8650 2700 8510 2700
Wire Wire Line
	8650 3250 8510 3250
Wire Wire Line
	8650 3150 8510 3150
Text Label 8510 2825 2    60   ~ 0
EN
Wire Wire Line
	8510 2825 8650 2825
Wire Wire Line
	8650 2300 8510 2300
$Comp
L +5V #PWR038
U 1 1 57E8D1D0
P 9325 1650
F 0 "#PWR038" H 9325 1500 50  0001 C CNN
F 1 "+5V" H 9325 1790 50  0000 C CNN
F 2 "" H 9325 1650 60  0000 C CNN
F 3 "" H 9325 1650 60  0000 C CNN
	1    9325 1650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR039
U 1 1 57E8DF5D
P 9425 1785
F 0 "#PWR039" H 9425 1535 50  0001 C CNN
F 1 "GND" H 9425 1635 50  0000 C CNN
F 2 "" H 9425 1785 60  0000 C CNN
F 3 "" H 9425 1785 60  0000 C CNN
	1    9425 1785
	-1   0    0    1   
$EndComp
Wire Wire Line
	9425 1925 9425 1785
Wire Wire Line
	9325 1925 9325 1650
Text Label 6600 4865 2    60   ~ 0
MS2M1
Text Label 6595 4765 2    60   ~ 0
MS3M1
Text Label 10095 4860 2    60   ~ 0
MS2M2
Text Label 10095 4760 2    60   ~ 0
MS3M2
Text Label 9840 4560 0    60   ~ 0
M2SLP
Text Label 9840 4660 0    60   ~ 0
M2RST
Text Label 6340 4665 0    60   ~ 0
M1RST
Text Label 6340 4565 0    60   ~ 0
M1SLP
Text Notes 9855 2090 0    60   ~ 0
SLEW/INV default state: GND
NoConn ~ 8650 2925
NoConn ~ 8650 3025
NoConn ~ 10550 3025
NoConn ~ 10550 2925
Text Label 8510 2500 2    60   ~ 0
M1D1
Wire Wire Line
	8650 2400 8510 2400
Wire Wire Line
	8650 2500 8510 2500
Text Label 8510 2400 2    60   ~ 0
M1D2
Wire Wire Line
	8650 3350 8510 3350
Text Label 8510 3350 2    60   ~ 0
M2D2
Text Label 10690 3225 0    60   ~ 0
M2D1
Wire Wire Line
	8650 3450 8510 3450
Text Label 8510 3450 2    60   ~ 0
M2D1
Text Label 10690 3125 0    60   ~ 0
M2D2
Wire Wire Line
	10550 3125 10690 3125
Wire Wire Line
	10550 3225 10690 3225
Wire Wire Line
	10550 2725 10690 2725
Wire Wire Line
	10550 2625 10690 2625
Text Label 10690 2725 0    60   ~ 0
M1D1
Text Label 10690 2625 0    60   ~ 0
M1D2
Text Label 1745 3875 0    60   ~ 0
VIN_RJ45
Wire Wire Line
	1615 3475 1745 3475
Wire Wire Line
	1745 3575 1615 3575
Wire Wire Line
	1615 3775 1745 3775
Wire Wire Line
	1615 3875 1745 3875
Wire Wire Line
	1615 4075 1745 4075
Wire Wire Line
	1615 4175 1745 4175
Wire Wire Line
	815  3275 815  3145
Text Label 1745 3775 0    60   ~ 0
VIN_RJ45
Wire Wire Line
	2280 3260 2280 3205
Wire Wire Line
	2590 3255 2590 3200
Text Label 2590 3200 0    60   ~ 0
VIN
Wire Wire Line
	1745 3475 1745 3575
$Comp
L GND #PWR040
U 1 1 57EA8F4E
P 1820 3525
F 0 "#PWR040" H 1820 3275 50  0001 C CNN
F 1 "GND" H 1820 3375 50  0000 C CNN
F 2 "" H 1820 3525 60  0000 C CNN
F 3 "" H 1820 3525 60  0000 C CNN
	1    1820 3525
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1745 3525 1820 3525
Connection ~ 1745 3525
NoConn ~ 1615 3975
NoConn ~ 1615 3675
Wire Wire Line
	2430 3850 2340 3850
Wire Wire Line
	2430 3955 2340 3955
Wire Wire Line
	2630 3850 2720 3850
Wire Wire Line
	2630 3955 2720 3955
Text Label 2340 3850 2    60   ~ 0
A
Text Label 2340 3955 2    60   ~ 0
B
Text Label 2720 3850 0    60   ~ 0
TX
Text Label 2720 3955 0    60   ~ 0
RX
$Comp
L GND #PWR041
U 1 1 57EB15B8
P 950 3195
F 0 "#PWR041" H 950 2945 50  0001 C CNN
F 1 "GND" H 950 3045 50  0000 C CNN
F 2 "" H 950 3195 60  0000 C CNN
F 3 "" H 950 3195 60  0000 C CNN
	1    950  3195
	1    0    0    -1  
$EndComp
Wire Wire Line
	815  3145 950  3145
Wire Wire Line
	950  3145 950  3195
Text Notes 600  5975 0    61   ~ 12
Power Supply Module
Wire Wire Line
	2545 6570 2545 6680
Wire Wire Line
	2540 6595 2790 6595
Wire Wire Line
	875  6245 750  6245
Text Notes 2280 4175 0    61   ~ 0
Solder to have UART\nas communication 
Text Label 750  6245 2    60   ~ 0
VIN
$Comp
L GND #PWR042
U 1 1 57EBDE5F
P 2545 6680
F 0 "#PWR042" H 2545 6430 50  0001 C CNN
F 1 "GND" H 2545 6530 50  0000 C CNN
F 2 "" H 2545 6680 60  0000 C CNN
F 3 "" H 2545 6680 60  0000 C CNN
	1    2545 6680
	1    0    0    -1  
$EndComp
Connection ~ 2545 6595
Text Notes 6000 6580 0    61   ~ 0
Output: 12V@3.5A
Wire Wire Line
	7275 2680 7275 2535
Wire Wire Line
	7275 2980 7275 3195
$Comp
L +12V #PWR043
U 1 1 57EC3F57
P 7275 2535
F 0 "#PWR043" H 7275 2385 50  0001 C CNN
F 1 "+12V" H 7275 2675 50  0000 C CNN
F 2 "" H 7275 2535 50  0000 C CNN
F 3 "" H 7275 2535 50  0000 C CNN
	1    7275 2535
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR044
U 1 1 57EC4448
P 5510 1955
F 0 "#PWR044" H 5510 1805 50  0001 C CNN
F 1 "+12V" H 5510 2095 50  0000 C CNN
F 2 "" H 5510 1955 50  0000 C CNN
F 3 "" H 5510 1955 50  0000 C CNN
	1    5510 1955
	1    0    0    -1  
$EndComp
Wire Wire Line
	5510 2045 5510 1955
$Comp
L +12V #PWR045
U 1 1 57EC71F2
P 4655 5065
F 0 "#PWR045" H 4655 4915 50  0001 C CNN
F 1 "+12V" H 4655 5205 50  0000 C CNN
F 2 "" H 4655 5065 50  0000 C CNN
F 3 "" H 4655 5065 50  0000 C CNN
	1    4655 5065
	0    -1   -1   0   
$EndComp
Connection ~ 4910 5065
$Comp
L +12V #PWR046
U 1 1 57EC75BC
P 8155 5060
F 0 "#PWR046" H 8155 4910 50  0001 C CNN
F 1 "+12V" H 8155 5200 50  0000 C CNN
F 2 "" H 8155 5060 50  0000 C CNN
F 3 "" H 8155 5060 50  0000 C CNN
	1    8155 5060
	0    -1   -1   0   
$EndComp
Connection ~ 8410 5060
$Comp
L GND #PWR047
U 1 1 57EC8D0A
P 7275 3195
F 0 "#PWR047" H 7275 2945 50  0001 C CNN
F 1 "GND" H 7275 3045 50  0000 C CNN
F 2 "" H 7275 3195 60  0000 C CNN
F 3 "" H 7275 3195 60  0000 C CNN
	1    7275 3195
	1    0    0    -1  
$EndComp
$Comp
L POLOLU_DUAL_MC33926 U6
U 1 1 57ECAEDB
P 9600 2925
F 0 "U6" H 9600 2925 60  0000 C CNN
F 1 "POLOLU_DUAL_MC33926" H 9600 2050 60  0000 C CNN
F 2 "satnogs:pololu-dual-mc33926" H 9600 2925 60  0001 C CNN
F 3 "" H 9600 2925 60  0001 C CNN
	1    9600 2925
	1    0    0    -1  
$EndComp
NoConn ~ 10550 2825
$Comp
L D_Schottky D2
U 1 1 57E9650D
P 2545 6420
F 0 "D2" H 2545 6520 50  0000 C CNN
F 1 "D_Schottky" H 2545 6320 50  0000 C CNN
F 2 "Diodes_SMD:DO-214AB" H 2545 6420 50  0001 C CNN
F 3 "" H 2545 6420 50  0000 C CNN
	1    2545 6420
	0    1    1    0   
$EndComp
Wire Wire Line
	2545 6165 2545 6270
$Comp
L PWR_FLAG #FLG048
U 1 1 57ED5140
P 2545 6165
F 0 "#FLG048" H 2545 6260 50  0001 C CNN
F 1 "PWR_FLAG" H 2545 6355 50  0000 C CNN
F 2 "" H 2545 6165 60  0000 C CNN
F 3 "" H 2545 6165 60  0000 C CNN
	1    2545 6165
	1    0    0    -1  
$EndComp
Wire Wire Line
	2110 6245 3460 6245
Connection ~ 2545 6245
Wire Wire Line
	1575 6245 1610 6245
$Comp
L CONN_01X02 P3
U 1 1 57EE206B
P 1115 4975
F 0 "P3" H 1115 5125 50  0000 C CNN
F 1 "Power-In" V 1215 4975 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_2.00mmDrill" H 1115 4975 50  0001 C CNN
F 3 "" H 1115 4975 50  0000 C CNN
	1    1115 4975
	-1   0    0    1   
$EndComp
Text Notes 980  5425 0    61   ~ 0
Separate chasis connector for power-in.\nIn case that the PoE isn't suitable. 
Wire Wire Line
	1315 4925 1425 4925
Wire Wire Line
	1315 5025 1425 5025
Text Label 1425 4925 0    60   ~ 0
VIN
$Comp
L GND #PWR049
U 1 1 57EE34EC
P 1425 5065
F 0 "#PWR049" H 1425 4815 50  0001 C CNN
F 1 "GND" H 1425 4915 50  0000 C CNN
F 2 "" H 1425 5065 60  0000 C CNN
F 3 "" H 1425 5065 60  0000 C CNN
	1    1425 5065
	1    0    0    -1  
$EndComp
Wire Wire Line
	1425 5025 1425 5065
$Comp
L Jumper_NO_Small JP9
U 1 1 57EE4C4D
P 2250 4925
F 0 "JP9" H 2370 4975 50  0000 C CNN
F 1 "Jumper_NO_Small" H 2260 4865 50  0001 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 2250 4925 50  0001 C CNN
F 3 "https://cdn.sparkfun.com/datasheets/Prototyping/16188.pdf" H 2250 4925 50  0001 C CNN
F 4 "SparkFun PRT-12791" H 2250 4925 60  0001 C CNN "Distributor"
F 5 "-" H 2250 4925 60  0001 C CNN "Manufacturer"
F 6 "2x23 pin male PTH header" H 2250 4925 60  0001 C CNN "Package"
F 7 "https://www.sparkfun.com/products/12791" H 2250 4925 60  0001 C CNN "Notes"
F 8 "-" H 2250 4925 60  0001 C CNN "Price"
	1    2250 4925
	1    0    0    -1  
$EndComp
Text Label 2465 4925 0    60   ~ 0
VIN_RJ45
Wire Wire Line
	2350 4925 2465 4925
Wire Wire Line
	2150 4925 2035 4925
Text Label 2035 4925 2    60   ~ 0
VIN
Wire Wire Line
	9675 1925 9675 1775
$Comp
L +12V #PWR050
U 1 1 57EEBDAF
P 9675 1775
F 0 "#PWR050" H 9675 1625 50  0001 C CNN
F 1 "+12V" H 9675 1915 50  0000 C CNN
F 2 "" H 9675 1775 50  0000 C CNN
F 3 "" H 9675 1775 50  0000 C CNN
	1    9675 1775
	1    0    0    -1  
$EndComp
Wire Wire Line
	9775 1925 9775 1645
$Comp
L GND #PWR051
U 1 1 57EEC12E
P 9775 1645
F 0 "#PWR051" H 9775 1395 50  0001 C CNN
F 1 "GND" H 9775 1495 50  0000 C CNN
F 2 "" H 9775 1645 60  0000 C CNN
F 3 "" H 9775 1645 60  0000 C CNN
	1    9775 1645
	-1   0    0    1   
$EndComp
NoConn ~ 9525 1925
$Comp
L TPS54360DDA U5
U 1 1 57EF2C6B
P 3860 6445
F 0 "U5" H 3560 6895 50  0000 L CNN
F 1 "TPS54360DDA" H 3560 6795 50  0000 L CNN
F 2 "satnogs:HSOP-8" H 4160 5995 50  0001 C CIN
F 3 "" H 3860 6445 50  0000 C CNN
	1    3860 6445
	1    0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 57EF3A8B
P 5730 6660
F 0 "R12" V 5810 6660 50  0000 C CNN
F 1 "147k" V 5730 6660 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5660 6660 50  0001 C CNN
F 3 "" H 5730 6660 50  0000 C CNN
	1    5730 6660
	1    0    0    -1  
$EndComp
$Comp
L C_Small C9
U 1 1 57EF47B6
P 5945 6870
F 0 "C9" H 5955 6940 50  0000 L CNN
F 1 "47u" H 5955 6790 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 5945 6870 50  0001 C CNN
F 3 "" H 5945 6870 50  0000 C CNN
	1    5945 6870
	1    0    0    -1  
$EndComp
$Comp
L C_Small C8
U 1 1 57EF4969
P 4740 6965
F 0 "C8" H 4750 7035 50  0000 L CNN
F 1 "10p" H 4750 6885 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4740 6965 50  0001 C CNN
F 3 "" H 4740 6965 50  0000 C CNN
	1    4740 6965
	1    0    0    -1  
$EndComp
$Comp
L C_Small C7
U 1 1 57EF4E01
P 4560 7095
F 0 "C7" H 4570 7165 50  0000 L CNN
F 1 "7.5n" H 4570 7015 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4560 7095 50  0001 C CNN
F 3 "" H 4560 7095 50  0000 C CNN
	1    4560 7095
	1    0    0    -1  
$EndComp
$Comp
L R R13
U 1 1 57EF4F79
P 5730 7055
F 0 "R13" V 5810 7055 50  0000 C CNN
F 1 "10.5k" V 5730 7055 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5660 7055 50  0001 C CNN
F 3 "" H 5730 7055 50  0000 C CNN
	1    5730 7055
	1    0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 57EF5028
P 4560 6770
F 0 "R11" V 4640 6770 50  0000 C CNN
F 1 "26.7k" V 4560 6770 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4490 6770 50  0001 C CNN
F 3 "" H 4560 6770 50  0000 C CNN
	1    4560 6770
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 57EF5103
P 3190 6730
F 0 "R10" V 3270 6730 50  0000 C CNN
F 1 "221k" V 3190 6730 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3120 6730 50  0001 C CNN
F 3 "" H 3190 6730 50  0000 C CNN
	1    3190 6730
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR_SMALL L1
U 1 1 57EF5218
P 5330 6445
F 0 "L1" H 5330 6545 50  0000 C CNN
F 1 "27u" H 5330 6395 50  0000 C CNN
F 2 "satnogs:bourns-srr1210" H 5330 6445 50  0001 C CNN
F 3 "" H 5330 6445 50  0000 C CNN
	1    5330 6445
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D1
U 1 1 57EF65F4
P 4965 6650
F 0 "D1" H 4965 6750 50  0000 C CNN
F 1 "D_Schottky" H 4965 6550 50  0000 C CNN
F 2 "Diodes_SMD:DO-214AB" H 4965 6650 50  0001 C CNN
F 3 "" H 4965 6650 50  0000 C CNN
	1    4965 6650
	0    1    1    0   
$EndComp
Wire Wire Line
	2790 6245 2790 6315
Wire Wire Line
	2790 6595 2790 6515
Connection ~ 2790 6245
$Comp
L C_Small C6
U 1 1 57EFA4E3
P 4455 6245
F 0 "C6" H 4465 6315 50  0000 L CNN
F 1 "100n" H 4465 6165 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4455 6245 50  0001 C CNN
F 3 "" H 4455 6245 50  0000 C CNN
	1    4455 6245
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4260 6245 4355 6245
Wire Wire Line
	4260 6445 5080 6445
Wire Wire Line
	4620 6445 4620 6245
Wire Wire Line
	4620 6245 4555 6245
Connection ~ 4620 6445
Wire Wire Line
	3190 6580 3190 6445
Wire Wire Line
	3190 6445 3460 6445
Wire Wire Line
	4260 6745 4350 6745
Text Label 4350 6745 0    60   ~ 0
FB
Text Label 5590 6870 2    60   ~ 0
FB
Wire Wire Line
	4260 6545 4740 6545
Wire Wire Line
	4560 6545 4560 6620
Wire Wire Line
	4560 6995 4560 6920
Wire Wire Line
	4740 6545 4740 6865
Connection ~ 4560 6545
Wire Wire Line
	4740 7265 4740 7065
Wire Wire Line
	4560 7265 4560 7195
Wire Wire Line
	4965 6445 4965 6500
Connection ~ 4965 6445
Wire Wire Line
	5580 6445 6245 6445
Wire Wire Line
	5730 6445 5730 6510
Wire Wire Line
	5730 6810 5730 6905
Wire Wire Line
	5945 6385 5945 6770
Connection ~ 5730 6445
Wire Wire Line
	5730 7265 5730 7205
Wire Wire Line
	5945 6970 5945 7320
Wire Wire Line
	4965 7265 4965 6800
Wire Wire Line
	3960 7265 3960 6945
Wire Wire Line
	3760 6945 3760 7265
Wire Wire Line
	3190 6880 3190 7265
$Comp
L +12V #PWR052
U 1 1 57F0F445
P 5945 6385
F 0 "#PWR052" H 5945 6235 50  0001 C CNN
F 1 "+12V" H 5945 6525 50  0000 C CNN
F 2 "" H 5945 6385 50  0000 C CNN
F 3 "" H 5945 6385 50  0000 C CNN
	1    5945 6385
	1    0    0    -1  
$EndComp
Connection ~ 5945 6445
Wire Wire Line
	3190 7265 5945 7265
Connection ~ 5730 7265
Connection ~ 4965 7265
Connection ~ 4740 7265
Connection ~ 4560 7265
Connection ~ 3960 7265
Connection ~ 3760 7265
$Comp
L GND #PWR053
U 1 1 57F1159B
P 5945 7320
F 0 "#PWR053" H 5945 7070 50  0001 C CNN
F 1 "GND" H 5945 7170 50  0000 C CNN
F 2 "" H 5945 7320 60  0000 C CNN
F 3 "" H 5945 7320 60  0000 C CNN
	1    5945 7320
	1    0    0    -1  
$EndComp
Connection ~ 5945 7265
Wire Wire Line
	5730 6870 5590 6870
Connection ~ 5730 6870
$Comp
L C_Small C2
U 1 1 57F1A1A0
P 2790 6415
F 0 "C2" H 2800 6485 50  0000 L CNN
F 1 "2.2u" H 2800 6335 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 2790 6415 50  0001 C CNN
F 3 "" H 2790 6415 50  0000 C CNN
	1    2790 6415
	1    0    0    -1  
$EndComp
NoConn ~ 3460 6745
$Comp
L PWR_FLAG #FLG054
U 1 1 57F1C3BC
P 6245 6435
F 0 "#FLG054" H 6245 6530 50  0001 C CNN
F 1 "PWR_FLAG" H 6245 6625 50  0000 C CNN
F 2 "" H 6245 6435 60  0000 C CNN
F 3 "" H 6245 6435 60  0000 C CNN
	1    6245 6435
	1    0    0    -1  
$EndComp
Wire Wire Line
	6245 6445 6245 6435
$EndSCHEMATC
