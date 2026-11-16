# 4-Digit 7-Segment Display (Basys3)

**COL215, Lab Assignment 3**

A Verilog design that captures a 4-digit decimal number from the switches on the Basys3 board and shows it on the four 7-segment displays. It reuses the single-digit decoder from Assignment 2.

**Capture:** SW0–SW9 select the digit value (0–9). SW10–SW13 choose which digit is stored: SW10 for digit 0, SW11 for digit 1, SW12 for digit 2 and SW13 for digit 3. While a select switch is on, the value on SW0–SW9 is stored on each rising clock edge, and it is held after the switch is turned off.

**Display:** A counter driven by the 100 MHz clock cycles through the four anodes (AN0–AN3), lighting each display in turn for about 1 ms. The cathodes show the stored digit for the active display, so all four digits appear lit at once. The anodes and cathodes are active low.
