
# -------------------------------
# Basic Design Configuration
# -------------------------------
# Set design name
set ::env(DESIGN_NAME) counter

# RTL source files
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]

# Clock configuration
set ::env(CLOCK_PORT) clk
set ::env(CLOCK_PERIOD) 10.0 ;# 100 MHz clock

# PDK setup
set ::env(PDK) "sky130A"
set ::env(PDK_ROOT) "/openlane/pdks"

# Floorplanning mode: absolute sizing
set ::env(FP_SIZING) absolute
set ::env(DIE_AREA) "0 0 100 100"
set ::env(CORE_AREA) "10 10 90 90"

# Placement
set ::env(PL_TARGET_DENSITY) 0.50

# Power Domain settings (for PDN)
set ::env(VDD_PIN) "vccd1"
set ::env(GND_PIN) "vssd1"

# PDN pitch and width – fixes PDN-0175 error
set ::env(FP_PDN_VPITCH) 10
set ::env(FP_PDN_HPITCH) 10
set ::env(FP_PDN_VWIDTH) 1.6
set ::env(FP_PDN_HWIDTH) 1.6

# Synthesis tuning
set ::env(SYNTH_STRATEGY) "DELAY 2"
set ::env(SYNTH_MAX_FANOUT) 5

# -------------------------------
# Placement and Routing
# -------------------------------
set ::env(PL_TARGET_DENSITY) 0.6
set ::env(GRT_ADJUSTMENT) 0.2
set ::env(ROUTING_STRATEGY) 2

# -------------------------------
# Optimization & Clock Tree Synthesis
# -------------------------------
set ::env(CLOCK_BUFFER_FANOUT) 8
set ::env(CTS_CLK_BUFFER_LIST) [list sky130_fd_sc_hd__buf_4]

# -------------------------------
# Checks & Signoff
# -------------------------------
set ::env(RUN_MAGIC_DRC) 1
set ::env(RUN_KLAYOUT_DRC) 1
set ::env(RUN_LVS) 1
set ::env(RUN_KLAYOUT_XOR) 1
set ::env(RUN_CVC) 0

# -------------------------------
# Outputs
# -------------------------------
set ::env(GDS_EXPORT) 1
set ::env(WRITE_NETLIST) 1
set ::env(GENERATE_FINAL_SUMMARY_REPORTS) 1

