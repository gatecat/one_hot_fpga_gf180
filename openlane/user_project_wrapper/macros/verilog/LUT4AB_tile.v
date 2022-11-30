module LUT4AB (N1BEG, N2BEG, N2BEGb, N4BEG, NN4BEG, Co, S1END, S2MID, S2END, S4END, SS4END, E1BEG, E2BEG, E2BEGb, EE4BEG, E6BEG, W1END, W2MID, W2END, WW4END, W6END, S1BEG, S2BEG, S2BEGb, S4BEG, SS4BEG, N1END, N2MID, N2END, N4END, NN4END, Ci, W1BEG, W2BEG, W2BEGb, WW4BEG, W6BEG, E1END, E2MID, E2END, EE4END, E6END, UserCLK, UserCLKo, OutputEnable, OutputEnable_O, FrameData, FrameData_O, FrameStrobe, FrameStrobe_O);
	parameter MaxFramesPerCol = 36;
	parameter FrameBitsPerRow = 32;
	parameter NoConfigBits = 1109;
	//  NORTH
	output [3:0] N1BEG; //wires:4 X_offset:0 Y_offset:-1  source_name:N1BEG destination_name:N1END  
	output [7:0] N2BEG; //wires:8 X_offset:0 Y_offset:-1  source_name:N2BEG destination_name:N2MID  
	output [7:0] N2BEGb; //wires:8 X_offset:0 Y_offset:-1  source_name:N2BEGb destination_name:N2END  
	output [15:0] N4BEG; //wires:4 X_offset:0 Y_offset:-4  source_name:N4BEG destination_name:N4END  
	output [15:0] NN4BEG; //wires:4 X_offset:0 Y_offset:-4  source_name:NN4BEG destination_name:NN4END  
	output [0:0] Co; //wires:1 X_offset:0 Y_offset:-1  source_name:Co destination_name:Ci  
	input [3:0] S1END; //wires:4 X_offset:0 Y_offset:1  source_name:S1BEG destination_name:S1END  
	input [7:0] S2MID; //wires:8 X_offset:0 Y_offset:1  source_name:S2BEG destination_name:S2MID  
	input [7:0] S2END; //wires:8 X_offset:0 Y_offset:1  source_name:S2BEGb destination_name:S2END  
	input [15:0] S4END; //wires:4 X_offset:0 Y_offset:4  source_name:S4BEG destination_name:S4END  
	input [15:0] SS4END; //wires:4 X_offset:0 Y_offset:4  source_name:SS4BEG destination_name:SS4END  
	//  EAST
	output [3:0] E1BEG; //wires:4 X_offset:1 Y_offset:0  source_name:E1BEG destination_name:E1END  
	output [7:0] E2BEG; //wires:8 X_offset:1 Y_offset:0  source_name:E2BEG destination_name:E2MID  
	output [7:0] E2BEGb; //wires:8 X_offset:1 Y_offset:0  source_name:E2BEGb destination_name:E2END  
	output [15:0] EE4BEG; //wires:4 X_offset:4 Y_offset:0  source_name:EE4BEG destination_name:EE4END  
	output [11:0] E6BEG; //wires:2 X_offset:6 Y_offset:0  source_name:E6BEG destination_name:E6END  
	input [3:0] W1END; //wires:4 X_offset:-1 Y_offset:0  source_name:W1BEG destination_name:W1END  
	input [7:0] W2MID; //wires:8 X_offset:-1 Y_offset:0  source_name:W2BEG destination_name:W2MID  
	input [7:0] W2END; //wires:8 X_offset:-1 Y_offset:0  source_name:W2BEGb destination_name:W2END  
	input [15:0] WW4END; //wires:4 X_offset:-4 Y_offset:0  source_name:WW4BEG destination_name:WW4END  
	input [11:0] W6END; //wires:2 X_offset:-6 Y_offset:0  source_name:W6BEG destination_name:W6END  
	//  SOUTH
	output [3:0] S1BEG; //wires:4 X_offset:0 Y_offset:1  source_name:S1BEG destination_name:S1END  
	output [7:0] S2BEG; //wires:8 X_offset:0 Y_offset:1  source_name:S2BEG destination_name:S2MID  
	output [7:0] S2BEGb; //wires:8 X_offset:0 Y_offset:1  source_name:S2BEGb destination_name:S2END  
	output [15:0] S4BEG; //wires:4 X_offset:0 Y_offset:4  source_name:S4BEG destination_name:S4END  
	output [15:0] SS4BEG; //wires:4 X_offset:0 Y_offset:4  source_name:SS4BEG destination_name:SS4END  
	input [3:0] N1END; //wires:4 X_offset:0 Y_offset:-1  source_name:N1BEG destination_name:N1END  
	input [7:0] N2MID; //wires:8 X_offset:0 Y_offset:-1  source_name:N2BEG destination_name:N2MID  
	input [7:0] N2END; //wires:8 X_offset:0 Y_offset:-1  source_name:N2BEGb destination_name:N2END  
	input [15:0] N4END; //wires:4 X_offset:0 Y_offset:-4  source_name:N4BEG destination_name:N4END  
	input [15:0] NN4END; //wires:4 X_offset:0 Y_offset:-4  source_name:NN4BEG destination_name:NN4END  
	input [0:0] Ci; //wires:1 X_offset:0 Y_offset:-1  source_name:Co destination_name:Ci  
	//  WEST
	output [3:0] W1BEG; //wires:4 X_offset:-1 Y_offset:0  source_name:W1BEG destination_name:W1END  
	output [7:0] W2BEG; //wires:8 X_offset:-1 Y_offset:0  source_name:W2BEG destination_name:W2MID  
	output [7:0] W2BEGb; //wires:8 X_offset:-1 Y_offset:0  source_name:W2BEGb destination_name:W2END  
	output [15:0] WW4BEG; //wires:4 X_offset:-4 Y_offset:0  source_name:WW4BEG destination_name:WW4END  
	output [11:0] W6BEG; //wires:2 X_offset:-6 Y_offset:0  source_name:W6BEG destination_name:W6END  
	input [3:0] E1END; //wires:4 X_offset:1 Y_offset:0  source_name:E1BEG destination_name:E1END  
	input [7:0] E2MID; //wires:8 X_offset:1 Y_offset:0  source_name:E2BEG destination_name:E2MID  
	input [7:0] E2END; //wires:8 X_offset:1 Y_offset:0  source_name:E2BEGb destination_name:E2END  
	input [15:0] EE4END; //wires:4 X_offset:4 Y_offset:0  source_name:EE4BEG destination_name:EE4END  
	input [11:0] E6END; //wires:2 X_offset:6 Y_offset:0  source_name:E6BEG destination_name:E6END  
	// Tile IO ports from BELs
	input UserCLK;
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
	wire LA_I0;
	wire LA_I1;
	wire LA_I2;
	wire LA_I3;
	wire LA_Ci;
	wire LA_SR;
	wire LA_EN;
	wire LB_I0;
	wire LB_I1;
	wire LB_I2;
	wire LB_I3;
	wire LB_Ci;
	wire LB_SR;
	wire LB_EN;
	wire LC_I0;
	wire LC_I1;
	wire LC_I2;
	wire LC_I3;
	wire LC_Ci;
	wire LC_SR;
	wire LC_EN;
	wire LD_I0;
	wire LD_I1;
	wire LD_I2;
	wire LD_I3;
	wire LD_Ci;
	wire LD_SR;
	wire LD_EN;
	wire LE_I0;
	wire LE_I1;
	wire LE_I2;
	wire LE_I3;
	wire LE_Ci;
	wire LE_SR;
	wire LE_EN;
	wire LF_I0;
	wire LF_I1;
	wire LF_I2;
	wire LF_I3;
	wire LF_Ci;
	wire LF_SR;
	wire LF_EN;
	wire LG_I0;
	wire LG_I1;
	wire LG_I2;
	wire LG_I3;
	wire LG_Ci;
	wire LG_SR;
	wire LG_EN;
	wire LH_I0;
	wire LH_I1;
	wire LH_I2;
	wire LH_I3;
	wire LH_Ci;
	wire LH_SR;
	wire LH_EN;
	wire A;
	wire B;
	wire C;
	wire D;
	wire E;
	wire F;
	wire G;
	wire H;
	wire S0;
	wire S1;
	wire S2;
	wire S3;
	wire LA_O;
	wire LA_Co;
	wire LB_O;
	wire LB_Co;
	wire LC_O;
	wire LC_Co;
	wire LD_O;
	wire LD_Co;
	wire LE_O;
	wire LE_Co;
	wire LF_O;
	wire LF_Co;
	wire LG_O;
	wire LG_Co;
	wire LH_O;
	wire LH_Co;
	wire M_AB;
	wire M_AD;
	wire M_AH;
	wire M_EF;
//jump wires
	wire [4-1:0] J2MID_ABa_BEG;
	wire [4-1:0] J2MID_CDa_BEG;
	wire [4-1:0] J2MID_EFa_BEG;
	wire [4-1:0] J2MID_GHa_BEG;
	wire [4-1:0] J2MID_ABb_BEG;
	wire [4-1:0] J2MID_CDb_BEG;
	wire [4-1:0] J2MID_EFb_BEG;
	wire [4-1:0] J2MID_GHb_BEG;
	wire [4-1:0] J2END_AB_BEG;
	wire [4-1:0] J2END_CD_BEG;
	wire [4-1:0] J2END_EF_BEG;
	wire [4-1:0] J2END_GH_BEG;
	wire [8-1:0] JN2BEG;
	wire [8-1:0] JE2BEG;
	wire [8-1:0] JS2BEG;
	wire [8-1:0] JW2BEG;
	wire [16-1:0] JOUT;
	wire [4-1:0] J_l_AB_BEG;
	wire [4-1:0] J_l_CD_BEG;
	wire [4-1:0] J_l_EF_BEG;
	wire [4-1:0] J_l_GH_BEG;
	wire [1-1:0] J_SR_BEG;
	wire [1-1:0] J_EN_BEG;
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
	wire [15:0] N4END_i;
	wire [11:0] N4BEG_i;
	assign N4BEG_i[15-4:0] = N4END_i[15:4];

assign N4END_i[4] = N4END[4];
assign N4END_i[5] = N4END[5];
assign N4END_i[6] = N4END[6];
assign N4END_i[7] = N4END[7];
assign N4END_i[8] = N4END[8];
assign N4END_i[9] = N4END[9];
assign N4END_i[10] = N4END[10];
assign N4END_i[11] = N4END[11];
assign N4END_i[12] = N4END[12];
assign N4END_i[13] = N4END[13];
assign N4END_i[14] = N4END[14];
assign N4END_i[15] = N4END[15];
assign N4BEG[0] = N4BEG_i[0];
assign N4BEG[1] = N4BEG_i[1];
assign N4BEG[2] = N4BEG_i[2];
assign N4BEG[3] = N4BEG_i[3];
assign N4BEG[4] = N4BEG_i[4];
assign N4BEG[5] = N4BEG_i[5];
assign N4BEG[6] = N4BEG_i[6];
assign N4BEG[7] = N4BEG_i[7];
assign N4BEG[8] = N4BEG_i[8];
assign N4BEG[9] = N4BEG_i[9];
assign N4BEG[10] = N4BEG_i[10];
assign N4BEG[11] = N4BEG_i[11];
	wire [15:0] NN4END_i;
	wire [11:0] NN4BEG_i;
	assign NN4BEG_i[15-4:0] = NN4END_i[15:4];

assign NN4END_i[4] = NN4END[4];
assign NN4END_i[5] = NN4END[5];
assign NN4END_i[6] = NN4END[6];
assign NN4END_i[7] = NN4END[7];
assign NN4END_i[8] = NN4END[8];
assign NN4END_i[9] = NN4END[9];
assign NN4END_i[10] = NN4END[10];
assign NN4END_i[11] = NN4END[11];
assign NN4END_i[12] = NN4END[12];
assign NN4END_i[13] = NN4END[13];
assign NN4END_i[14] = NN4END[14];
assign NN4END_i[15] = NN4END[15];
assign NN4BEG[0] = NN4BEG_i[0];
assign NN4BEG[1] = NN4BEG_i[1];
assign NN4BEG[2] = NN4BEG_i[2];
assign NN4BEG[3] = NN4BEG_i[3];
assign NN4BEG[4] = NN4BEG_i[4];
assign NN4BEG[5] = NN4BEG_i[5];
assign NN4BEG[6] = NN4BEG_i[6];
assign NN4BEG[7] = NN4BEG_i[7];
assign NN4BEG[8] = NN4BEG_i[8];
assign NN4BEG[9] = NN4BEG_i[9];
assign NN4BEG[10] = NN4BEG_i[10];
assign NN4BEG[11] = NN4BEG_i[11];
	wire [15:0] EE4END_i;
	wire [11:0] EE4BEG_i;
	assign EE4BEG_i[15-4:0] = EE4END_i[15:4];

assign EE4END_i[4] = EE4END[4];
assign EE4END_i[5] = EE4END[5];
assign EE4END_i[6] = EE4END[6];
assign EE4END_i[7] = EE4END[7];
assign EE4END_i[8] = EE4END[8];
assign EE4END_i[9] = EE4END[9];
assign EE4END_i[10] = EE4END[10];
assign EE4END_i[11] = EE4END[11];
assign EE4END_i[12] = EE4END[12];
assign EE4END_i[13] = EE4END[13];
assign EE4END_i[14] = EE4END[14];
assign EE4END_i[15] = EE4END[15];
assign EE4BEG[0] = EE4BEG_i[0];
assign EE4BEG[1] = EE4BEG_i[1];
assign EE4BEG[2] = EE4BEG_i[2];
assign EE4BEG[3] = EE4BEG_i[3];
assign EE4BEG[4] = EE4BEG_i[4];
assign EE4BEG[5] = EE4BEG_i[5];
assign EE4BEG[6] = EE4BEG_i[6];
assign EE4BEG[7] = EE4BEG_i[7];
assign EE4BEG[8] = EE4BEG_i[8];
assign EE4BEG[9] = EE4BEG_i[9];
assign EE4BEG[10] = EE4BEG_i[10];
assign EE4BEG[11] = EE4BEG_i[11];
	wire [11:0] E6END_i;
	wire [9:0] E6BEG_i;
	assign E6BEG_i[11-2:0] = E6END_i[11:2];

assign E6END_i[2] = E6END[2];
assign E6END_i[3] = E6END[3];
assign E6END_i[4] = E6END[4];
assign E6END_i[5] = E6END[5];
assign E6END_i[6] = E6END[6];
assign E6END_i[7] = E6END[7];
assign E6END_i[8] = E6END[8];
assign E6END_i[9] = E6END[9];
assign E6END_i[10] = E6END[10];
assign E6END_i[11] = E6END[11];
assign E6BEG[0] = E6BEG_i[0];
assign E6BEG[1] = E6BEG_i[1];
assign E6BEG[2] = E6BEG_i[2];
assign E6BEG[3] = E6BEG_i[3];
assign E6BEG[4] = E6BEG_i[4];
assign E6BEG[5] = E6BEG_i[5];
assign E6BEG[6] = E6BEG_i[6];
assign E6BEG[7] = E6BEG_i[7];
assign E6BEG[8] = E6BEG_i[8];
assign E6BEG[9] = E6BEG_i[9];
	wire [15:0] S4END_i;
	wire [11:0] S4BEG_i;
	assign S4BEG_i[15-4:0] = S4END_i[15:4];

assign S4END_i[4] = S4END[4];
assign S4END_i[5] = S4END[5];
assign S4END_i[6] = S4END[6];
assign S4END_i[7] = S4END[7];
assign S4END_i[8] = S4END[8];
assign S4END_i[9] = S4END[9];
assign S4END_i[10] = S4END[10];
assign S4END_i[11] = S4END[11];
assign S4END_i[12] = S4END[12];
assign S4END_i[13] = S4END[13];
assign S4END_i[14] = S4END[14];
assign S4END_i[15] = S4END[15];
assign S4BEG[0] = S4BEG_i[0];
assign S4BEG[1] = S4BEG_i[1];
assign S4BEG[2] = S4BEG_i[2];
assign S4BEG[3] = S4BEG_i[3];
assign S4BEG[4] = S4BEG_i[4];
assign S4BEG[5] = S4BEG_i[5];
assign S4BEG[6] = S4BEG_i[6];
assign S4BEG[7] = S4BEG_i[7];
assign S4BEG[8] = S4BEG_i[8];
assign S4BEG[9] = S4BEG_i[9];
assign S4BEG[10] = S4BEG_i[10];
assign S4BEG[11] = S4BEG_i[11];
	wire [15:0] SS4END_i;
	wire [11:0] SS4BEG_i;
	assign SS4BEG_i[15-4:0] = SS4END_i[15:4];

assign SS4END_i[4] = SS4END[4];
assign SS4END_i[5] = SS4END[5];
assign SS4END_i[6] = SS4END[6];
assign SS4END_i[7] = SS4END[7];
assign SS4END_i[8] = SS4END[8];
assign SS4END_i[9] = SS4END[9];
assign SS4END_i[10] = SS4END[10];
assign SS4END_i[11] = SS4END[11];
assign SS4END_i[12] = SS4END[12];
assign SS4END_i[13] = SS4END[13];
assign SS4END_i[14] = SS4END[14];
assign SS4END_i[15] = SS4END[15];
assign SS4BEG[0] = SS4BEG_i[0];
assign SS4BEG[1] = SS4BEG_i[1];
assign SS4BEG[2] = SS4BEG_i[2];
assign SS4BEG[3] = SS4BEG_i[3];
assign SS4BEG[4] = SS4BEG_i[4];
assign SS4BEG[5] = SS4BEG_i[5];
assign SS4BEG[6] = SS4BEG_i[6];
assign SS4BEG[7] = SS4BEG_i[7];
assign SS4BEG[8] = SS4BEG_i[8];
assign SS4BEG[9] = SS4BEG_i[9];
assign SS4BEG[10] = SS4BEG_i[10];
assign SS4BEG[11] = SS4BEG_i[11];
	wire [15:0] WW4END_i;
	wire [11:0] WW4BEG_i;
	assign WW4BEG_i[15-4:0] = WW4END_i[15:4];

assign WW4END_i[4] = WW4END[4];
assign WW4END_i[5] = WW4END[5];
assign WW4END_i[6] = WW4END[6];
assign WW4END_i[7] = WW4END[7];
assign WW4END_i[8] = WW4END[8];
assign WW4END_i[9] = WW4END[9];
assign WW4END_i[10] = WW4END[10];
assign WW4END_i[11] = WW4END[11];
assign WW4END_i[12] = WW4END[12];
assign WW4END_i[13] = WW4END[13];
assign WW4END_i[14] = WW4END[14];
assign WW4END_i[15] = WW4END[15];
assign WW4BEG[0] = WW4BEG_i[0];
assign WW4BEG[1] = WW4BEG_i[1];
assign WW4BEG[2] = WW4BEG_i[2];
assign WW4BEG[3] = WW4BEG_i[3];
assign WW4BEG[4] = WW4BEG_i[4];
assign WW4BEG[5] = WW4BEG_i[5];
assign WW4BEG[6] = WW4BEG_i[6];
assign WW4BEG[7] = WW4BEG_i[7];
assign WW4BEG[8] = WW4BEG_i[8];
assign WW4BEG[9] = WW4BEG_i[9];
assign WW4BEG[10] = WW4BEG_i[10];
assign WW4BEG[11] = WW4BEG_i[11];
	wire [11:0] W6END_i;
	wire [9:0] W6BEG_i;
	assign W6BEG_i[11-2:0] = W6END_i[11:2];

assign W6END_i[2] = W6END[2];
assign W6END_i[3] = W6END[3];
assign W6END_i[4] = W6END[4];
assign W6END_i[5] = W6END[5];
assign W6END_i[6] = W6END[6];
assign W6END_i[7] = W6END[7];
assign W6END_i[8] = W6END[8];
assign W6END_i[9] = W6END[9];
assign W6END_i[10] = W6END[10];
assign W6END_i[11] = W6END[11];
assign W6BEG[0] = W6BEG_i[0];
assign W6BEG[1] = W6BEG_i[1];
assign W6BEG[2] = W6BEG_i[2];
assign W6BEG[3] = W6BEG_i[3];
assign W6BEG[4] = W6BEG_i[4];
assign W6BEG[5] = W6BEG_i[5];
assign W6BEG[6] = W6BEG_i[6];
assign W6BEG[7] = W6BEG_i[7];
assign W6BEG[8] = W6BEG_i[8];
assign W6BEG[9] = W6BEG_i[9];
	clk_buf inst_clk_buf(.A(UserCLK), .X(UserCLKo));
	clk_buf inst_oe_pass_buf(.A(OutputEnable), .X(OutputEnable_O));
	oe_drv_buf inst_oe_drv_buf(.A(OutputEnable), .X(OutputEnable_buf));

// configuration storage latches
	LUT4AB_ConfigMem Inst_LUT4AB_ConfigMem (
	.FrameData(FrameData),
	.FrameStrobe(FrameStrobe),
	.ConfigBits(ConfigBits),
	.ConfigBits_N(ConfigBits_N)
	);

//BEL component instantiations
	LUT4c_frame_config Inst_LA_LUT4c_frame_config (
	.I0(LA_I0),
	.I1(LA_I1),
	.I2(LA_I2),
	.I3(LA_I3),
	.Ci(LA_Ci),
	.SR(LA_SR),
	.EN(LA_EN),
	.O(LA_O),
	.Co(LA_Co),
	//I/O primitive pins go to tile top level module (not further parsed)  
	.UserCLK(UserCLK),
	.ConfigBits(ConfigBits[19-1:0])
	);

	LUT4c_frame_config Inst_LB_LUT4c_frame_config (
	.I0(LB_I0),
	.I1(LB_I1),
	.I2(LB_I2),
	.I3(LB_I3),
	.Ci(LB_Ci),
	.SR(LB_SR),
	.EN(LB_EN),
	.O(LB_O),
	.Co(LB_Co),
	//I/O primitive pins go to tile top level module (not further parsed)  
	.UserCLK(UserCLK),
	.ConfigBits(ConfigBits[38-1:19])
	);

	LUT4c_frame_config Inst_LC_LUT4c_frame_config (
	.I0(LC_I0),
	.I1(LC_I1),
	.I2(LC_I2),
	.I3(LC_I3),
	.Ci(LC_Ci),
	.SR(LC_SR),
	.EN(LC_EN),
	.O(LC_O),
	.Co(LC_Co),
	//I/O primitive pins go to tile top level module (not further parsed)  
	.UserCLK(UserCLK),
	.ConfigBits(ConfigBits[57-1:38])
	);

	LUT4c_frame_config Inst_LD_LUT4c_frame_config (
	.I0(LD_I0),
	.I1(LD_I1),
	.I2(LD_I2),
	.I3(LD_I3),
	.Ci(LD_Ci),
	.SR(LD_SR),
	.EN(LD_EN),
	.O(LD_O),
	.Co(LD_Co),
	//I/O primitive pins go to tile top level module (not further parsed)  
	.UserCLK(UserCLK),
	.ConfigBits(ConfigBits[76-1:57])
	);

	LUT4c_frame_config Inst_LE_LUT4c_frame_config (
	.I0(LE_I0),
	.I1(LE_I1),
	.I2(LE_I2),
	.I3(LE_I3),
	.Ci(LE_Ci),
	.SR(LE_SR),
	.EN(LE_EN),
	.O(LE_O),
	.Co(LE_Co),
	//I/O primitive pins go to tile top level module (not further parsed)  
	.UserCLK(UserCLK),
	.ConfigBits(ConfigBits[95-1:76])
	);

	LUT4c_frame_config Inst_LF_LUT4c_frame_config (
	.I0(LF_I0),
	.I1(LF_I1),
	.I2(LF_I2),
	.I3(LF_I3),
	.Ci(LF_Ci),
	.SR(LF_SR),
	.EN(LF_EN),
	.O(LF_O),
	.Co(LF_Co),
	//I/O primitive pins go to tile top level module (not further parsed)  
	.UserCLK(UserCLK),
	.ConfigBits(ConfigBits[114-1:95])
	);

	LUT4c_frame_config Inst_LG_LUT4c_frame_config (
	.I0(LG_I0),
	.I1(LG_I1),
	.I2(LG_I2),
	.I3(LG_I3),
	.Ci(LG_Ci),
	.SR(LG_SR),
	.EN(LG_EN),
	.O(LG_O),
	.Co(LG_Co),
	//I/O primitive pins go to tile top level module (not further parsed)  
	.UserCLK(UserCLK),
	.ConfigBits(ConfigBits[133-1:114])
	);

	LUT4c_frame_config Inst_LH_LUT4c_frame_config (
	.I0(LH_I0),
	.I1(LH_I1),
	.I2(LH_I2),
	.I3(LH_I3),
	.Ci(LH_Ci),
	.SR(LH_SR),
	.EN(LH_EN),
	.O(LH_O),
	.Co(LH_Co),
	//I/O primitive pins go to tile top level module (not further parsed)  
	.UserCLK(UserCLK),
	.ConfigBits(ConfigBits[152-1:133])
	);

	MUX8LUT_frame_config Inst_MUX8LUT_frame_config (
	.A(A),
	.B(B),
	.C(C),
	.D(D),
	.E(E),
	.F(F),
	.G(G),
	.H(H),
	.S0(S0),
	.S1(S1),
	.S2(S2),
	.S3(S3),
	.M_AB(M_AB),
	.M_AD(M_AD),
	.M_AH(M_AH),
	.M_EF(M_EF),
	.ConfigBits(ConfigBits[154-1:152])
	);


//switch matrix component instantiation
	LUT4AB_switch_matrix Inst_LUT4AB_switch_matrix (
	.N1END0(N1END[0]),
	.N1END1(N1END[1]),
	.N1END2(N1END[2]),
	.N1END3(N1END[3]),
	.N2MID0(N2MID[0]),
	.N2MID1(N2MID[1]),
	.N2MID2(N2MID[2]),
	.N2MID3(N2MID[3]),
	.N2MID4(N2MID[4]),
	.N2MID5(N2MID[5]),
	.N2MID6(N2MID[6]),
	.N2MID7(N2MID[7]),
	.N2END0(N2END[0]),
	.N2END1(N2END[1]),
	.N2END2(N2END[2]),
	.N2END3(N2END[3]),
	.N2END4(N2END[4]),
	.N2END5(N2END[5]),
	.N2END6(N2END[6]),
	.N2END7(N2END[7]),
	.N4END0(N4END[0]),
	.N4END1(N4END[1]),
	.N4END2(N4END[2]),
	.N4END3(N4END[3]),
	.NN4END0(NN4END[0]),
	.NN4END1(NN4END[1]),
	.NN4END2(NN4END[2]),
	.NN4END3(NN4END[3]),
	.Ci0(Ci[0]),
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
	.E6END0(E6END[0]),
	.E6END1(E6END[1]),
	.S1END0(S1END[0]),
	.S1END1(S1END[1]),
	.S1END2(S1END[2]),
	.S1END3(S1END[3]),
	.S2MID0(S2MID[0]),
	.S2MID1(S2MID[1]),
	.S2MID2(S2MID[2]),
	.S2MID3(S2MID[3]),
	.S2MID4(S2MID[4]),
	.S2MID5(S2MID[5]),
	.S2MID6(S2MID[6]),
	.S2MID7(S2MID[7]),
	.S2END0(S2END[0]),
	.S2END1(S2END[1]),
	.S2END2(S2END[2]),
	.S2END3(S2END[3]),
	.S2END4(S2END[4]),
	.S2END5(S2END[5]),
	.S2END6(S2END[6]),
	.S2END7(S2END[7]),
	.S4END0(S4END[0]),
	.S4END1(S4END[1]),
	.S4END2(S4END[2]),
	.S4END3(S4END[3]),
	.SS4END0(SS4END[0]),
	.SS4END1(SS4END[1]),
	.SS4END2(SS4END[2]),
	.SS4END3(SS4END[3]),
	.W1END0(W1END[0]),
	.W1END1(W1END[1]),
	.W1END2(W1END[2]),
	.W1END3(W1END[3]),
	.W2MID0(W2MID[0]),
	.W2MID1(W2MID[1]),
	.W2MID2(W2MID[2]),
	.W2MID3(W2MID[3]),
	.W2MID4(W2MID[4]),
	.W2MID5(W2MID[5]),
	.W2MID6(W2MID[6]),
	.W2MID7(W2MID[7]),
	.W2END0(W2END[0]),
	.W2END1(W2END[1]),
	.W2END2(W2END[2]),
	.W2END3(W2END[3]),
	.W2END4(W2END[4]),
	.W2END5(W2END[5]),
	.W2END6(W2END[6]),
	.W2END7(W2END[7]),
	.WW4END0(WW4END[0]),
	.WW4END1(WW4END[1]),
	.WW4END2(WW4END[2]),
	.WW4END3(WW4END[3]),
	.W6END0(W6END[0]),
	.W6END1(W6END[1]),
	.LA_O(LA_O),
	.LA_Co(LA_Co),
	.LB_O(LB_O),
	.LB_Co(LB_Co),
	.LC_O(LC_O),
	.LC_Co(LC_Co),
	.LD_O(LD_O),
	.LD_Co(LD_Co),
	.LE_O(LE_O),
	.LE_Co(LE_Co),
	.LF_O(LF_O),
	.LF_Co(LF_Co),
	.LG_O(LG_O),
	.LG_Co(LG_Co),
	.LH_O(LH_O),
	.LH_Co(LH_Co),
	.M_AB(M_AB),
	.M_AD(M_AD),
	.M_AH(M_AH),
	.M_EF(M_EF),
	.J2MID_ABa_END0(J2MID_ABa_BEG[0]),
	.J2MID_ABa_END1(J2MID_ABa_BEG[1]),
	.J2MID_ABa_END2(J2MID_ABa_BEG[2]),
	.J2MID_ABa_END3(J2MID_ABa_BEG[3]),
	.J2MID_CDa_END0(J2MID_CDa_BEG[0]),
	.J2MID_CDa_END1(J2MID_CDa_BEG[1]),
	.J2MID_CDa_END2(J2MID_CDa_BEG[2]),
	.J2MID_CDa_END3(J2MID_CDa_BEG[3]),
	.J2MID_EFa_END0(J2MID_EFa_BEG[0]),
	.J2MID_EFa_END1(J2MID_EFa_BEG[1]),
	.J2MID_EFa_END2(J2MID_EFa_BEG[2]),
	.J2MID_EFa_END3(J2MID_EFa_BEG[3]),
	.J2MID_GHa_END0(J2MID_GHa_BEG[0]),
	.J2MID_GHa_END1(J2MID_GHa_BEG[1]),
	.J2MID_GHa_END2(J2MID_GHa_BEG[2]),
	.J2MID_GHa_END3(J2MID_GHa_BEG[3]),
	.J2MID_ABb_END0(J2MID_ABb_BEG[0]),
	.J2MID_ABb_END1(J2MID_ABb_BEG[1]),
	.J2MID_ABb_END2(J2MID_ABb_BEG[2]),
	.J2MID_ABb_END3(J2MID_ABb_BEG[3]),
	.J2MID_CDb_END0(J2MID_CDb_BEG[0]),
	.J2MID_CDb_END1(J2MID_CDb_BEG[1]),
	.J2MID_CDb_END2(J2MID_CDb_BEG[2]),
	.J2MID_CDb_END3(J2MID_CDb_BEG[3]),
	.J2MID_EFb_END0(J2MID_EFb_BEG[0]),
	.J2MID_EFb_END1(J2MID_EFb_BEG[1]),
	.J2MID_EFb_END2(J2MID_EFb_BEG[2]),
	.J2MID_EFb_END3(J2MID_EFb_BEG[3]),
	.J2MID_GHb_END0(J2MID_GHb_BEG[0]),
	.J2MID_GHb_END1(J2MID_GHb_BEG[1]),
	.J2MID_GHb_END2(J2MID_GHb_BEG[2]),
	.J2MID_GHb_END3(J2MID_GHb_BEG[3]),
	.J2END_AB_END0(J2END_AB_BEG[0]),
	.J2END_AB_END1(J2END_AB_BEG[1]),
	.J2END_AB_END2(J2END_AB_BEG[2]),
	.J2END_AB_END3(J2END_AB_BEG[3]),
	.J2END_CD_END0(J2END_CD_BEG[0]),
	.J2END_CD_END1(J2END_CD_BEG[1]),
	.J2END_CD_END2(J2END_CD_BEG[2]),
	.J2END_CD_END3(J2END_CD_BEG[3]),
	.J2END_EF_END0(J2END_EF_BEG[0]),
	.J2END_EF_END1(J2END_EF_BEG[1]),
	.J2END_EF_END2(J2END_EF_BEG[2]),
	.J2END_EF_END3(J2END_EF_BEG[3]),
	.J2END_GH_END0(J2END_GH_BEG[0]),
	.J2END_GH_END1(J2END_GH_BEG[1]),
	.J2END_GH_END2(J2END_GH_BEG[2]),
	.J2END_GH_END3(J2END_GH_BEG[3]),
	.JN2END0(JN2BEG[0]),
	.JN2END1(JN2BEG[1]),
	.JN2END2(JN2BEG[2]),
	.JN2END3(JN2BEG[3]),
	.JN2END4(JN2BEG[4]),
	.JN2END5(JN2BEG[5]),
	.JN2END6(JN2BEG[6]),
	.JN2END7(JN2BEG[7]),
	.JE2END0(JE2BEG[0]),
	.JE2END1(JE2BEG[1]),
	.JE2END2(JE2BEG[2]),
	.JE2END3(JE2BEG[3]),
	.JE2END4(JE2BEG[4]),
	.JE2END5(JE2BEG[5]),
	.JE2END6(JE2BEG[6]),
	.JE2END7(JE2BEG[7]),
	.JS2END0(JS2BEG[0]),
	.JS2END1(JS2BEG[1]),
	.JS2END2(JS2BEG[2]),
	.JS2END3(JS2BEG[3]),
	.JS2END4(JS2BEG[4]),
	.JS2END5(JS2BEG[5]),
	.JS2END6(JS2BEG[6]),
	.JS2END7(JS2BEG[7]),
	.JW2END0(JW2BEG[0]),
	.JW2END1(JW2BEG[1]),
	.JW2END2(JW2BEG[2]),
	.JW2END3(JW2BEG[3]),
	.JW2END4(JW2BEG[4]),
	.JW2END5(JW2BEG[5]),
	.JW2END6(JW2BEG[6]),
	.JW2END7(JW2BEG[7]),
	.JIN0(JOUT[0]),
	.JIN1(JOUT[1]),
	.JIN2(JOUT[2]),
	.JIN3(JOUT[3]),
	.JIN4(JOUT[4]),
	.JIN5(JOUT[5]),
	.JIN6(JOUT[6]),
	.JIN7(JOUT[7]),
	.JIN8(JOUT[8]),
	.JIN9(JOUT[9]),
	.JIN10(JOUT[10]),
	.JIN11(JOUT[11]),
	.JIN12(JOUT[12]),
	.JIN13(JOUT[13]),
	.JIN14(JOUT[14]),
	.JIN15(JOUT[15]),
	.J_l_AB_END0(J_l_AB_BEG[0]),
	.J_l_AB_END1(J_l_AB_BEG[1]),
	.J_l_AB_END2(J_l_AB_BEG[2]),
	.J_l_AB_END3(J_l_AB_BEG[3]),
	.J_l_CD_END0(J_l_CD_BEG[0]),
	.J_l_CD_END1(J_l_CD_BEG[1]),
	.J_l_CD_END2(J_l_CD_BEG[2]),
	.J_l_CD_END3(J_l_CD_BEG[3]),
	.J_l_EF_END0(J_l_EF_BEG[0]),
	.J_l_EF_END1(J_l_EF_BEG[1]),
	.J_l_EF_END2(J_l_EF_BEG[2]),
	.J_l_EF_END3(J_l_EF_BEG[3]),
	.J_l_GH_END0(J_l_GH_BEG[0]),
	.J_l_GH_END1(J_l_GH_BEG[1]),
	.J_l_GH_END2(J_l_GH_BEG[2]),
	.J_l_GH_END3(J_l_GH_BEG[3]),
	.J_SR_END0(J_SR_BEG[0]),
	.J_EN_END0(J_EN_BEG[0]),
	.N1BEG0(N1BEG[0]),
	.N1BEG1(N1BEG[1]),
	.N1BEG2(N1BEG[2]),
	.N1BEG3(N1BEG[3]),
	.N2BEG0(N2BEG[0]),
	.N2BEG1(N2BEG[1]),
	.N2BEG2(N2BEG[2]),
	.N2BEG3(N2BEG[3]),
	.N2BEG4(N2BEG[4]),
	.N2BEG5(N2BEG[5]),
	.N2BEG6(N2BEG[6]),
	.N2BEG7(N2BEG[7]),
	.N2BEGb0(N2BEGb[0]),
	.N2BEGb1(N2BEGb[1]),
	.N2BEGb2(N2BEGb[2]),
	.N2BEGb3(N2BEGb[3]),
	.N2BEGb4(N2BEGb[4]),
	.N2BEGb5(N2BEGb[5]),
	.N2BEGb6(N2BEGb[6]),
	.N2BEGb7(N2BEGb[7]),
	.N4BEG0(N4BEG[12]),
	.N4BEG1(N4BEG[13]),
	.N4BEG2(N4BEG[14]),
	.N4BEG3(N4BEG[15]),
	.NN4BEG0(NN4BEG[12]),
	.NN4BEG1(NN4BEG[13]),
	.NN4BEG2(NN4BEG[14]),
	.NN4BEG3(NN4BEG[15]),
	.Co0(Co[0]),
	.E1BEG0(E1BEG[0]),
	.E1BEG1(E1BEG[1]),
	.E1BEG2(E1BEG[2]),
	.E1BEG3(E1BEG[3]),
	.E2BEG0(E2BEG[0]),
	.E2BEG1(E2BEG[1]),
	.E2BEG2(E2BEG[2]),
	.E2BEG3(E2BEG[3]),
	.E2BEG4(E2BEG[4]),
	.E2BEG5(E2BEG[5]),
	.E2BEG6(E2BEG[6]),
	.E2BEG7(E2BEG[7]),
	.E2BEGb0(E2BEGb[0]),
	.E2BEGb1(E2BEGb[1]),
	.E2BEGb2(E2BEGb[2]),
	.E2BEGb3(E2BEGb[3]),
	.E2BEGb4(E2BEGb[4]),
	.E2BEGb5(E2BEGb[5]),
	.E2BEGb6(E2BEGb[6]),
	.E2BEGb7(E2BEGb[7]),
	.EE4BEG0(EE4BEG[12]),
	.EE4BEG1(EE4BEG[13]),
	.EE4BEG2(EE4BEG[14]),
	.EE4BEG3(EE4BEG[15]),
	.E6BEG0(E6BEG[10]),
	.E6BEG1(E6BEG[11]),
	.S1BEG0(S1BEG[0]),
	.S1BEG1(S1BEG[1]),
	.S1BEG2(S1BEG[2]),
	.S1BEG3(S1BEG[3]),
	.S2BEG0(S2BEG[0]),
	.S2BEG1(S2BEG[1]),
	.S2BEG2(S2BEG[2]),
	.S2BEG3(S2BEG[3]),
	.S2BEG4(S2BEG[4]),
	.S2BEG5(S2BEG[5]),
	.S2BEG6(S2BEG[6]),
	.S2BEG7(S2BEG[7]),
	.S2BEGb0(S2BEGb[0]),
	.S2BEGb1(S2BEGb[1]),
	.S2BEGb2(S2BEGb[2]),
	.S2BEGb3(S2BEGb[3]),
	.S2BEGb4(S2BEGb[4]),
	.S2BEGb5(S2BEGb[5]),
	.S2BEGb6(S2BEGb[6]),
	.S2BEGb7(S2BEGb[7]),
	.S4BEG0(S4BEG[12]),
	.S4BEG1(S4BEG[13]),
	.S4BEG2(S4BEG[14]),
	.S4BEG3(S4BEG[15]),
	.SS4BEG0(SS4BEG[12]),
	.SS4BEG1(SS4BEG[13]),
	.SS4BEG2(SS4BEG[14]),
	.SS4BEG3(SS4BEG[15]),
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
	.WW4BEG0(WW4BEG[12]),
	.WW4BEG1(WW4BEG[13]),
	.WW4BEG2(WW4BEG[14]),
	.WW4BEG3(WW4BEG[15]),
	.W6BEG0(W6BEG[10]),
	.W6BEG1(W6BEG[11]),
	.LA_I0(LA_I0),
	.LA_I1(LA_I1),
	.LA_I2(LA_I2),
	.LA_I3(LA_I3),
	.LA_Ci(LA_Ci),
	.LA_SR(LA_SR),
	.LA_EN(LA_EN),
	.LB_I0(LB_I0),
	.LB_I1(LB_I1),
	.LB_I2(LB_I2),
	.LB_I3(LB_I3),
	.LB_Ci(LB_Ci),
	.LB_SR(LB_SR),
	.LB_EN(LB_EN),
	.LC_I0(LC_I0),
	.LC_I1(LC_I1),
	.LC_I2(LC_I2),
	.LC_I3(LC_I3),
	.LC_Ci(LC_Ci),
	.LC_SR(LC_SR),
	.LC_EN(LC_EN),
	.LD_I0(LD_I0),
	.LD_I1(LD_I1),
	.LD_I2(LD_I2),
	.LD_I3(LD_I3),
	.LD_Ci(LD_Ci),
	.LD_SR(LD_SR),
	.LD_EN(LD_EN),
	.LE_I0(LE_I0),
	.LE_I1(LE_I1),
	.LE_I2(LE_I2),
	.LE_I3(LE_I3),
	.LE_Ci(LE_Ci),
	.LE_SR(LE_SR),
	.LE_EN(LE_EN),
	.LF_I0(LF_I0),
	.LF_I1(LF_I1),
	.LF_I2(LF_I2),
	.LF_I3(LF_I3),
	.LF_Ci(LF_Ci),
	.LF_SR(LF_SR),
	.LF_EN(LF_EN),
	.LG_I0(LG_I0),
	.LG_I1(LG_I1),
	.LG_I2(LG_I2),
	.LG_I3(LG_I3),
	.LG_Ci(LG_Ci),
	.LG_SR(LG_SR),
	.LG_EN(LG_EN),
	.LH_I0(LH_I0),
	.LH_I1(LH_I1),
	.LH_I2(LH_I2),
	.LH_I3(LH_I3),
	.LH_Ci(LH_Ci),
	.LH_SR(LH_SR),
	.LH_EN(LH_EN),
	.A(A),
	.B(B),
	.C(C),
	.D(D),
	.E(E),
	.F(F),
	.G(G),
	.H(H),
	.S0(S0),
	.S1(S1),
	.S2(S2),
	.S3(S3),
	.J2MID_ABa_BEG0(J2MID_ABa_BEG[0]),
	.J2MID_ABa_BEG1(J2MID_ABa_BEG[1]),
	.J2MID_ABa_BEG2(J2MID_ABa_BEG[2]),
	.J2MID_ABa_BEG3(J2MID_ABa_BEG[3]),
	.J2MID_CDa_BEG0(J2MID_CDa_BEG[0]),
	.J2MID_CDa_BEG1(J2MID_CDa_BEG[1]),
	.J2MID_CDa_BEG2(J2MID_CDa_BEG[2]),
	.J2MID_CDa_BEG3(J2MID_CDa_BEG[3]),
	.J2MID_EFa_BEG0(J2MID_EFa_BEG[0]),
	.J2MID_EFa_BEG1(J2MID_EFa_BEG[1]),
	.J2MID_EFa_BEG2(J2MID_EFa_BEG[2]),
	.J2MID_EFa_BEG3(J2MID_EFa_BEG[3]),
	.J2MID_GHa_BEG0(J2MID_GHa_BEG[0]),
	.J2MID_GHa_BEG1(J2MID_GHa_BEG[1]),
	.J2MID_GHa_BEG2(J2MID_GHa_BEG[2]),
	.J2MID_GHa_BEG3(J2MID_GHa_BEG[3]),
	.J2MID_ABb_BEG0(J2MID_ABb_BEG[0]),
	.J2MID_ABb_BEG1(J2MID_ABb_BEG[1]),
	.J2MID_ABb_BEG2(J2MID_ABb_BEG[2]),
	.J2MID_ABb_BEG3(J2MID_ABb_BEG[3]),
	.J2MID_CDb_BEG0(J2MID_CDb_BEG[0]),
	.J2MID_CDb_BEG1(J2MID_CDb_BEG[1]),
	.J2MID_CDb_BEG2(J2MID_CDb_BEG[2]),
	.J2MID_CDb_BEG3(J2MID_CDb_BEG[3]),
	.J2MID_EFb_BEG0(J2MID_EFb_BEG[0]),
	.J2MID_EFb_BEG1(J2MID_EFb_BEG[1]),
	.J2MID_EFb_BEG2(J2MID_EFb_BEG[2]),
	.J2MID_EFb_BEG3(J2MID_EFb_BEG[3]),
	.J2MID_GHb_BEG0(J2MID_GHb_BEG[0]),
	.J2MID_GHb_BEG1(J2MID_GHb_BEG[1]),
	.J2MID_GHb_BEG2(J2MID_GHb_BEG[2]),
	.J2MID_GHb_BEG3(J2MID_GHb_BEG[3]),
	.J2END_AB_BEG0(J2END_AB_BEG[0]),
	.J2END_AB_BEG1(J2END_AB_BEG[1]),
	.J2END_AB_BEG2(J2END_AB_BEG[2]),
	.J2END_AB_BEG3(J2END_AB_BEG[3]),
	.J2END_CD_BEG0(J2END_CD_BEG[0]),
	.J2END_CD_BEG1(J2END_CD_BEG[1]),
	.J2END_CD_BEG2(J2END_CD_BEG[2]),
	.J2END_CD_BEG3(J2END_CD_BEG[3]),
	.J2END_EF_BEG0(J2END_EF_BEG[0]),
	.J2END_EF_BEG1(J2END_EF_BEG[1]),
	.J2END_EF_BEG2(J2END_EF_BEG[2]),
	.J2END_EF_BEG3(J2END_EF_BEG[3]),
	.J2END_GH_BEG0(J2END_GH_BEG[0]),
	.J2END_GH_BEG1(J2END_GH_BEG[1]),
	.J2END_GH_BEG2(J2END_GH_BEG[2]),
	.J2END_GH_BEG3(J2END_GH_BEG[3]),
	.JN2BEG0(JN2BEG[0]),
	.JN2BEG1(JN2BEG[1]),
	.JN2BEG2(JN2BEG[2]),
	.JN2BEG3(JN2BEG[3]),
	.JN2BEG4(JN2BEG[4]),
	.JN2BEG5(JN2BEG[5]),
	.JN2BEG6(JN2BEG[6]),
	.JN2BEG7(JN2BEG[7]),
	.JE2BEG0(JE2BEG[0]),
	.JE2BEG1(JE2BEG[1]),
	.JE2BEG2(JE2BEG[2]),
	.JE2BEG3(JE2BEG[3]),
	.JE2BEG4(JE2BEG[4]),
	.JE2BEG5(JE2BEG[5]),
	.JE2BEG6(JE2BEG[6]),
	.JE2BEG7(JE2BEG[7]),
	.JS2BEG0(JS2BEG[0]),
	.JS2BEG1(JS2BEG[1]),
	.JS2BEG2(JS2BEG[2]),
	.JS2BEG3(JS2BEG[3]),
	.JS2BEG4(JS2BEG[4]),
	.JS2BEG5(JS2BEG[5]),
	.JS2BEG6(JS2BEG[6]),
	.JS2BEG7(JS2BEG[7]),
	.JW2BEG0(JW2BEG[0]),
	.JW2BEG1(JW2BEG[1]),
	.JW2BEG2(JW2BEG[2]),
	.JW2BEG3(JW2BEG[3]),
	.JW2BEG4(JW2BEG[4]),
	.JW2BEG5(JW2BEG[5]),
	.JW2BEG6(JW2BEG[6]),
	.JW2BEG7(JW2BEG[7]),
	.JOUT0(JOUT[0]),
	.JOUT1(JOUT[1]),
	.JOUT2(JOUT[2]),
	.JOUT3(JOUT[3]),
	.JOUT4(JOUT[4]),
	.JOUT5(JOUT[5]),
	.JOUT6(JOUT[6]),
	.JOUT7(JOUT[7]),
	.JOUT8(JOUT[8]),
	.JOUT9(JOUT[9]),
	.JOUT10(JOUT[10]),
	.JOUT11(JOUT[11]),
	.JOUT12(JOUT[12]),
	.JOUT13(JOUT[13]),
	.JOUT14(JOUT[14]),
	.JOUT15(JOUT[15]),
	.J_l_AB_BEG0(J_l_AB_BEG[0]),
	.J_l_AB_BEG1(J_l_AB_BEG[1]),
	.J_l_AB_BEG2(J_l_AB_BEG[2]),
	.J_l_AB_BEG3(J_l_AB_BEG[3]),
	.J_l_CD_BEG0(J_l_CD_BEG[0]),
	.J_l_CD_BEG1(J_l_CD_BEG[1]),
	.J_l_CD_BEG2(J_l_CD_BEG[2]),
	.J_l_CD_BEG3(J_l_CD_BEG[3]),
	.J_l_EF_BEG0(J_l_EF_BEG[0]),
	.J_l_EF_BEG1(J_l_EF_BEG[1]),
	.J_l_EF_BEG2(J_l_EF_BEG[2]),
	.J_l_EF_BEG3(J_l_EF_BEG[3]),
	.J_l_GH_BEG0(J_l_GH_BEG[0]),
	.J_l_GH_BEG1(J_l_GH_BEG[1]),
	.J_l_GH_BEG2(J_l_GH_BEG[2]),
	.J_l_GH_BEG3(J_l_GH_BEG[3]),
	.J_SR_BEG0(J_SR_BEG[0]),
	.J_EN_BEG0(J_EN_BEG[0]),
	.FrameData(FrameData),
	.FrameStrobe(FrameStrobe[34:5]),
	.OutputEnable(OutputEnable_buf)
	);

endmodule
