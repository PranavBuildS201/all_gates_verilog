# Circuit diagrams

This folder contains compact circuit/logic illustrations for the RTL examples. The Verilog source is the authoritative implementation. For synthesis-quality schematics, generate the schematic in Vivado after elaboration or synthesis and replace/add the exported screenshot here.

## Quick circuit map

- **Combinational:** inputs → logic network → outputs; no stored state.
- **SR latch:** two cross-coupled NOR gates; feedback stores one bit.
- **D latch:** enable-controlled storage; transparent while enable is high.
- **D flip-flop:** captures D on the rising edge of clk.
- **JK flip-flop:** captures hold/reset/set/toggle behavior on the rising clock edge.
