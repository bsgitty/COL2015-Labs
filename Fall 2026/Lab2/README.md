# 7-Segment Display Decoder (Basys3)

**COL215, Lab Assignment 2**

A behavioural Verilog circuit that reads switches SW0–SW9 on the Basys3 board and shows the matching decimal digit (0–9) on the rightmost 7-segment display (AN0). If more than one switch is on, the highest-numbered one wins (for example, SW9 and SW7 together show 9). If no switch is on, the display stays blank.

## Segment mapping

The cathodes are active low (0 = segment on, 1 = segment off). The output is `seg[6:0] = {CG, CF, CE, CD, CC, CB, CA}`.

|Switch| Digit | Segments lit  |seg[6:0]|
|------|-------|---------------|---------|
| SW0  |   0   | A B C D E F   | 1000000 |
| SW1  |   1   | B C           | 1111001 |
| SW2  |   2   | A B D E G     | 0100100 |
| SW3  |   3   | A B C D G     | 0110000 |
| SW4  |   4   | B C F G       | 0011001 |
| SW5  |   5   | A C D F G     | 0010010 |
| SW6  |   6   | A C D E F G   | 0000010 |
| SW7  |   7   | A B C         | 1111000 |
| SW8  |   8   | A B C D E F G | 0000000 |
| SW9  |   9   | A B C D F G   | 0010000 |
| none | blank | none     | 1111111 |
