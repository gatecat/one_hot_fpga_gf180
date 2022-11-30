// SPDX-FileCopyrightText: 
// 2022 Nguyen Dao
// 2022 Myrtle Shah
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
// SPDX-License-Identifier: Apache-2.0

module user_project_wrapper(
`ifdef USE_POWER_PINS
    inout vdd,      // User area 5.0V supply
    inout vss,      // User area ground
`endif
    // Wishbone Slave ports (WB MI A)
    input wb_clk_i,
    input wb_rst_i,
    input wbs_stb_i,
    input wbs_cyc_i,
    input wbs_we_i,
    input [3:0] wbs_sel_i,
    input [31:0] wbs_dat_i,
    input [31:0] wbs_adr_i,
    output wbs_ack_o,
    output [31:0] wbs_dat_o,

    // Logic Analyzer Signals
    input  [63:0] la_data_in,
    output [63:0] la_data_out,
    input  [63:0] la_oenb,

    // IOs
    input  [`MPRJ_IO_PADS-1:0] io_in,
    output [`MPRJ_IO_PADS-1:0] io_out,
    output [`MPRJ_IO_PADS-1:0] io_oeb,

    // Independent clock (on independent integer divider)
    input   user_clock2,

    // User maskable interrupt signals
    output [2:0] user_irq
);
	assign wbs_ack_o = 1'b0;
	assign wbs_dat_o = 32'b0;
	assign user_irq = 3'b0;

    wire config_clk = io_in[5];
    wire fd_shift = io_in[6];
    wire fd_data = io_in[7];
    wire rs_reset = io_in[8];
    wire rs_incr = io_in[9];
    wire rs_strobe = io_in[10];
    wire global_oe = io_in[11];

    localparam NumberOfRows = 6;
    localparam NumberOfCols = 8;
    localparam FrameBitsPerRow = 32;
    localparam MaxFramesPerCol = 36;

    wire wl_test = io_in[16];
    wire bl0_test = io_in[17];
    wire bl1_test = io_in[18];
    wire [1:0] sram_test_out;

    reg [(NumberOfRows*FrameBitsPerRow)-1:0] fdr;
    wire [(NumberOfCols*MaxFramesPerCol)-1:0] fstb;
    reg [15:0] fstb_ctr;

    always @(posedge config_clk) begin
        if (fd_shift)
            fdr <= {fd_data, fdr[(NumberOfRows*FrameBitsPerRow)-1:1]};
        if (rs_reset)
            fstb_ctr <= 0;
        else if (rs_incr)
            fstb_ctr <= fstb_ctr + 1'b1;
    end

    generate
        genvar ii;
        for (ii = 0; ii < (NumberOfCols*MaxFramesPerCol); ii = ii + 1'b1) begin : frame_ands
            // Force an AND cell to ensure glitch free logic
            gf180mcu_fd_sc_mcu7t5v0__and2_2 rs_and(.A1(fstb_ctr == ii), .A2(rs_strobe), .Z(fstb[ii]));
        end
    endgenerate

	// unused (shared with caravel)
	assign io_oeb[4:0] = 5'b11111;
	assign io_out[4:0] = 5'b00000;
    // fixed purpose
    assign io_oeb[10:5] = 6'b111111;
	// unused currently
	assign io_oeb[13:12] = 2'b00;

    gf180mcu_fpga_bitmux sram_test0_i (
        .WL(wl_test),
        .BLP(bl0_test),
        .BLN(~bl0_test),
        .Q(io_out[12]),
        .I(la_data_in[0]),
        .O(la_data_out[0])
    );

    gf180mcu_fpga_bitmux sram_test1_i (
        .WL(wl_test),
        .BLP(bl1_test),
        .BLN(~bl1_test),
        .Q(io_out[13]),
        .I(la_data_in[1]),
        .O(la_data_out[1])
    );

    eFPGA_top Inst_eFPGA_top(
        .I_top(io_out[37:14]),
        .T_top(io_oeb[37:14]),
        .O_top(io_in[37:14]),
        .CLK(io_in[5]),
        .OutputEnable(global_oe),
        .FrameRegister(fdr),
        .FrameSelect(fstb)
    );

endmodule

(* blackbox *)
module gf180mcu_fd_sc_mcu7t5v0__and2_2(
    input A1, A2, output Z
);
    assign Z = A1 & A2;
endmodule

(* blackbox *)
module gf180mcu_fpga_bitmux(
  input WL, BLP, BLN,
  inout I, inout O,
  output Q, QN
);
endmodule

