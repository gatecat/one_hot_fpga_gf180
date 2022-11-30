module E_IO (W1BEG, W2BEG, W2BEGb, WW4BEG, W6BEG, E1END, E2MID, E2END, EE4END, E6END, A_I_top, A_T_top, A_O_top, UserCLK, B_I_top, B_T_top, B_O_top, A_config_C_bit0, A_config_C_bit1, A_config_C_bit2, A_config_C_bit3, B_config_C_bit0, B_config_C_bit1, B_config_C_bit2, B_config_C_bit3, UserCLKo, OutputEnable, OutputEnable_O, FrameData, FrameData_O, FrameStrobe, FrameStrobe_O);
	parameter MaxFramesPerCol = 36;
	parameter FrameBitsPerRow = 32;
	parameter NoConfigBits = 240;
	//  NORTH
	//  EAST
	//  SOUTH
	//  WEST
	output [3:0] W1BEG; //wires:4 X_offset:-1 Y_offset:0  source_name:W1BEG destination_name:NULL  
	output [7:0] W2BEG; //wires:8 X_offset:-1 Y_offset:0  source_name:W2BEG destination_name:NULL  
	output [7:0] W2BEGb; //wires:8 X_offset:-1 Y_offset:0  source_name:W2BEGb destination_name:NULL  
	output [15:0] WW4BEG; //wires:4 X_offset:-4 Y_offset:0  source_name:WW4BEG destination_name:NULL  
	output [11:0] W6BEG; //wires:2 X_offset:-6 Y_offset:0  source_name:W6BEG destination_name:NULL  
	input [3:0] E1END; //wires:4 X_offset:1 Y_offset:0  source_name:NULL destination_name:E1END  
	input [7:0] E2MID; //wires:8 X_offset:1 Y_offset:0  source_name:NULL destination_name:E2MID  
	input [7:0] E2END; //wires:8 X_offset:1 Y_offset:0  source_name:NULL destination_name:E2END  
	input [15:0] EE4END; //wires:4 X_offset:4 Y_offset:0  source_name:NULL destination_name:EE4END  
	input [11:0] E6END; //wires:2 X_offset:6 Y_offset:0  source_name:NULL destination_name:E6END  
	// Tile IO ports from BELs
	output A_I_top;
	output A_T_top;
	input A_O_top;
	input UserCLK;
	output B_I_top;
	output B_T_top;
	input B_O_top;
	output A_config_C_bit0;
	output A_config_C_bit1;
	output A_config_C_bit2;
	output A_config_C_bit3;
	output B_config_C_bit0;
	output B_config_C_bit1;
	output B_config_C_bit2;
	output B_config_C_bit3;
	output UserCLKo;
	input OutputEnable;
	output OutputEnable_O;
	input [FrameBitsPerRow-1:0] FrameData; //CONFIG_PORT this is a keyword needed to connect the tile to the bitstream frame register
	output [FrameBitsPerRow-1:0] FrameData_O;
	input [MaxFramesPerCol-1:0] FrameStrobe; //CONFIG_PORT this is a keyword needed to connect the tile to the bitstream frame register
	output [MaxFramesPerCol-1:0] FrameStrobe_O;
	//global


//signal declarations
//BEL ports (e.g., slices)
	wire A_I;
	wire A_T;
	wire B_I;
	wire B_T;
	wire A_O;
	wire A_Q;
	wire B_O;
	wire B_Q;
//jump wires
//internal configuration data signal to daisy-chain all BELs (if any and in the order they are listed in the fabric.csv)
	wire [NoConfigBits-1:0] ConfigBits;
	wire [NoConfigBits-1:0] ConfigBits_N;

// Cascading of routing for wires spanning more than one tile
	wire [FrameBitsPerRow-1:0] FrameData_i;
	wire [FrameBitsPerRow-1:0] FrameData_O_i;
	assign FrameData_O_i = FrameData_i;

	my_buf data_inbuf_0 (
	.A(FrameData[0]),
	.X(FrameData_i[0])
	);

	my_buf data_inbuf_1 (
	.A(FrameData[1]),
	.X(FrameData_i[1])
	);

	my_buf data_inbuf_2 (
	.A(FrameData[2]),
	.X(FrameData_i[2])
	);

	my_buf data_inbuf_3 (
	.A(FrameData[3]),
	.X(FrameData_i[3])
	);

	my_buf data_inbuf_4 (
	.A(FrameData[4]),
	.X(FrameData_i[4])
	);

	my_buf data_inbuf_5 (
	.A(FrameData[5]),
	.X(FrameData_i[5])
	);

	my_buf data_inbuf_6 (
	.A(FrameData[6]),
	.X(FrameData_i[6])
	);

	my_buf data_inbuf_7 (
	.A(FrameData[7]),
	.X(FrameData_i[7])
	);

	my_buf data_inbuf_8 (
	.A(FrameData[8]),
	.X(FrameData_i[8])
	);

	my_buf data_inbuf_9 (
	.A(FrameData[9]),
	.X(FrameData_i[9])
	);

	my_buf data_inbuf_10 (
	.A(FrameData[10]),
	.X(FrameData_i[10])
	);

	my_buf data_inbuf_11 (
	.A(FrameData[11]),
	.X(FrameData_i[11])
	);

	my_buf data_inbuf_12 (
	.A(FrameData[12]),
	.X(FrameData_i[12])
	);

	my_buf data_inbuf_13 (
	.A(FrameData[13]),
	.X(FrameData_i[13])
	);

	my_buf data_inbuf_14 (
	.A(FrameData[14]),
	.X(FrameData_i[14])
	);

	my_buf data_inbuf_15 (
	.A(FrameData[15]),
	.X(FrameData_i[15])
	);

	my_buf data_inbuf_16 (
	.A(FrameData[16]),
	.X(FrameData_i[16])
	);

	my_buf data_inbuf_17 (
	.A(FrameData[17]),
	.X(FrameData_i[17])
	);

	my_buf data_inbuf_18 (
	.A(FrameData[18]),
	.X(FrameData_i[18])
	);

	my_buf data_inbuf_19 (
	.A(FrameData[19]),
	.X(FrameData_i[19])
	);

	my_buf data_inbuf_20 (
	.A(FrameData[20]),
	.X(FrameData_i[20])
	);

	my_buf data_inbuf_21 (
	.A(FrameData[21]),
	.X(FrameData_i[21])
	);

	my_buf data_inbuf_22 (
	.A(FrameData[22]),
	.X(FrameData_i[22])
	);

	my_buf data_inbuf_23 (
	.A(FrameData[23]),
	.X(FrameData_i[23])
	);

	my_buf data_inbuf_24 (
	.A(FrameData[24]),
	.X(FrameData_i[24])
	);

	my_buf data_inbuf_25 (
	.A(FrameData[25]),
	.X(FrameData_i[25])
	);

	my_buf data_inbuf_26 (
	.A(FrameData[26]),
	.X(FrameData_i[26])
	);

	my_buf data_inbuf_27 (
	.A(FrameData[27]),
	.X(FrameData_i[27])
	);

	my_buf data_inbuf_28 (
	.A(FrameData[28]),
	.X(FrameData_i[28])
	);

	my_buf data_inbuf_29 (
	.A(FrameData[29]),
	.X(FrameData_i[29])
	);

	my_buf data_inbuf_30 (
	.A(FrameData[30]),
	.X(FrameData_i[30])
	);

	my_buf data_inbuf_31 (
	.A(FrameData[31]),
	.X(FrameData_i[31])
	);

	my_buf data_outbuf_0 (
	.A(FrameData_O_i[0]),
	.X(FrameData_O[0])
	);

	my_buf data_outbuf_1 (
	.A(FrameData_O_i[1]),
	.X(FrameData_O[1])
	);

	my_buf data_outbuf_2 (
	.A(FrameData_O_i[2]),
	.X(FrameData_O[2])
	);

	my_buf data_outbuf_3 (
	.A(FrameData_O_i[3]),
	.X(FrameData_O[3])
	);

	my_buf data_outbuf_4 (
	.A(FrameData_O_i[4]),
	.X(FrameData_O[4])
	);

	my_buf data_outbuf_5 (
	.A(FrameData_O_i[5]),
	.X(FrameData_O[5])
	);

	my_buf data_outbuf_6 (
	.A(FrameData_O_i[6]),
	.X(FrameData_O[6])
	);

	my_buf data_outbuf_7 (
	.A(FrameData_O_i[7]),
	.X(FrameData_O[7])
	);

	my_buf data_outbuf_8 (
	.A(FrameData_O_i[8]),
	.X(FrameData_O[8])
	);

	my_buf data_outbuf_9 (
	.A(FrameData_O_i[9]),
	.X(FrameData_O[9])
	);

	my_buf data_outbuf_10 (
	.A(FrameData_O_i[10]),
	.X(FrameData_O[10])
	);

	my_buf data_outbuf_11 (
	.A(FrameData_O_i[11]),
	.X(FrameData_O[11])
	);

	my_buf data_outbuf_12 (
	.A(FrameData_O_i[12]),
	.X(FrameData_O[12])
	);

	my_buf data_outbuf_13 (
	.A(FrameData_O_i[13]),
	.X(FrameData_O[13])
	);

	my_buf data_outbuf_14 (
	.A(FrameData_O_i[14]),
	.X(FrameData_O[14])
	);

	my_buf data_outbuf_15 (
	.A(FrameData_O_i[15]),
	.X(FrameData_O[15])
	);

	my_buf data_outbuf_16 (
	.A(FrameData_O_i[16]),
	.X(FrameData_O[16])
	);

	my_buf data_outbuf_17 (
	.A(FrameData_O_i[17]),
	.X(FrameData_O[17])
	);

	my_buf data_outbuf_18 (
	.A(FrameData_O_i[18]),
	.X(FrameData_O[18])
	);

	my_buf data_outbuf_19 (
	.A(FrameData_O_i[19]),
	.X(FrameData_O[19])
	);

	my_buf data_outbuf_20 (
	.A(FrameData_O_i[20]),
	.X(FrameData_O[20])
	);

	my_buf data_outbuf_21 (
	.A(FrameData_O_i[21]),
	.X(FrameData_O[21])
	);

	my_buf data_outbuf_22 (
	.A(FrameData_O_i[22]),
	.X(FrameData_O[22])
	);

	my_buf data_outbuf_23 (
	.A(FrameData_O_i[23]),
	.X(FrameData_O[23])
	);

	my_buf data_outbuf_24 (
	.A(FrameData_O_i[24]),
	.X(FrameData_O[24])
	);

	my_buf data_outbuf_25 (
	.A(FrameData_O_i[25]),
	.X(FrameData_O[25])
	);

	my_buf data_outbuf_26 (
	.A(FrameData_O_i[26]),
	.X(FrameData_O[26])
	);

	my_buf data_outbuf_27 (
	.A(FrameData_O_i[27]),
	.X(FrameData_O[27])
	);

	my_buf data_outbuf_28 (
	.A(FrameData_O_i[28]),
	.X(FrameData_O[28])
	);

	my_buf data_outbuf_29 (
	.A(FrameData_O_i[29]),
	.X(FrameData_O[29])
	);

	my_buf data_outbuf_30 (
	.A(FrameData_O_i[30]),
	.X(FrameData_O[30])
	);

	my_buf data_outbuf_31 (
	.A(FrameData_O_i[31]),
	.X(FrameData_O[31])
	);

	wire [MaxFramesPerCol-1:0] FrameStrobe_i;
	wire [MaxFramesPerCol-1:0] FrameStrobe_O_i;
	assign FrameStrobe_O_i = FrameStrobe_i;

	my_buf strobe_inbuf_0 (
	.A(FrameStrobe[0]),
	.X(FrameStrobe_i[0])
	)
;
	my_buf strobe_inbuf_1 (
	.A(FrameStrobe[1]),
	.X(FrameStrobe_i[1])
	)
;
	my_buf strobe_inbuf_2 (
	.A(FrameStrobe[2]),
	.X(FrameStrobe_i[2])
	)
;
	my_buf strobe_inbuf_3 (
	.A(FrameStrobe[3]),
	.X(FrameStrobe_i[3])
	)
;
	my_buf strobe_inbuf_4 (
	.A(FrameStrobe[4]),
	.X(FrameStrobe_i[4])
	)
;
	my_buf strobe_inbuf_5 (
	.A(FrameStrobe[5]),
	.X(FrameStrobe_i[5])
	)
;
	my_buf strobe_inbuf_6 (
	.A(FrameStrobe[6]),
	.X(FrameStrobe_i[6])
	)
;
	my_buf strobe_inbuf_7 (
	.A(FrameStrobe[7]),
	.X(FrameStrobe_i[7])
	)
;
	my_buf strobe_inbuf_8 (
	.A(FrameStrobe[8]),
	.X(FrameStrobe_i[8])
	)
;
	my_buf strobe_inbuf_9 (
	.A(FrameStrobe[9]),
	.X(FrameStrobe_i[9])
	)
;
	my_buf strobe_inbuf_10 (
	.A(FrameStrobe[10]),
	.X(FrameStrobe_i[10])
	)
;
	my_buf strobe_inbuf_11 (
	.A(FrameStrobe[11]),
	.X(FrameStrobe_i[11])
	)
;
	my_buf strobe_inbuf_12 (
	.A(FrameStrobe[12]),
	.X(FrameStrobe_i[12])
	)
;
	my_buf strobe_inbuf_13 (
	.A(FrameStrobe[13]),
	.X(FrameStrobe_i[13])
	)
;
	my_buf strobe_inbuf_14 (
	.A(FrameStrobe[14]),
	.X(FrameStrobe_i[14])
	)
;
	my_buf strobe_inbuf_15 (
	.A(FrameStrobe[15]),
	.X(FrameStrobe_i[15])
	)
;
	my_buf strobe_inbuf_16 (
	.A(FrameStrobe[16]),
	.X(FrameStrobe_i[16])
	)
;
	my_buf strobe_inbuf_17 (
	.A(FrameStrobe[17]),
	.X(FrameStrobe_i[17])
	)
;
	my_buf strobe_inbuf_18 (
	.A(FrameStrobe[18]),
	.X(FrameStrobe_i[18])
	)
;
	my_buf strobe_inbuf_19 (
	.A(FrameStrobe[19]),
	.X(FrameStrobe_i[19])
	)
;
	my_buf strobe_inbuf_20 (
	.A(FrameStrobe[20]),
	.X(FrameStrobe_i[20])
	)
;
	my_buf strobe_inbuf_21 (
	.A(FrameStrobe[21]),
	.X(FrameStrobe_i[21])
	)
;
	my_buf strobe_inbuf_22 (
	.A(FrameStrobe[22]),
	.X(FrameStrobe_i[22])
	)
;
	my_buf strobe_inbuf_23 (
	.A(FrameStrobe[23]),
	.X(FrameStrobe_i[23])
	)
;
	my_buf strobe_inbuf_24 (
	.A(FrameStrobe[24]),
	.X(FrameStrobe_i[24])
	)
;
	my_buf strobe_inbuf_25 (
	.A(FrameStrobe[25]),
	.X(FrameStrobe_i[25])
	)
;
	my_buf strobe_inbuf_26 (
	.A(FrameStrobe[26]),
	.X(FrameStrobe_i[26])
	)
;
	my_buf strobe_inbuf_27 (
	.A(FrameStrobe[27]),
	.X(FrameStrobe_i[27])
	)
;
	my_buf strobe_inbuf_28 (
	.A(FrameStrobe[28]),
	.X(FrameStrobe_i[28])
	)
;
	my_buf strobe_inbuf_29 (
	.A(FrameStrobe[29]),
	.X(FrameStrobe_i[29])
	)
;
	my_buf strobe_inbuf_30 (
	.A(FrameStrobe[30]),
	.X(FrameStrobe_i[30])
	)
;
	my_buf strobe_inbuf_31 (
	.A(FrameStrobe[31]),
	.X(FrameStrobe_i[31])
	)
;
	my_buf strobe_inbuf_32 (
	.A(FrameStrobe[32]),
	.X(FrameStrobe_i[32])
	)
;
	my_buf strobe_inbuf_33 (
	.A(FrameStrobe[33]),
	.X(FrameStrobe_i[33])
	)
;
	my_buf strobe_inbuf_34 (
	.A(FrameStrobe[34]),
	.X(FrameStrobe_i[34])
	)
;
	my_buf strobe_inbuf_35 (
	.A(FrameStrobe[35]),
	.X(FrameStrobe_i[35])
	)
;
	my_buf strobe_outbuf_0 (
	.A(FrameStrobe_O_i[0]),
	.X(FrameStrobe_O[0])
	)
;
	my_buf strobe_outbuf_1 (
	.A(FrameStrobe_O_i[1]),
	.X(FrameStrobe_O[1])
	)
;
	my_buf strobe_outbuf_2 (
	.A(FrameStrobe_O_i[2]),
	.X(FrameStrobe_O[2])
	)
;
	my_buf strobe_outbuf_3 (
	.A(FrameStrobe_O_i[3]),
	.X(FrameStrobe_O[3])
	)
;
	my_buf strobe_outbuf_4 (
	.A(FrameStrobe_O_i[4]),
	.X(FrameStrobe_O[4])
	)
;
	my_buf strobe_outbuf_5 (
	.A(FrameStrobe_O_i[5]),
	.X(FrameStrobe_O[5])
	)
;
	my_buf strobe_outbuf_6 (
	.A(FrameStrobe_O_i[6]),
	.X(FrameStrobe_O[6])
	)
;
	my_buf strobe_outbuf_7 (
	.A(FrameStrobe_O_i[7]),
	.X(FrameStrobe_O[7])
	)
;
	my_buf strobe_outbuf_8 (
	.A(FrameStrobe_O_i[8]),
	.X(FrameStrobe_O[8])
	)
;
	my_buf strobe_outbuf_9 (
	.A(FrameStrobe_O_i[9]),
	.X(FrameStrobe_O[9])
	)
;
	my_buf strobe_outbuf_10 (
	.A(FrameStrobe_O_i[10]),
	.X(FrameStrobe_O[10])
	)
;
	my_buf strobe_outbuf_11 (
	.A(FrameStrobe_O_i[11]),
	.X(FrameStrobe_O[11])
	)
;
	my_buf strobe_outbuf_12 (
	.A(FrameStrobe_O_i[12]),
	.X(FrameStrobe_O[12])
	)
;
	my_buf strobe_outbuf_13 (
	.A(FrameStrobe_O_i[13]),
	.X(FrameStrobe_O[13])
	)
;
	my_buf strobe_outbuf_14 (
	.A(FrameStrobe_O_i[14]),
	.X(FrameStrobe_O[14])
	)
;
	my_buf strobe_outbuf_15 (
	.A(FrameStrobe_O_i[15]),
	.X(FrameStrobe_O[15])
	)
;
	my_buf strobe_outbuf_16 (
	.A(FrameStrobe_O_i[16]),
	.X(FrameStrobe_O[16])
	)
;
	my_buf strobe_outbuf_17 (
	.A(FrameStrobe_O_i[17]),
	.X(FrameStrobe_O[17])
	)
;
	my_buf strobe_outbuf_18 (
	.A(FrameStrobe_O_i[18]),
	.X(FrameStrobe_O[18])
	)
;
	my_buf strobe_outbuf_19 (
	.A(FrameStrobe_O_i[19]),
	.X(FrameStrobe_O[19])
	)
;
	my_buf strobe_outbuf_20 (
	.A(FrameStrobe_O_i[20]),
	.X(FrameStrobe_O[20])
	)
;
	my_buf strobe_outbuf_21 (
	.A(FrameStrobe_O_i[21]),
	.X(FrameStrobe_O[21])
	)
;
	my_buf strobe_outbuf_22 (
	.A(FrameStrobe_O_i[22]),
	.X(FrameStrobe_O[22])
	)
;
	my_buf strobe_outbuf_23 (
	.A(FrameStrobe_O_i[23]),
	.X(FrameStrobe_O[23])
	)
;
	my_buf strobe_outbuf_24 (
	.A(FrameStrobe_O_i[24]),
	.X(FrameStrobe_O[24])
	)
;
	my_buf strobe_outbuf_25 (
	.A(FrameStrobe_O_i[25]),
	.X(FrameStrobe_O[25])
	)
;
	my_buf strobe_outbuf_26 (
	.A(FrameStrobe_O_i[26]),
	.X(FrameStrobe_O[26])
	)
;
	my_buf strobe_outbuf_27 (
	.A(FrameStrobe_O_i[27]),
	.X(FrameStrobe_O[27])
	)
;
	my_buf strobe_outbuf_28 (
	.A(FrameStrobe_O_i[28]),
	.X(FrameStrobe_O[28])
	)
;
	my_buf strobe_outbuf_29 (
	.A(FrameStrobe_O_i[29]),
	.X(FrameStrobe_O[29])
	)
;
	my_buf strobe_outbuf_30 (
	.A(FrameStrobe_O_i[30]),
	.X(FrameStrobe_O[30])
	)
;
	my_buf strobe_outbuf_31 (
	.A(FrameStrobe_O_i[31]),
	.X(FrameStrobe_O[31])
	)
;
	my_buf strobe_outbuf_32 (
	.A(FrameStrobe_O_i[32]),
	.X(FrameStrobe_O[32])
	)
;
	my_buf strobe_outbuf_33 (
	.A(FrameStrobe_O_i[33]),
	.X(FrameStrobe_O[33])
	)
;
	my_buf strobe_outbuf_34 (
	.A(FrameStrobe_O_i[34]),
	.X(FrameStrobe_O[34])
	)
;
	my_buf strobe_outbuf_35 (
	.A(FrameStrobe_O_i[35]),
	.X(FrameStrobe_O[35])
	)
;
	clk_buf inst_clk_buf(.A(UserCLK), .X(UserCLKo));
	clk_buf inst_oe_pass_buf(.A(OutputEnable), .X(OutputEnable_O));
	oe_drv_buf inst_oe_drv_buf(.A(OutputEnable), .X(OutputEnable_buf));

// configuration storage latches
	E_IO_ConfigMem Inst_E_IO_ConfigMem (
	.FrameData(FrameData),
	.FrameStrobe(FrameStrobe),
	.ConfigBits(ConfigBits),
	.ConfigBits_N(ConfigBits_N)
	);

//BEL component instantiations
	IO_1_bidirectional_frame_config_pass Inst_A_IO_1_bidirectional_frame_config_pass (
	.I(A_I),
	.T(A_T),
	.O(A_O),
	.Q(A_Q),
	//I/O primitive pins go to tile top level module (not further parsed)  
	.I_top(A_I_top),
	.T_top(A_T_top),
	.O_top(A_O_top),
	.UserCLK(UserCLK) 
	);

	IO_1_bidirectional_frame_config_pass Inst_B_IO_1_bidirectional_frame_config_pass (
	.I(B_I),
	.T(B_T),
	.O(B_O),
	.Q(B_Q),
	//I/O primitive pins go to tile top level module (not further parsed)  
	.I_top(B_I_top),
	.T_top(B_T_top),
	.O_top(B_O_top),
	.UserCLK(UserCLK) 
	);

	Config_access Inst_A_config_Config_access (
	//I/O primitive pins go to tile top level module (not further parsed)  
	.C_bit0(A_config_C_bit0),
	.C_bit1(A_config_C_bit1),
	.C_bit2(A_config_C_bit2),
	.C_bit3(A_config_C_bit3),
	.ConfigBits(ConfigBits[4-1:0])
	);

	Config_access Inst_B_config_Config_access (
	//I/O primitive pins go to tile top level module (not further parsed)  
	.C_bit0(B_config_C_bit0),
	.C_bit1(B_config_C_bit1),
	.C_bit2(B_config_C_bit2),
	.C_bit3(B_config_C_bit3),
	.ConfigBits(ConfigBits[8-1:4])
	);


//switch matrix component instantiation
	E_IO_switch_matrix Inst_E_IO_switch_matrix (
	.E1END0(E1END[0]),
	.E1END1(E1END[1]),
	.E1END2(E1END[2]),
	.E1END3(E1END[3]),
	.E2MID0(E2MID[0]),
	.E2MID1(E2MID[1]),
	.E2MID2(E2MID[2]),
	.E2MID3(E2MID[3]),
	.E2MID4(E2MID[4]),
	.E2MID5(E2MID[5]),
	.E2MID6(E2MID[6]),
	.E2MID7(E2MID[7]),
	.E2END0(E2END[0]),
	.E2END1(E2END[1]),
	.E2END2(E2END[2]),
	.E2END3(E2END[3]),
	.E2END4(E2END[4]),
	.E2END5(E2END[5]),
	.E2END6(E2END[6]),
	.E2END7(E2END[7]),
	.EE4END0(EE4END[0]),
	.EE4END1(EE4END[1]),
	.EE4END2(EE4END[2]),
	.EE4END3(EE4END[3]),
	.EE4END4(EE4END[4]),
	.EE4END5(EE4END[5]),
	.EE4END6(EE4END[6]),
	.EE4END7(EE4END[7]),
	.EE4END8(EE4END[8]),
	.EE4END9(EE4END[9]),
	.EE4END10(EE4END[10]),
	.EE4END11(EE4END[11]),
	.EE4END12(EE4END[12]),
	.EE4END13(EE4END[13]),
	.EE4END14(EE4END[14]),
	.EE4END15(EE4END[15]),
	.E6END0(E6END[0]),
	.E6END1(E6END[1]),
	.E6END2(E6END[2]),
	.E6END3(E6END[3]),
	.E6END4(E6END[4]),
	.E6END5(E6END[5]),
	.E6END6(E6END[6]),
	.E6END7(E6END[7]),
	.E6END8(E6END[8]),
	.E6END9(E6END[9]),
	.E6END10(E6END[10]),
	.E6END11(E6END[11]),
	.A_O(A_O),
	.A_Q(A_Q),
	.B_O(B_O),
	.B_Q(B_Q),
	.W1BEG0(W1BEG[0]),
	.W1BEG1(W1BEG[1]),
	.W1BEG2(W1BEG[2]),
	.W1BEG3(W1BEG[3]),
	.W2BEG0(W2BEG[0]),
	.W2BEG1(W2BEG[1]),
	.W2BEG2(W2BEG[2]),
	.W2BEG3(W2BEG[3]),
	.W2BEG4(W2BEG[4]),
	.W2BEG5(W2BEG[5]),
	.W2BEG6(W2BEG[6]),
	.W2BEG7(W2BEG[7]),
	.W2BEGb0(W2BEGb[0]),
	.W2BEGb1(W2BEGb[1]),
	.W2BEGb2(W2BEGb[2]),
	.W2BEGb3(W2BEGb[3]),
	.W2BEGb4(W2BEGb[4]),
	.W2BEGb5(W2BEGb[5]),
	.W2BEGb6(W2BEGb[6]),
	.W2BEGb7(W2BEGb[7]),
	.WW4BEG0(WW4BEG[0]),
	.WW4BEG1(WW4BEG[1]),
	.WW4BEG2(WW4BEG[2]),
	.WW4BEG3(WW4BEG[3]),
	.WW4BEG4(WW4BEG[4]),
	.WW4BEG5(WW4BEG[5]),
	.WW4BEG6(WW4BEG[6]),
	.WW4BEG7(WW4BEG[7]),
	.WW4BEG8(WW4BEG[8]),
	.WW4BEG9(WW4BEG[9]),
	.WW4BEG10(WW4BEG[10]),
	.WW4BEG11(WW4BEG[11]),
	.WW4BEG12(WW4BEG[12]),
	.WW4BEG13(WW4BEG[13]),
	.WW4BEG14(WW4BEG[14]),
	.WW4BEG15(WW4BEG[15]),
	.W6BEG0(W6BEG[0]),
	.W6BEG1(W6BEG[1]),
	.W6BEG2(W6BEG[2]),
	.W6BEG3(W6BEG[3]),
	.W6BEG4(W6BEG[4]),
	.W6BEG5(W6BEG[5]),
	.W6BEG6(W6BEG[6]),
	.W6BEG7(W6BEG[7]),
	.W6BEG8(W6BEG[8]),
	.W6BEG9(W6BEG[9]),
	.W6BEG10(W6BEG[10]),
	.W6BEG11(W6BEG[11]),
	.A_I(A_I),
	.A_T(A_T),
	.B_I(B_I),
	.B_T(B_T),
	.FrameData(FrameData),
	.FrameStrobe(FrameStrobe[8:1]),
	.OutputEnable(OutputEnable_buf)
	);

endmodule
