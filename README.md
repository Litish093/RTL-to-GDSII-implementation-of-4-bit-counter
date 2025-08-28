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
git clone https://github.com/The-OpenROAD-Project/OpenLane.git
cd OpenLane
make openlane
# Inside the container shell at /openLANE_flow:
./flow.tcl -interactive
package require openlane 0.9
prep -design counter -tag debug1 -overwrite
run_synthesis
run_floorplan
run_placement
run_cts
run_routing
run_magic
run_magic_drc
run_lvs
run_sta
exit

## 📂 Output Files
After running the flow, OpenLane generates multiple outputs under the `runs/` directory:

- **Synthesized Netlist** → `runs/<tag>/results/synthesis/`  
- **Floorplan DEF/Reports** → `runs/<tag>/results/floorplan/`  
- **Placement DEF** → `runs/<tag>/results/placement/`  
- **CTS Results** → `runs/<tag>/results/cts/`  
- **Routing Files** → `runs/<tag>/results/routing/`  
- **Final GDSII Layout** → `runs/<tag>/results/final/gds/`  
- **Reports (timing, power, DRC, LVS)** → `runs/<tag>/reports/`  

## ✅ Verification Steps
1. **Simulation (RTL level)** → Verify counter functionality with a Verilog testbench using Icarus Verilog/GTKWave.  
2. **STA (Post-layout)** → Check timing reports under `reports/` to ensure no violations.  
3. **DRC/LVS Checks** → Use Magic/KLayout or netgen for physical verification.  
4. **Layout Inspection** → Open the final GDS in Magic/KLayout to visualize the chip layout.
5. 
## 📊 Results & Metrics
- **Cell Count**: 14 standard cells  
- **Worst Negative Slack (WNS)**: 0 ns  
- **Total Power**: Dynamic = 33 uW, Leakage ~ 0 µW  
- **Final Area**: 188 µm²  
- **DRC Errors**: 0 (Clean)  
- **LVS**: Matched  

