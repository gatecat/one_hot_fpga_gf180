# SPDX-FileCopyrightText: 2020 Efabless Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# SPDX-License-Identifier: Apache-2.0

# Base Configurations. Don't Touch
# section begin

set ::env(PDK) "gf180mcuC"
set ::env(STD_CELL_LIBRARY) "gf180mcu_fd_sc_mcu7t5v0"

# YOU CAN CHANGE ANY VARIABLES DEFINED IN THE DEFAULT WRAPPER CFGS BY OVERRIDING THEM IN THIS CONFIG.TCL
source $::env(DESIGN_DIR)/fixed_dont_change/default_wrapper_cfgs.tcl

set ::env(DESIGN_NAME) user_project_wrapper
#section end

# User Configurations

## Source Verilog Files
set ::env(VERILOG_FILES) "\
	$::env(DESIGN_DIR)/../../verilog/rtl/defines.v \
	$::env(DESIGN_DIR)/../../verilog/rtl/eFPGA_top.v \
	$::env(DESIGN_DIR)/../../verilog/rtl/fabric.v \
	$::env(DESIGN_DIR)/../../verilog/rtl/models_pack.v \
	$::env(DESIGN_DIR)/../../verilog/rtl/wrapper_gf180.v"

## Clock configurations
set ::env(CLOCK_PORT) "io_in\[0\]"
set ::env(CLOCK_NET) "mprj.clk"

set ::env(CLOCK_PERIOD) "10"

## Internal Macros
### Macro PDN Connections
set ::env(FP_PDN_MACRO_HOOKS) "\
    Inst_eFPGA_top.Inst_eFPGA.Tile_X1Y0_N_term_single vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X2Y0_N_term_single vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X3Y0_N_term_single vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X4Y0_N_term_single vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X5Y0_N_term_single vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X6Y0_N_term_single vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X0Y1_W_IO vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X1Y1_LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X2Y1_LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X3Y1LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X4Y1_LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X5Y1_LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X6Y1_LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X7Y1_E_IO vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X0Y2_W_IO vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X1Y2_LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X2Y2_LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X3Y2LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X4Y2_LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X5Y2_LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X6Y2_LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X7Y2_E_IO vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X0Y3_W_IO vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X1Y3_LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X2Y3_LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X3Y3LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X4Y3_LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X5Y3_LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X6Y3_LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X7Y3_E_IO vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X0Y4_W_IO vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X1Y4_LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X2Y4_LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X3Y4LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X4Y4_LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X5Y4_LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X6Y4_LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X7Y4_E_IO vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X0Y5_W_IO vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X1Y5_LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X2Y5_LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X3Y5LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X4Y5_LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X5Y5_LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X6Y5_LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X7Y5_E_IO vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X0Y6_W_IO vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X1Y6_LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X2Y6_LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X3Y6LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X4Y6_LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X5Y6_LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X6Y6_LUT4AB vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X7Y6_E_IO vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X1Y7_S_term_single vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X2Y7_S_term_single vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X3Y7_S_term_single vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X4Y7_S_term_single vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X5Y7_S_term_single vdd vss vdd vss, \
    Inst_eFPGA_top.Inst_eFPGA.Tile_X6Y7_S_term_single vdd vss vdd vss"

### Macro Placement
set ::env(MACRO_PLACEMENT_CFG) $::env(DESIGN_DIR)/macro.cfg

### Black-box verilog and views
set ::env(VERILOG_FILES_BLACKBOX) [glob $::env(DESIGN_DIR)/macros/verilog/*.v]

set ::env(EXTRA_LEFS) [glob $::env(DESIGN_DIR)/macros/lef/*.lef]

set ::env(EXTRA_GDS_FILES) [glob $::env(DESIGN_DIR)/macros/gds/*.gds]

set ::env(RT_MAX_LAYER) {Metal4}

# disable pdn check nodes becuase it hangs with multiple power domains.
# any issue with pdn connections will be flagged with LVS so it is not a critical check.
set ::env(FP_PDN_CHECK_NODES) 0

set ::env(DIODE_INSERTION_STRATEGY) 4
set ::env(GRT_ALLOW_CONGESTION) 1
set ::env(GLB_RESIZER_TIMING_OPTIMIZATIONS) 0

# set ::env(PL_MACRO_CHANNEL_WIDTH) 20

set ::env(PL_TARGET_DENSITY) 0.5

set ::env(CTS_TARGET_SKEW) 200
set ::env(CTS_SINK_CLUSTERING_SIZE) 100

set ::env(VDD_NETS) [list {vdd}]
set ::env(GND_NETS) [list {vss}]

set ::env(CLOCK_PORT) {io_in[5]}
set ::env(CLOCK_NET) {io_in[5]}
set ::env(CLOCK_PERIOD) 100

set ::env(PL_MAX_DISPLACEMENT_X) 1000
set ::env(PL_MAX_DISPLACEMENT_Y) 1000

# YOU ARE NOT ALLOWED TO CHANGE ANY VARIABLES DEFINED IN THE FIXED WRAPPER CFGS 
source $::env(DESIGN_DIR)/fixed_dont_change/fixed_wrapper_cfgs.tcl
