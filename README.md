# rv32i-single-cycle-riscv-processor
A 32-bit Single-Cycle RISC-V (RV32I) Processor designed in Verilog HDL featuring a modular RTL architecture, ALU, Control Unit, Register File, Immediate Generator, Instruction &amp; Data Memory, and simulation support for FPGA and ASIC learning.
<div align="center">

# 🚀 32-bit Single-Cycle RISC-V Processor (RV32I)

### Verilog HDL Implementation of a 32-bit Single-Cycle RISC-V Processor

[![Verilog](https://img.shields.io/badge/Language-Verilog-blue.svg)]()
[![Architecture](https://img.shields.io/badge/Architecture-RISC--V-green.svg)]()
[![ISA](https://img.shields.io/badge/ISA-RV32I-orange.svg)]()
[![License](https://img.shields.io/badge/License-MIT-yellow.svg)]()
[![Vivado](https://img.shields.io/badge/Tool-Xilinx%20Vivado-red.svg)]()


---

## Processor Architecture

<p align="center">
<img src="images/Processor_Architecture.png" width="850">
</p>

*A 32-bit Single-Cycle RISC-V (RV32I) Processor designed in Verilog HDL for educational purposes, FPGA implementation, RTL learning, and Digital Design practice.*

</div>

---

# Overview

This project implements a **32-bit Single-Cycle RISC-V Processor** based on the **RV32I Instruction Set Architecture (ISA)** using **Verilog HDL**.

The processor executes every instruction in a **single clock cycle**, making it easy to understand the internal working of a RISC processor.

The design follows a modular RTL architecture consisting of independent hardware blocks such as:

- Program Counter
- Instruction Memory
- Register File
- Immediate Generator
- Control Unit
- ALU Control
- ALU
- Data Memory
- Branch Adder
- Multiplexers
- Top Module

The project was developed to strengthen Digital Design, Computer Architecture, FPGA Design, RTL Design, and ASIC Design fundamentals.

---

# Features

✔ 32-bit RISC-V Processor

✔ Single-Cycle Datapath

✔ RV32I Instruction Set (Partial)

✔ Modular RTL Design

✔ Separate ALU Control Logic

✔ Immediate Generator

✔ Register File with 32 Registers

✔ Instruction Memory

✔ Data Memory

✔ Branch Logic

✔ Simulation Testbench

✔ Synthesizable Verilog HDL

---

# Processor Specifications

| Parameter | Value |
|------------|--------|
| ISA | RV32I |
| Architecture | Single Cycle |
| Data Width | 32-bit |
| Address Width | 32-bit |
| Register Count | 32 |
| Register Width | 32-bit |
| Instruction Memory | 64 Words |
| Data Memory | 64 Words |
| HDL | Verilog |
| Design Style | RTL |
| Clock | Positive Edge Triggered |

---

# Processor Datapath

The processor follows the classical single-cycle datapath.

```
          +--------------------+
          | Program Counter    |
          +---------+----------+
                    |
                    v
          +--------------------+
          | Instruction Memory |
          +---------+----------+
                    |
        ----------------------------
        |                          |
        v                          v
 Register File              Immediate Generator
        |                          |
        -----------+---------------
                    |
                    v
                ALU Control
                    |
                    v
                  ALU
                    |
          -------------------
          |                 |
          v                 v
     Data Memory       Branch Logic
          |
          v
      Write Back
          |
          v
    Register File
```

---

# Supported Instructions

## R-Type

- ADD
- SUB
- AND
- OR
- XOR
- SLL
- SRL
- SRA
- SLT

---

## I-Type

- ADDI
- ANDI
- ORI

---

## Load Instructions

- LW

---

## Store Instructions

- SW

---

## Branch Instructions

- BEQ

---

## Planned Instructions

- BNE
- BLT
- BGE
- LUI
- AUIPC
- JAL
- JALR

---

# ALU Operations

| Operation | Description |
|------------|-------------|
| ADD | Addition |
| SUB | Subtraction |
| AND | Bitwise AND |
| OR | Bitwise OR |
| XOR | Bitwise XOR |
| SLL | Logical Left Shift |
| SRL | Logical Right Shift |
| SRA | Arithmetic Right Shift |
| SLT | Set Less Than |

---

# Memory Organization

## Instruction Memory

- 64 Instructions
- Word Addressable
- Stores RV32I instructions

## Data Memory

- 64 Locations
- Read/Write Support
- Used for Load and Store operations

---

# RTL Modules

| Module | Description |
|----------|-------------|
| program_counter | Holds current instruction address |
| pcplus4 | Computes PC + 4 |
| instruction_memory | Stores program instructions |
| register_file | 32 × 32-bit register bank |
| immediate_generator | Generates immediate values |
| control_unit | Generates processor control signals |
| alu_control | Decodes ALU operation |
| alu | Performs arithmetic and logic operations |
| data_memory | Read/Write memory |
| muxes | Datapath multiplexers |
| branch_adder | Computes branch target |
| top_module | Integrates all RTL modules |
| testbench | Simulation environment |

---

# Repository Structure

```
RISCV-32bit-Single-Cycle-Processor
│
├── rtl
│   ├── top_module.v
│   ├── program_counter.v
│   ├── instruction_memory.v
│   ├── register_file.v
│   ├── immediate_generator.v
│   ├── control_unit.v
│   ├── alu_control.v
│   ├── alu.v
│   ├── data_memory.v
│   ├── branch_adder.v
│   └── muxes.v
│
├── testbench
│   └── tb_top.v
│
├── docs
│
├── images
│
├── scripts
│
└── README.md
```

---

# Simulation

The processor can be simulated using:

- Xilinx Vivado

---

# Running Simulation

### Vivado

1. Create RTL Project
2. Add RTL Sources
3. Add Testbench
4. Run Behavioral Simulation
5. Observe Waveforms

---


# Expected Output

The simulation verifies:

- Instruction Fetch
- Register Read
- Immediate Generation
- ALU Operations
- Memory Access
- Register Write Back


---

# Simulation Result

<p align="center">
<img src="images/Simulation Result.png" width="850">
</p>

---


# Future Improvements

- Complete RV32I ISA Support
- LUI
- AUIPC
- JAL
- JALR
- BNE
- BLT
- BGE
- Instruction Loader using `$readmemh`
- Parameterized Memories
- Separate Branch Unit
- Five-Stage Pipeline
- Hazard Detection Unit
- Forwarding Unit
- Instruction Cache
- Data Cache
- AXI4 Interface

---

# Current Limitations

- Partial RV32I implementation
- Static instruction memory initialization
- No pipeline support
- No forwarding
- No hazard detection
- No exception handling
- No CSR support
- No interrupts
- No cache memory

---

# Learning Outcomes

This project demonstrates understanding of:

- Computer Architecture
- RTL Design
- Verilog HDL
- Datapath Design
- Processor Design
- Digital Logic
- FPGA Design
- Control Unit Design
- ALU Design
- Memory Design

---

# References

- RISC-V Unprivileged ISA Specification
- Patterson & Hennessy – Computer Organization and Design
- Digital Design and Computer Architecture – Harris & Harris
- Xilinx Vivado Documentation

---

# Author

**Bharath Kumar Murapaka**

B.Tech – Electronics and Communication Engineering

Digital Design | RTL Design | FPGA | RISC-V | ASIC | VLSI

LinkedIn: *https://www.linkedin.com/in/bharath-kumar-murapaka-264014289/*



---

# License

This project is licensed under the MIT License.

---

## ⭐ If you found this project useful, consider giving it a Star!
