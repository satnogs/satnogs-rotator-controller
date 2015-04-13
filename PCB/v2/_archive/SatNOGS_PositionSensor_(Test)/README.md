# Absolute position feedback with potentiometer#
Use a multiturn (3/10/..) potentiometer to read absolute position. However to deal with offset and use the whole range for better precision signal must be conditioned using operational amplifier.

## Operational amplifier for range adjustment ##

![opamp](http://www.mikrocontroller.net/wikifiles/5/5c/Op-subtrahierer.png)

![equation opamp](http://www.mikrocontroller.net/wikifiles/math/1/e/1/1e11e57d80899ea86cb4f0dc9885f2ef.png)

    V=R7/R5
    Offset=5V ( R6 / R4)
As proposed definition:
0 deg = 1 Volt
360 deg = 4 Volt
Allows measuring absolute position
-90 deg .. 450 deg

Value examples (10 turn poti):
R5=1k
R7=6.8k
V=6.8
->5V*0.68 = 3.4 V / turn

Value examples (3 turn):
R5=1k
R7=2.2k
V=2.2k
->5V*2.2/3 = 3.67 V / turn

R6=2k
R4=10k
Uoff=-1V

## Setup steps for absolute position ##

1. Adjust gain V according to the potentiometer, e.g. recommended gain is 0.6 * potentiometer turns. You can alternatively use fixed resistor for this.
2. Adjust the 0 degree position with trimm potentiometer to output 1 volt for 0 degree.

