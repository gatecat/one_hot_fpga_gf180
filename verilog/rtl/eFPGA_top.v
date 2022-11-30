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

module eFPGA_top (I_top, T_top, O_top, A_config_C, B_config_C, CLK, OutputEnable, FrameRegister, FrameSelect);

	localparam include_eFPGA = 1;
	localparam NumberOfRows = 6;
	localparam NumberOfCols = 8;
	localparam FrameBitsPerRow = 32;
	localparam MaxFramesPerCol = 36;
	localparam desync_flag = 20;
	localparam FrameSelectWidth = 5;
	localparam RowSelectWidth = 5;

	// External USER ports 
	//inout [16-1:0] PAD; // these are for Dirk and go to the pad ring
	output wire [24-1:0] I_top; 
	output wire [24-1:0] T_top;
	input wire [24-1:0] O_top;
	output wire [24-1:0] A_config_C;
	output wire [24-1:0] B_config_C;

	input wire [192-1:0] FrameRegister;
	input wire [288-1:0] FrameSelect;

	input wire CLK; // This clock can go to the CPU (connects to the fabric LUT output flops
	input wire OutputEnable; // This clock can go to the CPU (connects to the fabric LUT output flops

	wire [(FrameBitsPerRow*(NumberOfRows+2))-1:0] FrameData;

	// L: if include_eFPGA = 1 generate

	eFPGA Inst_eFPGA(
	.Tile_X0Y1_A_I_top(I_top[23]),
	.Tile_X0Y1_B_I_top(I_top[22]),
	.Tile_X7Y1_A_I_top(I_top[21]),
	.Tile_X7Y1_B_I_top(I_top[20]),
	.Tile_X0Y2_A_I_top(I_top[19]),
	.Tile_X0Y2_B_I_top(I_top[18]),
	.Tile_X7Y2_A_I_top(I_top[17]),
	.Tile_X7Y2_B_I_top(I_top[16]),
	.Tile_X0Y3_A_I_top(I_top[15]),
	.Tile_X0Y3_B_I_top(I_top[14]),
	.Tile_X7Y3_A_I_top(I_top[13]),
	.Tile_X7Y3_B_I_top(I_top[12]),
	.Tile_X0Y4_A_I_top(I_top[11]),
	.Tile_X0Y4_B_I_top(I_top[10]),
	.Tile_X7Y4_A_I_top(I_top[9]),
	.Tile_X7Y4_B_I_top(I_top[8]),
	.Tile_X0Y5_A_I_top(I_top[7]),
	.Tile_X0Y5_B_I_top(I_top[6]),
	.Tile_X7Y5_A_I_top(I_top[5]),
	.Tile_X7Y5_B_I_top(I_top[4]),
	.Tile_X0Y6_A_I_top(I_top[3]),
	.Tile_X0Y6_B_I_top(I_top[2]),
	.Tile_X7Y6_A_I_top(I_top[1]),
	.Tile_X7Y6_B_I_top(I_top[0]),

	.Tile_X0Y1_A_T_top(T_top[23]),
	.Tile_X0Y1_B_T_top(T_top[22]),
	.Tile_X7Y1_A_T_top(T_top[21]),
	.Tile_X7Y1_B_T_top(T_top[20]),
	.Tile_X0Y2_A_T_top(T_top[19]),
	.Tile_X0Y2_B_T_top(T_top[18]),
	.Tile_X7Y2_A_T_top(T_top[17]),
	.Tile_X7Y2_B_T_top(T_top[16]),
	.Tile_X0Y3_A_T_top(T_top[15]),
	.Tile_X0Y3_B_T_top(T_top[14]),
	.Tile_X7Y3_A_T_top(T_top[13]),
	.Tile_X7Y3_B_T_top(T_top[12]),
	.Tile_X0Y4_A_T_top(T_top[11]),
	.Tile_X0Y4_B_T_top(T_top[10]),
	.Tile_X7Y4_A_T_top(T_top[9]),
	.Tile_X7Y4_B_T_top(T_top[8]),
	.Tile_X0Y5_A_T_top(T_top[7]),
	.Tile_X0Y5_B_T_top(T_top[6]),
	.Tile_X7Y5_A_T_top(T_top[5]),
	.Tile_X7Y5_B_T_top(T_top[4]),
	.Tile_X0Y6_A_T_top(T_top[3]),
	.Tile_X0Y6_B_T_top(T_top[2]),
	.Tile_X7Y6_A_T_top(T_top[1]),
	.Tile_X7Y6_B_T_top(T_top[0]),

	.Tile_X0Y1_A_O_top(O_top[23]),
	.Tile_X0Y1_B_O_top(O_top[22]),
	.Tile_X7Y1_A_O_top(O_top[21]),
	.Tile_X7Y1_B_O_top(O_top[20]),
	.Tile_X0Y2_A_O_top(O_top[19]),
	.Tile_X0Y2_B_O_top(O_top[18]),
	.Tile_X7Y2_A_O_top(O_top[17]),
	.Tile_X7Y2_B_O_top(O_top[16]),
	.Tile_X0Y3_A_O_top(O_top[15]),
	.Tile_X0Y3_B_O_top(O_top[14]),
	.Tile_X7Y3_A_O_top(O_top[13]),
	.Tile_X7Y3_B_O_top(O_top[12]),
	.Tile_X0Y4_A_O_top(O_top[11]),
	.Tile_X0Y4_B_O_top(O_top[10]),
	.Tile_X7Y4_A_O_top(O_top[9]),
	.Tile_X7Y4_B_O_top(O_top[8]),
	.Tile_X0Y5_A_O_top(O_top[7]),
	.Tile_X0Y5_B_O_top(O_top[6]),
	.Tile_X7Y5_A_O_top(O_top[5]),
	.Tile_X7Y5_B_O_top(O_top[4]),
	.Tile_X0Y6_A_O_top(O_top[3]),
	.Tile_X0Y6_B_O_top(O_top[2]),
	.Tile_X7Y6_A_O_top(O_top[1]),
	.Tile_X7Y6_B_O_top(O_top[0]),

	.Tile_X0Y1_A_config_C_bit0(A_config_C[23]),
	.Tile_X0Y1_A_config_C_bit1(A_config_C[22]),
	.Tile_X0Y1_A_config_C_bit2(A_config_C[21]),
	.Tile_X0Y1_A_config_C_bit3(A_config_C[20]),
	.Tile_X0Y2_A_config_C_bit0(A_config_C[19]),
	.Tile_X0Y2_A_config_C_bit1(A_config_C[18]),
	.Tile_X0Y2_A_config_C_bit2(A_config_C[17]),
	.Tile_X0Y2_A_config_C_bit3(A_config_C[16]),
	.Tile_X0Y3_A_config_C_bit0(A_config_C[15]),
	.Tile_X0Y3_A_config_C_bit1(A_config_C[14]),
	.Tile_X0Y3_A_config_C_bit2(A_config_C[13]),
	.Tile_X0Y3_A_config_C_bit3(A_config_C[12]),
	.Tile_X0Y4_A_config_C_bit0(A_config_C[11]),
	.Tile_X0Y4_A_config_C_bit1(A_config_C[10]),
	.Tile_X0Y4_A_config_C_bit2(A_config_C[9]),
	.Tile_X0Y4_A_config_C_bit3(A_config_C[8]),
	.Tile_X0Y5_A_config_C_bit0(A_config_C[7]),
	.Tile_X0Y5_A_config_C_bit1(A_config_C[6]),
	.Tile_X0Y5_A_config_C_bit2(A_config_C[5]),
	.Tile_X0Y5_A_config_C_bit3(A_config_C[4]),
	.Tile_X0Y6_A_config_C_bit0(A_config_C[3]),
	.Tile_X0Y6_A_config_C_bit1(A_config_C[2]),
	.Tile_X0Y6_A_config_C_bit2(A_config_C[1]),
	.Tile_X0Y6_A_config_C_bit3(A_config_C[0]),

	.Tile_X0Y1_B_config_C_bit0(B_config_C[23]),
	.Tile_X0Y1_B_config_C_bit1(B_config_C[22]),
	.Tile_X0Y1_B_config_C_bit2(B_config_C[21]),
	.Tile_X0Y1_B_config_C_bit3(B_config_C[20]),
	.Tile_X0Y2_B_config_C_bit0(B_config_C[19]),
	.Tile_X0Y2_B_config_C_bit1(B_config_C[18]),
	.Tile_X0Y2_B_config_C_bit2(B_config_C[17]),
	.Tile_X0Y2_B_config_C_bit3(B_config_C[16]),
	.Tile_X0Y3_B_config_C_bit0(B_config_C[15]),
	.Tile_X0Y3_B_config_C_bit1(B_config_C[14]),
	.Tile_X0Y3_B_config_C_bit2(B_config_C[13]),
	.Tile_X0Y3_B_config_C_bit3(B_config_C[12]),
	.Tile_X0Y4_B_config_C_bit0(B_config_C[11]),
	.Tile_X0Y4_B_config_C_bit1(B_config_C[10]),
	.Tile_X0Y4_B_config_C_bit2(B_config_C[9]),
	.Tile_X0Y4_B_config_C_bit3(B_config_C[8]),
	.Tile_X0Y5_B_config_C_bit0(B_config_C[7]),
	.Tile_X0Y5_B_config_C_bit1(B_config_C[6]),
	.Tile_X0Y5_B_config_C_bit2(B_config_C[5]),
	.Tile_X0Y5_B_config_C_bit3(B_config_C[4]),
	.Tile_X0Y6_B_config_C_bit0(B_config_C[3]),
	.Tile_X0Y6_B_config_C_bit1(B_config_C[2]),
	.Tile_X0Y6_B_config_C_bit2(B_config_C[1]),
	.Tile_X0Y6_B_config_C_bit3(B_config_C[0]),

	//declarations
	.UserCLK(CLK),
	.OutputEnable(OutputEnable),
	.FrameData(FrameData),
	.FrameStrobe(FrameSelect)
	);

	assign FrameData = {32'h12345678,FrameRegister,32'h12345678};

endmodule

