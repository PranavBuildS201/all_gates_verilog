# Verilog Digital Design Practice — Vivado

A growing portfolio of **Verilog HDL modules and testbenches** practiced by Pranav Shinde. Designs are organized by circuit type and intended for simulation in **AMD/Xilinx Vivado**.

## Circuit catalogue

### Combinational circuits

| Circuit | RTL | Testbench |
|---|---|---|
| Seven logic gates | [all_gates_gatelevel.v](all_gates_gatelevel.v) | [original testbench](tb_all_gates_gatelevel.v.txt) |
| 2:1 MUX | [existing RTL](rtl/mux_2to1.v) | [testbench](testbench/tb_mux_2to1.v) |
| 8:1 MUX | [RTL](modules/combinational/mux_8to1.v) | [testbench](testbench/tb_mux_8to1.v) |
| 32:1 MUX — indexed | [RTL](modules/combinational/mux_32to1_indexed.v) | [shared testbench](testbench/tb_mux_32to1.v) |
| 32:1 MUX — case | [RTL](modules/combinational/mux_32to1_case.v) | [shared testbench](testbench/tb_mux_32to1.v) |
| 1:4 DEMUX | [existing RTL](rtl/demux_1to4.v) | [testbench](testbench/tb_demux_1to4.v) |
| 1:8 DEMUX | [RTL](modules/combinational/demux_1to8.v) | [testbench](testbench/tb_demux_1to8.v) |
| 4:2 encoder | [RTL](modules/combinational/encoder_4to2.v) | [testbench](testbench/tb_encoder_4to2.v) |
| 2:4 decoder | [RTL](modules/combinational/decoder_2to4.v) | [existing testbench](testbench/tb_decoder_2to4.v) |
| Half adder / Full adder | [HA](modules/combinational/half_adder.v) · [FA](modules/combinational/full_adder.v) | [existing HA](testbench/tb_half_adder.v) · [existing FA](testbench/tb_full_adder.v) |
| Half subtractor / Full subtractor | [Half](modules/combinational/half_subtractor.v) · [Full](modules/combinational/full_subtractor.v) | [Half TB](testbench/tb_half_subtractor.v) · [Full TB](testbench/tb_full_subtractor.v) |
| 4-bit ripple-carry adder | [RTL](modules/combinational/ripple_carry_adder_4bit.v) | [testbench](testbench/tb_ripple_carry_adder_4bit.v) |
| 4-bit comparator | [RTL](modules/combinational/comparator_4bit.v) | [testbench](testbench/tb_comparator_4bit.v) |
| BCD adder | [RTL](modules/combinational/bcd_adder.v) | [testbench](testbench/tb_bcd_adder.v) |

### Sequential circuits

| Circuit | RTL | Testbench |
|---|---|---|
| SR latch | [RTL](modules/sequential/sr_latch.v) | [testbench](testbench/tb_sr_latch.v) |
| D latch | [RTL](modules/sequential/d_latch.v) | [testbench](testbench/tb_d_latch.v) |
| D flip-flop | [RTL](modules/sequential/d_ff.v) | [testbench](testbench/tb_d_ff.v) |
| D flip-flop with synchronous reset | [RTL](modules/sequential/d_ff_sync_reset.v) | [testbench](testbench/tb_d_ff_sync_reset.v) |
| JK flip-flop | [RTL](modules/sequential/jk_ff.v) | [testbench](testbench/tb_jk_ff.v) |

> **Learning note:** These files represent practice examples, not a claim that every module has been independently verified in Vivado. Run each testbench and inspect its waveform before treating it as verified.

## Repository layout

- `modules/combinational/` — combinational RTL
- `modules/sequential/` — latch and flip-flop RTL
- `testbench/` — simulation stimulus and checks
- `diagrams/` — circuit illustrations and instructions
- `waveforms/` — guidance for saving real Vivado waveform evidence

## Run in Vivado

1. Add **one design module** (plus any dependency modules, such as `full_adder.v` for the ripple-carry adder) as Design Sources.
2. Add its matching `tb_*.v` as Simulation Sources.
3. Set the testbench as the simulation top.
4. Select **Run Simulation → Run Behavioral Simulation**.
5. Add relevant inputs and outputs to the waveform, run to completion, and compare results with the expected truth table.
6. Export the actual waveform screenshot to `waveforms/`. For a circuit view, open the elaborated or synthesized design schematic and save it under `diagrams/`.

## Circuit and waveform evidence

- [SR latch conceptual circuit diagram](diagrams/sr_latch_nor.svg)
- [Illustrative SR latch timing diagram](waveforms/sr_latch_expected.svg) — explicitly illustrative, **not** an actual Vivado capture.
- [Circuit diagram notes](diagrams/README.md)
- [How to add genuine Vivado waveform screenshots](waveforms/README.md)

## Concepts practiced

Gate-level, dataflow and behavioral modeling; combinational logic; arithmetic circuits; indexed and case-based multiplexers; latch hold behavior; edge-triggered flip-flops; synchronous reset; testbench stimulus; `$monitor`; and waveform inspection.

## Author

**Pranav Shinde** · [GitHub profile](https://github.com/PranavBuildS201) · [LinkedIn](https://www.linkedin.com/in/pranav-shinde-2403942b1)
