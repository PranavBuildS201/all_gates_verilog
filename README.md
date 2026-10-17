# All Logic Gates in Verilog HDL

A beginner-friendly digital design project that implements the seven fundamental logic gates using **gate-level modeling in Verilog HDL** and verifies them with a simple testbench.

## Overview

This project demonstrates how basic logic gates behave for binary inputs. The design uses Verilog's built-in gate primitives and a testbench that applies all four possible combinations of the two inputs.

## Gates Implemented

- AND
- OR
- NOT
- NAND
- NOR
- XOR
- XNOR

## Repository Contents

| File | Description |
|---|---|
| [`all_gates_gatelevel.v`](all_gates_gatelevel.v) | Verilog module implementing all seven logic gates |
| [`tb_all_gates_gatelevel.v.txt`](tb_all_gates_gatelevel.v.txt) | Testbench that applies all four input combinations |
| [`image.png`](image.png) | Project image |

> **Note:** The testbench file currently has a `.txt` extension. If your simulator requires a Verilog source extension, rename it to `tb_all_gates_gatelevel.v` before adding it as a simulation source.

## Logic Table

The NOT gate operates on input `a`; all other gates use inputs `a` and `b`.

| a | b | AND | OR | NOT a | NAND | NOR | XOR | XNOR |
|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| 0 | 0 | 0 | 0 | 1 | 1 | 1 | 0 | 1 |
| 0 | 1 | 0 | 1 | 1 | 1 | 0 | 1 | 0 |
| 1 | 0 | 0 | 1 | 0 | 1 | 0 | 1 | 0 |
| 1 | 1 | 1 | 1 | 0 | 0 | 0 | 0 | 1 |

## How to Simulate

You can simulate this project in **Xilinx Vivado** or another Verilog simulator.

1. Clone or download this repository.
2. Create or open a Verilog project in your simulator.
3. Add `all_gates_gatelevel.v` as a design source.
4. Add the testbench file as a simulation source. If needed, rename its extension from `.txt` to `.v`.
5. Set `tb_all_gates` as the simulation top module.
6. Run behavioral simulation and inspect the waveform for all four input combinations.

The testbench holds each input combination for 10 time units before moving to the next combination, then ends the simulation.

## Concepts Practiced

- Verilog module declarations and port connections
- Gate-level modeling using built-in primitives
- Testbench creation and DUT instantiation
- Applying input stimulus and observing output waveforms
- Comparing simulated outputs with a truth table

## Learning Goal

This project is part of my hands-on practice in digital logic design and Verilog HDL, building a foundation for more advanced combinational circuits and RTL design.

## Author

**Pranav Shinde**

- GitHub: [@PranavBuildS201](https://github.com/PranavBuildS201)

---

If you find this project useful for learning basic Verilog logic gates, feel free to explore the source code and experiment with the testbench.
