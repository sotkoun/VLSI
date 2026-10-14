# 🖥️ VLSI Systems Design (NTUA) - Laboratory Exercises

Welcome to the repository containing the laboratory exercises for the course **Introduction to VLSI Systems Design** at the School of Electrical and Computer Engineering (ECE) of the National Technical University of Athens (NTUA)[cite: 5, 51].

This repository contains Verilog code (`.v`) and layout design files (`.MSK`) for implementing basic and complex digital circuits at the transistor and gate levels. Designs are implemented using CMOS technologies (e.g., cmos90n, cmos018, cmos65)[cite: 6, 17, 36, 46].

---

## 📋 Repository Contents

The repository is organized into folders, each corresponding to a laboratory assignment series.

### 📁 VLSI 1: Basic CMOS Digital Gates
Implementation and simulation of basic digital components at the physical layout level.
*   **CMOS Inverter:** Design of pull-up (pMOS) and pull-down (nMOS) networks in cmos90n technology[cite: 46].
*   **CMOS Transmission Gate:** Design and study of a transmission gate[cite: 49].
*   **Measurements:** Calculation of propagation delays and extraction of voltage waveforms[cite: 48, 50].

### 📁 VLSI 2: Complex Logic Gates & Euler Paths
Design of more complex digital functions with topology optimization of the layout.
*   **XNOR Gate:** Implementation of XNOR $Y = A \odot B$ using CMOS inverters and transmission gates, as well as an alternative implementation using a complex gate $Y = [(AB)'(A+B)]'$[cite: 51, 53].
*   **Complex Logic Functions:** Implementation of the function $F = [A(B+CD) + B(C+D)]'$ using Euler Paths for layout optimization[cite: 55].
*   **Multiplexer (Multiplexer 2:1):** Design of a multiplexer $F = (AE' + BE)$ at the transistor level using a complex gate and inverters[cite: 58].

### 📁 VLSI 3: Full Adder & Load Driving
Study of propagation delay and logical effort in larger digital blocks.
*   **1-Bit Full Adder:** Implementation of the functions $CARRY = AB + C(A+B)$ and $SUM = ABC + (A+B+C)D$ (where $D = \overline{carry}$) using Euler path techniques[cite: 6]. Calculation of $t_{rise}$ and $t_{fall}$[cite: 10].
*   **Fan-out and Logical Effort:** Design of a minimum inverter driving $n$ parallel identical inverters ($n = 2, 4, 8$) and study of normalized delay[cite: 10].
*   **Capacitances and Parasitic Delays:** Calculation of $P_{in}$, $P_{out}$, and slope $K_{load}$ in cmos018 technology for varying transistor sizes[cite: 17, 19, 21].

### 📁 VLSI 4: Network Delay Optimization (Logical Effort)
Application of Logical Effort theory to minimize delay in complex logic paths (cmos65 technology)[cite: 36, 40].
*   **AND Gate Implementation:** Comparison of alternative topologies (e.g., NAND2 + INV vs. 2xINV + NOR2) for path effort optimization with an output load of $48C$[cite: 30, 32].
*   **6-Input AND Gate:** Comparison of 4 different gate trees (NAND, NOR, INV) and finding the optimal architecture based on electrical effort $H$[cite: 36].
*   **Driving a Large Load:** Design of a buffer chain to drive a large load (e.g., $C_{pad} = 64C_{inv}$) aiming to minimize total delay[cite: 40]. Comparison of 2-stage vs. 4-stage implementations[cite: 43].

---

## 🛠️ Tools & Software
The files included in the repository can be opened and simulated using the following tools:
*   **Microwind:** For opening, viewing (layout), and analog simulation (waveform extraction, delays) of `.MSK` files[cite: 17].
*   **Any Verilog Simulator:** For running and testing hardware description language code (`.v`) files, such as ModelSim, Vivado, Icarus Verilog, or EDA Playground.

## 🚀 Usage Instructions
1.  Clone the repository locally:
    ```bash
    git clone [https://github.com/YourUsername/VLSI.git](https://github.com/YourUsername/VLSI.git)
    ```
2.  Navigate to the respective folder of the laboratory exercise you wish to study.
3.  Open `.MSK` files via Microwind to view the physical layout and `.v` files with any text editor (e.g., VS Code) to view the code.

## 👥 Contributors
The development of the above designs was carried out within the framework of Group 6, Section 2[cite: 5, 29, 44, 51].


--- pao
