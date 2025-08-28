# RTL-to-GDSII Implementation of a 4-bit Counter using OpenLane

This project demonstrates the **RTL-to-GDSII flow** of a simple **4-bit synchronous counter** using the open-source physical design toolchain **OpenLane**.  
The goal of this project is to explore and execute the complete VLSI design flow starting from **RTL design (Verilog)** up to the final **GDSII layout** using an open-source PDK.

---

## 📌 Project Overview
- **Design**: 4-bit Synchronous Counter  
- **Technology Node**: 130nm (SkyWater SKY130 PDK)  
- **Tool Flow**: [OpenLane](https://github.com/The-OpenROAD-Project/OpenLane)  
- **Stages Covered**:  
  1. RTL Design & Simulation  
  2. Synthesis  
  3. Floorplanning  
  4. Placement  
  5. Clock Tree Synthesis (CTS)  
  6. Routing  
  7. Timing Analysis  
  8. Power Analysis  
  9. GDSII Generation  

---

## 🛠 Tools & Environment
- **OpenLane** (Docker-based flow manager)  
- **SkyWater SKY130 PDK** (provided via OpenLane)  
- **Verilog** for RTL description  
- **GTKWave** for simulation waveform viewing  
- **Magic / KLayout** for layout visualization  

---

## 🔧 How to Run the Flow
1. Clone OpenLane and set up the environment:
   ```bash
   git clone https://github.com/The-OpenROAD-Project/OpenLane.git
   cd OpenLane
   make openlane
