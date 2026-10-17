# Verilog Digital Logic Practice

A hands-on collection of beginner digital-design exercises written in **Verilog HDL**. This repository contains basic logic gates, combinational circuits, and testbenches for simulation in Xilinx Vivado or another Verilog simulator.

## Projects

| Circuit | Modeling style | Design file | Testbench |
|---|---|---|---|
| Seven basic logic gates | Gate-level | [all_gates_gatelevel.v](all_gates_gatelevel.v) | [tb_all_gates_gatelevel.v.txt](tb_all_gates_gatelevel.v.txt) |
| 2-to-1 Multiplexer | Dataflow (ternary operator) | [rtl/mux_2to1.v](rtl/mux_2to1.v) | [testbench/tb_mux_2to1.v](testbench/tb_mux_2to1.v) |
| 1-to-4 Demultiplexer | Procedural combinational | [rtl/demux_1to4.v](rtl/demux_1to4.v) | [testbench/tb_demux_1to4.v](testbench/tb_demux_1to4.v) |
| Half Adder | Gate-level | [rtl/half_adder.v](rtl/half_adder.v) | [testbench/tb_half_adder.v](testbench/tb_half_adder.v) |
| Full Adder | Dataflow | [rtl/full_adder.v](rtl/full_adder.v) | [testbench/tb_full_adder.v](testbench/tb_full_adder.v) |
| 2-to-4 Decoder | Dataflow | [rtl/decoder_2to4.v](rtl/decoder_2to4.v) | [testbench/tb_decoder_2to4.v](testbench/tb_decoder_2to4.v) |

## Repository Structure

```text
all_gates_verilog/
├── all_gates_gatelevel.v
├── tb_all_gates_gatelevel.v.txt
├── image.png
├── rtl/
│   ├── mux_2to1.v
│   ├── demux_1to4.v
│   ├── half_adder.v
│   ├── full_adder.v
│   └── decoder_2to4.v
└── testbench/
    ├── tb_mux_2to1.v
    ├── tb_demux_1to4.v
    ├── tb_half_adder.v
    ├── tb_full_adder.v
    └── tb_decoder_2to4.v
```

## How to Run a Simulation

1. Open **Xilinx Vivado** and create or open a project.
2. Add the required design file from the `rtl/` folder (or the root folder for the logic-gates example) as a **Design Source**.
3. Add its matching testbench from `testbench/` as a **Simulation Source**.
4. Set the testbench module as the simulation top, for example `tb_full_adder`.
5. Run **Run Simulation → Run Behavioral Simulation**.
6. Inspect the waveform and compare the outputs with the expected truth table.

Run one testbench at a time while learning. The testbenches apply input combinations with delays and print signal values using `$monitor`.

> **Note:** The original all-gates testbench is stored as `tb_all_gates_gatelevel.v.txt`. If Vivado does not recognize it as Verilog, rename the file to `tb_all_gates_gatelevel.v` before adding it as a simulation source.

## Concepts Practiced

- Gate-level, dataflow, and procedural combinational modeling
- Verilog modules, ports, operators, and built-in gate primitives
- Multiplexers, demultiplexers, decoders, and arithmetic circuits
- Testbench creation, DUT instantiation, input stimulus, and waveform checking

## Learning Roadmap

These examples are a foundation for further practice with encoders, comparators, 4-bit adders, and sequential circuits such as counters and registers.

## Author

**Pranav Shinde** · [GitHub Profile](https://github.com/PranavBuildS201)

---

This repository is a learning portfolio. Contributions and suggestions that help improve the examples are welcome.
