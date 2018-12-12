/* Machine-generated using Migen */
module top(
	input jref,
	input dac_sync,
	output jesd_txn,
	output jesd_txp,
	input [63:0] sink_converter0,
	input phy0_tx_clk,
	input phy0_tx_rst,
	input sys_clk,
	input sys_rst
);

reg crg_storage = 1'd1;
reg crg_refclk = 1'd0;
reg jesd_clk = 1'd0;
wire jesd_rst;
wire gtxquadpll_clk;
wire gtxquadpll_refclk;
wire gtxquadpll_reset;
wire gtxquadpll_lock;
wire [31:0] data;
wire [3:0] ctrl;
wire [1:0] gtxtransmitter_prbs_config;
reg gtxtransmitter_produce_square_wave_storage = 1'd0;
reg [3:0] gtxtransmitter_txdiffcttrl_storage = 4'd8;
reg [6:0] gtxtransmitter_txmaincursor_storage = 7'd80;
reg [4:0] gtxtransmitter_txprecursor_storage = 5'd0;
reg [4:0] gtxtransmitter_txpostcursor_storage = 5'd0;
reg gtxtransmitter_done;
wire gtxtransmitter_restart;
wire gtxtransmitter_plllock0;
reg gtxtransmitter_pllreset;
reg gtxtransmitter_gtXxreset0 = 1'd0;
wire gtxtransmitter_Xxresetdone0;
reg gtxtransmitter_Xxdlysreset0 = 1'd0;
wire gtxtransmitter_Xxdlysresetdone0;
wire gtxtransmitter_Xxphaligndone0;
reg gtxtransmitter_Xxuserrdy0 = 1'd0;
wire gtxtransmitter_plllock1;
wire gtxtransmitter_Xxresetdone1;
wire gtxtransmitter_Xxdlysresetdone1;
wire gtxtransmitter_Xxphaligndone1;
reg gtxtransmitter_gtXxreset1;
reg gtxtransmitter_Xxdlysreset1;
reg gtxtransmitter_Xxuserrdy1;
reg gtxtransmitter_startup_timer_wait;
wire gtxtransmitter_startup_timer_done;
reg [5:0] gtxtransmitter_startup_timer_count = 6'd63;
wire gtxtransmitter_reset;
wire gtxtransmitter_ready_timer_wait;
wire gtxtransmitter_ready_timer_done;
reg [16:0] gtxtransmitter_ready_timer_count = 17'd125000;
reg gtxtransmitter_Xxphaligndone_r = 1'd1;
wire gtxtransmitter_Xxphaligndone_rising;
wire gtxtransmitter_txoutclk;
reg [39:0] gtxtransmitter_txdata;
wire gtxtransmitter;
wire tx_clk;
wire tx_rst;
wire [7:0] gtxtransmitter_d0;
wire [7:0] gtxtransmitter_d1;
wire [7:0] gtxtransmitter_d2;
wire [7:0] gtxtransmitter_d3;
wire gtxtransmitter_k0;
wire gtxtransmitter_k1;
wire gtxtransmitter_k2;
wire gtxtransmitter_k3;
reg [9:0] gtxtransmitter_output0 = 10'd0;
reg [9:0] gtxtransmitter_output1 = 10'd0;
reg [9:0] gtxtransmitter_output2 = 10'd0;
reg [9:0] gtxtransmitter_output3 = 10'd0;
reg gtxtransmitter_disparity0 = 1'd0;
reg gtxtransmitter_disparity1 = 1'd0;
reg gtxtransmitter_disparity2 = 1'd0;
reg gtxtransmitter_disparity3 = 1'd0;
wire [7:0] gtxtransmitter_singleencoder0_d;
wire gtxtransmitter_singleencoder0_k;
reg gtxtransmitter_singleencoder0_disp_in = 1'd0;
reg [9:0] gtxtransmitter_singleencoder0_output;
reg gtxtransmitter_singleencoder0_disp_out;
reg [5:0] gtxtransmitter_singleencoder0_code6b = 6'd0;
reg gtxtransmitter_singleencoder0_code6b_unbalanced = 1'd0;
reg gtxtransmitter_singleencoder0_code6b_flip = 1'd0;
reg [3:0] gtxtransmitter_singleencoder0_code4b = 4'd0;
reg gtxtransmitter_singleencoder0_code4b_unbalanced = 1'd0;
reg gtxtransmitter_singleencoder0_code4b_flip = 1'd0;
reg gtxtransmitter_singleencoder0_alt7_rd0 = 1'd0;
reg gtxtransmitter_singleencoder0_alt7_rd1 = 1'd0;
reg [5:0] gtxtransmitter_singleencoder0_output_6b;
wire gtxtransmitter_singleencoder0_disp_inter;
reg [3:0] gtxtransmitter_singleencoder0_output_4b;
wire [9:0] gtxtransmitter_singleencoder0_output_msb_first;
wire [7:0] gtxtransmitter_singleencoder1_d;
wire gtxtransmitter_singleencoder1_k;
wire gtxtransmitter_singleencoder1_disp_in;
reg [9:0] gtxtransmitter_singleencoder1_output;
reg gtxtransmitter_singleencoder1_disp_out;
reg [5:0] gtxtransmitter_singleencoder1_code6b = 6'd0;
reg gtxtransmitter_singleencoder1_code6b_unbalanced = 1'd0;
reg gtxtransmitter_singleencoder1_code6b_flip = 1'd0;
reg [3:0] gtxtransmitter_singleencoder1_code4b = 4'd0;
reg gtxtransmitter_singleencoder1_code4b_unbalanced = 1'd0;
reg gtxtransmitter_singleencoder1_code4b_flip = 1'd0;
reg gtxtransmitter_singleencoder1_alt7_rd0 = 1'd0;
reg gtxtransmitter_singleencoder1_alt7_rd1 = 1'd0;
reg [5:0] gtxtransmitter_singleencoder1_output_6b;
wire gtxtransmitter_singleencoder1_disp_inter;
reg [3:0] gtxtransmitter_singleencoder1_output_4b;
wire [9:0] gtxtransmitter_singleencoder1_output_msb_first;
wire [7:0] gtxtransmitter_singleencoder2_d;
wire gtxtransmitter_singleencoder2_k;
wire gtxtransmitter_singleencoder2_disp_in;
reg [9:0] gtxtransmitter_singleencoder2_output;
reg gtxtransmitter_singleencoder2_disp_out;
reg [5:0] gtxtransmitter_singleencoder2_code6b = 6'd0;
reg gtxtransmitter_singleencoder2_code6b_unbalanced = 1'd0;
reg gtxtransmitter_singleencoder2_code6b_flip = 1'd0;
reg [3:0] gtxtransmitter_singleencoder2_code4b = 4'd0;
reg gtxtransmitter_singleencoder2_code4b_unbalanced = 1'd0;
reg gtxtransmitter_singleencoder2_code4b_flip = 1'd0;
reg gtxtransmitter_singleencoder2_alt7_rd0 = 1'd0;
reg gtxtransmitter_singleencoder2_alt7_rd1 = 1'd0;
reg [5:0] gtxtransmitter_singleencoder2_output_6b;
wire gtxtransmitter_singleencoder2_disp_inter;
reg [3:0] gtxtransmitter_singleencoder2_output_4b;
wire [9:0] gtxtransmitter_singleencoder2_output_msb_first;
wire [7:0] gtxtransmitter_singleencoder3_d;
wire gtxtransmitter_singleencoder3_k;
wire gtxtransmitter_singleencoder3_disp_in;
reg [9:0] gtxtransmitter_singleencoder3_output;
reg gtxtransmitter_singleencoder3_disp_out;
reg [5:0] gtxtransmitter_singleencoder3_code6b = 6'd0;
reg gtxtransmitter_singleencoder3_code6b_unbalanced = 1'd0;
reg gtxtransmitter_singleencoder3_code6b_flip = 1'd0;
reg [3:0] gtxtransmitter_singleencoder3_code4b = 4'd0;
reg gtxtransmitter_singleencoder3_code4b_unbalanced = 1'd0;
reg gtxtransmitter_singleencoder3_code4b_flip = 1'd0;
reg gtxtransmitter_singleencoder3_alt7_rd0 = 1'd0;
reg gtxtransmitter_singleencoder3_alt7_rd1 = 1'd0;
reg [5:0] gtxtransmitter_singleencoder3_output_6b;
wire gtxtransmitter_singleencoder3_disp_inter;
reg [3:0] gtxtransmitter_singleencoder3_output_4b;
wire [9:0] gtxtransmitter_singleencoder3_output_msb_first;
wire [1:0] gtxtransmitter_config0;
wire [39:0] gtxtransmitter_i;
reg [39:0] gtxtransmitter_o;
wire [1:0] gtxtransmitter_config1;
reg [39:0] gtxtransmitter_prbs7_o = 40'd0;
reg [6:0] gtxtransmitter_prbs7_state = 7'd1;
reg [39:0] gtxtransmitter_prbs15_o = 40'd0;
reg [14:0] gtxtransmitter_prbs15_state = 15'd1;
reg [39:0] gtxtransmitter_prbs31_o = 40'd0;
reg [30:0] gtxtransmitter_prbs31_state = 31'd1;
reg [39:0] gtxtransmitter_prbs_data;
wire [39:0] gtxtransmitter_new_prbs_data;
wire core_enable;
wire core_jsync0;
wire core_jref;
wire core_ready0;
wire core_restart;
wire [3:0] core_prbs_config;
wire core_stpl_enable0;
wire core_jsync1;
reg [63:0] core_transport_sink_converter0;
reg [63:0] core_transport_source_lane0;
wire [15:0] core_transport_sample0;
wire [15:0] core_transport_sample1;
wire [3:0] core_transport_nibble0;
wire [3:0] core_transport_nibble1;
wire [3:0] core_transport_nibble2;
wire [3:0] core_transport_nibble3;
wire [3:0] core_transport_nibble4;
wire [3:0] core_transport_nibble5;
wire [3:0] core_transport_nibble6;
wire [3:0] core_transport_nibble7;
wire [7:0] core_transport_octet0;
wire [7:0] core_transport_octet1;
wire [7:0] core_transport_octet2;
wire [7:0] core_transport_octet3;
wire [15:0] core_transport_sample2;
wire [15:0] core_transport_sample3;
wire [3:0] core_transport_nibble8;
wire [3:0] core_transport_nibble9;
wire [3:0] core_transport_nibble10;
wire [3:0] core_transport_nibble11;
wire [3:0] core_transport_nibble12;
wire [3:0] core_transport_nibble13;
wire [3:0] core_transport_nibble14;
wire [3:0] core_transport_nibble15;
wire [7:0] core_transport_octet4;
wire [7:0] core_transport_octet5;
wire [7:0] core_transport_octet6;
wire [7:0] core_transport_octet7;
reg [63:0] core_source_converter0;
wire core_stpl_enable1;
wire core_link_reset0;
reg [35:0] core_ebuf_din;
wire [35:0] core_ebuf_dout;
wire core_ebuf_reset;
wire write_clk;
wire write_rst;
wire read_clk;
wire read_rst;
reg [1:0] core_ebuf_wrpointer = 2'd2;
reg [1:0] core_ebuf_rdpointer = 2'd0;
wire [1:0] core_ebuf_wrport_adr;
wire [35:0] core_ebuf_wrport_dat_r;
wire core_ebuf_wrport_we;
wire [35:0] core_ebuf_wrport_dat_w;
wire [1:0] core_ebuf_rdport_adr;
wire [35:0] core_ebuf_rdport_dat_r;
wire core_link_jsync0;
wire core_link_jref0;
reg core_link_ready;
wire [31:0] core_link_sink_sink_data;
reg [31:0] core_link_source_source_data;
reg [3:0] core_link_source_source_ctrl;
reg core_link_source_source_last;
reg [3:0] core_link_source_source_frame_last;
reg [3:0] core_link_source_source_multiframe_last;
reg [31:0] core_link_cgs_source_data;
reg [3:0] core_link_cgs_source_ctrl;
wire [31:0] core_link_ilas_source_data;
wire [3:0] core_link_ilas_source_ctrl;
wire core_link_ilas_source_last;
wire [5:0] core_link_ilas_data_port_adr;
wire [31:0] core_link_ilas_data_port_dat_r;
wire [5:0] core_link_ilas_ctrl_port_adr;
wire [3:0] core_link_ilas_ctrl_port_dat_r;
reg [6:0] core_link_ilas_counter = 7'd0;
reg core_link_ilas_reset;
wire [31:0] core_link_scrambler_sink_data;
wire [31:0] core_link_scrambler_source_data;
reg core_link_scrambler_valid = 1'd0;
reg [14:0] core_link_scrambler_state = 15'd32640;
wire [31:0] core_link_scrambler_feedback;
wire [46:0] core_link_scrambler_full;
wire [31:0] core_link_scrambler_swizzle_in;
reg [31:0] core_link_scrambler_swizzle_out = 32'd0;
reg core_link_scrambler_reset;
wire [31:0] core_link_framer_sink_data;
wire [31:0] core_link_framer_source_data;
reg [3:0] core_link_framer_source_ctrl = 4'd0;
reg core_link_framer_source_last = 1'd0;
wire [3:0] core_link_framer_source_frame_last;
reg [3:0] core_link_framer_source_multiframe_last;
reg [7:0] core_link_framer_counter = 8'd0;
reg core_link_framer_reset;
wire [31:0] core_link_inserter_sink_data;
wire [3:0] core_link_inserter_sink_ctrl;
wire core_link_inserter_sink_last;
wire [3:0] core_link_inserter_sink_frame_last;
wire [3:0] core_link_inserter_sink_multiframe_last;
wire [31:0] core_link_inserter_source_data;
reg [3:0] core_link_inserter_source_ctrl;
wire core_link_inserter_source_last;
wire [3:0] core_link_inserter_source_frame_last;
wire [3:0] core_link_inserter_source_multiframe_last;
reg core_link_jsync1 = 1'd0;
reg core_link_jref1 = 1'd0;
reg core_link_jref_d = 1'd0;
wire core_link_jref_rising;
wire core_link_reset1;
wire core_ready1;
reg jesd204bcoretxcontrol_enable_storage = 1'd0;
wire jesd204bcoretxcontrol_ready_status;
reg [3:0] jesd204bcoretxcontrol_prbs_config_storage = 4'd0;
reg jesd204bcoretxcontrol_stpl_enable_storage = 1'd0;
wire jesd204bcoretxcontrol_jsync_status;
reg jesd204bcoretxcontrol_restart_count_clear_re = 1'd0;
wire [7:0] jesd204bcoretxcontrol_restart_count_status;
wire jesd204bcoretxcontrol_restart;
reg jesd204bcoretxcontrol_restart_d = 1'd0;
reg [7:0] jesd204bcoretxcontrol_restart_count = 8'd0;
reg [2:0] jesd204bphytx_state = 3'd0;
reg [2:0] jesd204bphytx_next_state;
reg [1:0] clockdomainsrenamer_state = 2'd0;
reg [1:0] clockdomainsrenamer_next_state;
reg [5:0] array_muxed0;
reg array_muxed1;
reg array_muxed2;
reg [3:0] array_muxed3;
reg array_muxed4;
reg array_muxed5;
reg [5:0] array_muxed6;
reg array_muxed7;
reg array_muxed8;
reg [3:0] array_muxed9;
reg array_muxed10;
reg array_muxed11;
reg [5:0] array_muxed12;
reg array_muxed13;
reg array_muxed14;
reg [3:0] array_muxed15;
reg array_muxed16;
reg array_muxed17;
reg [5:0] array_muxed18;
reg array_muxed19;
reg array_muxed20;
reg [3:0] array_muxed21;
reg array_muxed22;
reg array_muxed23;
wire xilinxasyncresetsynchronizerimpl0_rst_meta;
(* async_reg = "true", mr_ff = "true", no_retiming = "true", no_shreg_extract = "true" *) reg xilinxmultiregimpl0_regs0 = 1'd0;
(* async_reg = "true", no_retiming = "true", no_shreg_extract = "true" *) reg xilinxmultiregimpl0_regs1 = 1'd0;
(* async_reg = "true", mr_ff = "true", no_retiming = "true", no_shreg_extract = "true" *) reg xilinxmultiregimpl1_regs0 = 1'd0;
(* async_reg = "true", no_retiming = "true", no_shreg_extract = "true" *) reg xilinxmultiregimpl1_regs1 = 1'd0;
(* async_reg = "true", mr_ff = "true", no_retiming = "true", no_shreg_extract = "true" *) reg xilinxmultiregimpl2_regs0 = 1'd0;
(* async_reg = "true", no_retiming = "true", no_shreg_extract = "true" *) reg xilinxmultiregimpl2_regs1 = 1'd0;
(* async_reg = "true", mr_ff = "true", no_retiming = "true", no_shreg_extract = "true" *) reg xilinxmultiregimpl3_regs0 = 1'd0;
(* async_reg = "true", no_retiming = "true", no_shreg_extract = "true" *) reg xilinxmultiregimpl3_regs1 = 1'd0;
wire xilinxasyncresetsynchronizerimpl1;
wire xilinxasyncresetsynchronizerimpl1_rst_meta;
(* async_reg = "true", mr_ff = "true", no_retiming = "true", no_shreg_extract = "true" *) reg [1:0] xilinxmultiregimpl4_regs0 = 2'd0;
(* async_reg = "true", no_retiming = "true", no_shreg_extract = "true" *) reg [1:0] xilinxmultiregimpl4_regs1 = 2'd0;
(* async_reg = "true", mr_ff = "true", no_retiming = "true", no_shreg_extract = "true" *) reg xilinxmultiregimpl5_regs0 = 1'd0;
(* async_reg = "true", no_retiming = "true", no_shreg_extract = "true" *) reg xilinxmultiregimpl5_regs1 = 1'd0;
(* async_reg = "true", mr_ff = "true", no_retiming = "true", no_shreg_extract = "true" *) reg xilinxmultiregimpl6_regs0 = 1'd0;
(* async_reg = "true", no_retiming = "true", no_shreg_extract = "true" *) reg xilinxmultiregimpl6_regs1 = 1'd0;
wire xilinxasyncresetsynchronizerimpl2_rst_meta;
wire xilinxasyncresetsynchronizerimpl3_rst_meta;
(* async_reg = "true", mr_ff = "true", no_retiming = "true", no_shreg_extract = "true" *) reg [3:0] xilinxmultiregimpl7_regs0 = 4'd0;
(* async_reg = "true", no_retiming = "true", no_shreg_extract = "true" *) reg [3:0] xilinxmultiregimpl7_regs1 = 4'd0;
(* async_reg = "true", mr_ff = "true", no_retiming = "true", no_shreg_extract = "true" *) reg xilinxmultiregimpl8_regs0 = 1'd0;
(* async_reg = "true", no_retiming = "true", no_shreg_extract = "true" *) reg xilinxmultiregimpl8_regs1 = 1'd0;
(* async_reg = "true", mr_ff = "true", no_retiming = "true", no_shreg_extract = "true" *) reg xilinxmultiregimpl9_regs0 = 1'd0;
(* async_reg = "true", no_retiming = "true", no_shreg_extract = "true" *) reg xilinxmultiregimpl9_regs1 = 1'd0;
(* async_reg = "true", mr_ff = "true", no_retiming = "true", no_shreg_extract = "true" *) reg xilinxmultiregimpl10_regs0 = 1'd0;
(* async_reg = "true", no_retiming = "true", no_shreg_extract = "true" *) reg xilinxmultiregimpl10_regs1 = 1'd0;

// synthesis translate_off
reg dummy_s;
initial dummy_s <= 1'd0;
// synthesis translate_on

assign core_restart = ((~core_enable) | (core_ready0 & (~core_jsync1)));

// synthesis translate_off
reg dummy_d;
// synthesis translate_on
always @(*) begin
	core_transport_sink_converter0 <= 64'd0;
	if (core_stpl_enable1) begin
		core_transport_sink_converter0 <= core_source_converter0;
	end else begin
		core_transport_sink_converter0 <= sink_converter0;
	end
// synthesis translate_off
	dummy_d <= dummy_s;
// synthesis translate_on
end
assign core_link_reset0 = (~gtxtransmitter_done);
assign core_link_reset1 = core_link_reset0;
assign core_link_jsync0 = core_jsync0;
assign core_link_jref0 = core_jref;
assign core_link_sink_sink_data = core_transport_source_lane0;

// synthesis translate_off
reg dummy_d_1;
// synthesis translate_on
always @(*) begin
	core_ebuf_din <= 36'd0;
	core_ebuf_din[31:0] <= core_link_source_source_data;
	core_ebuf_din[35:32] <= core_link_source_source_ctrl;
// synthesis translate_off
	dummy_d_1 <= dummy_s;
// synthesis translate_on
end
assign data = core_ebuf_dout[31:0];
assign ctrl = core_ebuf_dout[35:32];
assign gtxtransmitter_restart = (core_restart & (core_prbs_config == 1'd0));
assign core_ready1 = core_link_ready;
assign core_jsync0 = dac_sync;
assign core_jref = jref;
assign core_transport_sample0 = core_transport_sink_converter0[15:0];
assign core_transport_sample1 = core_transport_sink_converter0[31:16];
assign core_transport_nibble0 = core_transport_sample0[15:12];
assign core_transport_nibble1 = core_transport_sample0[11:8];
assign core_transport_nibble2 = core_transport_sample0[7:4];
assign core_transport_nibble3 = core_transport_sample0[3:0];
assign core_transport_nibble4 = core_transport_sample1[15:12];
assign core_transport_nibble5 = core_transport_sample1[11:8];
assign core_transport_nibble6 = core_transport_sample1[7:4];
assign core_transport_nibble7 = core_transport_sample1[3:0];
assign core_transport_octet0 = {core_transport_nibble0, core_transport_nibble1};
assign core_transport_octet1 = {core_transport_nibble2, core_transport_nibble3};
assign core_transport_octet2 = {core_transport_nibble4, core_transport_nibble5};
assign core_transport_octet3 = {core_transport_nibble6, core_transport_nibble7};
assign core_transport_sample2 = core_transport_sink_converter0[47:32];
assign core_transport_sample3 = core_transport_sink_converter0[63:48];
assign core_transport_nibble8 = core_transport_sample2[15:12];
assign core_transport_nibble9 = core_transport_sample2[11:8];
assign core_transport_nibble10 = core_transport_sample2[7:4];
assign core_transport_nibble11 = core_transport_sample2[3:0];
assign core_transport_nibble12 = core_transport_sample3[15:12];
assign core_transport_nibble13 = core_transport_sample3[11:8];
assign core_transport_nibble14 = core_transport_sample3[7:4];
assign core_transport_nibble15 = core_transport_sample3[3:0];
assign core_transport_octet4 = {core_transport_nibble8, core_transport_nibble9};
assign core_transport_octet5 = {core_transport_nibble10, core_transport_nibble11};
assign core_transport_octet6 = {core_transport_nibble12, core_transport_nibble13};
assign core_transport_octet7 = {core_transport_nibble14, core_transport_nibble15};

// synthesis translate_off
reg dummy_d_2;
// synthesis translate_on
always @(*) begin
	core_transport_source_lane0 <= 64'd0;
	core_transport_source_lane0[7:0] <= core_transport_octet0;
	core_transport_source_lane0[15:8] <= core_transport_octet1;
	core_transport_source_lane0[23:16] <= core_transport_octet2;
	core_transport_source_lane0[31:24] <= core_transport_octet3;
	core_transport_source_lane0[39:32] <= core_transport_octet4;
	core_transport_source_lane0[47:40] <= core_transport_octet5;
	core_transport_source_lane0[55:48] <= core_transport_octet6;
	core_transport_source_lane0[63:56] <= core_transport_octet7;
// synthesis translate_off
	dummy_d_2 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_3;
// synthesis translate_on
always @(*) begin
	core_source_converter0 <= 64'd0;
	core_source_converter0[15:0] <= 15'd22906;
	core_source_converter0[31:16] <= 16'd45811;
	core_source_converter0[47:32] <= 15'd22906;
	core_source_converter0[63:48] <= 16'd45811;
// synthesis translate_off
	dummy_d_3 <= dummy_s;
// synthesis translate_on
end
assign gtxtransmitter_d0 = data[7:0];
assign gtxtransmitter_k0 = ctrl[0];
assign gtxtransmitter_d1 = data[15:8];
assign gtxtransmitter_k1 = ctrl[1];
assign gtxtransmitter_d2 = data[23:16];
assign gtxtransmitter_k2 = ctrl[2];
assign gtxtransmitter_d3 = data[31:24];
assign gtxtransmitter_k3 = ctrl[3];
assign gtxtransmitter_plllock0 = gtxquadpll_lock;
assign gtxquadpll_reset = gtxtransmitter_pllreset;
assign gtxtransmitter_config0 = gtxtransmitter_prbs_config;
assign gtxtransmitter_i = {gtxtransmitter_output3, gtxtransmitter_output2, gtxtransmitter_output1, gtxtransmitter_output0};

// synthesis translate_off
reg dummy_d_4;
// synthesis translate_on
always @(*) begin
	gtxtransmitter_txdata <= 40'd0;
	if (gtxtransmitter_produce_square_wave_storage) begin
		gtxtransmitter_txdata <= 40'd1099510579200;
	end else begin
		gtxtransmitter_txdata <= gtxtransmitter_o;
	end
// synthesis translate_off
	dummy_d_4 <= dummy_s;
// synthesis translate_on
end
assign gtxtransmitter_ready_timer_wait = ((~gtxtransmitter_done) & (~gtxtransmitter_reset));
assign gtxtransmitter_reset = (gtxtransmitter_restart | gtxtransmitter_ready_timer_done);
assign gtxtransmitter_Xxphaligndone_rising = (gtxtransmitter_Xxphaligndone1 & (~gtxtransmitter_Xxphaligndone_r));
assign gtxtransmitter_startup_timer_done = (gtxtransmitter_startup_timer_count == 1'd0);

// synthesis translate_off
reg dummy_d_5;
// synthesis translate_on
always @(*) begin
	gtxtransmitter_done <= 1'd0;
	gtxtransmitter_pllreset <= 1'd0;
	gtxtransmitter_gtXxreset1 <= 1'd0;
	gtxtransmitter_Xxdlysreset1 <= 1'd0;
	gtxtransmitter_Xxuserrdy1 <= 1'd0;
	gtxtransmitter_startup_timer_wait <= 1'd0;
	jesd204bphytx_next_state <= 3'd0;
	jesd204bphytx_next_state <= jesd204bphytx_state;
	case (jesd204bphytx_state)
		1'd1: begin
			gtxtransmitter_gtXxreset1 <= 1'd1;
			gtxtransmitter_startup_timer_wait <= 1'd1;
			if ((gtxtransmitter_plllock1 & gtxtransmitter_startup_timer_done)) begin
				jesd204bphytx_next_state <= 2'd2;
			end
		end
		2'd2: begin
			gtxtransmitter_Xxuserrdy1 <= 1'd1;
			if (gtxtransmitter_Xxresetdone1) begin
				jesd204bphytx_next_state <= 2'd3;
			end
		end
		2'd3: begin
			gtxtransmitter_Xxuserrdy1 <= 1'd1;
			gtxtransmitter_Xxdlysreset1 <= 1'd1;
			jesd204bphytx_next_state <= 3'd4;
		end
		3'd4: begin
			gtxtransmitter_Xxuserrdy1 <= 1'd1;
			if (gtxtransmitter_Xxdlysresetdone1) begin
				jesd204bphytx_next_state <= 3'd5;
			end
		end
		3'd5: begin
			gtxtransmitter_Xxuserrdy1 <= 1'd1;
			if (gtxtransmitter_Xxphaligndone_rising) begin
				jesd204bphytx_next_state <= 3'd6;
			end
		end
		3'd6: begin
			gtxtransmitter_Xxuserrdy1 <= 1'd1;
			if (gtxtransmitter_Xxphaligndone_rising) begin
				jesd204bphytx_next_state <= 3'd7;
			end
		end
		3'd7: begin
			gtxtransmitter_Xxuserrdy1 <= 1'd1;
			gtxtransmitter_done <= 1'd1;
		end
		default: begin
			gtxtransmitter_gtXxreset1 <= 1'd1;
			gtxtransmitter_pllreset <= 1'd1;
			gtxtransmitter_startup_timer_wait <= 1'd1;
			jesd204bphytx_next_state <= 1'd1;
		end
	endcase
// synthesis translate_off
	dummy_d_5 <= dummy_s;
// synthesis translate_on
end
assign gtxtransmitter_ready_timer_done = (gtxtransmitter_ready_timer_count == 1'd0);
assign gtxtransmitter_singleencoder1_disp_in = gtxtransmitter_singleencoder0_disp_out;
assign gtxtransmitter_singleencoder2_disp_in = gtxtransmitter_singleencoder1_disp_out;
assign gtxtransmitter_singleencoder3_disp_in = gtxtransmitter_singleencoder2_disp_out;
assign gtxtransmitter_singleencoder0_d = gtxtransmitter_d0;
assign gtxtransmitter_singleencoder0_k = gtxtransmitter_k0;
assign gtxtransmitter_singleencoder1_d = gtxtransmitter_d1;
assign gtxtransmitter_singleencoder1_k = gtxtransmitter_k1;
assign gtxtransmitter_singleencoder2_d = gtxtransmitter_d2;
assign gtxtransmitter_singleencoder2_k = gtxtransmitter_k2;
assign gtxtransmitter_singleencoder3_d = gtxtransmitter_d3;
assign gtxtransmitter_singleencoder3_k = gtxtransmitter_k3;
assign gtxtransmitter_singleencoder0_disp_inter = (gtxtransmitter_singleencoder0_disp_in ^ gtxtransmitter_singleencoder0_code6b_unbalanced);

// synthesis translate_off
reg dummy_d_6;
// synthesis translate_on
always @(*) begin
	gtxtransmitter_singleencoder0_output_6b <= 6'd0;
	if (((~gtxtransmitter_singleencoder0_disp_in) & gtxtransmitter_singleencoder0_code6b_flip)) begin
		gtxtransmitter_singleencoder0_output_6b <= (~gtxtransmitter_singleencoder0_code6b);
	end else begin
		gtxtransmitter_singleencoder0_output_6b <= gtxtransmitter_singleencoder0_code6b;
	end
// synthesis translate_off
	dummy_d_6 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_7;
// synthesis translate_on
always @(*) begin
	gtxtransmitter_singleencoder0_disp_out <= 1'd0;
	gtxtransmitter_singleencoder0_output_4b <= 4'd0;
	if (((~gtxtransmitter_singleencoder0_disp_inter) & gtxtransmitter_singleencoder0_alt7_rd0)) begin
		gtxtransmitter_singleencoder0_disp_out <= (~gtxtransmitter_singleencoder0_disp_inter);
		gtxtransmitter_singleencoder0_output_4b <= 3'd7;
	end else begin
		if ((gtxtransmitter_singleencoder0_disp_inter & gtxtransmitter_singleencoder0_alt7_rd1)) begin
			gtxtransmitter_singleencoder0_disp_out <= (~gtxtransmitter_singleencoder0_disp_inter);
			gtxtransmitter_singleencoder0_output_4b <= 4'd8;
		end else begin
			gtxtransmitter_singleencoder0_disp_out <= (gtxtransmitter_singleencoder0_disp_inter ^ gtxtransmitter_singleencoder0_code4b_unbalanced);
			if (((~gtxtransmitter_singleencoder0_disp_inter) & gtxtransmitter_singleencoder0_code4b_flip)) begin
				gtxtransmitter_singleencoder0_output_4b <= (~gtxtransmitter_singleencoder0_code4b);
			end else begin
				gtxtransmitter_singleencoder0_output_4b <= gtxtransmitter_singleencoder0_code4b;
			end
		end
	end
// synthesis translate_off
	dummy_d_7 <= dummy_s;
// synthesis translate_on
end
assign gtxtransmitter_singleencoder0_output_msb_first = {gtxtransmitter_singleencoder0_output_6b, gtxtransmitter_singleencoder0_output_4b};

// synthesis translate_off
reg dummy_d_8;
// synthesis translate_on
always @(*) begin
	gtxtransmitter_singleencoder0_output <= 10'd0;
	gtxtransmitter_singleencoder0_output[0] <= gtxtransmitter_singleencoder0_output_msb_first[9];
	gtxtransmitter_singleencoder0_output[1] <= gtxtransmitter_singleencoder0_output_msb_first[8];
	gtxtransmitter_singleencoder0_output[2] <= gtxtransmitter_singleencoder0_output_msb_first[7];
	gtxtransmitter_singleencoder0_output[3] <= gtxtransmitter_singleencoder0_output_msb_first[6];
	gtxtransmitter_singleencoder0_output[4] <= gtxtransmitter_singleencoder0_output_msb_first[5];
	gtxtransmitter_singleencoder0_output[5] <= gtxtransmitter_singleencoder0_output_msb_first[4];
	gtxtransmitter_singleencoder0_output[6] <= gtxtransmitter_singleencoder0_output_msb_first[3];
	gtxtransmitter_singleencoder0_output[7] <= gtxtransmitter_singleencoder0_output_msb_first[2];
	gtxtransmitter_singleencoder0_output[8] <= gtxtransmitter_singleencoder0_output_msb_first[1];
	gtxtransmitter_singleencoder0_output[9] <= gtxtransmitter_singleencoder0_output_msb_first[0];
// synthesis translate_off
	dummy_d_8 <= dummy_s;
// synthesis translate_on
end
assign gtxtransmitter_singleencoder1_disp_inter = (gtxtransmitter_singleencoder1_disp_in ^ gtxtransmitter_singleencoder1_code6b_unbalanced);

// synthesis translate_off
reg dummy_d_9;
// synthesis translate_on
always @(*) begin
	gtxtransmitter_singleencoder1_output_6b <= 6'd0;
	if (((~gtxtransmitter_singleencoder1_disp_in) & gtxtransmitter_singleencoder1_code6b_flip)) begin
		gtxtransmitter_singleencoder1_output_6b <= (~gtxtransmitter_singleencoder1_code6b);
	end else begin
		gtxtransmitter_singleencoder1_output_6b <= gtxtransmitter_singleencoder1_code6b;
	end
// synthesis translate_off
	dummy_d_9 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_10;
// synthesis translate_on
always @(*) begin
	gtxtransmitter_singleencoder1_disp_out <= 1'd0;
	gtxtransmitter_singleencoder1_output_4b <= 4'd0;
	if (((~gtxtransmitter_singleencoder1_disp_inter) & gtxtransmitter_singleencoder1_alt7_rd0)) begin
		gtxtransmitter_singleencoder1_disp_out <= (~gtxtransmitter_singleencoder1_disp_inter);
		gtxtransmitter_singleencoder1_output_4b <= 3'd7;
	end else begin
		if ((gtxtransmitter_singleencoder1_disp_inter & gtxtransmitter_singleencoder1_alt7_rd1)) begin
			gtxtransmitter_singleencoder1_disp_out <= (~gtxtransmitter_singleencoder1_disp_inter);
			gtxtransmitter_singleencoder1_output_4b <= 4'd8;
		end else begin
			gtxtransmitter_singleencoder1_disp_out <= (gtxtransmitter_singleencoder1_disp_inter ^ gtxtransmitter_singleencoder1_code4b_unbalanced);
			if (((~gtxtransmitter_singleencoder1_disp_inter) & gtxtransmitter_singleencoder1_code4b_flip)) begin
				gtxtransmitter_singleencoder1_output_4b <= (~gtxtransmitter_singleencoder1_code4b);
			end else begin
				gtxtransmitter_singleencoder1_output_4b <= gtxtransmitter_singleencoder1_code4b;
			end
		end
	end
// synthesis translate_off
	dummy_d_10 <= dummy_s;
// synthesis translate_on
end
assign gtxtransmitter_singleencoder1_output_msb_first = {gtxtransmitter_singleencoder1_output_6b, gtxtransmitter_singleencoder1_output_4b};

// synthesis translate_off
reg dummy_d_11;
// synthesis translate_on
always @(*) begin
	gtxtransmitter_singleencoder1_output <= 10'd0;
	gtxtransmitter_singleencoder1_output[0] <= gtxtransmitter_singleencoder1_output_msb_first[9];
	gtxtransmitter_singleencoder1_output[1] <= gtxtransmitter_singleencoder1_output_msb_first[8];
	gtxtransmitter_singleencoder1_output[2] <= gtxtransmitter_singleencoder1_output_msb_first[7];
	gtxtransmitter_singleencoder1_output[3] <= gtxtransmitter_singleencoder1_output_msb_first[6];
	gtxtransmitter_singleencoder1_output[4] <= gtxtransmitter_singleencoder1_output_msb_first[5];
	gtxtransmitter_singleencoder1_output[5] <= gtxtransmitter_singleencoder1_output_msb_first[4];
	gtxtransmitter_singleencoder1_output[6] <= gtxtransmitter_singleencoder1_output_msb_first[3];
	gtxtransmitter_singleencoder1_output[7] <= gtxtransmitter_singleencoder1_output_msb_first[2];
	gtxtransmitter_singleencoder1_output[8] <= gtxtransmitter_singleencoder1_output_msb_first[1];
	gtxtransmitter_singleencoder1_output[9] <= gtxtransmitter_singleencoder1_output_msb_first[0];
// synthesis translate_off
	dummy_d_11 <= dummy_s;
// synthesis translate_on
end
assign gtxtransmitter_singleencoder2_disp_inter = (gtxtransmitter_singleencoder2_disp_in ^ gtxtransmitter_singleencoder2_code6b_unbalanced);

// synthesis translate_off
reg dummy_d_12;
// synthesis translate_on
always @(*) begin
	gtxtransmitter_singleencoder2_output_6b <= 6'd0;
	if (((~gtxtransmitter_singleencoder2_disp_in) & gtxtransmitter_singleencoder2_code6b_flip)) begin
		gtxtransmitter_singleencoder2_output_6b <= (~gtxtransmitter_singleencoder2_code6b);
	end else begin
		gtxtransmitter_singleencoder2_output_6b <= gtxtransmitter_singleencoder2_code6b;
	end
// synthesis translate_off
	dummy_d_12 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_13;
// synthesis translate_on
always @(*) begin
	gtxtransmitter_singleencoder2_disp_out <= 1'd0;
	gtxtransmitter_singleencoder2_output_4b <= 4'd0;
	if (((~gtxtransmitter_singleencoder2_disp_inter) & gtxtransmitter_singleencoder2_alt7_rd0)) begin
		gtxtransmitter_singleencoder2_disp_out <= (~gtxtransmitter_singleencoder2_disp_inter);
		gtxtransmitter_singleencoder2_output_4b <= 3'd7;
	end else begin
		if ((gtxtransmitter_singleencoder2_disp_inter & gtxtransmitter_singleencoder2_alt7_rd1)) begin
			gtxtransmitter_singleencoder2_disp_out <= (~gtxtransmitter_singleencoder2_disp_inter);
			gtxtransmitter_singleencoder2_output_4b <= 4'd8;
		end else begin
			gtxtransmitter_singleencoder2_disp_out <= (gtxtransmitter_singleencoder2_disp_inter ^ gtxtransmitter_singleencoder2_code4b_unbalanced);
			if (((~gtxtransmitter_singleencoder2_disp_inter) & gtxtransmitter_singleencoder2_code4b_flip)) begin
				gtxtransmitter_singleencoder2_output_4b <= (~gtxtransmitter_singleencoder2_code4b);
			end else begin
				gtxtransmitter_singleencoder2_output_4b <= gtxtransmitter_singleencoder2_code4b;
			end
		end
	end
// synthesis translate_off
	dummy_d_13 <= dummy_s;
// synthesis translate_on
end
assign gtxtransmitter_singleencoder2_output_msb_first = {gtxtransmitter_singleencoder2_output_6b, gtxtransmitter_singleencoder2_output_4b};

// synthesis translate_off
reg dummy_d_14;
// synthesis translate_on
always @(*) begin
	gtxtransmitter_singleencoder2_output <= 10'd0;
	gtxtransmitter_singleencoder2_output[0] <= gtxtransmitter_singleencoder2_output_msb_first[9];
	gtxtransmitter_singleencoder2_output[1] <= gtxtransmitter_singleencoder2_output_msb_first[8];
	gtxtransmitter_singleencoder2_output[2] <= gtxtransmitter_singleencoder2_output_msb_first[7];
	gtxtransmitter_singleencoder2_output[3] <= gtxtransmitter_singleencoder2_output_msb_first[6];
	gtxtransmitter_singleencoder2_output[4] <= gtxtransmitter_singleencoder2_output_msb_first[5];
	gtxtransmitter_singleencoder2_output[5] <= gtxtransmitter_singleencoder2_output_msb_first[4];
	gtxtransmitter_singleencoder2_output[6] <= gtxtransmitter_singleencoder2_output_msb_first[3];
	gtxtransmitter_singleencoder2_output[7] <= gtxtransmitter_singleencoder2_output_msb_first[2];
	gtxtransmitter_singleencoder2_output[8] <= gtxtransmitter_singleencoder2_output_msb_first[1];
	gtxtransmitter_singleencoder2_output[9] <= gtxtransmitter_singleencoder2_output_msb_first[0];
// synthesis translate_off
	dummy_d_14 <= dummy_s;
// synthesis translate_on
end
assign gtxtransmitter_singleencoder3_disp_inter = (gtxtransmitter_singleencoder3_disp_in ^ gtxtransmitter_singleencoder3_code6b_unbalanced);

// synthesis translate_off
reg dummy_d_15;
// synthesis translate_on
always @(*) begin
	gtxtransmitter_singleencoder3_output_6b <= 6'd0;
	if (((~gtxtransmitter_singleencoder3_disp_in) & gtxtransmitter_singleencoder3_code6b_flip)) begin
		gtxtransmitter_singleencoder3_output_6b <= (~gtxtransmitter_singleencoder3_code6b);
	end else begin
		gtxtransmitter_singleencoder3_output_6b <= gtxtransmitter_singleencoder3_code6b;
	end
// synthesis translate_off
	dummy_d_15 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_16;
// synthesis translate_on
always @(*) begin
	gtxtransmitter_singleencoder3_disp_out <= 1'd0;
	gtxtransmitter_singleencoder3_output_4b <= 4'd0;
	if (((~gtxtransmitter_singleencoder3_disp_inter) & gtxtransmitter_singleencoder3_alt7_rd0)) begin
		gtxtransmitter_singleencoder3_disp_out <= (~gtxtransmitter_singleencoder3_disp_inter);
		gtxtransmitter_singleencoder3_output_4b <= 3'd7;
	end else begin
		if ((gtxtransmitter_singleencoder3_disp_inter & gtxtransmitter_singleencoder3_alt7_rd1)) begin
			gtxtransmitter_singleencoder3_disp_out <= (~gtxtransmitter_singleencoder3_disp_inter);
			gtxtransmitter_singleencoder3_output_4b <= 4'd8;
		end else begin
			gtxtransmitter_singleencoder3_disp_out <= (gtxtransmitter_singleencoder3_disp_inter ^ gtxtransmitter_singleencoder3_code4b_unbalanced);
			if (((~gtxtransmitter_singleencoder3_disp_inter) & gtxtransmitter_singleencoder3_code4b_flip)) begin
				gtxtransmitter_singleencoder3_output_4b <= (~gtxtransmitter_singleencoder3_code4b);
			end else begin
				gtxtransmitter_singleencoder3_output_4b <= gtxtransmitter_singleencoder3_code4b;
			end
		end
	end
// synthesis translate_off
	dummy_d_16 <= dummy_s;
// synthesis translate_on
end
assign gtxtransmitter_singleencoder3_output_msb_first = {gtxtransmitter_singleencoder3_output_6b, gtxtransmitter_singleencoder3_output_4b};

// synthesis translate_off
reg dummy_d_17;
// synthesis translate_on
always @(*) begin
	gtxtransmitter_singleencoder3_output <= 10'd0;
	gtxtransmitter_singleencoder3_output[0] <= gtxtransmitter_singleencoder3_output_msb_first[9];
	gtxtransmitter_singleencoder3_output[1] <= gtxtransmitter_singleencoder3_output_msb_first[8];
	gtxtransmitter_singleencoder3_output[2] <= gtxtransmitter_singleencoder3_output_msb_first[7];
	gtxtransmitter_singleencoder3_output[3] <= gtxtransmitter_singleencoder3_output_msb_first[6];
	gtxtransmitter_singleencoder3_output[4] <= gtxtransmitter_singleencoder3_output_msb_first[5];
	gtxtransmitter_singleencoder3_output[5] <= gtxtransmitter_singleencoder3_output_msb_first[4];
	gtxtransmitter_singleencoder3_output[6] <= gtxtransmitter_singleencoder3_output_msb_first[3];
	gtxtransmitter_singleencoder3_output[7] <= gtxtransmitter_singleencoder3_output_msb_first[2];
	gtxtransmitter_singleencoder3_output[8] <= gtxtransmitter_singleencoder3_output_msb_first[1];
	gtxtransmitter_singleencoder3_output[9] <= gtxtransmitter_singleencoder3_output_msb_first[0];
// synthesis translate_off
	dummy_d_17 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_18;
// synthesis translate_on
always @(*) begin
	gtxtransmitter_prbs_data <= 40'd0;
	if ((gtxtransmitter_config1 == 2'd3)) begin
		gtxtransmitter_prbs_data <= gtxtransmitter_prbs31_o;
	end else begin
		if ((gtxtransmitter_config1 == 2'd2)) begin
			gtxtransmitter_prbs_data <= gtxtransmitter_prbs15_o;
		end else begin
			gtxtransmitter_prbs_data <= gtxtransmitter_prbs7_o;
		end
	end
// synthesis translate_off
	dummy_d_18 <= dummy_s;
// synthesis translate_on
end
assign gtxtransmitter_new_prbs_data = {gtxtransmitter_prbs_data[0], gtxtransmitter_prbs_data[1], gtxtransmitter_prbs_data[2], gtxtransmitter_prbs_data[3], gtxtransmitter_prbs_data[4], gtxtransmitter_prbs_data[5], gtxtransmitter_prbs_data[6], gtxtransmitter_prbs_data[7], gtxtransmitter_prbs_data[8], gtxtransmitter_prbs_data[9], gtxtransmitter_prbs_data[10], gtxtransmitter_prbs_data[11], gtxtransmitter_prbs_data[12], gtxtransmitter_prbs_data[13], gtxtransmitter_prbs_data[14], gtxtransmitter_prbs_data[15], gtxtransmitter_prbs_data[16], gtxtransmitter_prbs_data[17], gtxtransmitter_prbs_data[18], gtxtransmitter_prbs_data[19], gtxtransmitter_prbs_data[20], gtxtransmitter_prbs_data[21], gtxtransmitter_prbs_data[22], gtxtransmitter_prbs_data[23], gtxtransmitter_prbs_data[24], gtxtransmitter_prbs_data[25], gtxtransmitter_prbs_data[26], gtxtransmitter_prbs_data[27], gtxtransmitter_prbs_data[28], gtxtransmitter_prbs_data[29], gtxtransmitter_prbs_data[30], gtxtransmitter_prbs_data[31], gtxtransmitter_prbs_data[32], gtxtransmitter_prbs_data[33], gtxtransmitter_prbs_data[34], gtxtransmitter_prbs_data[35], gtxtransmitter_prbs_data[36], gtxtransmitter_prbs_data[37], gtxtransmitter_prbs_data[38], gtxtransmitter_prbs_data[39]};

// synthesis translate_off
reg dummy_d_19;
// synthesis translate_on
always @(*) begin
	gtxtransmitter_o <= 40'd0;
	if ((gtxtransmitter_config1 == 1'd0)) begin
		gtxtransmitter_o <= gtxtransmitter_i;
	end else begin
		gtxtransmitter_o <= gtxtransmitter_new_prbs_data;
	end
// synthesis translate_off
	dummy_d_19 <= dummy_s;
// synthesis translate_on
end
assign write_clk = jesd_clk;
assign read_clk = phy0_tx_clk;
assign core_ebuf_reset = (jesd_rst | phy0_tx_rst);
assign core_ebuf_wrport_we = 1'd1;
assign core_ebuf_wrport_adr = core_ebuf_wrpointer;
assign core_ebuf_wrport_dat_w = core_ebuf_din;
assign core_ebuf_rdport_adr = core_ebuf_rdpointer;
assign core_ebuf_dout = core_ebuf_rdport_dat_r;
assign core_link_scrambler_sink_data = core_link_sink_sink_data;
assign core_link_framer_sink_data = core_link_scrambler_source_data;
assign core_link_inserter_sink_data = core_link_framer_source_data;
assign core_link_inserter_sink_ctrl = core_link_framer_source_ctrl;
assign core_link_inserter_sink_last = core_link_framer_source_last;
assign core_link_inserter_sink_frame_last = core_link_framer_source_frame_last;
assign core_link_inserter_sink_multiframe_last = core_link_framer_source_multiframe_last;
assign core_link_jref_rising = (core_link_jref1 & (~core_link_jref_d));

// synthesis translate_off
reg dummy_d_20;
// synthesis translate_on
always @(*) begin
	core_link_cgs_source_data <= 32'd0;
	core_link_cgs_source_data[7:0] <= 8'd188;
	core_link_cgs_source_data[15:8] <= 8'd188;
	core_link_cgs_source_data[23:16] <= 8'd188;
	core_link_cgs_source_data[31:24] <= 8'd188;
// synthesis translate_off
	dummy_d_20 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_21;
// synthesis translate_on
always @(*) begin
	core_link_cgs_source_ctrl <= 4'd0;
	core_link_cgs_source_ctrl[0] <= 1'd1;
	core_link_cgs_source_ctrl[1] <= 1'd1;
	core_link_cgs_source_ctrl[2] <= 1'd1;
	core_link_cgs_source_ctrl[3] <= 1'd1;
// synthesis translate_off
	dummy_d_21 <= dummy_s;
// synthesis translate_on
end
assign core_link_ilas_source_last = (core_link_ilas_counter == 6'd63);
assign core_link_ilas_data_port_adr = core_link_ilas_counter;
assign core_link_ilas_ctrl_port_adr = core_link_ilas_counter;
assign core_link_ilas_source_data = core_link_ilas_data_port_dat_r;
assign core_link_ilas_source_ctrl = core_link_ilas_ctrl_port_dat_r;
assign core_link_scrambler_swizzle_in = {core_link_scrambler_sink_data[7:0], core_link_scrambler_sink_data[15:8], core_link_scrambler_sink_data[23:16], core_link_scrambler_sink_data[31:24]};
assign core_link_scrambler_source_data = {core_link_scrambler_swizzle_out[7:0], core_link_scrambler_swizzle_out[15:8], core_link_scrambler_swizzle_out[23:16], core_link_scrambler_swizzle_out[31:24]};
assign core_link_scrambler_full = {core_link_scrambler_state, core_link_scrambler_feedback};
assign core_link_scrambler_feedback = ((core_link_scrambler_full[46:15] ^ core_link_scrambler_full[45:14]) ^ core_link_scrambler_swizzle_in);
assign core_link_framer_source_data = core_link_framer_sink_data;
assign core_link_framer_source_frame_last = 4'd8;

// synthesis translate_off
reg dummy_d_22;
// synthesis translate_on
always @(*) begin
	core_link_framer_source_multiframe_last <= 4'd0;
	if ((core_link_framer_counter == 4'd15)) begin
		core_link_framer_source_multiframe_last <= 4'd8;
	end
// synthesis translate_off
	dummy_d_22 <= dummy_s;
// synthesis translate_on
end
assign core_link_inserter_source_data = core_link_inserter_sink_data;
assign core_link_inserter_source_last = core_link_inserter_sink_last;
assign core_link_inserter_source_frame_last = core_link_inserter_sink_frame_last;
assign core_link_inserter_source_multiframe_last = core_link_inserter_sink_multiframe_last;

// synthesis translate_off
reg dummy_d_23;
// synthesis translate_on
always @(*) begin
	core_link_inserter_source_ctrl <= 4'd0;
	core_link_inserter_source_ctrl <= core_link_inserter_sink_ctrl;
	if ((core_link_inserter_sink_data[7:0] == 7'd124)) begin
		if (core_link_inserter_sink_multiframe_last[0]) begin
			core_link_inserter_source_ctrl[0] <= 1'd1;
		end
	end else begin
		if ((core_link_inserter_sink_data[7:0] == 8'd252)) begin
			if ((core_link_inserter_sink_frame_last[0] & (~core_link_inserter_sink_multiframe_last[0]))) begin
				core_link_inserter_source_ctrl[0] <= 1'd1;
			end
		end
	end
	if ((core_link_inserter_sink_data[15:8] == 7'd124)) begin
		if (core_link_inserter_sink_multiframe_last[1]) begin
			core_link_inserter_source_ctrl[1] <= 1'd1;
		end
	end else begin
		if ((core_link_inserter_sink_data[15:8] == 8'd252)) begin
			if ((core_link_inserter_sink_frame_last[1] & (~core_link_inserter_sink_multiframe_last[1]))) begin
				core_link_inserter_source_ctrl[1] <= 1'd1;
			end
		end
	end
	if ((core_link_inserter_sink_data[23:16] == 7'd124)) begin
		if (core_link_inserter_sink_multiframe_last[2]) begin
			core_link_inserter_source_ctrl[2] <= 1'd1;
		end
	end else begin
		if ((core_link_inserter_sink_data[23:16] == 8'd252)) begin
			if ((core_link_inserter_sink_frame_last[2] & (~core_link_inserter_sink_multiframe_last[2]))) begin
				core_link_inserter_source_ctrl[2] <= 1'd1;
			end
		end
	end
	if ((core_link_inserter_sink_data[31:24] == 7'd124)) begin
		if (core_link_inserter_sink_multiframe_last[3]) begin
			core_link_inserter_source_ctrl[3] <= 1'd1;
		end
	end else begin
		if ((core_link_inserter_sink_data[31:24] == 8'd252)) begin
			if ((core_link_inserter_sink_frame_last[3] & (~core_link_inserter_sink_multiframe_last[3]))) begin
				core_link_inserter_source_ctrl[3] <= 1'd1;
			end
		end
	end
// synthesis translate_off
	dummy_d_23 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_24;
// synthesis translate_on
always @(*) begin
	core_link_ready <= 1'd0;
	core_link_source_source_data <= 32'd0;
	core_link_source_source_ctrl <= 4'd0;
	core_link_source_source_last <= 1'd0;
	core_link_source_source_frame_last <= 4'd0;
	core_link_source_source_multiframe_last <= 4'd0;
	core_link_ilas_reset <= 1'd0;
	core_link_scrambler_reset <= 1'd0;
	core_link_framer_reset <= 1'd0;
	clockdomainsrenamer_next_state <= 2'd0;
	clockdomainsrenamer_next_state <= clockdomainsrenamer_state;
	case (clockdomainsrenamer_state)
		1'd1: begin
			core_link_framer_reset <= 1'd1;
			core_link_source_source_data <= core_link_ilas_source_data;
			core_link_source_source_ctrl <= core_link_ilas_source_ctrl;
			if (core_link_ilas_source_last) begin
				clockdomainsrenamer_next_state <= 2'd2;
			end
		end
		2'd2: begin
			core_link_ilas_reset <= 1'd1;
			core_link_ready <= 1'd1;
			core_link_source_source_data <= core_link_inserter_source_data;
			core_link_source_source_ctrl <= core_link_inserter_source_ctrl;
			core_link_source_source_last <= core_link_inserter_source_last;
			core_link_source_source_frame_last <= core_link_inserter_source_frame_last;
			core_link_source_source_multiframe_last <= core_link_inserter_source_multiframe_last;
		end
		default: begin
			core_link_ilas_reset <= 1'd1;
			core_link_scrambler_reset <= 1'd1;
			core_link_framer_reset <= 1'd1;
			core_link_source_source_data <= core_link_cgs_source_data;
			core_link_source_source_ctrl <= core_link_cgs_source_ctrl;
			if ((core_link_jsync1 & core_link_jref_rising)) begin
				clockdomainsrenamer_next_state <= 1'd1;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_24 <= dummy_s;
// synthesis translate_on
end
assign core_enable = jesd204bcoretxcontrol_enable_storage;
assign core_prbs_config = jesd204bcoretxcontrol_prbs_config_storage;
assign core_stpl_enable0 = jesd204bcoretxcontrol_stpl_enable_storage;
assign jesd204bcoretxcontrol_ready_status = core_ready0;
assign jesd204bcoretxcontrol_restart_count_status = jesd204bcoretxcontrol_restart_count;

// synthesis translate_off
reg dummy_d_25;
// synthesis translate_on
always @(*) begin
	array_muxed0 <= 6'd0;
	case (gtxtransmitter_singleencoder0_d[4:0])
		1'd0: begin
			array_muxed0 <= 5'd24;
		end
		1'd1: begin
			array_muxed0 <= 6'd34;
		end
		2'd2: begin
			array_muxed0 <= 5'd18;
		end
		2'd3: begin
			array_muxed0 <= 6'd49;
		end
		3'd4: begin
			array_muxed0 <= 4'd10;
		end
		3'd5: begin
			array_muxed0 <= 6'd41;
		end
		3'd6: begin
			array_muxed0 <= 5'd25;
		end
		3'd7: begin
			array_muxed0 <= 3'd7;
		end
		4'd8: begin
			array_muxed0 <= 3'd6;
		end
		4'd9: begin
			array_muxed0 <= 6'd37;
		end
		4'd10: begin
			array_muxed0 <= 5'd21;
		end
		4'd11: begin
			array_muxed0 <= 6'd52;
		end
		4'd12: begin
			array_muxed0 <= 4'd13;
		end
		4'd13: begin
			array_muxed0 <= 6'd44;
		end
		4'd14: begin
			array_muxed0 <= 5'd28;
		end
		4'd15: begin
			array_muxed0 <= 6'd40;
		end
		5'd16: begin
			array_muxed0 <= 6'd36;
		end
		5'd17: begin
			array_muxed0 <= 6'd35;
		end
		5'd18: begin
			array_muxed0 <= 5'd19;
		end
		5'd19: begin
			array_muxed0 <= 6'd50;
		end
		5'd20: begin
			array_muxed0 <= 4'd11;
		end
		5'd21: begin
			array_muxed0 <= 6'd42;
		end
		5'd22: begin
			array_muxed0 <= 5'd26;
		end
		5'd23: begin
			array_muxed0 <= 3'd5;
		end
		5'd24: begin
			array_muxed0 <= 4'd12;
		end
		5'd25: begin
			array_muxed0 <= 6'd38;
		end
		5'd26: begin
			array_muxed0 <= 5'd22;
		end
		5'd27: begin
			array_muxed0 <= 4'd9;
		end
		5'd28: begin
			array_muxed0 <= 4'd14;
		end
		5'd29: begin
			array_muxed0 <= 5'd17;
		end
		5'd30: begin
			array_muxed0 <= 6'd33;
		end
		default: begin
			array_muxed0 <= 5'd20;
		end
	endcase
// synthesis translate_off
	dummy_d_25 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_26;
// synthesis translate_on
always @(*) begin
	array_muxed1 <= 1'd0;
	case (gtxtransmitter_singleencoder0_d[4:0])
		1'd0: begin
			array_muxed1 <= 1'd1;
		end
		1'd1: begin
			array_muxed1 <= 1'd1;
		end
		2'd2: begin
			array_muxed1 <= 1'd1;
		end
		2'd3: begin
			array_muxed1 <= 1'd0;
		end
		3'd4: begin
			array_muxed1 <= 1'd1;
		end
		3'd5: begin
			array_muxed1 <= 1'd0;
		end
		3'd6: begin
			array_muxed1 <= 1'd0;
		end
		3'd7: begin
			array_muxed1 <= 1'd0;
		end
		4'd8: begin
			array_muxed1 <= 1'd1;
		end
		4'd9: begin
			array_muxed1 <= 1'd0;
		end
		4'd10: begin
			array_muxed1 <= 1'd0;
		end
		4'd11: begin
			array_muxed1 <= 1'd0;
		end
		4'd12: begin
			array_muxed1 <= 1'd0;
		end
		4'd13: begin
			array_muxed1 <= 1'd0;
		end
		4'd14: begin
			array_muxed1 <= 1'd0;
		end
		4'd15: begin
			array_muxed1 <= 1'd1;
		end
		5'd16: begin
			array_muxed1 <= 1'd1;
		end
		5'd17: begin
			array_muxed1 <= 1'd0;
		end
		5'd18: begin
			array_muxed1 <= 1'd0;
		end
		5'd19: begin
			array_muxed1 <= 1'd0;
		end
		5'd20: begin
			array_muxed1 <= 1'd0;
		end
		5'd21: begin
			array_muxed1 <= 1'd0;
		end
		5'd22: begin
			array_muxed1 <= 1'd0;
		end
		5'd23: begin
			array_muxed1 <= 1'd1;
		end
		5'd24: begin
			array_muxed1 <= 1'd1;
		end
		5'd25: begin
			array_muxed1 <= 1'd0;
		end
		5'd26: begin
			array_muxed1 <= 1'd0;
		end
		5'd27: begin
			array_muxed1 <= 1'd1;
		end
		5'd28: begin
			array_muxed1 <= 1'd0;
		end
		5'd29: begin
			array_muxed1 <= 1'd1;
		end
		5'd30: begin
			array_muxed1 <= 1'd1;
		end
		default: begin
			array_muxed1 <= 1'd1;
		end
	endcase
// synthesis translate_off
	dummy_d_26 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_27;
// synthesis translate_on
always @(*) begin
	array_muxed2 <= 1'd0;
	case (gtxtransmitter_singleencoder0_d[4:0])
		1'd0: begin
			array_muxed2 <= 1'd1;
		end
		1'd1: begin
			array_muxed2 <= 1'd1;
		end
		2'd2: begin
			array_muxed2 <= 1'd1;
		end
		2'd3: begin
			array_muxed2 <= 1'd0;
		end
		3'd4: begin
			array_muxed2 <= 1'd1;
		end
		3'd5: begin
			array_muxed2 <= 1'd0;
		end
		3'd6: begin
			array_muxed2 <= 1'd0;
		end
		3'd7: begin
			array_muxed2 <= 1'd1;
		end
		4'd8: begin
			array_muxed2 <= 1'd1;
		end
		4'd9: begin
			array_muxed2 <= 1'd0;
		end
		4'd10: begin
			array_muxed2 <= 1'd0;
		end
		4'd11: begin
			array_muxed2 <= 1'd0;
		end
		4'd12: begin
			array_muxed2 <= 1'd0;
		end
		4'd13: begin
			array_muxed2 <= 1'd0;
		end
		4'd14: begin
			array_muxed2 <= 1'd0;
		end
		4'd15: begin
			array_muxed2 <= 1'd1;
		end
		5'd16: begin
			array_muxed2 <= 1'd1;
		end
		5'd17: begin
			array_muxed2 <= 1'd0;
		end
		5'd18: begin
			array_muxed2 <= 1'd0;
		end
		5'd19: begin
			array_muxed2 <= 1'd0;
		end
		5'd20: begin
			array_muxed2 <= 1'd0;
		end
		5'd21: begin
			array_muxed2 <= 1'd0;
		end
		5'd22: begin
			array_muxed2 <= 1'd0;
		end
		5'd23: begin
			array_muxed2 <= 1'd1;
		end
		5'd24: begin
			array_muxed2 <= 1'd1;
		end
		5'd25: begin
			array_muxed2 <= 1'd0;
		end
		5'd26: begin
			array_muxed2 <= 1'd0;
		end
		5'd27: begin
			array_muxed2 <= 1'd1;
		end
		5'd28: begin
			array_muxed2 <= 1'd0;
		end
		5'd29: begin
			array_muxed2 <= 1'd1;
		end
		5'd30: begin
			array_muxed2 <= 1'd1;
		end
		default: begin
			array_muxed2 <= 1'd1;
		end
	endcase
// synthesis translate_off
	dummy_d_27 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_28;
// synthesis translate_on
always @(*) begin
	array_muxed3 <= 4'd0;
	case (gtxtransmitter_singleencoder0_d[7:5])
		1'd0: begin
			array_muxed3 <= 3'd4;
		end
		1'd1: begin
			array_muxed3 <= 4'd9;
		end
		2'd2: begin
			array_muxed3 <= 3'd5;
		end
		2'd3: begin
			array_muxed3 <= 2'd3;
		end
		3'd4: begin
			array_muxed3 <= 2'd2;
		end
		3'd5: begin
			array_muxed3 <= 4'd10;
		end
		3'd6: begin
			array_muxed3 <= 3'd6;
		end
		default: begin
			array_muxed3 <= 1'd1;
		end
	endcase
// synthesis translate_off
	dummy_d_28 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_29;
// synthesis translate_on
always @(*) begin
	array_muxed4 <= 1'd0;
	case (gtxtransmitter_singleencoder0_d[7:5])
		1'd0: begin
			array_muxed4 <= 1'd1;
		end
		1'd1: begin
			array_muxed4 <= 1'd0;
		end
		2'd2: begin
			array_muxed4 <= 1'd0;
		end
		2'd3: begin
			array_muxed4 <= 1'd0;
		end
		3'd4: begin
			array_muxed4 <= 1'd1;
		end
		3'd5: begin
			array_muxed4 <= 1'd0;
		end
		3'd6: begin
			array_muxed4 <= 1'd0;
		end
		default: begin
			array_muxed4 <= 1'd1;
		end
	endcase
// synthesis translate_off
	dummy_d_29 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_30;
// synthesis translate_on
always @(*) begin
	array_muxed5 <= 1'd0;
	case (gtxtransmitter_singleencoder0_d[7:5])
		1'd0: begin
			array_muxed5 <= 1'd1;
		end
		1'd1: begin
			array_muxed5 <= 1'd0;
		end
		2'd2: begin
			array_muxed5 <= 1'd0;
		end
		2'd3: begin
			array_muxed5 <= 1'd1;
		end
		3'd4: begin
			array_muxed5 <= 1'd1;
		end
		3'd5: begin
			array_muxed5 <= 1'd0;
		end
		3'd6: begin
			array_muxed5 <= 1'd0;
		end
		default: begin
			array_muxed5 <= 1'd1;
		end
	endcase
// synthesis translate_off
	dummy_d_30 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_31;
// synthesis translate_on
always @(*) begin
	array_muxed6 <= 6'd0;
	case (gtxtransmitter_singleencoder1_d[4:0])
		1'd0: begin
			array_muxed6 <= 5'd24;
		end
		1'd1: begin
			array_muxed6 <= 6'd34;
		end
		2'd2: begin
			array_muxed6 <= 5'd18;
		end
		2'd3: begin
			array_muxed6 <= 6'd49;
		end
		3'd4: begin
			array_muxed6 <= 4'd10;
		end
		3'd5: begin
			array_muxed6 <= 6'd41;
		end
		3'd6: begin
			array_muxed6 <= 5'd25;
		end
		3'd7: begin
			array_muxed6 <= 3'd7;
		end
		4'd8: begin
			array_muxed6 <= 3'd6;
		end
		4'd9: begin
			array_muxed6 <= 6'd37;
		end
		4'd10: begin
			array_muxed6 <= 5'd21;
		end
		4'd11: begin
			array_muxed6 <= 6'd52;
		end
		4'd12: begin
			array_muxed6 <= 4'd13;
		end
		4'd13: begin
			array_muxed6 <= 6'd44;
		end
		4'd14: begin
			array_muxed6 <= 5'd28;
		end
		4'd15: begin
			array_muxed6 <= 6'd40;
		end
		5'd16: begin
			array_muxed6 <= 6'd36;
		end
		5'd17: begin
			array_muxed6 <= 6'd35;
		end
		5'd18: begin
			array_muxed6 <= 5'd19;
		end
		5'd19: begin
			array_muxed6 <= 6'd50;
		end
		5'd20: begin
			array_muxed6 <= 4'd11;
		end
		5'd21: begin
			array_muxed6 <= 6'd42;
		end
		5'd22: begin
			array_muxed6 <= 5'd26;
		end
		5'd23: begin
			array_muxed6 <= 3'd5;
		end
		5'd24: begin
			array_muxed6 <= 4'd12;
		end
		5'd25: begin
			array_muxed6 <= 6'd38;
		end
		5'd26: begin
			array_muxed6 <= 5'd22;
		end
		5'd27: begin
			array_muxed6 <= 4'd9;
		end
		5'd28: begin
			array_muxed6 <= 4'd14;
		end
		5'd29: begin
			array_muxed6 <= 5'd17;
		end
		5'd30: begin
			array_muxed6 <= 6'd33;
		end
		default: begin
			array_muxed6 <= 5'd20;
		end
	endcase
// synthesis translate_off
	dummy_d_31 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_32;
// synthesis translate_on
always @(*) begin
	array_muxed7 <= 1'd0;
	case (gtxtransmitter_singleencoder1_d[4:0])
		1'd0: begin
			array_muxed7 <= 1'd1;
		end
		1'd1: begin
			array_muxed7 <= 1'd1;
		end
		2'd2: begin
			array_muxed7 <= 1'd1;
		end
		2'd3: begin
			array_muxed7 <= 1'd0;
		end
		3'd4: begin
			array_muxed7 <= 1'd1;
		end
		3'd5: begin
			array_muxed7 <= 1'd0;
		end
		3'd6: begin
			array_muxed7 <= 1'd0;
		end
		3'd7: begin
			array_muxed7 <= 1'd0;
		end
		4'd8: begin
			array_muxed7 <= 1'd1;
		end
		4'd9: begin
			array_muxed7 <= 1'd0;
		end
		4'd10: begin
			array_muxed7 <= 1'd0;
		end
		4'd11: begin
			array_muxed7 <= 1'd0;
		end
		4'd12: begin
			array_muxed7 <= 1'd0;
		end
		4'd13: begin
			array_muxed7 <= 1'd0;
		end
		4'd14: begin
			array_muxed7 <= 1'd0;
		end
		4'd15: begin
			array_muxed7 <= 1'd1;
		end
		5'd16: begin
			array_muxed7 <= 1'd1;
		end
		5'd17: begin
			array_muxed7 <= 1'd0;
		end
		5'd18: begin
			array_muxed7 <= 1'd0;
		end
		5'd19: begin
			array_muxed7 <= 1'd0;
		end
		5'd20: begin
			array_muxed7 <= 1'd0;
		end
		5'd21: begin
			array_muxed7 <= 1'd0;
		end
		5'd22: begin
			array_muxed7 <= 1'd0;
		end
		5'd23: begin
			array_muxed7 <= 1'd1;
		end
		5'd24: begin
			array_muxed7 <= 1'd1;
		end
		5'd25: begin
			array_muxed7 <= 1'd0;
		end
		5'd26: begin
			array_muxed7 <= 1'd0;
		end
		5'd27: begin
			array_muxed7 <= 1'd1;
		end
		5'd28: begin
			array_muxed7 <= 1'd0;
		end
		5'd29: begin
			array_muxed7 <= 1'd1;
		end
		5'd30: begin
			array_muxed7 <= 1'd1;
		end
		default: begin
			array_muxed7 <= 1'd1;
		end
	endcase
// synthesis translate_off
	dummy_d_32 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_33;
// synthesis translate_on
always @(*) begin
	array_muxed8 <= 1'd0;
	case (gtxtransmitter_singleencoder1_d[4:0])
		1'd0: begin
			array_muxed8 <= 1'd1;
		end
		1'd1: begin
			array_muxed8 <= 1'd1;
		end
		2'd2: begin
			array_muxed8 <= 1'd1;
		end
		2'd3: begin
			array_muxed8 <= 1'd0;
		end
		3'd4: begin
			array_muxed8 <= 1'd1;
		end
		3'd5: begin
			array_muxed8 <= 1'd0;
		end
		3'd6: begin
			array_muxed8 <= 1'd0;
		end
		3'd7: begin
			array_muxed8 <= 1'd1;
		end
		4'd8: begin
			array_muxed8 <= 1'd1;
		end
		4'd9: begin
			array_muxed8 <= 1'd0;
		end
		4'd10: begin
			array_muxed8 <= 1'd0;
		end
		4'd11: begin
			array_muxed8 <= 1'd0;
		end
		4'd12: begin
			array_muxed8 <= 1'd0;
		end
		4'd13: begin
			array_muxed8 <= 1'd0;
		end
		4'd14: begin
			array_muxed8 <= 1'd0;
		end
		4'd15: begin
			array_muxed8 <= 1'd1;
		end
		5'd16: begin
			array_muxed8 <= 1'd1;
		end
		5'd17: begin
			array_muxed8 <= 1'd0;
		end
		5'd18: begin
			array_muxed8 <= 1'd0;
		end
		5'd19: begin
			array_muxed8 <= 1'd0;
		end
		5'd20: begin
			array_muxed8 <= 1'd0;
		end
		5'd21: begin
			array_muxed8 <= 1'd0;
		end
		5'd22: begin
			array_muxed8 <= 1'd0;
		end
		5'd23: begin
			array_muxed8 <= 1'd1;
		end
		5'd24: begin
			array_muxed8 <= 1'd1;
		end
		5'd25: begin
			array_muxed8 <= 1'd0;
		end
		5'd26: begin
			array_muxed8 <= 1'd0;
		end
		5'd27: begin
			array_muxed8 <= 1'd1;
		end
		5'd28: begin
			array_muxed8 <= 1'd0;
		end
		5'd29: begin
			array_muxed8 <= 1'd1;
		end
		5'd30: begin
			array_muxed8 <= 1'd1;
		end
		default: begin
			array_muxed8 <= 1'd1;
		end
	endcase
// synthesis translate_off
	dummy_d_33 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_34;
// synthesis translate_on
always @(*) begin
	array_muxed9 <= 4'd0;
	case (gtxtransmitter_singleencoder1_d[7:5])
		1'd0: begin
			array_muxed9 <= 3'd4;
		end
		1'd1: begin
			array_muxed9 <= 4'd9;
		end
		2'd2: begin
			array_muxed9 <= 3'd5;
		end
		2'd3: begin
			array_muxed9 <= 2'd3;
		end
		3'd4: begin
			array_muxed9 <= 2'd2;
		end
		3'd5: begin
			array_muxed9 <= 4'd10;
		end
		3'd6: begin
			array_muxed9 <= 3'd6;
		end
		default: begin
			array_muxed9 <= 1'd1;
		end
	endcase
// synthesis translate_off
	dummy_d_34 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_35;
// synthesis translate_on
always @(*) begin
	array_muxed10 <= 1'd0;
	case (gtxtransmitter_singleencoder1_d[7:5])
		1'd0: begin
			array_muxed10 <= 1'd1;
		end
		1'd1: begin
			array_muxed10 <= 1'd0;
		end
		2'd2: begin
			array_muxed10 <= 1'd0;
		end
		2'd3: begin
			array_muxed10 <= 1'd0;
		end
		3'd4: begin
			array_muxed10 <= 1'd1;
		end
		3'd5: begin
			array_muxed10 <= 1'd0;
		end
		3'd6: begin
			array_muxed10 <= 1'd0;
		end
		default: begin
			array_muxed10 <= 1'd1;
		end
	endcase
// synthesis translate_off
	dummy_d_35 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_36;
// synthesis translate_on
always @(*) begin
	array_muxed11 <= 1'd0;
	case (gtxtransmitter_singleencoder1_d[7:5])
		1'd0: begin
			array_muxed11 <= 1'd1;
		end
		1'd1: begin
			array_muxed11 <= 1'd0;
		end
		2'd2: begin
			array_muxed11 <= 1'd0;
		end
		2'd3: begin
			array_muxed11 <= 1'd1;
		end
		3'd4: begin
			array_muxed11 <= 1'd1;
		end
		3'd5: begin
			array_muxed11 <= 1'd0;
		end
		3'd6: begin
			array_muxed11 <= 1'd0;
		end
		default: begin
			array_muxed11 <= 1'd1;
		end
	endcase
// synthesis translate_off
	dummy_d_36 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_37;
// synthesis translate_on
always @(*) begin
	array_muxed12 <= 6'd0;
	case (gtxtransmitter_singleencoder2_d[4:0])
		1'd0: begin
			array_muxed12 <= 5'd24;
		end
		1'd1: begin
			array_muxed12 <= 6'd34;
		end
		2'd2: begin
			array_muxed12 <= 5'd18;
		end
		2'd3: begin
			array_muxed12 <= 6'd49;
		end
		3'd4: begin
			array_muxed12 <= 4'd10;
		end
		3'd5: begin
			array_muxed12 <= 6'd41;
		end
		3'd6: begin
			array_muxed12 <= 5'd25;
		end
		3'd7: begin
			array_muxed12 <= 3'd7;
		end
		4'd8: begin
			array_muxed12 <= 3'd6;
		end
		4'd9: begin
			array_muxed12 <= 6'd37;
		end
		4'd10: begin
			array_muxed12 <= 5'd21;
		end
		4'd11: begin
			array_muxed12 <= 6'd52;
		end
		4'd12: begin
			array_muxed12 <= 4'd13;
		end
		4'd13: begin
			array_muxed12 <= 6'd44;
		end
		4'd14: begin
			array_muxed12 <= 5'd28;
		end
		4'd15: begin
			array_muxed12 <= 6'd40;
		end
		5'd16: begin
			array_muxed12 <= 6'd36;
		end
		5'd17: begin
			array_muxed12 <= 6'd35;
		end
		5'd18: begin
			array_muxed12 <= 5'd19;
		end
		5'd19: begin
			array_muxed12 <= 6'd50;
		end
		5'd20: begin
			array_muxed12 <= 4'd11;
		end
		5'd21: begin
			array_muxed12 <= 6'd42;
		end
		5'd22: begin
			array_muxed12 <= 5'd26;
		end
		5'd23: begin
			array_muxed12 <= 3'd5;
		end
		5'd24: begin
			array_muxed12 <= 4'd12;
		end
		5'd25: begin
			array_muxed12 <= 6'd38;
		end
		5'd26: begin
			array_muxed12 <= 5'd22;
		end
		5'd27: begin
			array_muxed12 <= 4'd9;
		end
		5'd28: begin
			array_muxed12 <= 4'd14;
		end
		5'd29: begin
			array_muxed12 <= 5'd17;
		end
		5'd30: begin
			array_muxed12 <= 6'd33;
		end
		default: begin
			array_muxed12 <= 5'd20;
		end
	endcase
// synthesis translate_off
	dummy_d_37 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_38;
// synthesis translate_on
always @(*) begin
	array_muxed13 <= 1'd0;
	case (gtxtransmitter_singleencoder2_d[4:0])
		1'd0: begin
			array_muxed13 <= 1'd1;
		end
		1'd1: begin
			array_muxed13 <= 1'd1;
		end
		2'd2: begin
			array_muxed13 <= 1'd1;
		end
		2'd3: begin
			array_muxed13 <= 1'd0;
		end
		3'd4: begin
			array_muxed13 <= 1'd1;
		end
		3'd5: begin
			array_muxed13 <= 1'd0;
		end
		3'd6: begin
			array_muxed13 <= 1'd0;
		end
		3'd7: begin
			array_muxed13 <= 1'd0;
		end
		4'd8: begin
			array_muxed13 <= 1'd1;
		end
		4'd9: begin
			array_muxed13 <= 1'd0;
		end
		4'd10: begin
			array_muxed13 <= 1'd0;
		end
		4'd11: begin
			array_muxed13 <= 1'd0;
		end
		4'd12: begin
			array_muxed13 <= 1'd0;
		end
		4'd13: begin
			array_muxed13 <= 1'd0;
		end
		4'd14: begin
			array_muxed13 <= 1'd0;
		end
		4'd15: begin
			array_muxed13 <= 1'd1;
		end
		5'd16: begin
			array_muxed13 <= 1'd1;
		end
		5'd17: begin
			array_muxed13 <= 1'd0;
		end
		5'd18: begin
			array_muxed13 <= 1'd0;
		end
		5'd19: begin
			array_muxed13 <= 1'd0;
		end
		5'd20: begin
			array_muxed13 <= 1'd0;
		end
		5'd21: begin
			array_muxed13 <= 1'd0;
		end
		5'd22: begin
			array_muxed13 <= 1'd0;
		end
		5'd23: begin
			array_muxed13 <= 1'd1;
		end
		5'd24: begin
			array_muxed13 <= 1'd1;
		end
		5'd25: begin
			array_muxed13 <= 1'd0;
		end
		5'd26: begin
			array_muxed13 <= 1'd0;
		end
		5'd27: begin
			array_muxed13 <= 1'd1;
		end
		5'd28: begin
			array_muxed13 <= 1'd0;
		end
		5'd29: begin
			array_muxed13 <= 1'd1;
		end
		5'd30: begin
			array_muxed13 <= 1'd1;
		end
		default: begin
			array_muxed13 <= 1'd1;
		end
	endcase
// synthesis translate_off
	dummy_d_38 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_39;
// synthesis translate_on
always @(*) begin
	array_muxed14 <= 1'd0;
	case (gtxtransmitter_singleencoder2_d[4:0])
		1'd0: begin
			array_muxed14 <= 1'd1;
		end
		1'd1: begin
			array_muxed14 <= 1'd1;
		end
		2'd2: begin
			array_muxed14 <= 1'd1;
		end
		2'd3: begin
			array_muxed14 <= 1'd0;
		end
		3'd4: begin
			array_muxed14 <= 1'd1;
		end
		3'd5: begin
			array_muxed14 <= 1'd0;
		end
		3'd6: begin
			array_muxed14 <= 1'd0;
		end
		3'd7: begin
			array_muxed14 <= 1'd1;
		end
		4'd8: begin
			array_muxed14 <= 1'd1;
		end
		4'd9: begin
			array_muxed14 <= 1'd0;
		end
		4'd10: begin
			array_muxed14 <= 1'd0;
		end
		4'd11: begin
			array_muxed14 <= 1'd0;
		end
		4'd12: begin
			array_muxed14 <= 1'd0;
		end
		4'd13: begin
			array_muxed14 <= 1'd0;
		end
		4'd14: begin
			array_muxed14 <= 1'd0;
		end
		4'd15: begin
			array_muxed14 <= 1'd1;
		end
		5'd16: begin
			array_muxed14 <= 1'd1;
		end
		5'd17: begin
			array_muxed14 <= 1'd0;
		end
		5'd18: begin
			array_muxed14 <= 1'd0;
		end
		5'd19: begin
			array_muxed14 <= 1'd0;
		end
		5'd20: begin
			array_muxed14 <= 1'd0;
		end
		5'd21: begin
			array_muxed14 <= 1'd0;
		end
		5'd22: begin
			array_muxed14 <= 1'd0;
		end
		5'd23: begin
			array_muxed14 <= 1'd1;
		end
		5'd24: begin
			array_muxed14 <= 1'd1;
		end
		5'd25: begin
			array_muxed14 <= 1'd0;
		end
		5'd26: begin
			array_muxed14 <= 1'd0;
		end
		5'd27: begin
			array_muxed14 <= 1'd1;
		end
		5'd28: begin
			array_muxed14 <= 1'd0;
		end
		5'd29: begin
			array_muxed14 <= 1'd1;
		end
		5'd30: begin
			array_muxed14 <= 1'd1;
		end
		default: begin
			array_muxed14 <= 1'd1;
		end
	endcase
// synthesis translate_off
	dummy_d_39 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_40;
// synthesis translate_on
always @(*) begin
	array_muxed15 <= 4'd0;
	case (gtxtransmitter_singleencoder2_d[7:5])
		1'd0: begin
			array_muxed15 <= 3'd4;
		end
		1'd1: begin
			array_muxed15 <= 4'd9;
		end
		2'd2: begin
			array_muxed15 <= 3'd5;
		end
		2'd3: begin
			array_muxed15 <= 2'd3;
		end
		3'd4: begin
			array_muxed15 <= 2'd2;
		end
		3'd5: begin
			array_muxed15 <= 4'd10;
		end
		3'd6: begin
			array_muxed15 <= 3'd6;
		end
		default: begin
			array_muxed15 <= 1'd1;
		end
	endcase
// synthesis translate_off
	dummy_d_40 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_41;
// synthesis translate_on
always @(*) begin
	array_muxed16 <= 1'd0;
	case (gtxtransmitter_singleencoder2_d[7:5])
		1'd0: begin
			array_muxed16 <= 1'd1;
		end
		1'd1: begin
			array_muxed16 <= 1'd0;
		end
		2'd2: begin
			array_muxed16 <= 1'd0;
		end
		2'd3: begin
			array_muxed16 <= 1'd0;
		end
		3'd4: begin
			array_muxed16 <= 1'd1;
		end
		3'd5: begin
			array_muxed16 <= 1'd0;
		end
		3'd6: begin
			array_muxed16 <= 1'd0;
		end
		default: begin
			array_muxed16 <= 1'd1;
		end
	endcase
// synthesis translate_off
	dummy_d_41 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_42;
// synthesis translate_on
always @(*) begin
	array_muxed17 <= 1'd0;
	case (gtxtransmitter_singleencoder2_d[7:5])
		1'd0: begin
			array_muxed17 <= 1'd1;
		end
		1'd1: begin
			array_muxed17 <= 1'd0;
		end
		2'd2: begin
			array_muxed17 <= 1'd0;
		end
		2'd3: begin
			array_muxed17 <= 1'd1;
		end
		3'd4: begin
			array_muxed17 <= 1'd1;
		end
		3'd5: begin
			array_muxed17 <= 1'd0;
		end
		3'd6: begin
			array_muxed17 <= 1'd0;
		end
		default: begin
			array_muxed17 <= 1'd1;
		end
	endcase
// synthesis translate_off
	dummy_d_42 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_43;
// synthesis translate_on
always @(*) begin
	array_muxed18 <= 6'd0;
	case (gtxtransmitter_singleencoder3_d[4:0])
		1'd0: begin
			array_muxed18 <= 5'd24;
		end
		1'd1: begin
			array_muxed18 <= 6'd34;
		end
		2'd2: begin
			array_muxed18 <= 5'd18;
		end
		2'd3: begin
			array_muxed18 <= 6'd49;
		end
		3'd4: begin
			array_muxed18 <= 4'd10;
		end
		3'd5: begin
			array_muxed18 <= 6'd41;
		end
		3'd6: begin
			array_muxed18 <= 5'd25;
		end
		3'd7: begin
			array_muxed18 <= 3'd7;
		end
		4'd8: begin
			array_muxed18 <= 3'd6;
		end
		4'd9: begin
			array_muxed18 <= 6'd37;
		end
		4'd10: begin
			array_muxed18 <= 5'd21;
		end
		4'd11: begin
			array_muxed18 <= 6'd52;
		end
		4'd12: begin
			array_muxed18 <= 4'd13;
		end
		4'd13: begin
			array_muxed18 <= 6'd44;
		end
		4'd14: begin
			array_muxed18 <= 5'd28;
		end
		4'd15: begin
			array_muxed18 <= 6'd40;
		end
		5'd16: begin
			array_muxed18 <= 6'd36;
		end
		5'd17: begin
			array_muxed18 <= 6'd35;
		end
		5'd18: begin
			array_muxed18 <= 5'd19;
		end
		5'd19: begin
			array_muxed18 <= 6'd50;
		end
		5'd20: begin
			array_muxed18 <= 4'd11;
		end
		5'd21: begin
			array_muxed18 <= 6'd42;
		end
		5'd22: begin
			array_muxed18 <= 5'd26;
		end
		5'd23: begin
			array_muxed18 <= 3'd5;
		end
		5'd24: begin
			array_muxed18 <= 4'd12;
		end
		5'd25: begin
			array_muxed18 <= 6'd38;
		end
		5'd26: begin
			array_muxed18 <= 5'd22;
		end
		5'd27: begin
			array_muxed18 <= 4'd9;
		end
		5'd28: begin
			array_muxed18 <= 4'd14;
		end
		5'd29: begin
			array_muxed18 <= 5'd17;
		end
		5'd30: begin
			array_muxed18 <= 6'd33;
		end
		default: begin
			array_muxed18 <= 5'd20;
		end
	endcase
// synthesis translate_off
	dummy_d_43 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_44;
// synthesis translate_on
always @(*) begin
	array_muxed19 <= 1'd0;
	case (gtxtransmitter_singleencoder3_d[4:0])
		1'd0: begin
			array_muxed19 <= 1'd1;
		end
		1'd1: begin
			array_muxed19 <= 1'd1;
		end
		2'd2: begin
			array_muxed19 <= 1'd1;
		end
		2'd3: begin
			array_muxed19 <= 1'd0;
		end
		3'd4: begin
			array_muxed19 <= 1'd1;
		end
		3'd5: begin
			array_muxed19 <= 1'd0;
		end
		3'd6: begin
			array_muxed19 <= 1'd0;
		end
		3'd7: begin
			array_muxed19 <= 1'd0;
		end
		4'd8: begin
			array_muxed19 <= 1'd1;
		end
		4'd9: begin
			array_muxed19 <= 1'd0;
		end
		4'd10: begin
			array_muxed19 <= 1'd0;
		end
		4'd11: begin
			array_muxed19 <= 1'd0;
		end
		4'd12: begin
			array_muxed19 <= 1'd0;
		end
		4'd13: begin
			array_muxed19 <= 1'd0;
		end
		4'd14: begin
			array_muxed19 <= 1'd0;
		end
		4'd15: begin
			array_muxed19 <= 1'd1;
		end
		5'd16: begin
			array_muxed19 <= 1'd1;
		end
		5'd17: begin
			array_muxed19 <= 1'd0;
		end
		5'd18: begin
			array_muxed19 <= 1'd0;
		end
		5'd19: begin
			array_muxed19 <= 1'd0;
		end
		5'd20: begin
			array_muxed19 <= 1'd0;
		end
		5'd21: begin
			array_muxed19 <= 1'd0;
		end
		5'd22: begin
			array_muxed19 <= 1'd0;
		end
		5'd23: begin
			array_muxed19 <= 1'd1;
		end
		5'd24: begin
			array_muxed19 <= 1'd1;
		end
		5'd25: begin
			array_muxed19 <= 1'd0;
		end
		5'd26: begin
			array_muxed19 <= 1'd0;
		end
		5'd27: begin
			array_muxed19 <= 1'd1;
		end
		5'd28: begin
			array_muxed19 <= 1'd0;
		end
		5'd29: begin
			array_muxed19 <= 1'd1;
		end
		5'd30: begin
			array_muxed19 <= 1'd1;
		end
		default: begin
			array_muxed19 <= 1'd1;
		end
	endcase
// synthesis translate_off
	dummy_d_44 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_45;
// synthesis translate_on
always @(*) begin
	array_muxed20 <= 1'd0;
	case (gtxtransmitter_singleencoder3_d[4:0])
		1'd0: begin
			array_muxed20 <= 1'd1;
		end
		1'd1: begin
			array_muxed20 <= 1'd1;
		end
		2'd2: begin
			array_muxed20 <= 1'd1;
		end
		2'd3: begin
			array_muxed20 <= 1'd0;
		end
		3'd4: begin
			array_muxed20 <= 1'd1;
		end
		3'd5: begin
			array_muxed20 <= 1'd0;
		end
		3'd6: begin
			array_muxed20 <= 1'd0;
		end
		3'd7: begin
			array_muxed20 <= 1'd1;
		end
		4'd8: begin
			array_muxed20 <= 1'd1;
		end
		4'd9: begin
			array_muxed20 <= 1'd0;
		end
		4'd10: begin
			array_muxed20 <= 1'd0;
		end
		4'd11: begin
			array_muxed20 <= 1'd0;
		end
		4'd12: begin
			array_muxed20 <= 1'd0;
		end
		4'd13: begin
			array_muxed20 <= 1'd0;
		end
		4'd14: begin
			array_muxed20 <= 1'd0;
		end
		4'd15: begin
			array_muxed20 <= 1'd1;
		end
		5'd16: begin
			array_muxed20 <= 1'd1;
		end
		5'd17: begin
			array_muxed20 <= 1'd0;
		end
		5'd18: begin
			array_muxed20 <= 1'd0;
		end
		5'd19: begin
			array_muxed20 <= 1'd0;
		end
		5'd20: begin
			array_muxed20 <= 1'd0;
		end
		5'd21: begin
			array_muxed20 <= 1'd0;
		end
		5'd22: begin
			array_muxed20 <= 1'd0;
		end
		5'd23: begin
			array_muxed20 <= 1'd1;
		end
		5'd24: begin
			array_muxed20 <= 1'd1;
		end
		5'd25: begin
			array_muxed20 <= 1'd0;
		end
		5'd26: begin
			array_muxed20 <= 1'd0;
		end
		5'd27: begin
			array_muxed20 <= 1'd1;
		end
		5'd28: begin
			array_muxed20 <= 1'd0;
		end
		5'd29: begin
			array_muxed20 <= 1'd1;
		end
		5'd30: begin
			array_muxed20 <= 1'd1;
		end
		default: begin
			array_muxed20 <= 1'd1;
		end
	endcase
// synthesis translate_off
	dummy_d_45 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_46;
// synthesis translate_on
always @(*) begin
	array_muxed21 <= 4'd0;
	case (gtxtransmitter_singleencoder3_d[7:5])
		1'd0: begin
			array_muxed21 <= 3'd4;
		end
		1'd1: begin
			array_muxed21 <= 4'd9;
		end
		2'd2: begin
			array_muxed21 <= 3'd5;
		end
		2'd3: begin
			array_muxed21 <= 2'd3;
		end
		3'd4: begin
			array_muxed21 <= 2'd2;
		end
		3'd5: begin
			array_muxed21 <= 4'd10;
		end
		3'd6: begin
			array_muxed21 <= 3'd6;
		end
		default: begin
			array_muxed21 <= 1'd1;
		end
	endcase
// synthesis translate_off
	dummy_d_46 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_47;
// synthesis translate_on
always @(*) begin
	array_muxed22 <= 1'd0;
	case (gtxtransmitter_singleencoder3_d[7:5])
		1'd0: begin
			array_muxed22 <= 1'd1;
		end
		1'd1: begin
			array_muxed22 <= 1'd0;
		end
		2'd2: begin
			array_muxed22 <= 1'd0;
		end
		2'd3: begin
			array_muxed22 <= 1'd0;
		end
		3'd4: begin
			array_muxed22 <= 1'd1;
		end
		3'd5: begin
			array_muxed22 <= 1'd0;
		end
		3'd6: begin
			array_muxed22 <= 1'd0;
		end
		default: begin
			array_muxed22 <= 1'd1;
		end
	endcase
// synthesis translate_off
	dummy_d_47 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_48;
// synthesis translate_on
always @(*) begin
	array_muxed23 <= 1'd0;
	case (gtxtransmitter_singleencoder3_d[7:5])
		1'd0: begin
			array_muxed23 <= 1'd1;
		end
		1'd1: begin
			array_muxed23 <= 1'd0;
		end
		2'd2: begin
			array_muxed23 <= 1'd0;
		end
		2'd3: begin
			array_muxed23 <= 1'd1;
		end
		3'd4: begin
			array_muxed23 <= 1'd1;
		end
		3'd5: begin
			array_muxed23 <= 1'd0;
		end
		3'd6: begin
			array_muxed23 <= 1'd0;
		end
		default: begin
			array_muxed23 <= 1'd1;
		end
	endcase
// synthesis translate_off
	dummy_d_48 <= dummy_s;
// synthesis translate_on
end
assign gtxtransmitter_plllock1 = xilinxmultiregimpl0_regs1;
assign gtxtransmitter_Xxresetdone1 = xilinxmultiregimpl1_regs1;
assign gtxtransmitter_Xxdlysresetdone1 = xilinxmultiregimpl2_regs1;
assign gtxtransmitter_Xxphaligndone1 = xilinxmultiregimpl3_regs1;
assign xilinxasyncresetsynchronizerimpl1 = (~gtxtransmitter_done);
assign gtxtransmitter_config1 = xilinxmultiregimpl4_regs1;
assign core_jsync1 = xilinxmultiregimpl5_regs1;
assign core_stpl_enable1 = xilinxmultiregimpl6_regs1;
assign gtxtransmitter_prbs_config = xilinxmultiregimpl7_regs1;
assign core_ready0 = xilinxmultiregimpl8_regs1;
assign jesd204bcoretxcontrol_jsync_status = xilinxmultiregimpl9_regs1;
assign jesd204bcoretxcontrol_restart = xilinxmultiregimpl10_regs1;

always @(posedge jesd_clk) begin
	core_link_jsync1 <= core_link_jsync0;
	core_link_jref1 <= core_link_jref0;
	core_link_jref_d <= core_link_jref1;
	if ((core_link_ilas_counter != 7'd64)) begin
		core_link_ilas_counter <= (core_link_ilas_counter + 1'd1);
	end
	if (core_link_ilas_reset) begin
		core_link_ilas_counter <= 7'd0;
	end
	core_link_scrambler_valid <= 1'd1;
	core_link_scrambler_swizzle_out <= core_link_scrambler_feedback;
	core_link_scrambler_state <= core_link_scrambler_full;
	if (core_link_scrambler_reset) begin
		core_link_scrambler_valid <= 1'd0;
		core_link_scrambler_state <= 15'd32640;
		core_link_scrambler_swizzle_out <= 32'd0;
	end
	if ((core_link_framer_source_multiframe_last != 1'd0)) begin
		core_link_framer_counter <= 1'd0;
	end else begin
		core_link_framer_counter <= (core_link_framer_counter + 1'd1);
	end
	if (core_link_framer_reset) begin
		core_link_framer_counter <= 8'd0;
	end
	clockdomainsrenamer_state <= clockdomainsrenamer_next_state;
	if (core_link_reset1) begin
		core_link_ilas_counter <= 7'd0;
		core_link_scrambler_valid <= 1'd0;
		core_link_scrambler_state <= 15'd32640;
		core_link_scrambler_swizzle_out <= 32'd0;
		core_link_framer_counter <= 8'd0;
		core_link_jsync1 <= 1'd0;
		core_link_jref1 <= 1'd0;
		core_link_jref_d <= 1'd0;
		clockdomainsrenamer_state <= 2'd0;
	end
	if (jesd_rst) begin
		core_link_ilas_counter <= 7'd0;
		core_link_scrambler_valid <= 1'd0;
		core_link_scrambler_state <= 15'd32640;
		core_link_scrambler_swizzle_out <= 32'd0;
		core_link_framer_counter <= 8'd0;
		core_link_jsync1 <= 1'd0;
		core_link_jref1 <= 1'd0;
		core_link_jref_d <= 1'd0;
		clockdomainsrenamer_state <= 2'd0;
	end
	xilinxmultiregimpl6_regs0 <= core_stpl_enable0;
	xilinxmultiregimpl6_regs1 <= xilinxmultiregimpl6_regs0;
end

always @(posedge phy0_tx_clk) begin
	xilinxmultiregimpl7_regs0 <= core_prbs_config;
	xilinxmultiregimpl7_regs1 <= xilinxmultiregimpl7_regs0;
end

always @(posedge read_clk) begin
	core_ebuf_rdpointer <= (core_ebuf_rdpointer + 1'd1);
	if (read_rst) begin
		core_ebuf_rdpointer <= 2'd0;
	end
end

always @(posedge sys_clk) begin
	gtxtransmitter_gtXxreset0 <= gtxtransmitter_gtXxreset1;
	gtxtransmitter_Xxdlysreset0 <= gtxtransmitter_Xxdlysreset1;
	gtxtransmitter_Xxuserrdy0 <= gtxtransmitter_Xxuserrdy1;
	gtxtransmitter_Xxphaligndone_r <= gtxtransmitter_Xxphaligndone1;
	if (gtxtransmitter_startup_timer_wait) begin
		if ((~gtxtransmitter_startup_timer_done)) begin
			gtxtransmitter_startup_timer_count <= (gtxtransmitter_startup_timer_count - 1'd1);
		end
	end else begin
		gtxtransmitter_startup_timer_count <= 6'd63;
	end
	jesd204bphytx_state <= jesd204bphytx_next_state;
	if (gtxtransmitter_reset) begin
		jesd204bphytx_state <= 3'd0;
	end
	if (gtxtransmitter_ready_timer_wait) begin
		if ((~gtxtransmitter_ready_timer_done)) begin
			gtxtransmitter_ready_timer_count <= (gtxtransmitter_ready_timer_count - 1'd1);
		end
	end else begin
		gtxtransmitter_ready_timer_count <= 17'd125000;
	end
	if (jesd204bcoretxcontrol_restart_count_clear_re) begin
		jesd204bcoretxcontrol_restart_count <= 1'd0;
	end else begin
		if ((jesd204bcoretxcontrol_restart & (~jesd204bcoretxcontrol_restart_d))) begin
			if ((jesd204bcoretxcontrol_restart_count != 8'd255)) begin
				jesd204bcoretxcontrol_restart_count <= (jesd204bcoretxcontrol_restart_count + 1'd1);
			end
		end
	end
	if (sys_rst) begin
		gtxtransmitter_gtXxreset0 <= 1'd0;
		gtxtransmitter_Xxdlysreset0 <= 1'd0;
		gtxtransmitter_Xxuserrdy0 <= 1'd0;
		gtxtransmitter_startup_timer_count <= 6'd63;
		gtxtransmitter_ready_timer_count <= 17'd125000;
		gtxtransmitter_Xxphaligndone_r <= 1'd1;
		jesd204bcoretxcontrol_restart_count <= 8'd0;
		jesd204bphytx_state <= 3'd0;
	end
	xilinxmultiregimpl0_regs0 <= gtxtransmitter_plllock0;
	xilinxmultiregimpl0_regs1 <= xilinxmultiregimpl0_regs0;
	xilinxmultiregimpl1_regs0 <= gtxtransmitter_Xxresetdone0;
	xilinxmultiregimpl1_regs1 <= xilinxmultiregimpl1_regs0;
	xilinxmultiregimpl2_regs0 <= gtxtransmitter_Xxdlysresetdone0;
	xilinxmultiregimpl2_regs1 <= xilinxmultiregimpl2_regs0;
	xilinxmultiregimpl3_regs0 <= gtxtransmitter_Xxphaligndone0;
	xilinxmultiregimpl3_regs1 <= xilinxmultiregimpl3_regs0;
	xilinxmultiregimpl5_regs0 <= core_jsync0;
	xilinxmultiregimpl5_regs1 <= xilinxmultiregimpl5_regs0;
	xilinxmultiregimpl8_regs0 <= core_ready1;
	xilinxmultiregimpl8_regs1 <= xilinxmultiregimpl8_regs0;
	xilinxmultiregimpl9_regs0 <= core_jsync0;
	xilinxmultiregimpl9_regs1 <= xilinxmultiregimpl9_regs0;
	xilinxmultiregimpl10_regs0 <= core_restart;
	xilinxmultiregimpl10_regs1 <= xilinxmultiregimpl10_regs0;
end

always @(posedge tx_clk) begin
	gtxtransmitter_singleencoder0_disp_in <= gtxtransmitter_singleencoder3_disp_out;
	gtxtransmitter_output0 <= gtxtransmitter_singleencoder0_output;
	gtxtransmitter_disparity0 <= gtxtransmitter_singleencoder0_disp_out;
	gtxtransmitter_output1 <= gtxtransmitter_singleencoder1_output;
	gtxtransmitter_disparity1 <= gtxtransmitter_singleencoder1_disp_out;
	gtxtransmitter_output2 <= gtxtransmitter_singleencoder2_output;
	gtxtransmitter_disparity2 <= gtxtransmitter_singleencoder2_disp_out;
	gtxtransmitter_output3 <= gtxtransmitter_singleencoder3_output;
	gtxtransmitter_disparity3 <= gtxtransmitter_singleencoder3_disp_out;
	if ((gtxtransmitter_singleencoder0_k & (gtxtransmitter_singleencoder0_d[4:0] == 5'd28))) begin
		gtxtransmitter_singleencoder0_code6b <= 6'd48;
		gtxtransmitter_singleencoder0_code6b_unbalanced <= 1'd1;
		gtxtransmitter_singleencoder0_code6b_flip <= 1'd1;
	end else begin
		gtxtransmitter_singleencoder0_code6b <= array_muxed0;
		gtxtransmitter_singleencoder0_code6b_unbalanced <= array_muxed1;
		gtxtransmitter_singleencoder0_code6b_flip <= array_muxed2;
	end
	gtxtransmitter_singleencoder0_code4b <= array_muxed3;
	gtxtransmitter_singleencoder0_code4b_unbalanced <= array_muxed4;
	if (gtxtransmitter_singleencoder0_k) begin
		gtxtransmitter_singleencoder0_code4b_flip <= 1'd1;
	end else begin
		gtxtransmitter_singleencoder0_code4b_flip <= array_muxed5;
	end
	gtxtransmitter_singleencoder0_alt7_rd0 <= 1'd0;
	gtxtransmitter_singleencoder0_alt7_rd1 <= 1'd0;
	if ((gtxtransmitter_singleencoder0_d[7:5] == 3'd7)) begin
		if ((((gtxtransmitter_singleencoder0_d[4:0] == 5'd17) | (gtxtransmitter_singleencoder0_d[4:0] == 5'd18)) | (gtxtransmitter_singleencoder0_d[4:0] == 5'd20))) begin
			gtxtransmitter_singleencoder0_alt7_rd0 <= 1'd1;
		end
		if ((((gtxtransmitter_singleencoder0_d[4:0] == 4'd11) | (gtxtransmitter_singleencoder0_d[4:0] == 4'd13)) | (gtxtransmitter_singleencoder0_d[4:0] == 4'd14))) begin
			gtxtransmitter_singleencoder0_alt7_rd1 <= 1'd1;
		end
		if (gtxtransmitter_singleencoder0_k) begin
			gtxtransmitter_singleencoder0_alt7_rd0 <= 1'd1;
			gtxtransmitter_singleencoder0_alt7_rd1 <= 1'd1;
		end
	end
	if ((gtxtransmitter_singleencoder1_k & (gtxtransmitter_singleencoder1_d[4:0] == 5'd28))) begin
		gtxtransmitter_singleencoder1_code6b <= 6'd48;
		gtxtransmitter_singleencoder1_code6b_unbalanced <= 1'd1;
		gtxtransmitter_singleencoder1_code6b_flip <= 1'd1;
	end else begin
		gtxtransmitter_singleencoder1_code6b <= array_muxed6;
		gtxtransmitter_singleencoder1_code6b_unbalanced <= array_muxed7;
		gtxtransmitter_singleencoder1_code6b_flip <= array_muxed8;
	end
	gtxtransmitter_singleencoder1_code4b <= array_muxed9;
	gtxtransmitter_singleencoder1_code4b_unbalanced <= array_muxed10;
	if (gtxtransmitter_singleencoder1_k) begin
		gtxtransmitter_singleencoder1_code4b_flip <= 1'd1;
	end else begin
		gtxtransmitter_singleencoder1_code4b_flip <= array_muxed11;
	end
	gtxtransmitter_singleencoder1_alt7_rd0 <= 1'd0;
	gtxtransmitter_singleencoder1_alt7_rd1 <= 1'd0;
	if ((gtxtransmitter_singleencoder1_d[7:5] == 3'd7)) begin
		if ((((gtxtransmitter_singleencoder1_d[4:0] == 5'd17) | (gtxtransmitter_singleencoder1_d[4:0] == 5'd18)) | (gtxtransmitter_singleencoder1_d[4:0] == 5'd20))) begin
			gtxtransmitter_singleencoder1_alt7_rd0 <= 1'd1;
		end
		if ((((gtxtransmitter_singleencoder1_d[4:0] == 4'd11) | (gtxtransmitter_singleencoder1_d[4:0] == 4'd13)) | (gtxtransmitter_singleencoder1_d[4:0] == 4'd14))) begin
			gtxtransmitter_singleencoder1_alt7_rd1 <= 1'd1;
		end
		if (gtxtransmitter_singleencoder1_k) begin
			gtxtransmitter_singleencoder1_alt7_rd0 <= 1'd1;
			gtxtransmitter_singleencoder1_alt7_rd1 <= 1'd1;
		end
	end
	if ((gtxtransmitter_singleencoder2_k & (gtxtransmitter_singleencoder2_d[4:0] == 5'd28))) begin
		gtxtransmitter_singleencoder2_code6b <= 6'd48;
		gtxtransmitter_singleencoder2_code6b_unbalanced <= 1'd1;
		gtxtransmitter_singleencoder2_code6b_flip <= 1'd1;
	end else begin
		gtxtransmitter_singleencoder2_code6b <= array_muxed12;
		gtxtransmitter_singleencoder2_code6b_unbalanced <= array_muxed13;
		gtxtransmitter_singleencoder2_code6b_flip <= array_muxed14;
	end
	gtxtransmitter_singleencoder2_code4b <= array_muxed15;
	gtxtransmitter_singleencoder2_code4b_unbalanced <= array_muxed16;
	if (gtxtransmitter_singleencoder2_k) begin
		gtxtransmitter_singleencoder2_code4b_flip <= 1'd1;
	end else begin
		gtxtransmitter_singleencoder2_code4b_flip <= array_muxed17;
	end
	gtxtransmitter_singleencoder2_alt7_rd0 <= 1'd0;
	gtxtransmitter_singleencoder2_alt7_rd1 <= 1'd0;
	if ((gtxtransmitter_singleencoder2_d[7:5] == 3'd7)) begin
		if ((((gtxtransmitter_singleencoder2_d[4:0] == 5'd17) | (gtxtransmitter_singleencoder2_d[4:0] == 5'd18)) | (gtxtransmitter_singleencoder2_d[4:0] == 5'd20))) begin
			gtxtransmitter_singleencoder2_alt7_rd0 <= 1'd1;
		end
		if ((((gtxtransmitter_singleencoder2_d[4:0] == 4'd11) | (gtxtransmitter_singleencoder2_d[4:0] == 4'd13)) | (gtxtransmitter_singleencoder2_d[4:0] == 4'd14))) begin
			gtxtransmitter_singleencoder2_alt7_rd1 <= 1'd1;
		end
		if (gtxtransmitter_singleencoder2_k) begin
			gtxtransmitter_singleencoder2_alt7_rd0 <= 1'd1;
			gtxtransmitter_singleencoder2_alt7_rd1 <= 1'd1;
		end
	end
	if ((gtxtransmitter_singleencoder3_k & (gtxtransmitter_singleencoder3_d[4:0] == 5'd28))) begin
		gtxtransmitter_singleencoder3_code6b <= 6'd48;
		gtxtransmitter_singleencoder3_code6b_unbalanced <= 1'd1;
		gtxtransmitter_singleencoder3_code6b_flip <= 1'd1;
	end else begin
		gtxtransmitter_singleencoder3_code6b <= array_muxed18;
		gtxtransmitter_singleencoder3_code6b_unbalanced <= array_muxed19;
		gtxtransmitter_singleencoder3_code6b_flip <= array_muxed20;
	end
	gtxtransmitter_singleencoder3_code4b <= array_muxed21;
	gtxtransmitter_singleencoder3_code4b_unbalanced <= array_muxed22;
	if (gtxtransmitter_singleencoder3_k) begin
		gtxtransmitter_singleencoder3_code4b_flip <= 1'd1;
	end else begin
		gtxtransmitter_singleencoder3_code4b_flip <= array_muxed23;
	end
	gtxtransmitter_singleencoder3_alt7_rd0 <= 1'd0;
	gtxtransmitter_singleencoder3_alt7_rd1 <= 1'd0;
	if ((gtxtransmitter_singleencoder3_d[7:5] == 3'd7)) begin
		if ((((gtxtransmitter_singleencoder3_d[4:0] == 5'd17) | (gtxtransmitter_singleencoder3_d[4:0] == 5'd18)) | (gtxtransmitter_singleencoder3_d[4:0] == 5'd20))) begin
			gtxtransmitter_singleencoder3_alt7_rd0 <= 1'd1;
		end
		if ((((gtxtransmitter_singleencoder3_d[4:0] == 4'd11) | (gtxtransmitter_singleencoder3_d[4:0] == 4'd13)) | (gtxtransmitter_singleencoder3_d[4:0] == 4'd14))) begin
			gtxtransmitter_singleencoder3_alt7_rd1 <= 1'd1;
		end
		if (gtxtransmitter_singleencoder3_k) begin
			gtxtransmitter_singleencoder3_alt7_rd0 <= 1'd1;
			gtxtransmitter_singleencoder3_alt7_rd1 <= 1'd1;
		end
	end
	gtxtransmitter_prbs7_state <= {((((((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4])) ^ ((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]))) ^ (((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5])) ^ ((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])))) ^ ((((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5])) ^ ((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]))) ^ (((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])) ^ ((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0])))) ^ (((((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5])) ^ ((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]))) ^ (((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])) ^ ((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]))) ^ ((((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])) ^ ((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0])) ^ (((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]))))), ((((((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3])) ^ ((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]))) ^ (((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4])) ^ ((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5])))) ^ ((((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4])) ^ ((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]))) ^ (((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5])) ^ ((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]))))) ^ (((((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4])) ^ ((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]))) ^ (((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5])) ^ ((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])))) ^ ((((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5])) ^ ((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]))) ^ (((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])) ^ ((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]))))), ((((((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2])) ^ ((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]))) ^ (((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3])) ^ ((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4])))) ^ ((((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3])) ^ ((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]))) ^ (((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4])) ^ ((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]))))) ^ (((((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3])) ^ ((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]))) ^ (((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4])) ^ ((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5])))) ^ ((((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4])) ^ ((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]))) ^ (((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5])) ^ ((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])))))), (((((((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1])) ^ ((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]))) ^ (((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2])) ^ ((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3])))) ^ ((((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2])) ^ ((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]))) ^ (((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3])) ^ ((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]))))) ^ (((((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2])) ^ ((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]))) ^ (((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3])) ^ ((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4])))) ^ ((((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3])) ^ ((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]))) ^ (((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4])) ^ ((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5])))))), (((((((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])) ^ ((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0])) ^ (((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]))) ^ ((((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1])) ^ ((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2])))) ^ (((((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1])) ^ ((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]))) ^ (((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2])) ^ ((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]))))) ^ ((((((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1])) ^ ((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]))) ^ (((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2])) ^ ((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3])))) ^ ((((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2])) ^ ((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]))) ^ (((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3])) ^ ((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4])))))), (((((((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5])) ^ ((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]))) ^ (((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])) ^ ((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]))) ^ ((((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])) ^ ((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0])) ^ (((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1])))) ^ (((((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])) ^ ((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0])) ^ (((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]))) ^ ((((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1])) ^ ((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]))))) ^ ((((((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])) ^ ((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0])) ^ (((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]))) ^ ((((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1])) ^ ((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2])))) ^ (((((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1])) ^ ((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]))) ^ (((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2])) ^ ((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3])))))), (((((((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4])) ^ ((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]))) ^ (((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5])) ^ ((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])))) ^ ((((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5])) ^ ((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]))) ^ (((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])) ^ ((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0])))) ^ (((((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5])) ^ ((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]))) ^ (((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])) ^ ((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]))) ^ ((((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])) ^ ((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0])) ^ (((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]))))) ^ ((((((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5])) ^ ((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]))) ^ (((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])) ^ ((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]))) ^ ((((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])) ^ ((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0])) ^ (((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1])))) ^ (((((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])) ^ ((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0])) ^ (((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]))) ^ ((((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1])) ^ ((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]))))))};
	gtxtransmitter_prbs7_o <= {(gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]), (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]), (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]), (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]), (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]), (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]), ((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]), ((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])), ((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5])), ((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4])), ((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3])), ((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2])), (((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1])), (((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])) ^ ((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0])), (((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5])) ^ ((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]))), (((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4])) ^ ((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]))), (((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3])) ^ ((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]))), (((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2])) ^ ((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]))), ((((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1])) ^ ((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]))), ((((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])) ^ ((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0])) ^ (((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]))), ((((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5])) ^ ((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]))) ^ (((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])) ^ ((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]))), ((((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4])) ^ ((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]))) ^ (((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5])) ^ ((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])))), ((((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3])) ^ ((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]))) ^ (((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4])) ^ ((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5])))), ((((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2])) ^ ((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]))) ^ (((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3])) ^ ((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4])))), (((((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1])) ^ ((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]))) ^ (((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2])) ^ ((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3])))), (((((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])) ^ ((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0])) ^ (((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]))) ^ ((((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1])) ^ ((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2])))), (((((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5])) ^ ((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]))) ^ (((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])) ^ ((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]))) ^ ((((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])) ^ ((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0])) ^ (((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1])))), (((((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4])) ^ ((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]))) ^ (((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5])) ^ ((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])))) ^ ((((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5])) ^ ((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]))) ^ (((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])) ^ ((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0])))), (((((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3])) ^ ((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]))) ^ (((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4])) ^ ((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5])))) ^ ((((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4])) ^ ((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]))) ^ (((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5])) ^ ((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]))))), (((((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2])) ^ ((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]))) ^ (((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3])) ^ ((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4])))) ^ ((((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3])) ^ ((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]))) ^ (((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4])) ^ ((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]))))), ((((((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1])) ^ ((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]))) ^ (((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2])) ^ ((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3])))) ^ ((((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2])) ^ ((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]))) ^ (((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3])) ^ ((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]))))), ((((((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])) ^ ((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0])) ^ (((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]))) ^ ((((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1])) ^ ((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2])))) ^ (((((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1])) ^ ((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]))) ^ (((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2])) ^ ((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]))))), ((((((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5])) ^ ((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]))) ^ (((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])) ^ ((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]))) ^ ((((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])) ^ ((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0])) ^ (((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1])))) ^ (((((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])) ^ ((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0])) ^ (((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]))) ^ ((((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1])) ^ ((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]))))), ((((((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4])) ^ ((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]))) ^ (((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5])) ^ ((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])))) ^ ((((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5])) ^ ((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]))) ^ (((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])) ^ ((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0])))) ^ (((((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5])) ^ ((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]))) ^ (((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])) ^ ((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]))) ^ ((((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])) ^ ((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0])) ^ (((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]))))), ((((((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3])) ^ ((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]))) ^ (((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4])) ^ ((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5])))) ^ ((((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4])) ^ ((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]))) ^ (((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5])) ^ ((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]))))) ^ (((((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4])) ^ ((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]))) ^ (((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5])) ^ ((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])))) ^ ((((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5])) ^ ((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]))) ^ (((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])) ^ ((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]))))), ((((((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2])) ^ ((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]))) ^ (((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3])) ^ ((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4])))) ^ ((((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3])) ^ ((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]))) ^ (((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4])) ^ ((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]))))) ^ (((((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3])) ^ ((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]))) ^ (((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4])) ^ ((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5])))) ^ ((((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4])) ^ ((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]))) ^ (((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5])) ^ ((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])))))), (((((((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1])) ^ ((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]))) ^ (((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2])) ^ ((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3])))) ^ ((((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2])) ^ ((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]))) ^ (((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3])) ^ ((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]))))) ^ (((((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2])) ^ ((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]))) ^ (((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3])) ^ ((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4])))) ^ ((((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3])) ^ ((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]))) ^ (((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4])) ^ ((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5])))))), (((((((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])) ^ ((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0])) ^ (((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]))) ^ ((((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1])) ^ ((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2])))) ^ (((((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1])) ^ ((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]))) ^ (((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2])) ^ ((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]))))) ^ ((((((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1])) ^ ((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]))) ^ (((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2])) ^ ((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3])))) ^ ((((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2])) ^ ((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]))) ^ (((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3])) ^ ((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4])))))), (((((((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5])) ^ ((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]))) ^ (((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])) ^ ((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]))) ^ ((((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])) ^ ((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0])) ^ (((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1])))) ^ (((((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])) ^ ((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0])) ^ (((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]))) ^ ((((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1])) ^ ((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]))))) ^ ((((((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])) ^ ((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0])) ^ (((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]))) ^ ((((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1])) ^ ((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2])))) ^ (((((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1])) ^ ((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]))) ^ (((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2])) ^ ((gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]) ^ (gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3])))))), (((((((gtxtransmitter_prbs7_state[2] ^ gtxtransmitter_prbs7_state[3]) ^ (gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4])) ^ ((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]))) ^ (((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5])) ^ ((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])))) ^ ((((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5])) ^ ((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]))) ^ (((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])) ^ ((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0])))) ^ (((((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5])) ^ ((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]))) ^ (((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])) ^ ((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]))) ^ ((((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])) ^ ((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0])) ^ (((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]))))) ^ ((((((gtxtransmitter_prbs7_state[3] ^ gtxtransmitter_prbs7_state[4]) ^ (gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5])) ^ ((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]))) ^ (((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])) ^ ((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]))) ^ ((((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])) ^ ((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0])) ^ (((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1])))) ^ (((((gtxtransmitter_prbs7_state[4] ^ gtxtransmitter_prbs7_state[5]) ^ (gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6])) ^ ((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0])) ^ (((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]))) ^ ((((gtxtransmitter_prbs7_state[5] ^ gtxtransmitter_prbs7_state[6]) ^ gtxtransmitter_prbs7_state[0]) ^ (gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1])) ^ ((gtxtransmitter_prbs7_state[0] ^ gtxtransmitter_prbs7_state[1]) ^ (gtxtransmitter_prbs7_state[1] ^ gtxtransmitter_prbs7_state[2]))))))};
	gtxtransmitter_prbs15_state <= {((gtxtransmitter_prbs15_state[2] ^ gtxtransmitter_prbs15_state[3]) ^ (gtxtransmitter_prbs15_state[3] ^ gtxtransmitter_prbs15_state[4])), ((gtxtransmitter_prbs15_state[1] ^ gtxtransmitter_prbs15_state[2]) ^ (gtxtransmitter_prbs15_state[2] ^ gtxtransmitter_prbs15_state[3])), ((gtxtransmitter_prbs15_state[0] ^ gtxtransmitter_prbs15_state[1]) ^ (gtxtransmitter_prbs15_state[1] ^ gtxtransmitter_prbs15_state[2])), (((gtxtransmitter_prbs15_state[13] ^ gtxtransmitter_prbs15_state[14]) ^ gtxtransmitter_prbs15_state[0]) ^ (gtxtransmitter_prbs15_state[0] ^ gtxtransmitter_prbs15_state[1])), (((gtxtransmitter_prbs15_state[12] ^ gtxtransmitter_prbs15_state[13]) ^ (gtxtransmitter_prbs15_state[13] ^ gtxtransmitter_prbs15_state[14])) ^ ((gtxtransmitter_prbs15_state[13] ^ gtxtransmitter_prbs15_state[14]) ^ gtxtransmitter_prbs15_state[0])), (((gtxtransmitter_prbs15_state[11] ^ gtxtransmitter_prbs15_state[12]) ^ (gtxtransmitter_prbs15_state[12] ^ gtxtransmitter_prbs15_state[13])) ^ ((gtxtransmitter_prbs15_state[12] ^ gtxtransmitter_prbs15_state[13]) ^ (gtxtransmitter_prbs15_state[13] ^ gtxtransmitter_prbs15_state[14]))), (((gtxtransmitter_prbs15_state[10] ^ gtxtransmitter_prbs15_state[11]) ^ (gtxtransmitter_prbs15_state[11] ^ gtxtransmitter_prbs15_state[12])) ^ ((gtxtransmitter_prbs15_state[11] ^ gtxtransmitter_prbs15_state[12]) ^ (gtxtransmitter_prbs15_state[12] ^ gtxtransmitter_prbs15_state[13]))), (((gtxtransmitter_prbs15_state[9] ^ gtxtransmitter_prbs15_state[10]) ^ (gtxtransmitter_prbs15_state[10] ^ gtxtransmitter_prbs15_state[11])) ^ ((gtxtransmitter_prbs15_state[10] ^ gtxtransmitter_prbs15_state[11]) ^ (gtxtransmitter_prbs15_state[11] ^ gtxtransmitter_prbs15_state[12]))), (((gtxtransmitter_prbs15_state[8] ^ gtxtransmitter_prbs15_state[9]) ^ (gtxtransmitter_prbs15_state[9] ^ gtxtransmitter_prbs15_state[10])) ^ ((gtxtransmitter_prbs15_state[9] ^ gtxtransmitter_prbs15_state[10]) ^ (gtxtransmitter_prbs15_state[10] ^ gtxtransmitter_prbs15_state[11]))), (((gtxtransmitter_prbs15_state[7] ^ gtxtransmitter_prbs15_state[8]) ^ (gtxtransmitter_prbs15_state[8] ^ gtxtransmitter_prbs15_state[9])) ^ ((gtxtransmitter_prbs15_state[8] ^ gtxtransmitter_prbs15_state[9]) ^ (gtxtransmitter_prbs15_state[9] ^ gtxtransmitter_prbs15_state[10]))), (((gtxtransmitter_prbs15_state[6] ^ gtxtransmitter_prbs15_state[7]) ^ (gtxtransmitter_prbs15_state[7] ^ gtxtransmitter_prbs15_state[8])) ^ ((gtxtransmitter_prbs15_state[7] ^ gtxtransmitter_prbs15_state[8]) ^ (gtxtransmitter_prbs15_state[8] ^ gtxtransmitter_prbs15_state[9]))), (((gtxtransmitter_prbs15_state[5] ^ gtxtransmitter_prbs15_state[6]) ^ (gtxtransmitter_prbs15_state[6] ^ gtxtransmitter_prbs15_state[7])) ^ ((gtxtransmitter_prbs15_state[6] ^ gtxtransmitter_prbs15_state[7]) ^ (gtxtransmitter_prbs15_state[7] ^ gtxtransmitter_prbs15_state[8]))), (((gtxtransmitter_prbs15_state[4] ^ gtxtransmitter_prbs15_state[5]) ^ (gtxtransmitter_prbs15_state[5] ^ gtxtransmitter_prbs15_state[6])) ^ ((gtxtransmitter_prbs15_state[5] ^ gtxtransmitter_prbs15_state[6]) ^ (gtxtransmitter_prbs15_state[6] ^ gtxtransmitter_prbs15_state[7]))), (((gtxtransmitter_prbs15_state[3] ^ gtxtransmitter_prbs15_state[4]) ^ (gtxtransmitter_prbs15_state[4] ^ gtxtransmitter_prbs15_state[5])) ^ ((gtxtransmitter_prbs15_state[4] ^ gtxtransmitter_prbs15_state[5]) ^ (gtxtransmitter_prbs15_state[5] ^ gtxtransmitter_prbs15_state[6]))), (((gtxtransmitter_prbs15_state[2] ^ gtxtransmitter_prbs15_state[3]) ^ (gtxtransmitter_prbs15_state[3] ^ gtxtransmitter_prbs15_state[4])) ^ ((gtxtransmitter_prbs15_state[3] ^ gtxtransmitter_prbs15_state[4]) ^ (gtxtransmitter_prbs15_state[4] ^ gtxtransmitter_prbs15_state[5])))};
	gtxtransmitter_prbs15_o <= {(gtxtransmitter_prbs15_state[13] ^ gtxtransmitter_prbs15_state[14]), (gtxtransmitter_prbs15_state[12] ^ gtxtransmitter_prbs15_state[13]), (gtxtransmitter_prbs15_state[11] ^ gtxtransmitter_prbs15_state[12]), (gtxtransmitter_prbs15_state[10] ^ gtxtransmitter_prbs15_state[11]), (gtxtransmitter_prbs15_state[9] ^ gtxtransmitter_prbs15_state[10]), (gtxtransmitter_prbs15_state[8] ^ gtxtransmitter_prbs15_state[9]), (gtxtransmitter_prbs15_state[7] ^ gtxtransmitter_prbs15_state[8]), (gtxtransmitter_prbs15_state[6] ^ gtxtransmitter_prbs15_state[7]), (gtxtransmitter_prbs15_state[5] ^ gtxtransmitter_prbs15_state[6]), (gtxtransmitter_prbs15_state[4] ^ gtxtransmitter_prbs15_state[5]), (gtxtransmitter_prbs15_state[3] ^ gtxtransmitter_prbs15_state[4]), (gtxtransmitter_prbs15_state[2] ^ gtxtransmitter_prbs15_state[3]), (gtxtransmitter_prbs15_state[1] ^ gtxtransmitter_prbs15_state[2]), (gtxtransmitter_prbs15_state[0] ^ gtxtransmitter_prbs15_state[1]), ((gtxtransmitter_prbs15_state[13] ^ gtxtransmitter_prbs15_state[14]) ^ gtxtransmitter_prbs15_state[0]), ((gtxtransmitter_prbs15_state[12] ^ gtxtransmitter_prbs15_state[13]) ^ (gtxtransmitter_prbs15_state[13] ^ gtxtransmitter_prbs15_state[14])), ((gtxtransmitter_prbs15_state[11] ^ gtxtransmitter_prbs15_state[12]) ^ (gtxtransmitter_prbs15_state[12] ^ gtxtransmitter_prbs15_state[13])), ((gtxtransmitter_prbs15_state[10] ^ gtxtransmitter_prbs15_state[11]) ^ (gtxtransmitter_prbs15_state[11] ^ gtxtransmitter_prbs15_state[12])), ((gtxtransmitter_prbs15_state[9] ^ gtxtransmitter_prbs15_state[10]) ^ (gtxtransmitter_prbs15_state[10] ^ gtxtransmitter_prbs15_state[11])), ((gtxtransmitter_prbs15_state[8] ^ gtxtransmitter_prbs15_state[9]) ^ (gtxtransmitter_prbs15_state[9] ^ gtxtransmitter_prbs15_state[10])), ((gtxtransmitter_prbs15_state[7] ^ gtxtransmitter_prbs15_state[8]) ^ (gtxtransmitter_prbs15_state[8] ^ gtxtransmitter_prbs15_state[9])), ((gtxtransmitter_prbs15_state[6] ^ gtxtransmitter_prbs15_state[7]) ^ (gtxtransmitter_prbs15_state[7] ^ gtxtransmitter_prbs15_state[8])), ((gtxtransmitter_prbs15_state[5] ^ gtxtransmitter_prbs15_state[6]) ^ (gtxtransmitter_prbs15_state[6] ^ gtxtransmitter_prbs15_state[7])), ((gtxtransmitter_prbs15_state[4] ^ gtxtransmitter_prbs15_state[5]) ^ (gtxtransmitter_prbs15_state[5] ^ gtxtransmitter_prbs15_state[6])), ((gtxtransmitter_prbs15_state[3] ^ gtxtransmitter_prbs15_state[4]) ^ (gtxtransmitter_prbs15_state[4] ^ gtxtransmitter_prbs15_state[5])), ((gtxtransmitter_prbs15_state[2] ^ gtxtransmitter_prbs15_state[3]) ^ (gtxtransmitter_prbs15_state[3] ^ gtxtransmitter_prbs15_state[4])), ((gtxtransmitter_prbs15_state[1] ^ gtxtransmitter_prbs15_state[2]) ^ (gtxtransmitter_prbs15_state[2] ^ gtxtransmitter_prbs15_state[3])), ((gtxtransmitter_prbs15_state[0] ^ gtxtransmitter_prbs15_state[1]) ^ (gtxtransmitter_prbs15_state[1] ^ gtxtransmitter_prbs15_state[2])), (((gtxtransmitter_prbs15_state[13] ^ gtxtransmitter_prbs15_state[14]) ^ gtxtransmitter_prbs15_state[0]) ^ (gtxtransmitter_prbs15_state[0] ^ gtxtransmitter_prbs15_state[1])), (((gtxtransmitter_prbs15_state[12] ^ gtxtransmitter_prbs15_state[13]) ^ (gtxtransmitter_prbs15_state[13] ^ gtxtransmitter_prbs15_state[14])) ^ ((gtxtransmitter_prbs15_state[13] ^ gtxtransmitter_prbs15_state[14]) ^ gtxtransmitter_prbs15_state[0])), (((gtxtransmitter_prbs15_state[11] ^ gtxtransmitter_prbs15_state[12]) ^ (gtxtransmitter_prbs15_state[12] ^ gtxtransmitter_prbs15_state[13])) ^ ((gtxtransmitter_prbs15_state[12] ^ gtxtransmitter_prbs15_state[13]) ^ (gtxtransmitter_prbs15_state[13] ^ gtxtransmitter_prbs15_state[14]))), (((gtxtransmitter_prbs15_state[10] ^ gtxtransmitter_prbs15_state[11]) ^ (gtxtransmitter_prbs15_state[11] ^ gtxtransmitter_prbs15_state[12])) ^ ((gtxtransmitter_prbs15_state[11] ^ gtxtransmitter_prbs15_state[12]) ^ (gtxtransmitter_prbs15_state[12] ^ gtxtransmitter_prbs15_state[13]))), (((gtxtransmitter_prbs15_state[9] ^ gtxtransmitter_prbs15_state[10]) ^ (gtxtransmitter_prbs15_state[10] ^ gtxtransmitter_prbs15_state[11])) ^ ((gtxtransmitter_prbs15_state[10] ^ gtxtransmitter_prbs15_state[11]) ^ (gtxtransmitter_prbs15_state[11] ^ gtxtransmitter_prbs15_state[12]))), (((gtxtransmitter_prbs15_state[8] ^ gtxtransmitter_prbs15_state[9]) ^ (gtxtransmitter_prbs15_state[9] ^ gtxtransmitter_prbs15_state[10])) ^ ((gtxtransmitter_prbs15_state[9] ^ gtxtransmitter_prbs15_state[10]) ^ (gtxtransmitter_prbs15_state[10] ^ gtxtransmitter_prbs15_state[11]))), (((gtxtransmitter_prbs15_state[7] ^ gtxtransmitter_prbs15_state[8]) ^ (gtxtransmitter_prbs15_state[8] ^ gtxtransmitter_prbs15_state[9])) ^ ((gtxtransmitter_prbs15_state[8] ^ gtxtransmitter_prbs15_state[9]) ^ (gtxtransmitter_prbs15_state[9] ^ gtxtransmitter_prbs15_state[10]))), (((gtxtransmitter_prbs15_state[6] ^ gtxtransmitter_prbs15_state[7]) ^ (gtxtransmitter_prbs15_state[7] ^ gtxtransmitter_prbs15_state[8])) ^ ((gtxtransmitter_prbs15_state[7] ^ gtxtransmitter_prbs15_state[8]) ^ (gtxtransmitter_prbs15_state[8] ^ gtxtransmitter_prbs15_state[9]))), (((gtxtransmitter_prbs15_state[5] ^ gtxtransmitter_prbs15_state[6]) ^ (gtxtransmitter_prbs15_state[6] ^ gtxtransmitter_prbs15_state[7])) ^ ((gtxtransmitter_prbs15_state[6] ^ gtxtransmitter_prbs15_state[7]) ^ (gtxtransmitter_prbs15_state[7] ^ gtxtransmitter_prbs15_state[8]))), (((gtxtransmitter_prbs15_state[4] ^ gtxtransmitter_prbs15_state[5]) ^ (gtxtransmitter_prbs15_state[5] ^ gtxtransmitter_prbs15_state[6])) ^ ((gtxtransmitter_prbs15_state[5] ^ gtxtransmitter_prbs15_state[6]) ^ (gtxtransmitter_prbs15_state[6] ^ gtxtransmitter_prbs15_state[7]))), (((gtxtransmitter_prbs15_state[3] ^ gtxtransmitter_prbs15_state[4]) ^ (gtxtransmitter_prbs15_state[4] ^ gtxtransmitter_prbs15_state[5])) ^ ((gtxtransmitter_prbs15_state[4] ^ gtxtransmitter_prbs15_state[5]) ^ (gtxtransmitter_prbs15_state[5] ^ gtxtransmitter_prbs15_state[6]))), (((gtxtransmitter_prbs15_state[2] ^ gtxtransmitter_prbs15_state[3]) ^ (gtxtransmitter_prbs15_state[3] ^ gtxtransmitter_prbs15_state[4])) ^ ((gtxtransmitter_prbs15_state[3] ^ gtxtransmitter_prbs15_state[4]) ^ (gtxtransmitter_prbs15_state[4] ^ gtxtransmitter_prbs15_state[5])))};
	gtxtransmitter_prbs31_state <= {(gtxtransmitter_prbs31_state[18] ^ gtxtransmitter_prbs31_state[21]), (gtxtransmitter_prbs31_state[17] ^ gtxtransmitter_prbs31_state[20]), (gtxtransmitter_prbs31_state[16] ^ gtxtransmitter_prbs31_state[19]), (gtxtransmitter_prbs31_state[15] ^ gtxtransmitter_prbs31_state[18]), (gtxtransmitter_prbs31_state[14] ^ gtxtransmitter_prbs31_state[17]), (gtxtransmitter_prbs31_state[13] ^ gtxtransmitter_prbs31_state[16]), (gtxtransmitter_prbs31_state[12] ^ gtxtransmitter_prbs31_state[15]), (gtxtransmitter_prbs31_state[11] ^ gtxtransmitter_prbs31_state[14]), (gtxtransmitter_prbs31_state[10] ^ gtxtransmitter_prbs31_state[13]), (gtxtransmitter_prbs31_state[9] ^ gtxtransmitter_prbs31_state[12]), (gtxtransmitter_prbs31_state[8] ^ gtxtransmitter_prbs31_state[11]), (gtxtransmitter_prbs31_state[7] ^ gtxtransmitter_prbs31_state[10]), (gtxtransmitter_prbs31_state[6] ^ gtxtransmitter_prbs31_state[9]), (gtxtransmitter_prbs31_state[5] ^ gtxtransmitter_prbs31_state[8]), (gtxtransmitter_prbs31_state[4] ^ gtxtransmitter_prbs31_state[7]), (gtxtransmitter_prbs31_state[3] ^ gtxtransmitter_prbs31_state[6]), (gtxtransmitter_prbs31_state[2] ^ gtxtransmitter_prbs31_state[5]), (gtxtransmitter_prbs31_state[1] ^ gtxtransmitter_prbs31_state[4]), (gtxtransmitter_prbs31_state[0] ^ gtxtransmitter_prbs31_state[3]), ((gtxtransmitter_prbs31_state[27] ^ gtxtransmitter_prbs31_state[30]) ^ gtxtransmitter_prbs31_state[2]), ((gtxtransmitter_prbs31_state[26] ^ gtxtransmitter_prbs31_state[29]) ^ gtxtransmitter_prbs31_state[1]), ((gtxtransmitter_prbs31_state[25] ^ gtxtransmitter_prbs31_state[28]) ^ gtxtransmitter_prbs31_state[0]), ((gtxtransmitter_prbs31_state[24] ^ gtxtransmitter_prbs31_state[27]) ^ (gtxtransmitter_prbs31_state[27] ^ gtxtransmitter_prbs31_state[30])), ((gtxtransmitter_prbs31_state[23] ^ gtxtransmitter_prbs31_state[26]) ^ (gtxtransmitter_prbs31_state[26] ^ gtxtransmitter_prbs31_state[29])), ((gtxtransmitter_prbs31_state[22] ^ gtxtransmitter_prbs31_state[25]) ^ (gtxtransmitter_prbs31_state[25] ^ gtxtransmitter_prbs31_state[28])), ((gtxtransmitter_prbs31_state[21] ^ gtxtransmitter_prbs31_state[24]) ^ (gtxtransmitter_prbs31_state[24] ^ gtxtransmitter_prbs31_state[27])), ((gtxtransmitter_prbs31_state[20] ^ gtxtransmitter_prbs31_state[23]) ^ (gtxtransmitter_prbs31_state[23] ^ gtxtransmitter_prbs31_state[26])), ((gtxtransmitter_prbs31_state[19] ^ gtxtransmitter_prbs31_state[22]) ^ (gtxtransmitter_prbs31_state[22] ^ gtxtransmitter_prbs31_state[25])), ((gtxtransmitter_prbs31_state[18] ^ gtxtransmitter_prbs31_state[21]) ^ (gtxtransmitter_prbs31_state[21] ^ gtxtransmitter_prbs31_state[24])), ((gtxtransmitter_prbs31_state[17] ^ gtxtransmitter_prbs31_state[20]) ^ (gtxtransmitter_prbs31_state[20] ^ gtxtransmitter_prbs31_state[23])), ((gtxtransmitter_prbs31_state[16] ^ gtxtransmitter_prbs31_state[19]) ^ (gtxtransmitter_prbs31_state[19] ^ gtxtransmitter_prbs31_state[22]))};
	gtxtransmitter_prbs31_o <= {(gtxtransmitter_prbs31_state[27] ^ gtxtransmitter_prbs31_state[30]), (gtxtransmitter_prbs31_state[26] ^ gtxtransmitter_prbs31_state[29]), (gtxtransmitter_prbs31_state[25] ^ gtxtransmitter_prbs31_state[28]), (gtxtransmitter_prbs31_state[24] ^ gtxtransmitter_prbs31_state[27]), (gtxtransmitter_prbs31_state[23] ^ gtxtransmitter_prbs31_state[26]), (gtxtransmitter_prbs31_state[22] ^ gtxtransmitter_prbs31_state[25]), (gtxtransmitter_prbs31_state[21] ^ gtxtransmitter_prbs31_state[24]), (gtxtransmitter_prbs31_state[20] ^ gtxtransmitter_prbs31_state[23]), (gtxtransmitter_prbs31_state[19] ^ gtxtransmitter_prbs31_state[22]), (gtxtransmitter_prbs31_state[18] ^ gtxtransmitter_prbs31_state[21]), (gtxtransmitter_prbs31_state[17] ^ gtxtransmitter_prbs31_state[20]), (gtxtransmitter_prbs31_state[16] ^ gtxtransmitter_prbs31_state[19]), (gtxtransmitter_prbs31_state[15] ^ gtxtransmitter_prbs31_state[18]), (gtxtransmitter_prbs31_state[14] ^ gtxtransmitter_prbs31_state[17]), (gtxtransmitter_prbs31_state[13] ^ gtxtransmitter_prbs31_state[16]), (gtxtransmitter_prbs31_state[12] ^ gtxtransmitter_prbs31_state[15]), (gtxtransmitter_prbs31_state[11] ^ gtxtransmitter_prbs31_state[14]), (gtxtransmitter_prbs31_state[10] ^ gtxtransmitter_prbs31_state[13]), (gtxtransmitter_prbs31_state[9] ^ gtxtransmitter_prbs31_state[12]), (gtxtransmitter_prbs31_state[8] ^ gtxtransmitter_prbs31_state[11]), (gtxtransmitter_prbs31_state[7] ^ gtxtransmitter_prbs31_state[10]), (gtxtransmitter_prbs31_state[6] ^ gtxtransmitter_prbs31_state[9]), (gtxtransmitter_prbs31_state[5] ^ gtxtransmitter_prbs31_state[8]), (gtxtransmitter_prbs31_state[4] ^ gtxtransmitter_prbs31_state[7]), (gtxtransmitter_prbs31_state[3] ^ gtxtransmitter_prbs31_state[6]), (gtxtransmitter_prbs31_state[2] ^ gtxtransmitter_prbs31_state[5]), (gtxtransmitter_prbs31_state[1] ^ gtxtransmitter_prbs31_state[4]), (gtxtransmitter_prbs31_state[0] ^ gtxtransmitter_prbs31_state[3]), ((gtxtransmitter_prbs31_state[27] ^ gtxtransmitter_prbs31_state[30]) ^ gtxtransmitter_prbs31_state[2]), ((gtxtransmitter_prbs31_state[26] ^ gtxtransmitter_prbs31_state[29]) ^ gtxtransmitter_prbs31_state[1]), ((gtxtransmitter_prbs31_state[25] ^ gtxtransmitter_prbs31_state[28]) ^ gtxtransmitter_prbs31_state[0]), ((gtxtransmitter_prbs31_state[24] ^ gtxtransmitter_prbs31_state[27]) ^ (gtxtransmitter_prbs31_state[27] ^ gtxtransmitter_prbs31_state[30])), ((gtxtransmitter_prbs31_state[23] ^ gtxtransmitter_prbs31_state[26]) ^ (gtxtransmitter_prbs31_state[26] ^ gtxtransmitter_prbs31_state[29])), ((gtxtransmitter_prbs31_state[22] ^ gtxtransmitter_prbs31_state[25]) ^ (gtxtransmitter_prbs31_state[25] ^ gtxtransmitter_prbs31_state[28])), ((gtxtransmitter_prbs31_state[21] ^ gtxtransmitter_prbs31_state[24]) ^ (gtxtransmitter_prbs31_state[24] ^ gtxtransmitter_prbs31_state[27])), ((gtxtransmitter_prbs31_state[20] ^ gtxtransmitter_prbs31_state[23]) ^ (gtxtransmitter_prbs31_state[23] ^ gtxtransmitter_prbs31_state[26])), ((gtxtransmitter_prbs31_state[19] ^ gtxtransmitter_prbs31_state[22]) ^ (gtxtransmitter_prbs31_state[22] ^ gtxtransmitter_prbs31_state[25])), ((gtxtransmitter_prbs31_state[18] ^ gtxtransmitter_prbs31_state[21]) ^ (gtxtransmitter_prbs31_state[21] ^ gtxtransmitter_prbs31_state[24])), ((gtxtransmitter_prbs31_state[17] ^ gtxtransmitter_prbs31_state[20]) ^ (gtxtransmitter_prbs31_state[20] ^ gtxtransmitter_prbs31_state[23])), ((gtxtransmitter_prbs31_state[16] ^ gtxtransmitter_prbs31_state[19]) ^ (gtxtransmitter_prbs31_state[19] ^ gtxtransmitter_prbs31_state[22]))};
	if (tx_rst) begin
		gtxtransmitter_output0 <= 10'd0;
		gtxtransmitter_output1 <= 10'd0;
		gtxtransmitter_output2 <= 10'd0;
		gtxtransmitter_output3 <= 10'd0;
		gtxtransmitter_disparity0 <= 1'd0;
		gtxtransmitter_disparity1 <= 1'd0;
		gtxtransmitter_disparity2 <= 1'd0;
		gtxtransmitter_disparity3 <= 1'd0;
		gtxtransmitter_singleencoder0_disp_in <= 1'd0;
		gtxtransmitter_singleencoder0_code6b <= 6'd0;
		gtxtransmitter_singleencoder0_code6b_unbalanced <= 1'd0;
		gtxtransmitter_singleencoder0_code6b_flip <= 1'd0;
		gtxtransmitter_singleencoder0_code4b <= 4'd0;
		gtxtransmitter_singleencoder0_code4b_unbalanced <= 1'd0;
		gtxtransmitter_singleencoder0_code4b_flip <= 1'd0;
		gtxtransmitter_singleencoder0_alt7_rd0 <= 1'd0;
		gtxtransmitter_singleencoder0_alt7_rd1 <= 1'd0;
		gtxtransmitter_singleencoder1_code6b <= 6'd0;
		gtxtransmitter_singleencoder1_code6b_unbalanced <= 1'd0;
		gtxtransmitter_singleencoder1_code6b_flip <= 1'd0;
		gtxtransmitter_singleencoder1_code4b <= 4'd0;
		gtxtransmitter_singleencoder1_code4b_unbalanced <= 1'd0;
		gtxtransmitter_singleencoder1_code4b_flip <= 1'd0;
		gtxtransmitter_singleencoder1_alt7_rd0 <= 1'd0;
		gtxtransmitter_singleencoder1_alt7_rd1 <= 1'd0;
		gtxtransmitter_singleencoder2_code6b <= 6'd0;
		gtxtransmitter_singleencoder2_code6b_unbalanced <= 1'd0;
		gtxtransmitter_singleencoder2_code6b_flip <= 1'd0;
		gtxtransmitter_singleencoder2_code4b <= 4'd0;
		gtxtransmitter_singleencoder2_code4b_unbalanced <= 1'd0;
		gtxtransmitter_singleencoder2_code4b_flip <= 1'd0;
		gtxtransmitter_singleencoder2_alt7_rd0 <= 1'd0;
		gtxtransmitter_singleencoder2_alt7_rd1 <= 1'd0;
		gtxtransmitter_singleencoder3_code6b <= 6'd0;
		gtxtransmitter_singleencoder3_code6b_unbalanced <= 1'd0;
		gtxtransmitter_singleencoder3_code6b_flip <= 1'd0;
		gtxtransmitter_singleencoder3_code4b <= 4'd0;
		gtxtransmitter_singleencoder3_code4b_unbalanced <= 1'd0;
		gtxtransmitter_singleencoder3_code4b_flip <= 1'd0;
		gtxtransmitter_singleencoder3_alt7_rd0 <= 1'd0;
		gtxtransmitter_singleencoder3_alt7_rd1 <= 1'd0;
		gtxtransmitter_prbs7_o <= 40'd0;
		gtxtransmitter_prbs7_state <= 7'd1;
		gtxtransmitter_prbs15_o <= 40'd0;
		gtxtransmitter_prbs15_state <= 15'd1;
		gtxtransmitter_prbs31_o <= 40'd0;
		gtxtransmitter_prbs31_state <= 31'd1;
	end
	xilinxmultiregimpl4_regs0 <= gtxtransmitter_config0;
	xilinxmultiregimpl4_regs1 <= xilinxmultiregimpl4_regs0;
end

always @(posedge write_clk) begin
	core_ebuf_wrpointer <= (core_ebuf_wrpointer + 1'd1);
	if (write_rst) begin
		core_ebuf_wrpointer <= 2'd2;
	end
end

GTXE2_COMMON #(
	.QPLL_CFG(23'd6816129),
	.QPLL_FBDIV(9'd288),
	.QPLL_FBDIV_RATIO(1'd1),
	.QPLL_REFCLK_DIV(1'd1)
) GTXE2_COMMON (
	.GTREFCLK0(crg_refclk),
	.QPLLLOCKEN(1'd1),
	.QPLLREFCLKSEL(1'd1),
	.QPLLRESET(gtxquadpll_reset),
	.QPLLLOCK(gtxquadpll_lock),
	.QPLLOUTCLK(gtxquadpll_clk),
	.QPLLOUTREFCLK(gtxquadpll_refclk)
);

GTXE2_CHANNEL #(
	.CPLL_CFG(24'd12322780),
	.CPLL_FBDIV(1'd1),
	.CPLL_FBDIV_45(3'd4),
	.CPLL_REFCLK_DIV(1'd1),
	.PD_TRANS_TIME_FROM_P2(6'd60),
	.PD_TRANS_TIME_NONE_P2(6'd60),
	.PD_TRANS_TIME_TO_P2(7'd100),
	.PMA_RSV(17'd99456),
	.PMA_RSV2(14'd8272),
	.PMA_RSV3(1'd0),
	.PMA_RSV4(1'd0),
	.RXOUT_DIV(1'd1),
	.RX_BIAS_CFG(3'd4),
	.RX_CLK25_DIV(3'd5),
	.RX_CM_TRIM(2'd2),
	.RX_OS_CFG(8'd128),
	.TXBUF_EN("FALSE"),
	.TXOUT_DIV(1'd1),
	.TX_CLK25_DIV(3'd5),
	.TX_DATA_WIDTH(6'd40),
	.TX_INT_DATAWIDTH(1'd1),
	.TX_MAINCURSOR_SEL(1'd1),
	.TX_XCLK_SEL("TXUSR")
) GTXE2_CHANNEL (
	.CPLLLOCKEN(1'd1),
	.CPLLREFCLKSEL(1'd1),
	.CPLLRESET(1'd0),
	.GTREFCLK0(1'd0),
	.GTTXRESET(gtxtransmitter_gtXxreset0),
	.QPLLCLK(gtxquadpll_clk),
	.QPLLREFCLK(gtxquadpll_refclk),
	.RXPD(2'd3),
	.TSTIN(20'd1048575),
	.TXBUFDIFFCTRL(3'd4),
	.TXCHARDISPMODE({gtxtransmitter_txdata[39], gtxtransmitter_txdata[29], gtxtransmitter_txdata[19], gtxtransmitter_txdata[9]}),
	.TXCHARDISPVAL({gtxtransmitter_txdata[38], gtxtransmitter_txdata[28], gtxtransmitter_txdata[18], gtxtransmitter_txdata[8]}),
	.TXDATA({gtxtransmitter_txdata[37:30], gtxtransmitter_txdata[27:20], gtxtransmitter_txdata[17:10], gtxtransmitter_txdata[7:0]}),
	.TXDIFFCTRL(gtxtransmitter_txdiffcttrl_storage),
	.TXDLYSRESET(gtxtransmitter_Xxdlysreset0),
	.TXMAINCURSOR(gtxtransmitter_txmaincursor_storage),
	.TXOUTCLKSEL(2'd3),
	.TXPOLARITY(1'd0),
	.TXPOSTCURSOR(gtxtransmitter_txpostcursor_storage),
	.TXPRECURSOR(gtxtransmitter_txprecursor_storage),
	.TXSYSCLKSEL(2'd3),
	.TXUSERRDY(gtxtransmitter_Xxuserrdy0),
	.TXUSRCLK(tx_clk),
	.TXUSRCLK2(tx_clk),
	.CPLLLOCK(gtxtransmitter),
	.GTXTXN(jesd_txp),
	.GTXTXP(jesd_txn),
	.TXDLYSRESETDONE(gtxtransmitter_Xxdlysresetdone0),
	.TXOUTCLK(gtxtransmitter_txoutclk),
	.TXPHALIGNDONE(gtxtransmitter_Xxphaligndone0),
	.TXRESETDONE(gtxtransmitter_Xxresetdone0)
);

BUFH BUFH(
	.I(gtxtransmitter_txoutclk),
	.O(tx_clk)
);

reg [35:0] storage[0:3];
reg [1:0] memadr;
reg [1:0] memadr_1;
always @(posedge write_clk) begin
	if (core_ebuf_wrport_we)
		storage[core_ebuf_wrport_adr] <= core_ebuf_wrport_dat_w;
	memadr <= core_ebuf_wrport_adr;
end

always @(posedge read_clk) begin
	memadr_1 <= core_ebuf_rdport_adr;
end

assign core_ebuf_wrport_dat_r = storage[memadr];
assign core_ebuf_rdport_dat_r = storage[memadr_1];

reg [31:0] data_lut[0:63];
always @(posedge jesd_clk) begin
end

assign core_link_ilas_data_port_dat_r = data_lut[core_link_ilas_data_port_adr];

initial begin
	$readmemh("data_lut.init", data_lut);
end

reg [3:0] ctrl_lut[0:63];
always @(posedge jesd_clk) begin
end

assign core_link_ilas_ctrl_port_dat_r = ctrl_lut[core_link_ilas_ctrl_port_adr];

initial begin
	$readmemh("ctrl_lut.init", ctrl_lut);
end

(* ars_ff1 = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE (
	.C(jesd_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(crg_storage),
	.Q(xilinxasyncresetsynchronizerimpl0_rst_meta)
);

(* ars_ff2 = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_1 (
	.C(jesd_clk),
	.CE(1'd1),
	.D(xilinxasyncresetsynchronizerimpl0_rst_meta),
	.PRE(crg_storage),
	.Q(jesd_rst)
);

(* ars_ff1 = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_2 (
	.C(tx_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(xilinxasyncresetsynchronizerimpl1),
	.Q(xilinxasyncresetsynchronizerimpl1_rst_meta)
);

(* ars_ff2 = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_3 (
	.C(tx_clk),
	.CE(1'd1),
	.D(xilinxasyncresetsynchronizerimpl1_rst_meta),
	.PRE(xilinxasyncresetsynchronizerimpl1),
	.Q(tx_rst)
);

(* ars_ff1 = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_4 (
	.C(write_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(core_ebuf_reset),
	.Q(xilinxasyncresetsynchronizerimpl2_rst_meta)
);

(* ars_ff2 = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_5 (
	.C(write_clk),
	.CE(1'd1),
	.D(xilinxasyncresetsynchronizerimpl2_rst_meta),
	.PRE(core_ebuf_reset),
	.Q(write_rst)
);

(* ars_ff1 = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_6 (
	.C(read_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(core_ebuf_reset),
	.Q(xilinxasyncresetsynchronizerimpl3_rst_meta)
);

(* ars_ff2 = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_7 (
	.C(read_clk),
	.CE(1'd1),
	.D(xilinxasyncresetsynchronizerimpl3_rst_meta),
	.PRE(core_ebuf_reset),
	.Q(read_rst)
);

endmodule
