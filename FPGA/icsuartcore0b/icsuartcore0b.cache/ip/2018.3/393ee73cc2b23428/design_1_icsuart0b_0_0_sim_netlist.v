// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Oct 21 18:29:04 2019
// Host        : graffias7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_icsuart0b_0_0_sim_netlist.v
// Design      : design_1_icsuart0b_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_icsuart0b_0_0,icsuart0b_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "icsuart0b_v1_0,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (TxD,
    RxD,
    OE,
    Debug_fifo_wdata,
    Debug_fifo_wvalid,
    Debug_fifo_empty,
    Debug_rx_data,
    Debug_rx_perror,
    Debug_rx_valid,
    Debug_rx_pace,
    Debug_rx_sample,
    Debug_rx_d,
    Debug_rx_trigger,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  output TxD;
  input RxD;
  output OE;
  output [31:0]Debug_fifo_wdata;
  output Debug_fifo_wvalid;
  output Debug_fifo_empty;
  output [7:0]Debug_rx_data;
  output Debug_rx_perror;
  output Debug_rx_valid;
  output Debug_rx_pace;
  output Debug_rx_sample;
  output Debug_rx_d;
  output Debug_rx_trigger;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 8, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [4:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [4:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire Debug_fifo_empty;
  wire [31:0]Debug_fifo_wdata;
  wire Debug_fifo_wvalid;
  wire Debug_rx_d;
  wire [7:0]Debug_rx_data;
  wire Debug_rx_pace;
  wire Debug_rx_perror;
  wire Debug_rx_sample;
  wire Debug_rx_trigger;
  wire Debug_rx_valid;
  wire OE;
  wire RxD;
  wire TxD;
  wire s00_axi_aclk;
  wire [4:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [4:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_icsuart0b_v1_0 U0
       (.D(Debug_rx_data),
        .Debug_fifo_empty(Debug_fifo_empty),
        .Debug_fifo_wdata(Debug_fifo_wdata),
        .Debug_rx_d(Debug_rx_d),
        .Debug_rx_pace(Debug_rx_pace),
        .Debug_rx_perror(Debug_rx_perror),
        .Debug_rx_trigger(Debug_rx_trigger),
        .Debug_rx_valid(Debug_rx_valid),
        .OE(OE),
        .RxD(RxD),
        .TxD(TxD),
        .axi_rvalid_reg(s00_axi_rvalid),
        .r_sample_reg(Debug_rx_sample),
        .\rx_fifo_reg[wvalid] (Debug_fifo_wvalid),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[4:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[4:2]),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_icsuart0_core
   (s_status,
    \r_output_reg[valid] ,
    E,
    r_rxd_reg,
    r_trigger_reg,
    Debug_fifo_empty,
    TxD,
    OE,
    \rx_fifo_reg[wvalid]_0 ,
    r_sample_reg,
    Debug_rx_perror,
    D,
    Debug_fifo_wdata,
    \r_output_reg[data][31] ,
    SR,
    s00_axi_aclk,
    s00_axi_aresetn,
    s_tx_data_valid,
    s_rx_data_read,
    Q,
    RxD);
  output [3:0]s_status;
  output \r_output_reg[valid] ;
  output [0:0]E;
  output r_rxd_reg;
  output r_trigger_reg;
  output Debug_fifo_empty;
  output TxD;
  output OE;
  output \rx_fifo_reg[wvalid]_0 ;
  output r_sample_reg;
  output Debug_rx_perror;
  output [7:0]D;
  output [31:0]Debug_fifo_wdata;
  output [31:0]\r_output_reg[data][31] ;
  input [0:0]SR;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input s_tx_data_valid;
  input s_rx_data_read;
  input [31:0]Q;
  input RxD;

  wire [7:0]D;
  wire Debug_fifo_empty;
  wire [31:0]Debug_fifo_wdata;
  wire Debug_rx_perror;
  wire [0:0]E;
  wire \FSM_onehot_tx_stat[4]_i_4_n_0 ;
  wire \FSM_onehot_tx_stat_reg_n_0_[0] ;
  wire \FSM_onehot_tx_stat_reg_n_0_[1] ;
  wire \FSM_onehot_tx_stat_reg_n_0_[2] ;
  wire \FSM_onehot_tx_stat_reg_n_0_[3] ;
  wire \FSM_onehot_tx_stat_reg_n_0_[4] ;
  wire OE;
  wire [31:0]Q;
  wire RSTB;
  wire RxD;
  wire [0:0]SR;
  wire TxD;
  wire i_rx_n_10;
  wire i_rx_n_11;
  wire i_rx_n_12;
  wire i_rx_n_13;
  wire i_rx_n_14;
  wire i_rx_n_23;
  wire i_rx_n_6;
  wire i_rx_n_7;
  wire i_rx_n_8;
  wire i_rx_n_9;
  wire i_tx_fifo_n_2;
  wire i_tx_fifo_n_4;
  wire i_tx_n_3;
  wire i_tx_n_4;
  wire i_tx_n_5;
  wire i_tx_n_6;
  wire i_tx_n_7;
  wire [1:0]p_0_in_0;
  wire [31:0]\r_output_reg[data] ;
  wire [31:0]\r_output_reg[data][31] ;
  wire \r_output_reg[valid] ;
  wire r_rx_data;
  wire r_rxd_reg;
  wire r_sample_reg;
  wire r_trigger_reg;
  wire [31:0]r_tx_data__0;
  wire \rx_fifo_reg[wvalid]_0 ;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s_rx_data_read;
  wire [3:0]s_status;
  wire s_tx_data_valid;
  wire \tx[ready] ;
  wire \tx_fifo_reg[renable_n_0_] ;
  wire [7:0]\tx_reg[data]0 ;
  wire [7:0]\tx_reg[data]__0 ;
  wire \tx_reg[valid_n_0_] ;
  wire tx_stat;
  wire [1:0]tx_stat_reg;
  wire [1:0]v_byte_count__0;
  wire \v_byte_count_reg[0]__0_n_0 ;
  wire \v_byte_count_reg[1]__0_n_0 ;
  wire \v_byte_count_reg_n_0_[2] ;
  wire [1:0]v_num_bytes;

  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_tx_stat[4]_i_2 
       (.I0(\FSM_onehot_tx_stat_reg_n_0_[2] ),
        .I1(\FSM_onehot_tx_stat_reg_n_0_[3] ),
        .O(tx_stat_reg[1]));
  LUT6 #(
    .INIT(64'h00000000BBFB3BF3)) 
    \FSM_onehot_tx_stat[4]_i_4 
       (.I0(p_0_in_0[0]),
        .I1(r_tx_data__0[7]),
        .I2(v_byte_count__0[1]),
        .I3(v_byte_count__0[0]),
        .I4(p_0_in_0[1]),
        .I5(\tx_reg[valid_n_0_] ),
        .O(\FSM_onehot_tx_stat[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_tx_stat[4]_i_5 
       (.I0(\FSM_onehot_tx_stat_reg_n_0_[1] ),
        .I1(\FSM_onehot_tx_stat_reg_n_0_[3] ),
        .O(tx_stat_reg[0]));
  (* FSM_ENCODED_STATES = "stat_tx_end:10000,stat_tx_wait:01000,stat_tx_transmit:00100,stat_tx_get_data:00010,stat_tx_idle:00001," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_tx_stat_reg[0] 
       (.C(s00_axi_aclk),
        .CE(tx_stat),
        .D(\FSM_onehot_tx_stat_reg_n_0_[4] ),
        .Q(\FSM_onehot_tx_stat_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "stat_tx_end:10000,stat_tx_wait:01000,stat_tx_transmit:00100,stat_tx_get_data:00010,stat_tx_idle:00001," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_tx_stat_reg[1] 
       (.C(s00_axi_aclk),
        .CE(tx_stat),
        .D(\FSM_onehot_tx_stat_reg_n_0_[0] ),
        .Q(\FSM_onehot_tx_stat_reg_n_0_[1] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "stat_tx_end:10000,stat_tx_wait:01000,stat_tx_transmit:00100,stat_tx_get_data:00010,stat_tx_idle:00001," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_tx_stat_reg[2] 
       (.C(s00_axi_aclk),
        .CE(tx_stat),
        .D(\FSM_onehot_tx_stat_reg_n_0_[1] ),
        .Q(\FSM_onehot_tx_stat_reg_n_0_[2] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "stat_tx_end:10000,stat_tx_wait:01000,stat_tx_transmit:00100,stat_tx_get_data:00010,stat_tx_idle:00001," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_tx_stat_reg[3] 
       (.C(s00_axi_aclk),
        .CE(tx_stat),
        .D(\FSM_onehot_tx_stat_reg_n_0_[2] ),
        .Q(\FSM_onehot_tx_stat_reg_n_0_[3] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "stat_tx_end:10000,stat_tx_wait:01000,stat_tx_transmit:00100,stat_tx_get_data:00010,stat_tx_idle:00001," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_tx_stat_reg[4] 
       (.C(s00_axi_aclk),
        .CE(tx_stat),
        .D(\FSM_onehot_tx_stat_reg_n_0_[3] ),
        .Q(\FSM_onehot_tx_stat_reg_n_0_[4] ),
        .R(SR));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx i_rx
       (.D(D),
        .Debug_rx_perror(Debug_rx_perror),
        .E({i_rx_n_6,i_rx_n_7,i_rx_n_8,i_rx_n_9}),
        .RSTB(RSTB),
        .RxD(RxD),
        .SR(SR),
        .\r_output_reg[valid]_0 (\r_output_reg[valid] ),
        .r_pace_reg_0(E),
        .r_rxd_reg_0(r_rxd_reg),
        .r_sample_reg_0(r_sample_reg),
        .r_trigger_reg_0(r_trigger_reg),
        .\rx_fifo_reg[wvalid] (\rx_fifo_reg[wvalid]_0 ),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(i_rx_n_10),
        .\v_byte_count_reg[0]__0 (i_rx_n_13),
        .\v_byte_count_reg[0]__0_0 (s_status[3]),
        .\v_byte_count_reg[1]__0 (i_rx_n_12),
        .\v_byte_count_reg[2] (i_rx_n_11),
        .\v_byte_count_reg[2]_0 (\v_byte_count_reg[1]__0_n_0 ),
        .\v_byte_count_reg[2]_1 (\v_byte_count_reg[0]__0_n_0 ),
        .\v_byte_count_reg[2]_2 (\v_byte_count_reg_n_0_[2] ),
        .v_num_bytes(v_num_bytes),
        .\v_num_bytes_reg[0] (i_rx_n_23),
        .\v_num_bytes_reg[1] (i_rx_n_14));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_fifo i_rx_fifo
       (.Debug_fifo_empty(Debug_fifo_empty),
        .Debug_fifo_wdata(Debug_fifo_wdata),
        .SR(SR),
        .\r_output_reg[data][31]_0 (\r_output_reg[data][31] ),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s_rx_data_read(s_rx_data_read),
        .s_status(s_status[2]),
        .\v_dcount_reg[3]_0 (\rx_fifo_reg[wvalid]_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_tx i_tx
       (.E(i_tx_n_3),
        .\FSM_onehot_tx_stat_reg[1] (i_tx_n_7),
        .\FSM_onehot_tx_stat_reg[2] (i_tx_n_6),
        .\FSM_sequential_stat_reg[1]_0 (\tx_reg[valid_n_0_] ),
        .OE(OE),
        .Q({\FSM_onehot_tx_stat_reg_n_0_[4] ,\FSM_onehot_tx_stat_reg_n_0_[3] ,\FSM_onehot_tx_stat_reg_n_0_[2] ,\FSM_onehot_tx_stat_reg_n_0_[1] }),
        .SR(SR),
        .TxD(TxD),
        .r_flag_reg(\rx_fifo_reg[wvalid]_0 ),
        .r_flag_reg_0(s_status[3]),
        .r_ready_reg_0(i_tx_n_5),
        .\rx_fifo_reg[wvalid] (i_tx_n_4),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .\tx[ready] (\tx[ready] ),
        .v_byte_count__0(v_byte_count__0),
        .\v_data_reg[7]_0 (\tx_reg[data]__0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_fifo_0 i_tx_fifo
       (.E(i_tx_fifo_n_2),
        .\FSM_onehot_tx_stat_reg[0] (\FSM_onehot_tx_stat[4]_i_4_n_0 ),
        .\FSM_onehot_tx_stat_reg[4] (tx_stat),
        .Q({\FSM_onehot_tx_stat_reg_n_0_[4] ,\FSM_onehot_tx_stat_reg_n_0_[3] ,\FSM_onehot_tx_stat_reg_n_0_[2] ,\FSM_onehot_tx_stat_reg_n_0_[1] ,\FSM_onehot_tx_stat_reg_n_0_[0] }),
        .SR(SR),
        .\r_output_reg[data] (\r_output_reg[data] ),
        .\r_output_reg[data][31]_0 (Q),
        .\r_output_reg[valid]_0 (\tx_fifo_reg[renable_n_0_] ),
        .\r_status_reg[empty]_0 (i_tx_fifo_n_4),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s_status(s_status[1:0]),
        .s_tx_data_valid(s_tx_data_valid),
        .\tx[ready] (\tx[ready] ),
        .tx_stat_reg(tx_stat_reg));
  FDRE r_flag_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(i_tx_n_4),
        .Q(s_status[3]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \r_rx_data[31]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(s_status[3]),
        .O(r_rx_data));
  FDRE \r_rx_data_reg[0] 
       (.C(s00_axi_aclk),
        .CE(i_rx_n_9),
        .D(D[0]),
        .Q(Debug_fifo_wdata[0]),
        .R(r_rx_data));
  FDRE \r_rx_data_reg[10] 
       (.C(s00_axi_aclk),
        .CE(i_rx_n_8),
        .D(D[2]),
        .Q(Debug_fifo_wdata[10]),
        .R(r_rx_data));
  FDRE \r_rx_data_reg[11] 
       (.C(s00_axi_aclk),
        .CE(i_rx_n_8),
        .D(D[3]),
        .Q(Debug_fifo_wdata[11]),
        .R(r_rx_data));
  FDRE \r_rx_data_reg[12] 
       (.C(s00_axi_aclk),
        .CE(i_rx_n_8),
        .D(D[4]),
        .Q(Debug_fifo_wdata[12]),
        .R(r_rx_data));
  FDRE \r_rx_data_reg[13] 
       (.C(s00_axi_aclk),
        .CE(i_rx_n_8),
        .D(D[5]),
        .Q(Debug_fifo_wdata[13]),
        .R(r_rx_data));
  FDRE \r_rx_data_reg[14] 
       (.C(s00_axi_aclk),
        .CE(i_rx_n_8),
        .D(D[6]),
        .Q(Debug_fifo_wdata[14]),
        .R(r_rx_data));
  FDRE \r_rx_data_reg[15] 
       (.C(s00_axi_aclk),
        .CE(i_rx_n_8),
        .D(D[7]),
        .Q(Debug_fifo_wdata[15]),
        .R(r_rx_data));
  FDRE \r_rx_data_reg[16] 
       (.C(s00_axi_aclk),
        .CE(i_rx_n_7),
        .D(D[0]),
        .Q(Debug_fifo_wdata[16]),
        .R(r_rx_data));
  FDRE \r_rx_data_reg[17] 
       (.C(s00_axi_aclk),
        .CE(i_rx_n_7),
        .D(D[1]),
        .Q(Debug_fifo_wdata[17]),
        .R(r_rx_data));
  FDRE \r_rx_data_reg[18] 
       (.C(s00_axi_aclk),
        .CE(i_rx_n_7),
        .D(D[2]),
        .Q(Debug_fifo_wdata[18]),
        .R(r_rx_data));
  FDRE \r_rx_data_reg[19] 
       (.C(s00_axi_aclk),
        .CE(i_rx_n_7),
        .D(D[3]),
        .Q(Debug_fifo_wdata[19]),
        .R(r_rx_data));
  FDRE \r_rx_data_reg[1] 
       (.C(s00_axi_aclk),
        .CE(i_rx_n_9),
        .D(D[1]),
        .Q(Debug_fifo_wdata[1]),
        .R(r_rx_data));
  FDRE \r_rx_data_reg[20] 
       (.C(s00_axi_aclk),
        .CE(i_rx_n_7),
        .D(D[4]),
        .Q(Debug_fifo_wdata[20]),
        .R(r_rx_data));
  FDRE \r_rx_data_reg[21] 
       (.C(s00_axi_aclk),
        .CE(i_rx_n_7),
        .D(D[5]),
        .Q(Debug_fifo_wdata[21]),
        .R(r_rx_data));
  FDRE \r_rx_data_reg[22] 
       (.C(s00_axi_aclk),
        .CE(i_rx_n_7),
        .D(D[6]),
        .Q(Debug_fifo_wdata[22]),
        .R(r_rx_data));
  FDRE \r_rx_data_reg[23] 
       (.C(s00_axi_aclk),
        .CE(i_rx_n_7),
        .D(D[7]),
        .Q(Debug_fifo_wdata[23]),
        .R(r_rx_data));
  FDRE \r_rx_data_reg[24] 
       (.C(s00_axi_aclk),
        .CE(i_rx_n_6),
        .D(D[0]),
        .Q(Debug_fifo_wdata[24]),
        .R(r_rx_data));
  FDRE \r_rx_data_reg[25] 
       (.C(s00_axi_aclk),
        .CE(i_rx_n_6),
        .D(D[1]),
        .Q(Debug_fifo_wdata[25]),
        .R(r_rx_data));
  FDRE \r_rx_data_reg[26] 
       (.C(s00_axi_aclk),
        .CE(i_rx_n_6),
        .D(D[2]),
        .Q(Debug_fifo_wdata[26]),
        .R(r_rx_data));
  FDRE \r_rx_data_reg[27] 
       (.C(s00_axi_aclk),
        .CE(i_rx_n_6),
        .D(D[3]),
        .Q(Debug_fifo_wdata[27]),
        .R(r_rx_data));
  FDRE \r_rx_data_reg[28] 
       (.C(s00_axi_aclk),
        .CE(i_rx_n_6),
        .D(D[4]),
        .Q(Debug_fifo_wdata[28]),
        .R(r_rx_data));
  FDRE \r_rx_data_reg[29] 
       (.C(s00_axi_aclk),
        .CE(i_rx_n_6),
        .D(D[5]),
        .Q(Debug_fifo_wdata[29]),
        .R(r_rx_data));
  FDRE \r_rx_data_reg[2] 
       (.C(s00_axi_aclk),
        .CE(i_rx_n_9),
        .D(D[2]),
        .Q(Debug_fifo_wdata[2]),
        .R(r_rx_data));
  FDRE \r_rx_data_reg[30] 
       (.C(s00_axi_aclk),
        .CE(i_rx_n_6),
        .D(D[6]),
        .Q(Debug_fifo_wdata[30]),
        .R(r_rx_data));
  FDRE \r_rx_data_reg[31] 
       (.C(s00_axi_aclk),
        .CE(i_rx_n_6),
        .D(D[7]),
        .Q(Debug_fifo_wdata[31]),
        .R(r_rx_data));
  FDRE \r_rx_data_reg[3] 
       (.C(s00_axi_aclk),
        .CE(i_rx_n_9),
        .D(D[3]),
        .Q(Debug_fifo_wdata[3]),
        .R(r_rx_data));
  FDRE \r_rx_data_reg[4] 
       (.C(s00_axi_aclk),
        .CE(i_rx_n_9),
        .D(D[4]),
        .Q(Debug_fifo_wdata[4]),
        .R(r_rx_data));
  FDRE \r_rx_data_reg[5] 
       (.C(s00_axi_aclk),
        .CE(i_rx_n_9),
        .D(D[5]),
        .Q(Debug_fifo_wdata[5]),
        .R(r_rx_data));
  FDRE \r_rx_data_reg[6] 
       (.C(s00_axi_aclk),
        .CE(i_rx_n_9),
        .D(D[6]),
        .Q(Debug_fifo_wdata[6]),
        .R(r_rx_data));
  FDRE \r_rx_data_reg[7] 
       (.C(s00_axi_aclk),
        .CE(i_rx_n_9),
        .D(D[7]),
        .Q(Debug_fifo_wdata[7]),
        .R(r_rx_data));
  FDRE \r_rx_data_reg[8] 
       (.C(s00_axi_aclk),
        .CE(i_rx_n_8),
        .D(D[0]),
        .Q(Debug_fifo_wdata[8]),
        .R(r_rx_data));
  FDRE \r_rx_data_reg[9] 
       (.C(s00_axi_aclk),
        .CE(i_rx_n_8),
        .D(D[1]),
        .Q(Debug_fifo_wdata[9]),
        .R(r_rx_data));
  FDRE \r_tx_data_reg[0] 
       (.C(s00_axi_aclk),
        .CE(i_tx_fifo_n_2),
        .D(\r_output_reg[data] [0]),
        .Q(r_tx_data__0[0]),
        .R(1'b0));
  FDRE \r_tx_data_reg[10] 
       (.C(s00_axi_aclk),
        .CE(i_tx_fifo_n_2),
        .D(\r_output_reg[data] [10]),
        .Q(r_tx_data__0[10]),
        .R(1'b0));
  FDRE \r_tx_data_reg[11] 
       (.C(s00_axi_aclk),
        .CE(i_tx_fifo_n_2),
        .D(\r_output_reg[data] [11]),
        .Q(r_tx_data__0[11]),
        .R(1'b0));
  FDRE \r_tx_data_reg[12] 
       (.C(s00_axi_aclk),
        .CE(i_tx_fifo_n_2),
        .D(\r_output_reg[data] [12]),
        .Q(r_tx_data__0[12]),
        .R(1'b0));
  FDRE \r_tx_data_reg[13] 
       (.C(s00_axi_aclk),
        .CE(i_tx_fifo_n_2),
        .D(\r_output_reg[data] [13]),
        .Q(r_tx_data__0[13]),
        .R(1'b0));
  FDRE \r_tx_data_reg[14] 
       (.C(s00_axi_aclk),
        .CE(i_tx_fifo_n_2),
        .D(\r_output_reg[data] [14]),
        .Q(r_tx_data__0[14]),
        .R(1'b0));
  FDRE \r_tx_data_reg[15] 
       (.C(s00_axi_aclk),
        .CE(i_tx_fifo_n_2),
        .D(\r_output_reg[data] [15]),
        .Q(r_tx_data__0[15]),
        .R(1'b0));
  FDRE \r_tx_data_reg[16] 
       (.C(s00_axi_aclk),
        .CE(i_tx_fifo_n_2),
        .D(\r_output_reg[data] [16]),
        .Q(r_tx_data__0[16]),
        .R(1'b0));
  FDRE \r_tx_data_reg[17] 
       (.C(s00_axi_aclk),
        .CE(i_tx_fifo_n_2),
        .D(\r_output_reg[data] [17]),
        .Q(r_tx_data__0[17]),
        .R(1'b0));
  FDRE \r_tx_data_reg[18] 
       (.C(s00_axi_aclk),
        .CE(i_tx_fifo_n_2),
        .D(\r_output_reg[data] [18]),
        .Q(r_tx_data__0[18]),
        .R(1'b0));
  FDRE \r_tx_data_reg[19] 
       (.C(s00_axi_aclk),
        .CE(i_tx_fifo_n_2),
        .D(\r_output_reg[data] [19]),
        .Q(r_tx_data__0[19]),
        .R(1'b0));
  FDRE \r_tx_data_reg[1] 
       (.C(s00_axi_aclk),
        .CE(i_tx_fifo_n_2),
        .D(\r_output_reg[data] [1]),
        .Q(r_tx_data__0[1]),
        .R(1'b0));
  FDRE \r_tx_data_reg[20] 
       (.C(s00_axi_aclk),
        .CE(i_tx_fifo_n_2),
        .D(\r_output_reg[data] [20]),
        .Q(r_tx_data__0[20]),
        .R(1'b0));
  FDRE \r_tx_data_reg[21] 
       (.C(s00_axi_aclk),
        .CE(i_tx_fifo_n_2),
        .D(\r_output_reg[data] [21]),
        .Q(r_tx_data__0[21]),
        .R(1'b0));
  FDRE \r_tx_data_reg[22] 
       (.C(s00_axi_aclk),
        .CE(i_tx_fifo_n_2),
        .D(\r_output_reg[data] [22]),
        .Q(r_tx_data__0[22]),
        .R(1'b0));
  FDRE \r_tx_data_reg[23] 
       (.C(s00_axi_aclk),
        .CE(i_tx_fifo_n_2),
        .D(\r_output_reg[data] [23]),
        .Q(r_tx_data__0[23]),
        .R(1'b0));
  FDRE \r_tx_data_reg[24] 
       (.C(s00_axi_aclk),
        .CE(i_tx_fifo_n_2),
        .D(\r_output_reg[data] [24]),
        .Q(r_tx_data__0[24]),
        .R(1'b0));
  FDRE \r_tx_data_reg[25] 
       (.C(s00_axi_aclk),
        .CE(i_tx_fifo_n_2),
        .D(\r_output_reg[data] [25]),
        .Q(r_tx_data__0[25]),
        .R(1'b0));
  FDRE \r_tx_data_reg[26] 
       (.C(s00_axi_aclk),
        .CE(i_tx_fifo_n_2),
        .D(\r_output_reg[data] [26]),
        .Q(r_tx_data__0[26]),
        .R(1'b0));
  FDRE \r_tx_data_reg[27] 
       (.C(s00_axi_aclk),
        .CE(i_tx_fifo_n_2),
        .D(\r_output_reg[data] [27]),
        .Q(r_tx_data__0[27]),
        .R(1'b0));
  FDRE \r_tx_data_reg[28] 
       (.C(s00_axi_aclk),
        .CE(i_tx_fifo_n_2),
        .D(\r_output_reg[data] [28]),
        .Q(r_tx_data__0[28]),
        .R(1'b0));
  FDRE \r_tx_data_reg[29] 
       (.C(s00_axi_aclk),
        .CE(i_tx_fifo_n_2),
        .D(\r_output_reg[data] [29]),
        .Q(r_tx_data__0[29]),
        .R(1'b0));
  FDRE \r_tx_data_reg[2] 
       (.C(s00_axi_aclk),
        .CE(i_tx_fifo_n_2),
        .D(\r_output_reg[data] [2]),
        .Q(r_tx_data__0[2]),
        .R(1'b0));
  FDRE \r_tx_data_reg[30] 
       (.C(s00_axi_aclk),
        .CE(i_tx_fifo_n_2),
        .D(\r_output_reg[data] [30]),
        .Q(r_tx_data__0[30]),
        .R(1'b0));
  FDRE \r_tx_data_reg[31] 
       (.C(s00_axi_aclk),
        .CE(i_tx_fifo_n_2),
        .D(\r_output_reg[data] [31]),
        .Q(r_tx_data__0[31]),
        .R(1'b0));
  FDRE \r_tx_data_reg[3] 
       (.C(s00_axi_aclk),
        .CE(i_tx_fifo_n_2),
        .D(\r_output_reg[data] [3]),
        .Q(r_tx_data__0[3]),
        .R(1'b0));
  FDRE \r_tx_data_reg[4] 
       (.C(s00_axi_aclk),
        .CE(i_tx_fifo_n_2),
        .D(\r_output_reg[data] [4]),
        .Q(r_tx_data__0[4]),
        .R(1'b0));
  FDRE \r_tx_data_reg[5] 
       (.C(s00_axi_aclk),
        .CE(i_tx_fifo_n_2),
        .D(\r_output_reg[data] [5]),
        .Q(p_0_in_0[0]),
        .R(1'b0));
  FDRE \r_tx_data_reg[6] 
       (.C(s00_axi_aclk),
        .CE(i_tx_fifo_n_2),
        .D(\r_output_reg[data] [6]),
        .Q(p_0_in_0[1]),
        .R(1'b0));
  FDRE \r_tx_data_reg[7] 
       (.C(s00_axi_aclk),
        .CE(i_tx_fifo_n_2),
        .D(\r_output_reg[data] [7]),
        .Q(r_tx_data__0[7]),
        .R(1'b0));
  FDRE \r_tx_data_reg[8] 
       (.C(s00_axi_aclk),
        .CE(i_tx_fifo_n_2),
        .D(\r_output_reg[data] [8]),
        .Q(r_tx_data__0[8]),
        .R(1'b0));
  FDRE \r_tx_data_reg[9] 
       (.C(s00_axi_aclk),
        .CE(i_tx_fifo_n_2),
        .D(\r_output_reg[data] [9]),
        .Q(r_tx_data__0[9]),
        .R(1'b0));
  FDRE \rx_fifo_reg[wvalid] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(i_rx_n_10),
        .Q(\rx_fifo_reg[wvalid]_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \tx[data][0]_i_1 
       (.I0(r_tx_data__0[16]),
        .I1(r_tx_data__0[24]),
        .I2(r_tx_data__0[0]),
        .I3(v_byte_count__0[1]),
        .I4(v_byte_count__0[0]),
        .I5(r_tx_data__0[8]),
        .O(\tx_reg[data]0 [0]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \tx[data][1]_i_1 
       (.I0(r_tx_data__0[17]),
        .I1(r_tx_data__0[25]),
        .I2(r_tx_data__0[1]),
        .I3(v_byte_count__0[1]),
        .I4(v_byte_count__0[0]),
        .I5(r_tx_data__0[9]),
        .O(\tx_reg[data]0 [1]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \tx[data][2]_i_1 
       (.I0(r_tx_data__0[18]),
        .I1(r_tx_data__0[26]),
        .I2(r_tx_data__0[2]),
        .I3(v_byte_count__0[1]),
        .I4(v_byte_count__0[0]),
        .I5(r_tx_data__0[10]),
        .O(\tx_reg[data]0 [2]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \tx[data][3]_i_1 
       (.I0(r_tx_data__0[19]),
        .I1(r_tx_data__0[27]),
        .I2(r_tx_data__0[3]),
        .I3(v_byte_count__0[1]),
        .I4(v_byte_count__0[0]),
        .I5(r_tx_data__0[11]),
        .O(\tx_reg[data]0 [3]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \tx[data][4]_i_1 
       (.I0(r_tx_data__0[20]),
        .I1(r_tx_data__0[28]),
        .I2(r_tx_data__0[4]),
        .I3(v_byte_count__0[1]),
        .I4(v_byte_count__0[0]),
        .I5(r_tx_data__0[12]),
        .O(\tx_reg[data]0 [4]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \tx[data][5]_i_1 
       (.I0(r_tx_data__0[21]),
        .I1(r_tx_data__0[29]),
        .I2(p_0_in_0[0]),
        .I3(v_byte_count__0[1]),
        .I4(v_byte_count__0[0]),
        .I5(r_tx_data__0[13]),
        .O(\tx_reg[data]0 [5]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \tx[data][6]_i_1 
       (.I0(r_tx_data__0[22]),
        .I1(r_tx_data__0[30]),
        .I2(p_0_in_0[1]),
        .I3(v_byte_count__0[1]),
        .I4(v_byte_count__0[0]),
        .I5(r_tx_data__0[14]),
        .O(\tx_reg[data]0 [6]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \tx[data][7]_i_2 
       (.I0(r_tx_data__0[23]),
        .I1(r_tx_data__0[31]),
        .I2(r_tx_data__0[7]),
        .I3(v_byte_count__0[1]),
        .I4(v_byte_count__0[0]),
        .I5(r_tx_data__0[15]),
        .O(\tx_reg[data]0 [7]));
  FDRE \tx_fifo_reg[renable] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(i_tx_fifo_n_4),
        .Q(\tx_fifo_reg[renable_n_0_] ),
        .R(SR));
  FDRE \tx_reg[data][0] 
       (.C(s00_axi_aclk),
        .CE(i_tx_n_3),
        .D(\tx_reg[data]0 [0]),
        .Q(\tx_reg[data]__0 [0]),
        .R(1'b0));
  FDRE \tx_reg[data][1] 
       (.C(s00_axi_aclk),
        .CE(i_tx_n_3),
        .D(\tx_reg[data]0 [1]),
        .Q(\tx_reg[data]__0 [1]),
        .R(1'b0));
  FDRE \tx_reg[data][2] 
       (.C(s00_axi_aclk),
        .CE(i_tx_n_3),
        .D(\tx_reg[data]0 [2]),
        .Q(\tx_reg[data]__0 [2]),
        .R(1'b0));
  FDRE \tx_reg[data][3] 
       (.C(s00_axi_aclk),
        .CE(i_tx_n_3),
        .D(\tx_reg[data]0 [3]),
        .Q(\tx_reg[data]__0 [3]),
        .R(1'b0));
  FDRE \tx_reg[data][4] 
       (.C(s00_axi_aclk),
        .CE(i_tx_n_3),
        .D(\tx_reg[data]0 [4]),
        .Q(\tx_reg[data]__0 [4]),
        .R(1'b0));
  FDRE \tx_reg[data][5] 
       (.C(s00_axi_aclk),
        .CE(i_tx_n_3),
        .D(\tx_reg[data]0 [5]),
        .Q(\tx_reg[data]__0 [5]),
        .R(1'b0));
  FDRE \tx_reg[data][6] 
       (.C(s00_axi_aclk),
        .CE(i_tx_n_3),
        .D(\tx_reg[data]0 [6]),
        .Q(\tx_reg[data]__0 [6]),
        .R(1'b0));
  FDRE \tx_reg[data][7] 
       (.C(s00_axi_aclk),
        .CE(i_tx_n_3),
        .D(\tx_reg[data]0 [7]),
        .Q(\tx_reg[data]__0 [7]),
        .R(1'b0));
  FDRE \tx_reg[valid] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(i_tx_n_5),
        .Q(\tx_reg[valid_n_0_] ),
        .R(SR));
  FDRE \v_byte_count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(i_tx_n_7),
        .Q(v_byte_count__0[0]),
        .R(1'b0));
  FDRE \v_byte_count_reg[0]__0 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(i_rx_n_13),
        .Q(\v_byte_count_reg[0]__0_n_0 ),
        .R(1'b0));
  FDRE \v_byte_count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(i_tx_n_6),
        .Q(v_byte_count__0[1]),
        .R(1'b0));
  FDRE \v_byte_count_reg[1]__0 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(i_rx_n_12),
        .Q(\v_byte_count_reg[1]__0_n_0 ),
        .R(1'b0));
  FDRE \v_byte_count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(i_rx_n_11),
        .Q(\v_byte_count_reg_n_0_[2] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h7)) 
    \v_num_bytes[1]_i_3 
       (.I0(s00_axi_aresetn),
        .I1(s_status[3]),
        .O(RSTB));
  FDRE \v_num_bytes_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(i_rx_n_23),
        .Q(v_num_bytes[0]),
        .R(1'b0));
  FDRE \v_num_bytes_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(i_rx_n_14),
        .Q(v_num_bytes[1]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_icsuart0b_v1_0
   (s00_axi_awready,
    s00_axi_wready,
    s00_axi_arready,
    s00_axi_rdata,
    Debug_rx_pace,
    Debug_rx_valid,
    Debug_rx_trigger,
    Debug_rx_d,
    D,
    Debug_fifo_wdata,
    axi_rvalid_reg,
    \rx_fifo_reg[wvalid] ,
    r_sample_reg,
    Debug_fifo_empty,
    s00_axi_bvalid,
    TxD,
    OE,
    Debug_rx_perror,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_aresetn,
    RxD,
    s00_axi_bready,
    s00_axi_rready);
  output s00_axi_awready;
  output s00_axi_wready;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output Debug_rx_pace;
  output Debug_rx_valid;
  output Debug_rx_trigger;
  output Debug_rx_d;
  output [7:0]D;
  output [31:0]Debug_fifo_wdata;
  output axi_rvalid_reg;
  output \rx_fifo_reg[wvalid] ;
  output r_sample_reg;
  output Debug_fifo_empty;
  output s00_axi_bvalid;
  output TxD;
  output OE;
  output Debug_rx_perror;
  input s00_axi_aclk;
  input [2:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input RxD;
  input s00_axi_bready;
  input s00_axi_rready;

  wire [7:0]D;
  wire Debug_fifo_empty;
  wire [31:0]Debug_fifo_wdata;
  wire Debug_rx_d;
  wire Debug_rx_pace;
  wire Debug_rx_perror;
  wire Debug_rx_trigger;
  wire Debug_rx_valid;
  wire OE;
  wire Reset;
  wire RxD;
  wire TxD;
  wire axi_rvalid_reg;
  wire r_sample_reg;
  wire \rx_fifo_reg[wvalid] ;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [31:0]s_rx_data;
  wire s_rx_data_read;
  wire [8:0]s_status;
  wire [31:0]s_tx_data;
  wire s_tx_data_valid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_icsuart0_core i_uart
       (.D(D),
        .Debug_fifo_empty(Debug_fifo_empty),
        .Debug_fifo_wdata(Debug_fifo_wdata),
        .Debug_rx_perror(Debug_rx_perror),
        .E(Debug_rx_pace),
        .OE(OE),
        .Q(s_tx_data),
        .RxD(RxD),
        .SR(Reset),
        .TxD(TxD),
        .\r_output_reg[data][31] (s_rx_data),
        .\r_output_reg[valid] (Debug_rx_valid),
        .r_rxd_reg(Debug_rx_d),
        .r_sample_reg(r_sample_reg),
        .r_trigger_reg(Debug_rx_trigger),
        .\rx_fifo_reg[wvalid]_0 (\rx_fifo_reg[wvalid] ),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s_rx_data_read(s_rx_data_read),
        .s_status({s_status[8],s_status[5],s_status[1:0]}),
        .s_tx_data_valid(s_tx_data_valid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_icsuart0b_v1_0_S00_AXI icsuart0b_v1_0_S00_AXI_inst
       (.Debug_fifo_empty(Debug_fifo_empty),
        .Q(s_tx_data),
        .SR(Reset),
        .axi_arready_reg_0(s00_axi_arready),
        .axi_awready_reg_0(s00_axi_awready),
        .\axi_rdata_reg[31]_0 (s_rx_data),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .axi_wready_reg_0(s00_axi_wready),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .s_rx_data_read(s_rx_data_read),
        .s_status({s_status[8],s_status[5],s_status[1:0]}),
        .s_tx_data_valid(s_tx_data_valid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_icsuart0b_v1_0_S00_AXI
   (axi_awready_reg_0,
    SR,
    axi_wready_reg_0,
    s_tx_data_valid,
    axi_arready_reg_0,
    s_rx_data_read,
    s00_axi_bvalid,
    axi_rvalid_reg_0,
    Q,
    s00_axi_rdata,
    s00_axi_aclk,
    s00_axi_arvalid,
    s00_axi_aresetn,
    s_status,
    \axi_rdata_reg[31]_0 ,
    Debug_fifo_empty,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_bready,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wstrb);
  output axi_awready_reg_0;
  output [0:0]SR;
  output axi_wready_reg_0;
  output s_tx_data_valid;
  output axi_arready_reg_0;
  output s_rx_data_read;
  output s00_axi_bvalid;
  output axi_rvalid_reg_0;
  output [31:0]Q;
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input [3:0]s_status;
  input [31:0]\axi_rdata_reg[31]_0 ;
  input Debug_fifo_empty;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_bready;
  input s00_axi_rready;
  input [2:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;

  wire Debug_fifo_empty;
  wire [31:0]Q;
  wire [0:0]SR;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [4:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire axi_arready0;
  wire axi_arready_reg_0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr[4]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[10]_i_3_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[11]_i_3_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[12]_i_3_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[13]_i_3_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[14]_i_3_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[15]_i_3_n_0 ;
  wire \axi_rdata[16]_i_2_n_0 ;
  wire \axi_rdata[16]_i_3_n_0 ;
  wire \axi_rdata[17]_i_2_n_0 ;
  wire \axi_rdata[17]_i_3_n_0 ;
  wire \axi_rdata[18]_i_2_n_0 ;
  wire \axi_rdata[18]_i_3_n_0 ;
  wire \axi_rdata[19]_i_2_n_0 ;
  wire \axi_rdata[19]_i_3_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[1]_i_3_n_0 ;
  wire \axi_rdata[20]_i_2_n_0 ;
  wire \axi_rdata[20]_i_3_n_0 ;
  wire \axi_rdata[21]_i_2_n_0 ;
  wire \axi_rdata[21]_i_3_n_0 ;
  wire \axi_rdata[22]_i_2_n_0 ;
  wire \axi_rdata[22]_i_3_n_0 ;
  wire \axi_rdata[23]_i_2_n_0 ;
  wire \axi_rdata[23]_i_3_n_0 ;
  wire \axi_rdata[24]_i_2_n_0 ;
  wire \axi_rdata[24]_i_3_n_0 ;
  wire \axi_rdata[25]_i_2_n_0 ;
  wire \axi_rdata[25]_i_3_n_0 ;
  wire \axi_rdata[26]_i_2_n_0 ;
  wire \axi_rdata[26]_i_3_n_0 ;
  wire \axi_rdata[27]_i_2_n_0 ;
  wire \axi_rdata[27]_i_3_n_0 ;
  wire \axi_rdata[28]_i_2_n_0 ;
  wire \axi_rdata[28]_i_3_n_0 ;
  wire \axi_rdata[29]_i_2_n_0 ;
  wire \axi_rdata[29]_i_3_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[2]_i_3_n_0 ;
  wire \axi_rdata[30]_i_2_n_0 ;
  wire \axi_rdata[30]_i_3_n_0 ;
  wire \axi_rdata[31]_i_3_n_0 ;
  wire \axi_rdata[31]_i_4_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[3]_i_3_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[4]_i_3_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[5]_i_3_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[6]_i_3_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[7]_i_3_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[8]_i_3_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire \axi_rdata[9]_i_3_n_0 ;
  wire [31:0]\axi_rdata_reg[31]_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire [2:0]p_0_in;
  wire [31:7]p_1_in;
  wire r_rxdata_read0;
  wire r_txdata_valid0;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [31:0]s_control;
  wire s_rx_data_read;
  wire [3:0]s_status;
  wire s_tx_data_valid;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg4;
  wire \slv_reg4[15]_i_1_n_0 ;
  wire \slv_reg4[23]_i_1_n_0 ;
  wire \slv_reg4[31]_i_1_n_0 ;
  wire \slv_reg4[7]_i_1_n_0 ;
  wire [31:0]slv_reg5;
  wire \slv_reg5[15]_i_1_n_0 ;
  wire \slv_reg5[23]_i_1_n_0 ;
  wire \slv_reg5[31]_i_1_n_0 ;
  wire \slv_reg5[7]_i_1_n_0 ;
  wire [31:0]slv_reg6;
  wire \slv_reg6[15]_i_1_n_0 ;
  wire \slv_reg6[23]_i_1_n_0 ;
  wire \slv_reg6[31]_i_1_n_0 ;
  wire \slv_reg6[7]_i_1_n_0 ;
  wire [31:0]slv_reg7;
  wire \slv_reg7[15]_i_1_n_0 ;
  wire \slv_reg7[23]_i_1_n_0 ;
  wire \slv_reg7[31]_i_1_n_0 ;
  wire \slv_reg7[7]_i_1_n_0 ;
  wire slv_reg_rden;
  wire slv_reg_wren__2;

  LUT6 #(
    .INIT(64'hBFFF8CCC8CCC8CCC)) 
    aw_en_i_1
       (.I0(axi_awready_reg_0),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(SR));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(axi_arready_reg_0),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(axi_arready_reg_0),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[4]_i_1 
       (.I0(s00_axi_araddr[2]),
        .I1(s00_axi_arvalid),
        .I2(axi_arready_reg_0),
        .I3(axi_araddr[4]),
        .O(\axi_araddr[4]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .S(SR));
  FDSE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .S(SR));
  FDSE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(axi_araddr[4]),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(axi_arready_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(aw_en_reg_n_0),
        .I4(axi_awready_reg_0),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(aw_en_reg_n_0),
        .I4(axi_awready_reg_0),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[4]_i_1 
       (.I0(s00_axi_awaddr[2]),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(aw_en_reg_n_0),
        .I4(axi_awready_reg_0),
        .I5(p_0_in[2]),
        .O(\axi_awaddr[4]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(SR));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(SR));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(p_0_in[2]),
        .R(SR));
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(aw_en_reg_n_0),
        .I3(axi_awready_reg_0),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(axi_awready_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_wvalid),
        .I1(axi_awready_reg_0),
        .I2(axi_wready_reg_0),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(SR));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[0]_i_2 
       (.I0(s_status[0]),
        .I1(\axi_rdata_reg[31]_0 [0]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(s_control[0]),
        .I5(Q[0]),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[0]_i_3 
       (.I0(slv_reg5[0]),
        .I1(slv_reg7[0]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg4[0]),
        .I5(slv_reg6[0]),
        .O(\axi_rdata[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \axi_rdata[10]_i_2 
       (.I0(s_control[10]),
        .I1(Q[10]),
        .I2(\axi_rdata_reg[31]_0 [10]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[10]_i_3 
       (.I0(slv_reg5[10]),
        .I1(slv_reg7[10]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg4[10]),
        .I5(slv_reg6[10]),
        .O(\axi_rdata[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \axi_rdata[11]_i_2 
       (.I0(s_control[11]),
        .I1(Q[11]),
        .I2(\axi_rdata_reg[31]_0 [11]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[11]_i_3 
       (.I0(slv_reg5[11]),
        .I1(slv_reg7[11]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg4[11]),
        .I5(slv_reg6[11]),
        .O(\axi_rdata[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \axi_rdata[12]_i_2 
       (.I0(s_control[12]),
        .I1(Q[12]),
        .I2(\axi_rdata_reg[31]_0 [12]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[12]_i_3 
       (.I0(slv_reg5[12]),
        .I1(slv_reg7[12]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg4[12]),
        .I5(slv_reg6[12]),
        .O(\axi_rdata[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \axi_rdata[13]_i_2 
       (.I0(s_control[13]),
        .I1(Q[13]),
        .I2(\axi_rdata_reg[31]_0 [13]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[13]_i_3 
       (.I0(slv_reg5[13]),
        .I1(slv_reg7[13]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg4[13]),
        .I5(slv_reg6[13]),
        .O(\axi_rdata[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \axi_rdata[14]_i_2 
       (.I0(s_control[14]),
        .I1(Q[14]),
        .I2(\axi_rdata_reg[31]_0 [14]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(\axi_rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[14]_i_3 
       (.I0(slv_reg5[14]),
        .I1(slv_reg7[14]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg4[14]),
        .I5(slv_reg6[14]),
        .O(\axi_rdata[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \axi_rdata[15]_i_2 
       (.I0(s_control[15]),
        .I1(Q[15]),
        .I2(\axi_rdata_reg[31]_0 [15]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[15]_i_3 
       (.I0(slv_reg5[15]),
        .I1(slv_reg7[15]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg4[15]),
        .I5(slv_reg6[15]),
        .O(\axi_rdata[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \axi_rdata[16]_i_2 
       (.I0(s_control[16]),
        .I1(Q[16]),
        .I2(\axi_rdata_reg[31]_0 [16]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(\axi_rdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[16]_i_3 
       (.I0(slv_reg5[16]),
        .I1(slv_reg7[16]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg4[16]),
        .I5(slv_reg6[16]),
        .O(\axi_rdata[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \axi_rdata[17]_i_2 
       (.I0(s_control[17]),
        .I1(Q[17]),
        .I2(\axi_rdata_reg[31]_0 [17]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(\axi_rdata[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[17]_i_3 
       (.I0(slv_reg5[17]),
        .I1(slv_reg7[17]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg4[17]),
        .I5(slv_reg6[17]),
        .O(\axi_rdata[17]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \axi_rdata[18]_i_2 
       (.I0(s_control[18]),
        .I1(Q[18]),
        .I2(\axi_rdata_reg[31]_0 [18]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(\axi_rdata[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[18]_i_3 
       (.I0(slv_reg5[18]),
        .I1(slv_reg7[18]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg4[18]),
        .I5(slv_reg6[18]),
        .O(\axi_rdata[18]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \axi_rdata[19]_i_2 
       (.I0(s_control[19]),
        .I1(Q[19]),
        .I2(\axi_rdata_reg[31]_0 [19]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(\axi_rdata[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[19]_i_3 
       (.I0(slv_reg5[19]),
        .I1(slv_reg7[19]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg4[19]),
        .I5(slv_reg6[19]),
        .O(\axi_rdata[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[1]_i_2 
       (.I0(s_status[1]),
        .I1(\axi_rdata_reg[31]_0 [1]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(s_control[1]),
        .I5(Q[1]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[1]_i_3 
       (.I0(slv_reg5[1]),
        .I1(slv_reg7[1]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg4[1]),
        .I5(slv_reg6[1]),
        .O(\axi_rdata[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \axi_rdata[20]_i_2 
       (.I0(s_control[20]),
        .I1(Q[20]),
        .I2(\axi_rdata_reg[31]_0 [20]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(\axi_rdata[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[20]_i_3 
       (.I0(slv_reg5[20]),
        .I1(slv_reg7[20]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg4[20]),
        .I5(slv_reg6[20]),
        .O(\axi_rdata[20]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \axi_rdata[21]_i_2 
       (.I0(s_control[21]),
        .I1(Q[21]),
        .I2(\axi_rdata_reg[31]_0 [21]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(\axi_rdata[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[21]_i_3 
       (.I0(slv_reg5[21]),
        .I1(slv_reg7[21]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg4[21]),
        .I5(slv_reg6[21]),
        .O(\axi_rdata[21]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \axi_rdata[22]_i_2 
       (.I0(s_control[22]),
        .I1(Q[22]),
        .I2(\axi_rdata_reg[31]_0 [22]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(\axi_rdata[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[22]_i_3 
       (.I0(slv_reg5[22]),
        .I1(slv_reg7[22]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg4[22]),
        .I5(slv_reg6[22]),
        .O(\axi_rdata[22]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \axi_rdata[23]_i_2 
       (.I0(s_control[23]),
        .I1(Q[23]),
        .I2(\axi_rdata_reg[31]_0 [23]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(\axi_rdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[23]_i_3 
       (.I0(slv_reg5[23]),
        .I1(slv_reg7[23]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg4[23]),
        .I5(slv_reg6[23]),
        .O(\axi_rdata[23]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \axi_rdata[24]_i_2 
       (.I0(s_control[24]),
        .I1(Q[24]),
        .I2(\axi_rdata_reg[31]_0 [24]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(\axi_rdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[24]_i_3 
       (.I0(slv_reg5[24]),
        .I1(slv_reg7[24]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg4[24]),
        .I5(slv_reg6[24]),
        .O(\axi_rdata[24]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \axi_rdata[25]_i_2 
       (.I0(s_control[25]),
        .I1(Q[25]),
        .I2(\axi_rdata_reg[31]_0 [25]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(\axi_rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[25]_i_3 
       (.I0(slv_reg5[25]),
        .I1(slv_reg7[25]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg4[25]),
        .I5(slv_reg6[25]),
        .O(\axi_rdata[25]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \axi_rdata[26]_i_2 
       (.I0(s_control[26]),
        .I1(Q[26]),
        .I2(\axi_rdata_reg[31]_0 [26]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(\axi_rdata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[26]_i_3 
       (.I0(slv_reg5[26]),
        .I1(slv_reg7[26]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg4[26]),
        .I5(slv_reg6[26]),
        .O(\axi_rdata[26]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \axi_rdata[27]_i_2 
       (.I0(s_control[27]),
        .I1(Q[27]),
        .I2(\axi_rdata_reg[31]_0 [27]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(\axi_rdata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[27]_i_3 
       (.I0(slv_reg5[27]),
        .I1(slv_reg7[27]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg4[27]),
        .I5(slv_reg6[27]),
        .O(\axi_rdata[27]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \axi_rdata[28]_i_2 
       (.I0(s_control[28]),
        .I1(Q[28]),
        .I2(\axi_rdata_reg[31]_0 [28]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(\axi_rdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[28]_i_3 
       (.I0(slv_reg5[28]),
        .I1(slv_reg7[28]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg4[28]),
        .I5(slv_reg6[28]),
        .O(\axi_rdata[28]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \axi_rdata[29]_i_2 
       (.I0(s_control[29]),
        .I1(Q[29]),
        .I2(\axi_rdata_reg[31]_0 [29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(\axi_rdata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[29]_i_3 
       (.I0(slv_reg5[29]),
        .I1(slv_reg7[29]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg4[29]),
        .I5(slv_reg6[29]),
        .O(\axi_rdata[29]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \axi_rdata[2]_i_2 
       (.I0(s_control[2]),
        .I1(Q[2]),
        .I2(\axi_rdata_reg[31]_0 [2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[2]_i_3 
       (.I0(slv_reg5[2]),
        .I1(slv_reg7[2]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg4[2]),
        .I5(slv_reg6[2]),
        .O(\axi_rdata[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \axi_rdata[30]_i_2 
       (.I0(s_control[30]),
        .I1(Q[30]),
        .I2(\axi_rdata_reg[31]_0 [30]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(\axi_rdata[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[30]_i_3 
       (.I0(slv_reg5[30]),
        .I1(slv_reg7[30]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg4[30]),
        .I5(slv_reg6[30]),
        .O(\axi_rdata[30]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(axi_rvalid_reg_0),
        .O(slv_reg_rden));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \axi_rdata[31]_i_3 
       (.I0(s_control[31]),
        .I1(Q[31]),
        .I2(\axi_rdata_reg[31]_0 [31]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(\axi_rdata[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[31]_i_4 
       (.I0(slv_reg5[31]),
        .I1(slv_reg7[31]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg4[31]),
        .I5(slv_reg6[31]),
        .O(\axi_rdata[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \axi_rdata[3]_i_2 
       (.I0(s_control[3]),
        .I1(Q[3]),
        .I2(\axi_rdata_reg[31]_0 [3]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[3]_i_3 
       (.I0(slv_reg5[3]),
        .I1(slv_reg7[3]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg4[3]),
        .I5(slv_reg6[3]),
        .O(\axi_rdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[4]_i_2 
       (.I0(Debug_fifo_empty),
        .I1(\axi_rdata_reg[31]_0 [4]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(s_control[4]),
        .I5(Q[4]),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[4]_i_3 
       (.I0(slv_reg5[4]),
        .I1(slv_reg7[4]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg4[4]),
        .I5(slv_reg6[4]),
        .O(\axi_rdata[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[5]_i_2 
       (.I0(s_status[2]),
        .I1(\axi_rdata_reg[31]_0 [5]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(s_control[5]),
        .I5(Q[5]),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[5]_i_3 
       (.I0(slv_reg5[5]),
        .I1(slv_reg7[5]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg4[5]),
        .I5(slv_reg6[5]),
        .O(\axi_rdata[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \axi_rdata[6]_i_2 
       (.I0(s_control[6]),
        .I1(Q[6]),
        .I2(\axi_rdata_reg[31]_0 [6]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[6]_i_3 
       (.I0(slv_reg5[6]),
        .I1(slv_reg7[6]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg4[6]),
        .I5(slv_reg6[6]),
        .O(\axi_rdata[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \axi_rdata[7]_i_2 
       (.I0(s_control[7]),
        .I1(Q[7]),
        .I2(\axi_rdata_reg[31]_0 [7]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[7]_i_3 
       (.I0(slv_reg5[7]),
        .I1(slv_reg7[7]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg4[7]),
        .I5(slv_reg6[7]),
        .O(\axi_rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[8]_i_2 
       (.I0(s_status[3]),
        .I1(\axi_rdata_reg[31]_0 [8]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(s_control[8]),
        .I5(Q[8]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[8]_i_3 
       (.I0(slv_reg5[8]),
        .I1(slv_reg7[8]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg4[8]),
        .I5(slv_reg6[8]),
        .O(\axi_rdata[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \axi_rdata[9]_i_2 
       (.I0(s_control[9]),
        .I1(Q[9]),
        .I2(\axi_rdata_reg[31]_0 [9]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(\axi_rdata[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[9]_i_3 
       (.I0(slv_reg5[9]),
        .I1(slv_reg7[9]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg4[9]),
        .I5(slv_reg6[9]),
        .O(\axi_rdata[9]_i_3_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(SR));
  MUXF7 \axi_rdata_reg[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(\axi_rdata[0]_i_3_n_0 ),
        .O(reg_data_out[0]),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(SR));
  MUXF7 \axi_rdata_reg[10]_i_1 
       (.I0(\axi_rdata[10]_i_2_n_0 ),
        .I1(\axi_rdata[10]_i_3_n_0 ),
        .O(reg_data_out[10]),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(SR));
  MUXF7 \axi_rdata_reg[11]_i_1 
       (.I0(\axi_rdata[11]_i_2_n_0 ),
        .I1(\axi_rdata[11]_i_3_n_0 ),
        .O(reg_data_out[11]),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(SR));
  MUXF7 \axi_rdata_reg[12]_i_1 
       (.I0(\axi_rdata[12]_i_2_n_0 ),
        .I1(\axi_rdata[12]_i_3_n_0 ),
        .O(reg_data_out[12]),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(SR));
  MUXF7 \axi_rdata_reg[13]_i_1 
       (.I0(\axi_rdata[13]_i_2_n_0 ),
        .I1(\axi_rdata[13]_i_3_n_0 ),
        .O(reg_data_out[13]),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(SR));
  MUXF7 \axi_rdata_reg[14]_i_1 
       (.I0(\axi_rdata[14]_i_2_n_0 ),
        .I1(\axi_rdata[14]_i_3_n_0 ),
        .O(reg_data_out[14]),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(SR));
  MUXF7 \axi_rdata_reg[15]_i_1 
       (.I0(\axi_rdata[15]_i_2_n_0 ),
        .I1(\axi_rdata[15]_i_3_n_0 ),
        .O(reg_data_out[15]),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(SR));
  MUXF7 \axi_rdata_reg[16]_i_1 
       (.I0(\axi_rdata[16]_i_2_n_0 ),
        .I1(\axi_rdata[16]_i_3_n_0 ),
        .O(reg_data_out[16]),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(SR));
  MUXF7 \axi_rdata_reg[17]_i_1 
       (.I0(\axi_rdata[17]_i_2_n_0 ),
        .I1(\axi_rdata[17]_i_3_n_0 ),
        .O(reg_data_out[17]),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(SR));
  MUXF7 \axi_rdata_reg[18]_i_1 
       (.I0(\axi_rdata[18]_i_2_n_0 ),
        .I1(\axi_rdata[18]_i_3_n_0 ),
        .O(reg_data_out[18]),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(SR));
  MUXF7 \axi_rdata_reg[19]_i_1 
       (.I0(\axi_rdata[19]_i_2_n_0 ),
        .I1(\axi_rdata[19]_i_3_n_0 ),
        .O(reg_data_out[19]),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(SR));
  MUXF7 \axi_rdata_reg[1]_i_1 
       (.I0(\axi_rdata[1]_i_2_n_0 ),
        .I1(\axi_rdata[1]_i_3_n_0 ),
        .O(reg_data_out[1]),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(SR));
  MUXF7 \axi_rdata_reg[20]_i_1 
       (.I0(\axi_rdata[20]_i_2_n_0 ),
        .I1(\axi_rdata[20]_i_3_n_0 ),
        .O(reg_data_out[20]),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(SR));
  MUXF7 \axi_rdata_reg[21]_i_1 
       (.I0(\axi_rdata[21]_i_2_n_0 ),
        .I1(\axi_rdata[21]_i_3_n_0 ),
        .O(reg_data_out[21]),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(SR));
  MUXF7 \axi_rdata_reg[22]_i_1 
       (.I0(\axi_rdata[22]_i_2_n_0 ),
        .I1(\axi_rdata[22]_i_3_n_0 ),
        .O(reg_data_out[22]),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(SR));
  MUXF7 \axi_rdata_reg[23]_i_1 
       (.I0(\axi_rdata[23]_i_2_n_0 ),
        .I1(\axi_rdata[23]_i_3_n_0 ),
        .O(reg_data_out[23]),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(SR));
  MUXF7 \axi_rdata_reg[24]_i_1 
       (.I0(\axi_rdata[24]_i_2_n_0 ),
        .I1(\axi_rdata[24]_i_3_n_0 ),
        .O(reg_data_out[24]),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(SR));
  MUXF7 \axi_rdata_reg[25]_i_1 
       (.I0(\axi_rdata[25]_i_2_n_0 ),
        .I1(\axi_rdata[25]_i_3_n_0 ),
        .O(reg_data_out[25]),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(SR));
  MUXF7 \axi_rdata_reg[26]_i_1 
       (.I0(\axi_rdata[26]_i_2_n_0 ),
        .I1(\axi_rdata[26]_i_3_n_0 ),
        .O(reg_data_out[26]),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(SR));
  MUXF7 \axi_rdata_reg[27]_i_1 
       (.I0(\axi_rdata[27]_i_2_n_0 ),
        .I1(\axi_rdata[27]_i_3_n_0 ),
        .O(reg_data_out[27]),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(SR));
  MUXF7 \axi_rdata_reg[28]_i_1 
       (.I0(\axi_rdata[28]_i_2_n_0 ),
        .I1(\axi_rdata[28]_i_3_n_0 ),
        .O(reg_data_out[28]),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(SR));
  MUXF7 \axi_rdata_reg[29]_i_1 
       (.I0(\axi_rdata[29]_i_2_n_0 ),
        .I1(\axi_rdata[29]_i_3_n_0 ),
        .O(reg_data_out[29]),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(SR));
  MUXF7 \axi_rdata_reg[2]_i_1 
       (.I0(\axi_rdata[2]_i_2_n_0 ),
        .I1(\axi_rdata[2]_i_3_n_0 ),
        .O(reg_data_out[2]),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(SR));
  MUXF7 \axi_rdata_reg[30]_i_1 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(\axi_rdata[30]_i_3_n_0 ),
        .O(reg_data_out[30]),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(SR));
  MUXF7 \axi_rdata_reg[31]_i_2 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(\axi_rdata[31]_i_4_n_0 ),
        .O(reg_data_out[31]),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(SR));
  MUXF7 \axi_rdata_reg[3]_i_1 
       (.I0(\axi_rdata[3]_i_2_n_0 ),
        .I1(\axi_rdata[3]_i_3_n_0 ),
        .O(reg_data_out[3]),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(SR));
  MUXF7 \axi_rdata_reg[4]_i_1 
       (.I0(\axi_rdata[4]_i_2_n_0 ),
        .I1(\axi_rdata[4]_i_3_n_0 ),
        .O(reg_data_out[4]),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(SR));
  MUXF7 \axi_rdata_reg[5]_i_1 
       (.I0(\axi_rdata[5]_i_2_n_0 ),
        .I1(\axi_rdata[5]_i_3_n_0 ),
        .O(reg_data_out[5]),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(SR));
  MUXF7 \axi_rdata_reg[6]_i_1 
       (.I0(\axi_rdata[6]_i_2_n_0 ),
        .I1(\axi_rdata[6]_i_3_n_0 ),
        .O(reg_data_out[6]),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(SR));
  MUXF7 \axi_rdata_reg[7]_i_1 
       (.I0(\axi_rdata[7]_i_2_n_0 ),
        .I1(\axi_rdata[7]_i_3_n_0 ),
        .O(reg_data_out[7]),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(SR));
  MUXF7 \axi_rdata_reg[8]_i_1 
       (.I0(\axi_rdata[8]_i_2_n_0 ),
        .I1(\axi_rdata[8]_i_3_n_0 ),
        .O(reg_data_out[8]),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(SR));
  MUXF7 \axi_rdata_reg[9]_i_1 
       (.I0(\axi_rdata[9]_i_2_n_0 ),
        .I1(\axi_rdata[9]_i_3_n_0 ),
        .O(reg_data_out[9]),
        .S(axi_araddr[4]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h7444)) 
    axi_rvalid_i_1
       (.I0(s00_axi_rready),
        .I1(axi_rvalid_reg_0),
        .I2(s00_axi_arvalid),
        .I3(axi_arready_reg_0),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(aw_en_reg_n_0),
        .I3(axi_wready_reg_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(axi_wready_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    r_rxdata_read_i_1
       (.I0(axi_araddr[4]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(axi_rvalid_reg_0),
        .I4(s00_axi_arvalid),
        .I5(axi_arready_reg_0),
        .O(r_rxdata_read0));
  FDRE r_rxdata_read_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(r_rxdata_read0),
        .Q(s_rx_data_read),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    r_txd_i_1
       (.I0(s00_axi_aresetn),
        .O(SR));
  LUT4 #(
    .INIT(16'h1000)) 
    r_txdata_valid_i_1
       (.I0(p_0_in[2]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(slv_reg_wren__2),
        .O(r_txdata_valid0));
  FDRE r_txdata_valid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(r_txdata_valid0),
        .Q(s_tx_data_valid),
        .R(SR));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[3]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_2 
       (.I0(s00_axi_wvalid),
        .I1(axi_awready_reg_0),
        .I2(axi_wready_reg_0),
        .I3(s00_axi_awvalid),
        .O(slv_reg_wren__2));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[0]),
        .O(p_1_in[7]));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(s_control[0]),
        .R(SR));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(s_control[10]),
        .R(SR));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(s_control[11]),
        .R(SR));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(s_control[12]),
        .R(SR));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(s_control[13]),
        .R(SR));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(s_control[14]),
        .R(SR));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(s_control[15]),
        .R(SR));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(s_control[16]),
        .R(SR));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(s_control[17]),
        .R(SR));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(s_control[18]),
        .R(SR));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(s_control[19]),
        .R(SR));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(s_control[1]),
        .R(SR));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(s_control[20]),
        .R(SR));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(s_control[21]),
        .R(SR));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(s_control[22]),
        .R(SR));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(s_control[23]),
        .R(SR));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(s_control[24]),
        .R(SR));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(s_control[25]),
        .R(SR));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(s_control[26]),
        .R(SR));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(s_control[27]),
        .R(SR));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(s_control[28]),
        .R(SR));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(s_control[29]),
        .R(SR));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(s_control[2]),
        .R(SR));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(s_control[30]),
        .R(SR));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(s_control[31]),
        .R(SR));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(s_control[3]),
        .R(SR));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(s_control[4]),
        .R(SR));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(s_control[5]),
        .R(SR));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(s_control[6]),
        .R(SR));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(s_control[7]),
        .R(SR));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(s_control[8]),
        .R(SR));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(s_control[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[1]),
        .I4(p_0_in[1]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[2]),
        .I4(p_0_in[1]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[3]),
        .I4(p_0_in[1]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[0]),
        .I4(p_0_in[1]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(Q[16]),
        .R(SR));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(Q[17]),
        .R(SR));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(Q[18]),
        .R(SR));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(Q[19]),
        .R(SR));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(Q[20]),
        .R(SR));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(Q[21]),
        .R(SR));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(Q[22]),
        .R(SR));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(Q[23]),
        .R(SR));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(Q[24]),
        .R(SR));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(Q[25]),
        .R(SR));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(Q[26]),
        .R(SR));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(Q[27]),
        .R(SR));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(Q[28]),
        .R(SR));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(Q[29]),
        .R(SR));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(Q[30]),
        .R(SR));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(Q[31]),
        .R(SR));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(Q[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg4[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg4[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg4[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg4[7]_i_1_n_0 ));
  FDRE \slv_reg4_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg4[0]),
        .R(SR));
  FDRE \slv_reg4_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg4[10]),
        .R(SR));
  FDRE \slv_reg4_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg4[11]),
        .R(SR));
  FDRE \slv_reg4_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg4[12]),
        .R(SR));
  FDRE \slv_reg4_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg4[13]),
        .R(SR));
  FDRE \slv_reg4_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg4[14]),
        .R(SR));
  FDRE \slv_reg4_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg4[15]),
        .R(SR));
  FDRE \slv_reg4_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg4[16]),
        .R(SR));
  FDRE \slv_reg4_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg4[17]),
        .R(SR));
  FDRE \slv_reg4_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg4[18]),
        .R(SR));
  FDRE \slv_reg4_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg4[19]),
        .R(SR));
  FDRE \slv_reg4_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg4[1]),
        .R(SR));
  FDRE \slv_reg4_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg4[20]),
        .R(SR));
  FDRE \slv_reg4_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg4[21]),
        .R(SR));
  FDRE \slv_reg4_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg4[22]),
        .R(SR));
  FDRE \slv_reg4_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg4[23]),
        .R(SR));
  FDRE \slv_reg4_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg4[24]),
        .R(SR));
  FDRE \slv_reg4_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg4[25]),
        .R(SR));
  FDRE \slv_reg4_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg4[26]),
        .R(SR));
  FDRE \slv_reg4_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg4[27]),
        .R(SR));
  FDRE \slv_reg4_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg4[28]),
        .R(SR));
  FDRE \slv_reg4_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg4[29]),
        .R(SR));
  FDRE \slv_reg4_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg4[2]),
        .R(SR));
  FDRE \slv_reg4_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg4[30]),
        .R(SR));
  FDRE \slv_reg4_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg4[31]),
        .R(SR));
  FDRE \slv_reg4_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg4[3]),
        .R(SR));
  FDRE \slv_reg4_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg4[4]),
        .R(SR));
  FDRE \slv_reg4_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg4[5]),
        .R(SR));
  FDRE \slv_reg4_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg4[6]),
        .R(SR));
  FDRE \slv_reg4_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg4[7]),
        .R(SR));
  FDRE \slv_reg4_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg4[8]),
        .R(SR));
  FDRE \slv_reg4_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg4[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg5[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg5[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg5[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg5[7]_i_1_n_0 ));
  FDRE \slv_reg5_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg5[0]),
        .R(SR));
  FDRE \slv_reg5_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg5[10]),
        .R(SR));
  FDRE \slv_reg5_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg5[11]),
        .R(SR));
  FDRE \slv_reg5_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg5[12]),
        .R(SR));
  FDRE \slv_reg5_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg5[13]),
        .R(SR));
  FDRE \slv_reg5_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg5[14]),
        .R(SR));
  FDRE \slv_reg5_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg5[15]),
        .R(SR));
  FDRE \slv_reg5_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg5[16]),
        .R(SR));
  FDRE \slv_reg5_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg5[17]),
        .R(SR));
  FDRE \slv_reg5_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg5[18]),
        .R(SR));
  FDRE \slv_reg5_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg5[19]),
        .R(SR));
  FDRE \slv_reg5_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg5[1]),
        .R(SR));
  FDRE \slv_reg5_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg5[20]),
        .R(SR));
  FDRE \slv_reg5_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg5[21]),
        .R(SR));
  FDRE \slv_reg5_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg5[22]),
        .R(SR));
  FDRE \slv_reg5_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg5[23]),
        .R(SR));
  FDRE \slv_reg5_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg5[24]),
        .R(SR));
  FDRE \slv_reg5_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg5[25]),
        .R(SR));
  FDRE \slv_reg5_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg5[26]),
        .R(SR));
  FDRE \slv_reg5_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg5[27]),
        .R(SR));
  FDRE \slv_reg5_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg5[28]),
        .R(SR));
  FDRE \slv_reg5_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg5[29]),
        .R(SR));
  FDRE \slv_reg5_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg5[2]),
        .R(SR));
  FDRE \slv_reg5_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg5[30]),
        .R(SR));
  FDRE \slv_reg5_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg5[31]),
        .R(SR));
  FDRE \slv_reg5_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg5[3]),
        .R(SR));
  FDRE \slv_reg5_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg5[4]),
        .R(SR));
  FDRE \slv_reg5_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg5[5]),
        .R(SR));
  FDRE \slv_reg5_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg5[6]),
        .R(SR));
  FDRE \slv_reg5_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg5[7]),
        .R(SR));
  FDRE \slv_reg5_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg5[8]),
        .R(SR));
  FDRE \slv_reg5_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg5[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg6[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[1]),
        .I4(p_0_in[2]),
        .O(\slv_reg6[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg6[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[2]),
        .I4(p_0_in[2]),
        .O(\slv_reg6[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg6[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[3]),
        .I4(p_0_in[2]),
        .O(\slv_reg6[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg6[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg6[7]_i_1_n_0 ));
  FDRE \slv_reg6_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg6[0]),
        .R(SR));
  FDRE \slv_reg6_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg6[10]),
        .R(SR));
  FDRE \slv_reg6_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg6[11]),
        .R(SR));
  FDRE \slv_reg6_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg6[12]),
        .R(SR));
  FDRE \slv_reg6_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg6[13]),
        .R(SR));
  FDRE \slv_reg6_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg6[14]),
        .R(SR));
  FDRE \slv_reg6_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg6[15]),
        .R(SR));
  FDRE \slv_reg6_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg6[16]),
        .R(SR));
  FDRE \slv_reg6_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg6[17]),
        .R(SR));
  FDRE \slv_reg6_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg6[18]),
        .R(SR));
  FDRE \slv_reg6_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg6[19]),
        .R(SR));
  FDRE \slv_reg6_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg6[1]),
        .R(SR));
  FDRE \slv_reg6_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg6[20]),
        .R(SR));
  FDRE \slv_reg6_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg6[21]),
        .R(SR));
  FDRE \slv_reg6_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg6[22]),
        .R(SR));
  FDRE \slv_reg6_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg6[23]),
        .R(SR));
  FDRE \slv_reg6_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg6[24]),
        .R(SR));
  FDRE \slv_reg6_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg6[25]),
        .R(SR));
  FDRE \slv_reg6_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg6[26]),
        .R(SR));
  FDRE \slv_reg6_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg6[27]),
        .R(SR));
  FDRE \slv_reg6_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg6[28]),
        .R(SR));
  FDRE \slv_reg6_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg6[29]),
        .R(SR));
  FDRE \slv_reg6_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg6[2]),
        .R(SR));
  FDRE \slv_reg6_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg6[30]),
        .R(SR));
  FDRE \slv_reg6_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg6[31]),
        .R(SR));
  FDRE \slv_reg6_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg6[3]),
        .R(SR));
  FDRE \slv_reg6_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg6[4]),
        .R(SR));
  FDRE \slv_reg6_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg6[5]),
        .R(SR));
  FDRE \slv_reg6_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg6[6]),
        .R(SR));
  FDRE \slv_reg6_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg6[7]),
        .R(SR));
  FDRE \slv_reg6_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg6[8]),
        .R(SR));
  FDRE \slv_reg6_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg6[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg7[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg7[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg7[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg7[7]_i_1_n_0 ));
  FDRE \slv_reg7_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg7[0]),
        .R(SR));
  FDRE \slv_reg7_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg7[10]),
        .R(SR));
  FDRE \slv_reg7_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg7[11]),
        .R(SR));
  FDRE \slv_reg7_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg7[12]),
        .R(SR));
  FDRE \slv_reg7_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg7[13]),
        .R(SR));
  FDRE \slv_reg7_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg7[14]),
        .R(SR));
  FDRE \slv_reg7_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg7[15]),
        .R(SR));
  FDRE \slv_reg7_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg7[16]),
        .R(SR));
  FDRE \slv_reg7_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg7[17]),
        .R(SR));
  FDRE \slv_reg7_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg7[18]),
        .R(SR));
  FDRE \slv_reg7_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg7[19]),
        .R(SR));
  FDRE \slv_reg7_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg7[1]),
        .R(SR));
  FDRE \slv_reg7_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg7[20]),
        .R(SR));
  FDRE \slv_reg7_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg7[21]),
        .R(SR));
  FDRE \slv_reg7_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg7[22]),
        .R(SR));
  FDRE \slv_reg7_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg7[23]),
        .R(SR));
  FDRE \slv_reg7_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg7[24]),
        .R(SR));
  FDRE \slv_reg7_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg7[25]),
        .R(SR));
  FDRE \slv_reg7_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg7[26]),
        .R(SR));
  FDRE \slv_reg7_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg7[27]),
        .R(SR));
  FDRE \slv_reg7_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg7[28]),
        .R(SR));
  FDRE \slv_reg7_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg7[29]),
        .R(SR));
  FDRE \slv_reg7_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg7[2]),
        .R(SR));
  FDRE \slv_reg7_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg7[30]),
        .R(SR));
  FDRE \slv_reg7_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg7[31]),
        .R(SR));
  FDRE \slv_reg7_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg7[3]),
        .R(SR));
  FDRE \slv_reg7_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg7[4]),
        .R(SR));
  FDRE \slv_reg7_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg7[5]),
        .R(SR));
  FDRE \slv_reg7_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg7[6]),
        .R(SR));
  FDRE \slv_reg7_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg7[7]),
        .R(SR));
  FDRE \slv_reg7_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg7[8]),
        .R(SR));
  FDRE \slv_reg7_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg7[9]),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_fifo
   (s_status,
    Debug_fifo_empty,
    \r_output_reg[data][31]_0 ,
    SR,
    s00_axi_aclk,
    \v_dcount_reg[3]_0 ,
    s_rx_data_read,
    s00_axi_aresetn,
    Debug_fifo_wdata);
  output [0:0]s_status;
  output Debug_fifo_empty;
  output [31:0]\r_output_reg[data][31]_0 ;
  input [0:0]SR;
  input s00_axi_aclk;
  input \v_dcount_reg[3]_0 ;
  input s_rx_data_read;
  input s00_axi_aresetn;
  input [31:0]Debug_fifo_wdata;

  wire Debug_fifo_empty;
  wire [31:0]Debug_fifo_wdata;
  wire [0:0]SR;
  wire p_0_in__0;
  wire [31:0]\r_output_reg[data]0__0 ;
  wire [31:0]\r_output_reg[data][31]_0 ;
  wire \r_ram_addr[r][0]_i_1__0_n_0 ;
  wire \r_ram_addr[r][1]_i_1_n_0 ;
  wire \r_ram_addr[r][2]_i_1_n_0 ;
  wire \r_ram_addr[r][3]_i_1_n_0 ;
  wire \r_ram_addr[r]_rep[1]_i_1_n_0 ;
  wire \r_ram_addr[r]_rep[2]_i_1_n_0 ;
  wire \r_ram_addr[r]_rep[3]_i_2_n_0 ;
  wire \r_ram_addr[w][0]_i_1__0_n_0 ;
  wire \r_ram_addr[w][1]_i_1_n_0 ;
  wire \r_ram_addr[w][2]_i_1_n_0 ;
  wire \r_ram_addr[w][3]_i_2_n_0 ;
  wire \r_ram_addr_reg[r]0 ;
  wire [3:0]\r_ram_addr_reg[r]__0 ;
  wire \r_ram_addr_reg[r_n_0_][1] ;
  wire \r_ram_addr_reg[r_n_0_][2] ;
  wire \r_ram_addr_reg[r_n_0_][3] ;
  wire \r_ram_addr_reg[w]0 ;
  wire [3:0]\r_ram_addr_reg[w]__0__0 ;
  wire \r_status[empty]_i_1__0_n_0 ;
  wire \r_status[empty]_i_2_n_0 ;
  wire \r_status[full]_i_1__0_n_0 ;
  wire \r_status[full]_i_2__0_n_0 ;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s_rx_data_read;
  wire [0:0]s_status;
  wire v_dcount;
  wire \v_dcount[0]_i_1__0_n_0 ;
  wire \v_dcount[1]_i_1__0_n_0 ;
  wire \v_dcount[2]_i_1__0_n_0 ;
  wire \v_dcount[3]_i_1__0_n_0 ;
  wire \v_dcount[4]_i_2__0_n_0 ;
  wire \v_dcount_reg[3]_0 ;
  wire [4:0]v_dcount_reg__0;
  wire [1:0]NLW_ram_reg_0_15_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_0_15_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_0_15_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_0_15_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_0_15_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_ram_reg_0_15_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_ram_reg_0_15_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_0_15_6_11_DOD_UNCONNECTED;

  FDRE \r_output_reg[data][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0__0 [0]),
        .Q(\r_output_reg[data][31]_0 [0]),
        .R(SR));
  FDRE \r_output_reg[data][10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0__0 [10]),
        .Q(\r_output_reg[data][31]_0 [10]),
        .R(SR));
  FDRE \r_output_reg[data][11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0__0 [11]),
        .Q(\r_output_reg[data][31]_0 [11]),
        .R(SR));
  FDRE \r_output_reg[data][12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0__0 [12]),
        .Q(\r_output_reg[data][31]_0 [12]),
        .R(SR));
  FDRE \r_output_reg[data][13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0__0 [13]),
        .Q(\r_output_reg[data][31]_0 [13]),
        .R(SR));
  FDRE \r_output_reg[data][14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0__0 [14]),
        .Q(\r_output_reg[data][31]_0 [14]),
        .R(SR));
  FDRE \r_output_reg[data][15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0__0 [15]),
        .Q(\r_output_reg[data][31]_0 [15]),
        .R(SR));
  FDRE \r_output_reg[data][16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0__0 [16]),
        .Q(\r_output_reg[data][31]_0 [16]),
        .R(SR));
  FDRE \r_output_reg[data][17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0__0 [17]),
        .Q(\r_output_reg[data][31]_0 [17]),
        .R(SR));
  FDRE \r_output_reg[data][18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0__0 [18]),
        .Q(\r_output_reg[data][31]_0 [18]),
        .R(SR));
  FDRE \r_output_reg[data][19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0__0 [19]),
        .Q(\r_output_reg[data][31]_0 [19]),
        .R(SR));
  FDRE \r_output_reg[data][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0__0 [1]),
        .Q(\r_output_reg[data][31]_0 [1]),
        .R(SR));
  FDRE \r_output_reg[data][20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0__0 [20]),
        .Q(\r_output_reg[data][31]_0 [20]),
        .R(SR));
  FDRE \r_output_reg[data][21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0__0 [21]),
        .Q(\r_output_reg[data][31]_0 [21]),
        .R(SR));
  FDRE \r_output_reg[data][22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0__0 [22]),
        .Q(\r_output_reg[data][31]_0 [22]),
        .R(SR));
  FDRE \r_output_reg[data][23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0__0 [23]),
        .Q(\r_output_reg[data][31]_0 [23]),
        .R(SR));
  FDRE \r_output_reg[data][24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0__0 [24]),
        .Q(\r_output_reg[data][31]_0 [24]),
        .R(SR));
  FDRE \r_output_reg[data][25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0__0 [25]),
        .Q(\r_output_reg[data][31]_0 [25]),
        .R(SR));
  FDRE \r_output_reg[data][26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0__0 [26]),
        .Q(\r_output_reg[data][31]_0 [26]),
        .R(SR));
  FDRE \r_output_reg[data][27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0__0 [27]),
        .Q(\r_output_reg[data][31]_0 [27]),
        .R(SR));
  FDRE \r_output_reg[data][28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0__0 [28]),
        .Q(\r_output_reg[data][31]_0 [28]),
        .R(SR));
  FDRE \r_output_reg[data][29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0__0 [29]),
        .Q(\r_output_reg[data][31]_0 [29]),
        .R(SR));
  FDRE \r_output_reg[data][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0__0 [2]),
        .Q(\r_output_reg[data][31]_0 [2]),
        .R(SR));
  FDRE \r_output_reg[data][30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0__0 [30]),
        .Q(\r_output_reg[data][31]_0 [30]),
        .R(SR));
  FDRE \r_output_reg[data][31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0__0 [31]),
        .Q(\r_output_reg[data][31]_0 [31]),
        .R(SR));
  FDRE \r_output_reg[data][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0__0 [3]),
        .Q(\r_output_reg[data][31]_0 [3]),
        .R(SR));
  FDRE \r_output_reg[data][4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0__0 [4]),
        .Q(\r_output_reg[data][31]_0 [4]),
        .R(SR));
  FDRE \r_output_reg[data][5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0__0 [5]),
        .Q(\r_output_reg[data][31]_0 [5]),
        .R(SR));
  FDRE \r_output_reg[data][6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0__0 [6]),
        .Q(\r_output_reg[data][31]_0 [6]),
        .R(SR));
  FDRE \r_output_reg[data][7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0__0 [7]),
        .Q(\r_output_reg[data][31]_0 [7]),
        .R(SR));
  FDRE \r_output_reg[data][8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0__0 [8]),
        .Q(\r_output_reg[data][31]_0 [8]),
        .R(SR));
  FDRE \r_output_reg[data][9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0__0 [9]),
        .Q(\r_output_reg[data][31]_0 [9]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \r_ram_addr[r][0]_i_1__0 
       (.I0(\r_ram_addr_reg[r]__0 [0]),
        .O(\r_ram_addr[r][0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_ram_addr[r][1]_i_1 
       (.I0(\r_ram_addr_reg[r_n_0_][1] ),
        .I1(\r_ram_addr_reg[r]__0 [0]),
        .O(\r_ram_addr[r][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_ram_addr[r][2]_i_1 
       (.I0(\r_ram_addr_reg[r_n_0_][1] ),
        .I1(\r_ram_addr_reg[r]__0 [0]),
        .I2(\r_ram_addr_reg[r_n_0_][2] ),
        .O(\r_ram_addr[r][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_ram_addr[r][3]_i_1 
       (.I0(\r_ram_addr_reg[r_n_0_][1] ),
        .I1(\r_ram_addr_reg[r]__0 [0]),
        .I2(\r_ram_addr_reg[r_n_0_][2] ),
        .I3(\r_ram_addr_reg[r_n_0_][3] ),
        .O(\r_ram_addr[r][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_ram_addr[r]_rep[1]_i_1 
       (.I0(\r_ram_addr_reg[r]__0 [0]),
        .I1(\r_ram_addr_reg[r_n_0_][1] ),
        .O(\r_ram_addr[r]_rep[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \r_ram_addr[r]_rep[2]_i_1 
       (.I0(\r_ram_addr_reg[r_n_0_][2] ),
        .I1(\r_ram_addr_reg[r]__0 [0]),
        .I2(\r_ram_addr_reg[r_n_0_][1] ),
        .O(\r_ram_addr[r]_rep[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \r_ram_addr[r]_rep[3]_i_1__0 
       (.I0(v_dcount_reg__0[3]),
        .I1(v_dcount_reg__0[2]),
        .I2(v_dcount_reg__0[1]),
        .I3(v_dcount_reg__0[4]),
        .I4(v_dcount_reg__0[0]),
        .I5(s_rx_data_read),
        .O(\r_ram_addr_reg[r]0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \r_ram_addr[r]_rep[3]_i_2 
       (.I0(\r_ram_addr_reg[r_n_0_][3] ),
        .I1(\r_ram_addr_reg[r_n_0_][2] ),
        .I2(\r_ram_addr_reg[r]__0 [0]),
        .I3(\r_ram_addr_reg[r_n_0_][1] ),
        .O(\r_ram_addr[r]_rep[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_ram_addr[w][0]_i_1__0 
       (.I0(\r_ram_addr_reg[w]__0__0 [0]),
        .O(\r_ram_addr[w][0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_ram_addr[w][1]_i_1 
       (.I0(\r_ram_addr_reg[w]__0__0 [0]),
        .I1(\r_ram_addr_reg[w]__0__0 [1]),
        .O(\r_ram_addr[w][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \r_ram_addr[w][2]_i_1 
       (.I0(\r_ram_addr_reg[w]__0__0 [2]),
        .I1(\r_ram_addr_reg[w]__0__0 [0]),
        .I2(\r_ram_addr_reg[w]__0__0 [1]),
        .O(\r_ram_addr[w][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0444444444444444)) 
    \r_ram_addr[w][3]_i_1__0 
       (.I0(v_dcount_reg__0[4]),
        .I1(\v_dcount_reg[3]_0 ),
        .I2(v_dcount_reg__0[0]),
        .I3(v_dcount_reg__0[3]),
        .I4(v_dcount_reg__0[2]),
        .I5(v_dcount_reg__0[1]),
        .O(\r_ram_addr_reg[w]0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \r_ram_addr[w][3]_i_2 
       (.I0(\r_ram_addr_reg[w]__0__0 [3]),
        .I1(\r_ram_addr_reg[w]__0__0 [2]),
        .I2(\r_ram_addr_reg[w]__0__0 [0]),
        .I3(\r_ram_addr_reg[w]__0__0 [1]),
        .O(\r_ram_addr[w][3]_i_2_n_0 ));
  FDRE \r_ram_addr_reg[r][0] 
       (.C(s00_axi_aclk),
        .CE(\r_ram_addr_reg[r]0 ),
        .D(\r_ram_addr[r][0]_i_1__0_n_0 ),
        .Q(\r_ram_addr_reg[r]__0 [0]),
        .R(SR));
  FDRE \r_ram_addr_reg[r][1] 
       (.C(s00_axi_aclk),
        .CE(\r_ram_addr_reg[r]0 ),
        .D(\r_ram_addr[r][1]_i_1_n_0 ),
        .Q(\r_ram_addr_reg[r_n_0_][1] ),
        .R(SR));
  FDRE \r_ram_addr_reg[r][2] 
       (.C(s00_axi_aclk),
        .CE(\r_ram_addr_reg[r]0 ),
        .D(\r_ram_addr[r][2]_i_1_n_0 ),
        .Q(\r_ram_addr_reg[r_n_0_][2] ),
        .R(SR));
  FDRE \r_ram_addr_reg[r][3] 
       (.C(s00_axi_aclk),
        .CE(\r_ram_addr_reg[r]0 ),
        .D(\r_ram_addr[r][3]_i_1_n_0 ),
        .Q(\r_ram_addr_reg[r_n_0_][3] ),
        .R(SR));
  FDRE \r_ram_addr_reg[r]_rep[1] 
       (.C(s00_axi_aclk),
        .CE(\r_ram_addr_reg[r]0 ),
        .D(\r_ram_addr[r]_rep[1]_i_1_n_0 ),
        .Q(\r_ram_addr_reg[r]__0 [1]),
        .R(SR));
  FDRE \r_ram_addr_reg[r]_rep[2] 
       (.C(s00_axi_aclk),
        .CE(\r_ram_addr_reg[r]0 ),
        .D(\r_ram_addr[r]_rep[2]_i_1_n_0 ),
        .Q(\r_ram_addr_reg[r]__0 [2]),
        .R(SR));
  FDRE \r_ram_addr_reg[r]_rep[3] 
       (.C(s00_axi_aclk),
        .CE(\r_ram_addr_reg[r]0 ),
        .D(\r_ram_addr[r]_rep[3]_i_2_n_0 ),
        .Q(\r_ram_addr_reg[r]__0 [3]),
        .R(SR));
  FDRE \r_ram_addr_reg[w][0] 
       (.C(s00_axi_aclk),
        .CE(\r_ram_addr_reg[w]0 ),
        .D(\r_ram_addr[w][0]_i_1__0_n_0 ),
        .Q(\r_ram_addr_reg[w]__0__0 [0]),
        .R(SR));
  FDRE \r_ram_addr_reg[w][1] 
       (.C(s00_axi_aclk),
        .CE(\r_ram_addr_reg[w]0 ),
        .D(\r_ram_addr[w][1]_i_1_n_0 ),
        .Q(\r_ram_addr_reg[w]__0__0 [1]),
        .R(SR));
  FDRE \r_ram_addr_reg[w][2] 
       (.C(s00_axi_aclk),
        .CE(\r_ram_addr_reg[w]0 ),
        .D(\r_ram_addr[w][2]_i_1_n_0 ),
        .Q(\r_ram_addr_reg[w]__0__0 [2]),
        .R(SR));
  FDRE \r_ram_addr_reg[w][3] 
       (.C(s00_axi_aclk),
        .CE(\r_ram_addr_reg[w]0 ),
        .D(\r_ram_addr[w][3]_i_2_n_0 ),
        .Q(\r_ram_addr_reg[w]__0__0 [3]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000004FFFFFFFFF)) 
    \r_status[empty]_i_1__0 
       (.I0(\v_dcount_reg[3]_0 ),
        .I1(s_rx_data_read),
        .I2(v_dcount_reg__0[0]),
        .I3(\r_status[empty]_i_2_n_0 ),
        .I4(v_dcount_reg__0[4]),
        .I5(s00_axi_aresetn),
        .O(\r_status[empty]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \r_status[empty]_i_2 
       (.I0(v_dcount_reg__0[3]),
        .I1(v_dcount_reg__0[2]),
        .I2(v_dcount_reg__0[1]),
        .O(\r_status[empty]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA0000030000)) 
    \r_status[full]_i_1__0 
       (.I0(\r_status[full]_i_2__0_n_0 ),
        .I1(v_dcount_reg__0[3]),
        .I2(v_dcount_reg__0[2]),
        .I3(v_dcount_reg__0[1]),
        .I4(v_dcount_reg__0[4]),
        .I5(v_dcount_reg__0[0]),
        .O(\r_status[full]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \r_status[full]_i_2__0 
       (.I0(s_rx_data_read),
        .I1(\v_dcount_reg[3]_0 ),
        .I2(v_dcount_reg__0[3]),
        .I3(v_dcount_reg__0[2]),
        .O(\r_status[full]_i_2__0_n_0 ));
  FDRE \r_status_reg[empty] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_status[empty]_i_1__0_n_0 ),
        .Q(Debug_fifo_empty),
        .R(1'b0));
  FDRE \r_status_reg[full] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_status[full]_i_1__0_n_0 ),
        .Q(s_status),
        .R(SR));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M ram_reg_0_15_0_5
       (.ADDRA({1'b0,\r_ram_addr_reg[r]__0 }),
        .ADDRB({1'b0,\r_ram_addr_reg[r]__0 }),
        .ADDRC({1'b0,\r_ram_addr_reg[r]__0 }),
        .ADDRD({1'b0,\r_ram_addr_reg[w]__0__0 }),
        .DIA(Debug_fifo_wdata[1:0]),
        .DIB(Debug_fifo_wdata[3:2]),
        .DIC(Debug_fifo_wdata[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(\r_output_reg[data]0__0 [1:0]),
        .DOB(\r_output_reg[data]0__0 [3:2]),
        .DOC(\r_output_reg[data]0__0 [5:4]),
        .DOD(NLW_ram_reg_0_15_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in__0));
  LUT3 #(
    .INIT(8'h40)) 
    ram_reg_0_15_0_5_i_1__0
       (.I0(s_status),
        .I1(s00_axi_aresetn),
        .I2(\v_dcount_reg[3]_0 ),
        .O(p_0_in__0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M ram_reg_0_15_12_17
       (.ADDRA({1'b0,\r_ram_addr_reg[r]__0 }),
        .ADDRB({1'b0,\r_ram_addr_reg[r]__0 }),
        .ADDRC({1'b0,\r_ram_addr_reg[r]__0 }),
        .ADDRD({1'b0,\r_ram_addr_reg[w]__0__0 }),
        .DIA(Debug_fifo_wdata[13:12]),
        .DIB(Debug_fifo_wdata[15:14]),
        .DIC(Debug_fifo_wdata[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(\r_output_reg[data]0__0 [13:12]),
        .DOB(\r_output_reg[data]0__0 [15:14]),
        .DOC(\r_output_reg[data]0__0 [17:16]),
        .DOD(NLW_ram_reg_0_15_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in__0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M ram_reg_0_15_18_23
       (.ADDRA({1'b0,\r_ram_addr_reg[r]__0 }),
        .ADDRB({1'b0,\r_ram_addr_reg[r]__0 }),
        .ADDRC({1'b0,\r_ram_addr_reg[r]__0 }),
        .ADDRD({1'b0,\r_ram_addr_reg[w]__0__0 }),
        .DIA(Debug_fifo_wdata[19:18]),
        .DIB(Debug_fifo_wdata[21:20]),
        .DIC(Debug_fifo_wdata[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(\r_output_reg[data]0__0 [19:18]),
        .DOB(\r_output_reg[data]0__0 [21:20]),
        .DOC(\r_output_reg[data]0__0 [23:22]),
        .DOD(NLW_ram_reg_0_15_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in__0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M ram_reg_0_15_24_29
       (.ADDRA({1'b0,\r_ram_addr_reg[r]__0 }),
        .ADDRB({1'b0,\r_ram_addr_reg[r]__0 }),
        .ADDRC({1'b0,\r_ram_addr_reg[r]__0 }),
        .ADDRD({1'b0,\r_ram_addr_reg[w]__0__0 }),
        .DIA(Debug_fifo_wdata[25:24]),
        .DIB(Debug_fifo_wdata[27:26]),
        .DIC(Debug_fifo_wdata[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(\r_output_reg[data]0__0 [25:24]),
        .DOB(\r_output_reg[data]0__0 [27:26]),
        .DOC(\r_output_reg[data]0__0 [29:28]),
        .DOD(NLW_ram_reg_0_15_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in__0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32M ram_reg_0_15_30_31
       (.ADDRA({1'b0,\r_ram_addr_reg[r]__0 }),
        .ADDRB({1'b0,\r_ram_addr_reg[r]__0 }),
        .ADDRC({1'b0,\r_ram_addr_reg[r]__0 }),
        .ADDRD({1'b0,\r_ram_addr_reg[w]__0__0 }),
        .DIA(Debug_fifo_wdata[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(\r_output_reg[data]0__0 [31:30]),
        .DOB(NLW_ram_reg_0_15_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_ram_reg_0_15_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_ram_reg_0_15_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in__0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M ram_reg_0_15_6_11
       (.ADDRA({1'b0,\r_ram_addr_reg[r]__0 }),
        .ADDRB({1'b0,\r_ram_addr_reg[r]__0 }),
        .ADDRC({1'b0,\r_ram_addr_reg[r]__0 }),
        .ADDRD({1'b0,\r_ram_addr_reg[w]__0__0 }),
        .DIA(Debug_fifo_wdata[7:6]),
        .DIB(Debug_fifo_wdata[9:8]),
        .DIC(Debug_fifo_wdata[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(\r_output_reg[data]0__0 [7:6]),
        .DOB(\r_output_reg[data]0__0 [9:8]),
        .DOC(\r_output_reg[data]0__0 [11:10]),
        .DOD(NLW_ram_reg_0_15_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in__0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \v_dcount[0]_i_1__0 
       (.I0(v_dcount_reg__0[0]),
        .O(\v_dcount[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \v_dcount[1]_i_1__0 
       (.I0(v_dcount_reg__0[0]),
        .I1(\v_dcount_reg[3]_0 ),
        .I2(v_dcount_reg__0[1]),
        .O(\v_dcount[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \v_dcount[2]_i_1__0 
       (.I0(\v_dcount_reg[3]_0 ),
        .I1(v_dcount_reg__0[0]),
        .I2(v_dcount_reg__0[2]),
        .I3(v_dcount_reg__0[1]),
        .O(\v_dcount[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7FFE8001)) 
    \v_dcount[3]_i_1__0 
       (.I0(v_dcount_reg__0[1]),
        .I1(\v_dcount_reg[3]_0 ),
        .I2(v_dcount_reg__0[0]),
        .I3(v_dcount_reg__0[2]),
        .I4(v_dcount_reg__0[3]),
        .O(\v_dcount[3]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0033FE00)) 
    \v_dcount[4]_i_1__0 
       (.I0(v_dcount_reg__0[0]),
        .I1(v_dcount_reg__0[4]),
        .I2(\r_status[empty]_i_2_n_0 ),
        .I3(s_rx_data_read),
        .I4(\v_dcount_reg[3]_0 ),
        .O(v_dcount));
  LUT6 #(
    .INIT(64'h7FFF8000FFFE0001)) 
    \v_dcount[4]_i_2__0 
       (.I0(v_dcount_reg__0[1]),
        .I1(\v_dcount_reg[3]_0 ),
        .I2(v_dcount_reg__0[0]),
        .I3(v_dcount_reg__0[2]),
        .I4(v_dcount_reg__0[4]),
        .I5(v_dcount_reg__0[3]),
        .O(\v_dcount[4]_i_2__0_n_0 ));
  FDRE \v_dcount_reg[0] 
       (.C(s00_axi_aclk),
        .CE(v_dcount),
        .D(\v_dcount[0]_i_1__0_n_0 ),
        .Q(v_dcount_reg__0[0]),
        .R(SR));
  FDRE \v_dcount_reg[1] 
       (.C(s00_axi_aclk),
        .CE(v_dcount),
        .D(\v_dcount[1]_i_1__0_n_0 ),
        .Q(v_dcount_reg__0[1]),
        .R(SR));
  FDRE \v_dcount_reg[2] 
       (.C(s00_axi_aclk),
        .CE(v_dcount),
        .D(\v_dcount[2]_i_1__0_n_0 ),
        .Q(v_dcount_reg__0[2]),
        .R(SR));
  FDRE \v_dcount_reg[3] 
       (.C(s00_axi_aclk),
        .CE(v_dcount),
        .D(\v_dcount[3]_i_1__0_n_0 ),
        .Q(v_dcount_reg__0[3]),
        .R(SR));
  FDRE \v_dcount_reg[4] 
       (.C(s00_axi_aclk),
        .CE(v_dcount),
        .D(\v_dcount[4]_i_2__0_n_0 ),
        .Q(v_dcount_reg__0[4]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "uart_fifo" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_fifo_0
   (s_status,
    E,
    \FSM_onehot_tx_stat_reg[4] ,
    \r_status_reg[empty]_0 ,
    \r_output_reg[data] ,
    SR,
    s00_axi_aclk,
    \r_output_reg[valid]_0 ,
    s_tx_data_valid,
    s00_axi_aresetn,
    Q,
    tx_stat_reg,
    \FSM_onehot_tx_stat_reg[0] ,
    \tx[ready] ,
    \r_output_reg[data][31]_0 );
  output [1:0]s_status;
  output [0:0]E;
  output [0:0]\FSM_onehot_tx_stat_reg[4] ;
  output \r_status_reg[empty]_0 ;
  output [31:0]\r_output_reg[data] ;
  input [0:0]SR;
  input s00_axi_aclk;
  input \r_output_reg[valid]_0 ;
  input s_tx_data_valid;
  input s00_axi_aresetn;
  input [4:0]Q;
  input [1:0]tx_stat_reg;
  input \FSM_onehot_tx_stat_reg[0] ;
  input \tx[ready] ;
  input [31:0]\r_output_reg[data][31]_0 ;

  wire [0:0]E;
  wire \FSM_onehot_tx_stat[4]_i_3_n_0 ;
  wire \FSM_onehot_tx_stat_reg[0] ;
  wire [0:0]\FSM_onehot_tx_stat_reg[4] ;
  wire [4:0]Q;
  wire [0:0]SR;
  wire p_0_in;
  wire [31:0]\r_output_reg[data] ;
  wire [31:0]\r_output_reg[data]0 ;
  wire [31:0]\r_output_reg[data][31]_0 ;
  wire \r_output_reg[valid]_0 ;
  wire \r_ram_addr[r][0]_i_1_n_0 ;
  wire \r_ram_addr[r][1]_i_1_n_0 ;
  wire \r_ram_addr[r][2]_i_1_n_0 ;
  wire \r_ram_addr[r][3]_i_1_n_0 ;
  wire \r_ram_addr[r]_rep[1]_i_1_n_0 ;
  wire \r_ram_addr[r]_rep[2]_i_1_n_0 ;
  wire \r_ram_addr[r]_rep[3]_i_2_n_0 ;
  wire \r_ram_addr[w][0]_i_1_n_0 ;
  wire \r_ram_addr[w][1]_i_1_n_0 ;
  wire \r_ram_addr[w][2]_i_1_n_0 ;
  wire \r_ram_addr[w][3]_i_2_n_0 ;
  wire \r_ram_addr_reg[r]0 ;
  wire [3:0]\r_ram_addr_reg[r]__0 ;
  wire \r_ram_addr_reg[r_n_0_][1] ;
  wire \r_ram_addr_reg[r_n_0_][2] ;
  wire \r_ram_addr_reg[r_n_0_][3] ;
  wire \r_ram_addr_reg[w]0 ;
  wire [3:0]\r_ram_addr_reg[w]__0 ;
  wire \r_status[empty]_i_1_n_0 ;
  wire \r_status[full]_i_2_n_0 ;
  wire \r_status_reg[empty]_0 ;
  wire \r_status_reg[full]0 ;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [1:0]s_status;
  wire s_tx_data_valid;
  wire \tx[ready] ;
  wire \tx_fifo[rvalid] ;
  wire [1:0]tx_stat_reg;
  wire v_dcount;
  wire \v_dcount[0]_i_1_n_0 ;
  wire \v_dcount[1]_i_1_n_0 ;
  wire \v_dcount[2]_i_1_n_0 ;
  wire \v_dcount[3]_i_1_n_0 ;
  wire \v_dcount[4]_i_2_n_0 ;
  wire \v_dcount[4]_i_3_n_0 ;
  wire [4:0]v_dcount_reg__0;
  wire [1:0]NLW_ram_reg_0_15_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_0_15_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_0_15_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_0_15_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_0_15_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_ram_reg_0_15_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_ram_reg_0_15_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_0_15_6_11_DOD_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFEFEFEF4F4F4B0B0)) 
    \FSM_onehot_tx_stat[4]_i_1 
       (.I0(tx_stat_reg[1]),
        .I1(Q[4]),
        .I2(\FSM_onehot_tx_stat[4]_i_3_n_0 ),
        .I3(\FSM_onehot_tx_stat_reg[0] ),
        .I4(tx_stat_reg[0]),
        .I5(\tx[ready] ),
        .O(\FSM_onehot_tx_stat_reg[4] ));
  LUT6 #(
    .INIT(64'hAAAFAAABAAA0AAAB)) 
    \FSM_onehot_tx_stat[4]_i_3 
       (.I0(Q[4]),
        .I1(s_status[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(\tx_fifo[rvalid] ),
        .O(\FSM_onehot_tx_stat[4]_i_3_n_0 ));
  FDRE \r_output_reg[data][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0 [0]),
        .Q(\r_output_reg[data] [0]),
        .R(SR));
  FDRE \r_output_reg[data][10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0 [10]),
        .Q(\r_output_reg[data] [10]),
        .R(SR));
  FDRE \r_output_reg[data][11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0 [11]),
        .Q(\r_output_reg[data] [11]),
        .R(SR));
  FDRE \r_output_reg[data][12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0 [12]),
        .Q(\r_output_reg[data] [12]),
        .R(SR));
  FDRE \r_output_reg[data][13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0 [13]),
        .Q(\r_output_reg[data] [13]),
        .R(SR));
  FDRE \r_output_reg[data][14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0 [14]),
        .Q(\r_output_reg[data] [14]),
        .R(SR));
  FDRE \r_output_reg[data][15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0 [15]),
        .Q(\r_output_reg[data] [15]),
        .R(SR));
  FDRE \r_output_reg[data][16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0 [16]),
        .Q(\r_output_reg[data] [16]),
        .R(SR));
  FDRE \r_output_reg[data][17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0 [17]),
        .Q(\r_output_reg[data] [17]),
        .R(SR));
  FDRE \r_output_reg[data][18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0 [18]),
        .Q(\r_output_reg[data] [18]),
        .R(SR));
  FDRE \r_output_reg[data][19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0 [19]),
        .Q(\r_output_reg[data] [19]),
        .R(SR));
  FDRE \r_output_reg[data][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0 [1]),
        .Q(\r_output_reg[data] [1]),
        .R(SR));
  FDRE \r_output_reg[data][20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0 [20]),
        .Q(\r_output_reg[data] [20]),
        .R(SR));
  FDRE \r_output_reg[data][21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0 [21]),
        .Q(\r_output_reg[data] [21]),
        .R(SR));
  FDRE \r_output_reg[data][22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0 [22]),
        .Q(\r_output_reg[data] [22]),
        .R(SR));
  FDRE \r_output_reg[data][23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0 [23]),
        .Q(\r_output_reg[data] [23]),
        .R(SR));
  FDRE \r_output_reg[data][24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0 [24]),
        .Q(\r_output_reg[data] [24]),
        .R(SR));
  FDRE \r_output_reg[data][25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0 [25]),
        .Q(\r_output_reg[data] [25]),
        .R(SR));
  FDRE \r_output_reg[data][26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0 [26]),
        .Q(\r_output_reg[data] [26]),
        .R(SR));
  FDRE \r_output_reg[data][27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0 [27]),
        .Q(\r_output_reg[data] [27]),
        .R(SR));
  FDRE \r_output_reg[data][28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0 [28]),
        .Q(\r_output_reg[data] [28]),
        .R(SR));
  FDRE \r_output_reg[data][29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0 [29]),
        .Q(\r_output_reg[data] [29]),
        .R(SR));
  FDRE \r_output_reg[data][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0 [2]),
        .Q(\r_output_reg[data] [2]),
        .R(SR));
  FDRE \r_output_reg[data][30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0 [30]),
        .Q(\r_output_reg[data] [30]),
        .R(SR));
  FDRE \r_output_reg[data][31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0 [31]),
        .Q(\r_output_reg[data] [31]),
        .R(SR));
  FDRE \r_output_reg[data][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0 [3]),
        .Q(\r_output_reg[data] [3]),
        .R(SR));
  FDRE \r_output_reg[data][4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0 [4]),
        .Q(\r_output_reg[data] [4]),
        .R(SR));
  FDRE \r_output_reg[data][5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0 [5]),
        .Q(\r_output_reg[data] [5]),
        .R(SR));
  FDRE \r_output_reg[data][6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0 [6]),
        .Q(\r_output_reg[data] [6]),
        .R(SR));
  FDRE \r_output_reg[data][7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0 [7]),
        .Q(\r_output_reg[data] [7]),
        .R(SR));
  FDRE \r_output_reg[data][8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0 [8]),
        .Q(\r_output_reg[data] [8]),
        .R(SR));
  FDRE \r_output_reg[data][9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[data]0 [9]),
        .Q(\r_output_reg[data] [9]),
        .R(SR));
  FDRE \r_output_reg[valid] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[valid]_0 ),
        .Q(\tx_fifo[rvalid] ),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \r_ram_addr[r][0]_i_1 
       (.I0(\r_ram_addr_reg[r]__0 [0]),
        .O(\r_ram_addr[r][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_ram_addr[r][1]_i_1 
       (.I0(\r_ram_addr_reg[r_n_0_][1] ),
        .I1(\r_ram_addr_reg[r]__0 [0]),
        .O(\r_ram_addr[r][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_ram_addr[r][2]_i_1 
       (.I0(\r_ram_addr_reg[r_n_0_][1] ),
        .I1(\r_ram_addr_reg[r]__0 [0]),
        .I2(\r_ram_addr_reg[r_n_0_][2] ),
        .O(\r_ram_addr[r][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_ram_addr[r][3]_i_1 
       (.I0(\r_ram_addr_reg[r_n_0_][1] ),
        .I1(\r_ram_addr_reg[r]__0 [0]),
        .I2(\r_ram_addr_reg[r_n_0_][2] ),
        .I3(\r_ram_addr_reg[r_n_0_][3] ),
        .O(\r_ram_addr[r][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_ram_addr[r]_rep[1]_i_1 
       (.I0(\r_ram_addr_reg[r]__0 [0]),
        .I1(\r_ram_addr_reg[r_n_0_][1] ),
        .O(\r_ram_addr[r]_rep[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \r_ram_addr[r]_rep[2]_i_1 
       (.I0(\r_ram_addr_reg[r_n_0_][2] ),
        .I1(\r_ram_addr_reg[r]__0 [0]),
        .I2(\r_ram_addr_reg[r_n_0_][1] ),
        .O(\r_ram_addr[r]_rep[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \r_ram_addr[r]_rep[3]_i_1 
       (.I0(v_dcount_reg__0[3]),
        .I1(v_dcount_reg__0[2]),
        .I2(v_dcount_reg__0[1]),
        .I3(v_dcount_reg__0[4]),
        .I4(v_dcount_reg__0[0]),
        .I5(\r_output_reg[valid]_0 ),
        .O(\r_ram_addr_reg[r]0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \r_ram_addr[r]_rep[3]_i_2 
       (.I0(\r_ram_addr_reg[r_n_0_][3] ),
        .I1(\r_ram_addr_reg[r_n_0_][2] ),
        .I2(\r_ram_addr_reg[r]__0 [0]),
        .I3(\r_ram_addr_reg[r_n_0_][1] ),
        .O(\r_ram_addr[r]_rep[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_ram_addr[w][0]_i_1 
       (.I0(\r_ram_addr_reg[w]__0 [0]),
        .O(\r_ram_addr[w][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_ram_addr[w][1]_i_1 
       (.I0(\r_ram_addr_reg[w]__0 [0]),
        .I1(\r_ram_addr_reg[w]__0 [1]),
        .O(\r_ram_addr[w][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \r_ram_addr[w][2]_i_1 
       (.I0(\r_ram_addr_reg[w]__0 [2]),
        .I1(\r_ram_addr_reg[w]__0 [0]),
        .I2(\r_ram_addr_reg[w]__0 [1]),
        .O(\r_ram_addr[w][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0444444444444444)) 
    \r_ram_addr[w][3]_i_1 
       (.I0(v_dcount_reg__0[4]),
        .I1(s_tx_data_valid),
        .I2(v_dcount_reg__0[0]),
        .I3(v_dcount_reg__0[3]),
        .I4(v_dcount_reg__0[2]),
        .I5(v_dcount_reg__0[1]),
        .O(\r_ram_addr_reg[w]0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \r_ram_addr[w][3]_i_2 
       (.I0(\r_ram_addr_reg[w]__0 [3]),
        .I1(\r_ram_addr_reg[w]__0 [2]),
        .I2(\r_ram_addr_reg[w]__0 [0]),
        .I3(\r_ram_addr_reg[w]__0 [1]),
        .O(\r_ram_addr[w][3]_i_2_n_0 ));
  FDRE \r_ram_addr_reg[r][0] 
       (.C(s00_axi_aclk),
        .CE(\r_ram_addr_reg[r]0 ),
        .D(\r_ram_addr[r][0]_i_1_n_0 ),
        .Q(\r_ram_addr_reg[r]__0 [0]),
        .R(SR));
  FDRE \r_ram_addr_reg[r][1] 
       (.C(s00_axi_aclk),
        .CE(\r_ram_addr_reg[r]0 ),
        .D(\r_ram_addr[r][1]_i_1_n_0 ),
        .Q(\r_ram_addr_reg[r_n_0_][1] ),
        .R(SR));
  FDRE \r_ram_addr_reg[r][2] 
       (.C(s00_axi_aclk),
        .CE(\r_ram_addr_reg[r]0 ),
        .D(\r_ram_addr[r][2]_i_1_n_0 ),
        .Q(\r_ram_addr_reg[r_n_0_][2] ),
        .R(SR));
  FDRE \r_ram_addr_reg[r][3] 
       (.C(s00_axi_aclk),
        .CE(\r_ram_addr_reg[r]0 ),
        .D(\r_ram_addr[r][3]_i_1_n_0 ),
        .Q(\r_ram_addr_reg[r_n_0_][3] ),
        .R(SR));
  FDRE \r_ram_addr_reg[r]_rep[1] 
       (.C(s00_axi_aclk),
        .CE(\r_ram_addr_reg[r]0 ),
        .D(\r_ram_addr[r]_rep[1]_i_1_n_0 ),
        .Q(\r_ram_addr_reg[r]__0 [1]),
        .R(SR));
  FDRE \r_ram_addr_reg[r]_rep[2] 
       (.C(s00_axi_aclk),
        .CE(\r_ram_addr_reg[r]0 ),
        .D(\r_ram_addr[r]_rep[2]_i_1_n_0 ),
        .Q(\r_ram_addr_reg[r]__0 [2]),
        .R(SR));
  FDRE \r_ram_addr_reg[r]_rep[3] 
       (.C(s00_axi_aclk),
        .CE(\r_ram_addr_reg[r]0 ),
        .D(\r_ram_addr[r]_rep[3]_i_2_n_0 ),
        .Q(\r_ram_addr_reg[r]__0 [3]),
        .R(SR));
  FDRE \r_ram_addr_reg[w][0] 
       (.C(s00_axi_aclk),
        .CE(\r_ram_addr_reg[w]0 ),
        .D(\r_ram_addr[w][0]_i_1_n_0 ),
        .Q(\r_ram_addr_reg[w]__0 [0]),
        .R(SR));
  FDRE \r_ram_addr_reg[w][1] 
       (.C(s00_axi_aclk),
        .CE(\r_ram_addr_reg[w]0 ),
        .D(\r_ram_addr[w][1]_i_1_n_0 ),
        .Q(\r_ram_addr_reg[w]__0 [1]),
        .R(SR));
  FDRE \r_ram_addr_reg[w][2] 
       (.C(s00_axi_aclk),
        .CE(\r_ram_addr_reg[w]0 ),
        .D(\r_ram_addr[w][2]_i_1_n_0 ),
        .Q(\r_ram_addr_reg[w]__0 [2]),
        .R(SR));
  FDRE \r_ram_addr_reg[w][3] 
       (.C(s00_axi_aclk),
        .CE(\r_ram_addr_reg[w]0 ),
        .D(\r_ram_addr[w][3]_i_2_n_0 ),
        .Q(\r_ram_addr_reg[w]__0 [3]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000004FFFFFFFFF)) 
    \r_status[empty]_i_1 
       (.I0(s_tx_data_valid),
        .I1(\r_output_reg[valid]_0 ),
        .I2(v_dcount_reg__0[0]),
        .I3(\v_dcount[4]_i_3_n_0 ),
        .I4(v_dcount_reg__0[4]),
        .I5(s00_axi_aresetn),
        .O(\r_status[empty]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA0000030000)) 
    \r_status[full]_i_1 
       (.I0(\r_status[full]_i_2_n_0 ),
        .I1(v_dcount_reg__0[3]),
        .I2(v_dcount_reg__0[2]),
        .I3(v_dcount_reg__0[1]),
        .I4(v_dcount_reg__0[4]),
        .I5(v_dcount_reg__0[0]),
        .O(\r_status_reg[full]0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \r_status[full]_i_2 
       (.I0(\r_output_reg[valid]_0 ),
        .I1(s_tx_data_valid),
        .I2(v_dcount_reg__0[3]),
        .I3(v_dcount_reg__0[2]),
        .O(\r_status[full]_i_2_n_0 ));
  FDRE \r_status_reg[empty] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_status[empty]_i_1_n_0 ),
        .Q(s_status[0]),
        .R(1'b0));
  FDRE \r_status_reg[full] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_status_reg[full]0 ),
        .Q(s_status[1]),
        .R(SR));
  LUT3 #(
    .INIT(8'h80)) 
    \r_tx_data[31]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(Q[1]),
        .I2(\tx_fifo[rvalid] ),
        .O(E));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M ram_reg_0_15_0_5
       (.ADDRA({1'b0,\r_ram_addr_reg[r]__0 }),
        .ADDRB({1'b0,\r_ram_addr_reg[r]__0 }),
        .ADDRC({1'b0,\r_ram_addr_reg[r]__0 }),
        .ADDRD({1'b0,\r_ram_addr_reg[w]__0 }),
        .DIA(\r_output_reg[data][31]_0 [1:0]),
        .DIB(\r_output_reg[data][31]_0 [3:2]),
        .DIC(\r_output_reg[data][31]_0 [5:4]),
        .DID({1'b0,1'b0}),
        .DOA(\r_output_reg[data]0 [1:0]),
        .DOB(\r_output_reg[data]0 [3:2]),
        .DOC(\r_output_reg[data]0 [5:4]),
        .DOD(NLW_ram_reg_0_15_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in));
  LUT3 #(
    .INIT(8'h40)) 
    ram_reg_0_15_0_5_i_1
       (.I0(s_status[1]),
        .I1(s_tx_data_valid),
        .I2(s00_axi_aresetn),
        .O(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M ram_reg_0_15_12_17
       (.ADDRA({1'b0,\r_ram_addr_reg[r]__0 }),
        .ADDRB({1'b0,\r_ram_addr_reg[r]__0 }),
        .ADDRC({1'b0,\r_ram_addr_reg[r]__0 }),
        .ADDRD({1'b0,\r_ram_addr_reg[w]__0 }),
        .DIA(\r_output_reg[data][31]_0 [13:12]),
        .DIB(\r_output_reg[data][31]_0 [15:14]),
        .DIC(\r_output_reg[data][31]_0 [17:16]),
        .DID({1'b0,1'b0}),
        .DOA(\r_output_reg[data]0 [13:12]),
        .DOB(\r_output_reg[data]0 [15:14]),
        .DOC(\r_output_reg[data]0 [17:16]),
        .DOD(NLW_ram_reg_0_15_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M ram_reg_0_15_18_23
       (.ADDRA({1'b0,\r_ram_addr_reg[r]__0 }),
        .ADDRB({1'b0,\r_ram_addr_reg[r]__0 }),
        .ADDRC({1'b0,\r_ram_addr_reg[r]__0 }),
        .ADDRD({1'b0,\r_ram_addr_reg[w]__0 }),
        .DIA(\r_output_reg[data][31]_0 [19:18]),
        .DIB(\r_output_reg[data][31]_0 [21:20]),
        .DIC(\r_output_reg[data][31]_0 [23:22]),
        .DID({1'b0,1'b0}),
        .DOA(\r_output_reg[data]0 [19:18]),
        .DOB(\r_output_reg[data]0 [21:20]),
        .DOC(\r_output_reg[data]0 [23:22]),
        .DOD(NLW_ram_reg_0_15_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M ram_reg_0_15_24_29
       (.ADDRA({1'b0,\r_ram_addr_reg[r]__0 }),
        .ADDRB({1'b0,\r_ram_addr_reg[r]__0 }),
        .ADDRC({1'b0,\r_ram_addr_reg[r]__0 }),
        .ADDRD({1'b0,\r_ram_addr_reg[w]__0 }),
        .DIA(\r_output_reg[data][31]_0 [25:24]),
        .DIB(\r_output_reg[data][31]_0 [27:26]),
        .DIC(\r_output_reg[data][31]_0 [29:28]),
        .DID({1'b0,1'b0}),
        .DOA(\r_output_reg[data]0 [25:24]),
        .DOB(\r_output_reg[data]0 [27:26]),
        .DOC(\r_output_reg[data]0 [29:28]),
        .DOD(NLW_ram_reg_0_15_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32M ram_reg_0_15_30_31
       (.ADDRA({1'b0,\r_ram_addr_reg[r]__0 }),
        .ADDRB({1'b0,\r_ram_addr_reg[r]__0 }),
        .ADDRC({1'b0,\r_ram_addr_reg[r]__0 }),
        .ADDRD({1'b0,\r_ram_addr_reg[w]__0 }),
        .DIA(\r_output_reg[data][31]_0 [31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(\r_output_reg[data]0 [31:30]),
        .DOB(NLW_ram_reg_0_15_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_ram_reg_0_15_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_ram_reg_0_15_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M ram_reg_0_15_6_11
       (.ADDRA({1'b0,\r_ram_addr_reg[r]__0 }),
        .ADDRB({1'b0,\r_ram_addr_reg[r]__0 }),
        .ADDRC({1'b0,\r_ram_addr_reg[r]__0 }),
        .ADDRD({1'b0,\r_ram_addr_reg[w]__0 }),
        .DIA(\r_output_reg[data][31]_0 [7:6]),
        .DIB(\r_output_reg[data][31]_0 [9:8]),
        .DIC(\r_output_reg[data][31]_0 [11:10]),
        .DID({1'b0,1'b0}),
        .DOA(\r_output_reg[data]0 [7:6]),
        .DOB(\r_output_reg[data]0 [9:8]),
        .DOC(\r_output_reg[data]0 [11:10]),
        .DOD(NLW_ram_reg_0_15_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(s00_axi_aclk),
        .WE(p_0_in));
  LUT4 #(
    .INIT(16'h4744)) 
    \tx_fifo[renable]_i_1 
       (.I0(s_status[0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\r_output_reg[valid]_0 ),
        .O(\r_status_reg[empty]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \v_dcount[0]_i_1 
       (.I0(v_dcount_reg__0[0]),
        .O(\v_dcount[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \v_dcount[1]_i_1 
       (.I0(v_dcount_reg__0[0]),
        .I1(s_tx_data_valid),
        .I2(v_dcount_reg__0[1]),
        .O(\v_dcount[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \v_dcount[2]_i_1 
       (.I0(s_tx_data_valid),
        .I1(v_dcount_reg__0[0]),
        .I2(v_dcount_reg__0[2]),
        .I3(v_dcount_reg__0[1]),
        .O(\v_dcount[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h7FFE8001)) 
    \v_dcount[3]_i_1 
       (.I0(v_dcount_reg__0[1]),
        .I1(s_tx_data_valid),
        .I2(v_dcount_reg__0[0]),
        .I3(v_dcount_reg__0[2]),
        .I4(v_dcount_reg__0[3]),
        .O(\v_dcount[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0033FE00)) 
    \v_dcount[4]_i_1 
       (.I0(v_dcount_reg__0[0]),
        .I1(v_dcount_reg__0[4]),
        .I2(\v_dcount[4]_i_3_n_0 ),
        .I3(\r_output_reg[valid]_0 ),
        .I4(s_tx_data_valid),
        .O(v_dcount));
  LUT6 #(
    .INIT(64'h7FFF8000FFFE0001)) 
    \v_dcount[4]_i_2 
       (.I0(v_dcount_reg__0[1]),
        .I1(s_tx_data_valid),
        .I2(v_dcount_reg__0[0]),
        .I3(v_dcount_reg__0[2]),
        .I4(v_dcount_reg__0[4]),
        .I5(v_dcount_reg__0[3]),
        .O(\v_dcount[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \v_dcount[4]_i_3 
       (.I0(v_dcount_reg__0[3]),
        .I1(v_dcount_reg__0[2]),
        .I2(v_dcount_reg__0[1]),
        .O(\v_dcount[4]_i_3_n_0 ));
  FDRE \v_dcount_reg[0] 
       (.C(s00_axi_aclk),
        .CE(v_dcount),
        .D(\v_dcount[0]_i_1_n_0 ),
        .Q(v_dcount_reg__0[0]),
        .R(SR));
  FDRE \v_dcount_reg[1] 
       (.C(s00_axi_aclk),
        .CE(v_dcount),
        .D(\v_dcount[1]_i_1_n_0 ),
        .Q(v_dcount_reg__0[1]),
        .R(SR));
  FDRE \v_dcount_reg[2] 
       (.C(s00_axi_aclk),
        .CE(v_dcount),
        .D(\v_dcount[2]_i_1_n_0 ),
        .Q(v_dcount_reg__0[2]),
        .R(SR));
  FDRE \v_dcount_reg[3] 
       (.C(s00_axi_aclk),
        .CE(v_dcount),
        .D(\v_dcount[3]_i_1_n_0 ),
        .Q(v_dcount_reg__0[3]),
        .R(SR));
  FDRE \v_dcount_reg[4] 
       (.C(s00_axi_aclk),
        .CE(v_dcount),
        .D(\v_dcount[4]_i_2_n_0 ),
        .Q(v_dcount_reg__0[4]),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx
   (\r_output_reg[valid]_0 ,
    r_pace_reg_0,
    r_rxd_reg_0,
    r_trigger_reg_0,
    r_sample_reg_0,
    Debug_rx_perror,
    E,
    s00_axi_aresetn_0,
    \v_byte_count_reg[2] ,
    \v_byte_count_reg[1]__0 ,
    \v_byte_count_reg[0]__0 ,
    \v_num_bytes_reg[1] ,
    D,
    \v_num_bytes_reg[0] ,
    SR,
    s00_axi_aclk,
    s00_axi_aresetn,
    \v_byte_count_reg[2]_0 ,
    \v_byte_count_reg[2]_1 ,
    \v_byte_count_reg[2]_2 ,
    v_num_bytes,
    \rx_fifo_reg[wvalid] ,
    \v_byte_count_reg[0]__0_0 ,
    RSTB,
    RxD);
  output \r_output_reg[valid]_0 ;
  output r_pace_reg_0;
  output r_rxd_reg_0;
  output r_trigger_reg_0;
  output r_sample_reg_0;
  output Debug_rx_perror;
  output [3:0]E;
  output s00_axi_aresetn_0;
  output \v_byte_count_reg[2] ;
  output \v_byte_count_reg[1]__0 ;
  output \v_byte_count_reg[0]__0 ;
  output \v_num_bytes_reg[1] ;
  output [7:0]D;
  output \v_num_bytes_reg[0] ;
  input [0:0]SR;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input \v_byte_count_reg[2]_0 ;
  input \v_byte_count_reg[2]_1 ;
  input \v_byte_count_reg[2]_2 ;
  input [1:0]v_num_bytes;
  input \rx_fifo_reg[wvalid] ;
  input \v_byte_count_reg[0]__0_0 ;
  input RSTB;
  input RxD;

  wire [7:0]D;
  wire Debug_rx_perror;
  wire [3:0]E;
  wire \FSM_sequential_stat[0]_i_1__0_n_0 ;
  wire \FSM_sequential_stat[1]_i_1__0_n_0 ;
  wire \FSM_sequential_stat[2]_i_1__0_n_0 ;
  wire \FSM_sequential_stat[2]_i_3__0_n_0 ;
  wire RSTB;
  wire RxD;
  wire [0:0]SR;
  wire p_0_in;
  wire p_0_in__0_1;
  wire p_1_in6_in;
  wire \r_output[data][0]_i_1_n_0 ;
  wire \r_output[data][1]_i_1_n_0 ;
  wire \r_output[data][2]_i_1_n_0 ;
  wire \r_output[data][3]_i_1_n_0 ;
  wire \r_output[data][4]_i_1_n_0 ;
  wire \r_output[data][5]_i_1_n_0 ;
  wire \r_output[data][6]_i_1_n_0 ;
  wire \r_output[data][7]_i_1_n_0 ;
  wire \r_output[data][7]_i_2_n_0 ;
  wire \r_output[parity_error]_i_1_n_0 ;
  wire \r_output[parity_error]_i_2_n_0 ;
  wire \r_output_reg[valid]0 ;
  wire \r_output_reg[valid]_0 ;
  wire r_pace_reg_0;
  wire r_rxd_reg_0;
  wire r_sample_i_1_n_0;
  wire r_sample_i_2_n_0;
  wire r_sample_i_3_n_0;
  wire r_sample_reg_0;
  wire r_trigger0;
  wire r_trigger_reg_0;
  wire \rx_fifo[wvalid] ;
  wire \rx_fifo[wvalid]_i_3_n_0 ;
  wire \rx_fifo_reg[wvalid] ;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;
  wire [2:0]stat__0;
  wire stat__1;
  wire \v_bit_count[0]_i_1_n_0 ;
  wire \v_bit_count[1]_i_1_n_0 ;
  wire \v_bit_count[2]_i_1_n_0 ;
  wire \v_bit_count[2]_i_2__0_n_0 ;
  wire \v_bit_count[2]_i_3__0_n_0 ;
  wire \v_bit_count_reg_n_0_[0] ;
  wire \v_bit_count_reg_n_0_[1] ;
  wire \v_bit_count_reg_n_0_[2] ;
  wire \v_byte_count_reg[0]__0 ;
  wire \v_byte_count_reg[0]__0_0 ;
  wire \v_byte_count_reg[1]__0 ;
  wire \v_byte_count_reg[2] ;
  wire \v_byte_count_reg[2]_0 ;
  wire \v_byte_count_reg[2]_1 ;
  wire \v_byte_count_reg[2]_2 ;
  wire [1:0]v_num_bytes;
  wire \v_num_bytes[1]_i_2_n_0 ;
  wire \v_num_bytes_reg[0] ;
  wire \v_num_bytes_reg[1] ;
  wire [2:0]v_pace;
  wire \v_pace[0]_i_1__0_n_0 ;
  wire \v_pace[1]_i_1_n_0 ;
  wire \v_pace[2]_i_1_n_0 ;
  wire v_parity2_out;
  wire v_parity_i_1__0_n_0;
  wire v_parity_reg_n_0;
  wire \v_rxd_reg_n_0_[0] ;
  wire [1:1]v_sample;
  wire \v_sample[0]_i_1_n_0 ;
  wire \v_sample[1]_i_1_n_0 ;
  wire \v_sample[2]_i_1_n_0 ;
  wire \v_sample[3]_i_1_n_0 ;
  wire \v_sample_reg_n_0_[0] ;
  wire \v_sample_reg_n_0_[1] ;
  wire \v_sample_reg_n_0_[2] ;
  wire \v_sample_reg_n_0_[3] ;
  wire [1:0]v_valid;
  wire \v_valid[0]_i_1_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h3FFF4000)) 
    \FSM_sequential_stat[0]_i_1__0 
       (.I0(stat__0[2]),
        .I1(s00_axi_aresetn),
        .I2(r_pace_reg_0),
        .I3(stat__1),
        .I4(stat__0[0]),
        .O(\FSM_sequential_stat[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h1FFFFFFF20000000)) 
    \FSM_sequential_stat[1]_i_1__0 
       (.I0(stat__0[0]),
        .I1(stat__0[2]),
        .I2(s00_axi_aresetn),
        .I3(r_pace_reg_0),
        .I4(stat__1),
        .I5(stat__0[1]),
        .O(\FSM_sequential_stat[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0FFFFFFF80000000)) 
    \FSM_sequential_stat[2]_i_1__0 
       (.I0(stat__0[0]),
        .I1(stat__0[1]),
        .I2(s00_axi_aresetn),
        .I3(r_pace_reg_0),
        .I4(stat__1),
        .I5(stat__0[2]),
        .O(\FSM_sequential_stat[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0030F0E20030F022)) 
    \FSM_sequential_stat[2]_i_2__0 
       (.I0(r_trigger_reg_0),
        .I1(stat__0[1]),
        .I2(r_sample_reg_0),
        .I3(stat__0[0]),
        .I4(stat__0[2]),
        .I5(\FSM_sequential_stat[2]_i_3__0_n_0 ),
        .O(stat__1));
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_stat[2]_i_3__0 
       (.I0(\v_bit_count_reg_n_0_[2] ),
        .I1(\v_bit_count_reg_n_0_[0] ),
        .I2(\v_bit_count_reg_n_0_[1] ),
        .O(\FSM_sequential_stat[2]_i_3__0_n_0 ));
  (* FSM_ENCODED_STATES = "stat_stop_bit:100,stat_parity_bit:011,stat_receive:010,stat_start_bit:001,stat_idle:000," *) 
  FDRE \FSM_sequential_stat_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_stat[0]_i_1__0_n_0 ),
        .Q(stat__0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "stat_stop_bit:100,stat_parity_bit:011,stat_receive:010,stat_start_bit:001,stat_idle:000," *) 
  FDRE \FSM_sequential_stat_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_stat[1]_i_1__0_n_0 ),
        .Q(stat__0[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "stat_stop_bit:100,stat_parity_bit:011,stat_receive:010,stat_start_bit:001,stat_idle:000," *) 
  FDRE \FSM_sequential_stat_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_stat[2]_i_1__0_n_0 ),
        .Q(stat__0[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \r_output[data][0]_i_1 
       (.I0(r_rxd_reg_0),
        .I1(\v_bit_count_reg_n_0_[2] ),
        .I2(\v_bit_count_reg_n_0_[0] ),
        .I3(\v_bit_count_reg_n_0_[1] ),
        .I4(\r_output[data][7]_i_2_n_0 ),
        .I5(D[0]),
        .O(\r_output[data][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \r_output[data][1]_i_1 
       (.I0(r_rxd_reg_0),
        .I1(\v_bit_count_reg_n_0_[2] ),
        .I2(\v_bit_count_reg_n_0_[0] ),
        .I3(\v_bit_count_reg_n_0_[1] ),
        .I4(\r_output[data][7]_i_2_n_0 ),
        .I5(D[1]),
        .O(\r_output[data][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \r_output[data][2]_i_1 
       (.I0(r_rxd_reg_0),
        .I1(\v_bit_count_reg_n_0_[0] ),
        .I2(\v_bit_count_reg_n_0_[1] ),
        .I3(\v_bit_count_reg_n_0_[2] ),
        .I4(\r_output[data][7]_i_2_n_0 ),
        .I5(D[2]),
        .O(\r_output[data][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \r_output[data][3]_i_1 
       (.I0(r_rxd_reg_0),
        .I1(\v_bit_count_reg_n_0_[2] ),
        .I2(\v_bit_count_reg_n_0_[1] ),
        .I3(\v_bit_count_reg_n_0_[0] ),
        .I4(\r_output[data][7]_i_2_n_0 ),
        .I5(D[3]),
        .O(\r_output[data][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \r_output[data][4]_i_1 
       (.I0(r_rxd_reg_0),
        .I1(\v_bit_count_reg_n_0_[0] ),
        .I2(\v_bit_count_reg_n_0_[2] ),
        .I3(\v_bit_count_reg_n_0_[1] ),
        .I4(\r_output[data][7]_i_2_n_0 ),
        .I5(D[4]),
        .O(\r_output[data][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \r_output[data][5]_i_1 
       (.I0(r_rxd_reg_0),
        .I1(\v_bit_count_reg_n_0_[2] ),
        .I2(\v_bit_count_reg_n_0_[0] ),
        .I3(\v_bit_count_reg_n_0_[1] ),
        .I4(\r_output[data][7]_i_2_n_0 ),
        .I5(D[5]),
        .O(\r_output[data][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \r_output[data][6]_i_1 
       (.I0(r_rxd_reg_0),
        .I1(\v_bit_count_reg_n_0_[0] ),
        .I2(\v_bit_count_reg_n_0_[1] ),
        .I3(\v_bit_count_reg_n_0_[2] ),
        .I4(\r_output[data][7]_i_2_n_0 ),
        .I5(D[6]),
        .O(\r_output[data][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \r_output[data][7]_i_1 
       (.I0(r_rxd_reg_0),
        .I1(\v_bit_count_reg_n_0_[1] ),
        .I2(\v_bit_count_reg_n_0_[0] ),
        .I3(\v_bit_count_reg_n_0_[2] ),
        .I4(\r_output[data][7]_i_2_n_0 ),
        .I5(D[7]),
        .O(\r_output[data][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \r_output[data][7]_i_2 
       (.I0(stat__0[2]),
        .I1(stat__0[0]),
        .I2(r_sample_reg_0),
        .I3(stat__0[1]),
        .I4(r_pace_reg_0),
        .O(\r_output[data][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6FFFFFFF60000000)) 
    \r_output[parity_error]_i_1 
       (.I0(v_parity_reg_n_0),
        .I1(r_rxd_reg_0),
        .I2(r_pace_reg_0),
        .I3(stat__0[1]),
        .I4(\r_output[parity_error]_i_2_n_0 ),
        .I5(Debug_rx_perror),
        .O(\r_output[parity_error]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_output[parity_error]_i_2 
       (.I0(stat__0[0]),
        .I1(stat__0[2]),
        .O(\r_output[parity_error]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_output[valid]_i_1 
       (.I0(v_valid[0]),
        .I1(v_valid[1]),
        .O(\r_output_reg[valid]0 ));
  FDRE \r_output_reg[data][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output[data][0]_i_1_n_0 ),
        .Q(D[0]),
        .R(SR));
  FDRE \r_output_reg[data][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output[data][1]_i_1_n_0 ),
        .Q(D[1]),
        .R(SR));
  FDRE \r_output_reg[data][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output[data][2]_i_1_n_0 ),
        .Q(D[2]),
        .R(SR));
  FDRE \r_output_reg[data][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output[data][3]_i_1_n_0 ),
        .Q(D[3]),
        .R(SR));
  FDRE \r_output_reg[data][4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output[data][4]_i_1_n_0 ),
        .Q(D[4]),
        .R(SR));
  FDRE \r_output_reg[data][5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output[data][5]_i_1_n_0 ),
        .Q(D[5]),
        .R(SR));
  FDRE \r_output_reg[data][6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output[data][6]_i_1_n_0 ),
        .Q(D[6]),
        .R(SR));
  FDRE \r_output_reg[data][7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output[data][7]_i_1_n_0 ),
        .Q(D[7]),
        .R(SR));
  FDRE \r_output_reg[parity_error] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output[parity_error]_i_1_n_0 ),
        .Q(Debug_rx_perror),
        .R(SR));
  FDRE \r_output_reg[valid] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_output_reg[valid]0 ),
        .Q(\r_output_reg[valid]_0 ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h04)) 
    r_pace
       (.I0(v_pace[0]),
        .I1(v_pace[2]),
        .I2(v_pace[1]),
        .O(p_0_in__0_1));
  FDRE r_pace_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0_1),
        .Q(r_pace_reg_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \r_rx_data[15]_i_1 
       (.I0(\v_byte_count_reg[2]_0 ),
        .I1(\v_byte_count_reg[2]_1 ),
        .I2(\v_byte_count_reg[2]_2 ),
        .I3(s00_axi_aresetn),
        .I4(\r_output_reg[valid]_0 ),
        .O(E[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h02000000)) 
    \r_rx_data[23]_i_1 
       (.I0(\v_byte_count_reg[2]_0 ),
        .I1(\v_byte_count_reg[2]_1 ),
        .I2(\v_byte_count_reg[2]_2 ),
        .I3(s00_axi_aresetn),
        .I4(\r_output_reg[valid]_0 ),
        .O(E[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \r_rx_data[31]_i_2 
       (.I0(\v_byte_count_reg[2]_0 ),
        .I1(\v_byte_count_reg[2]_1 ),
        .I2(\v_byte_count_reg[2]_2 ),
        .I3(s00_axi_aresetn),
        .I4(\r_output_reg[valid]_0 ),
        .O(E[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \r_rx_data[7]_i_1 
       (.I0(\v_byte_count_reg[2]_0 ),
        .I1(\v_byte_count_reg[2]_1 ),
        .I2(\v_byte_count_reg[2]_2 ),
        .I3(s00_axi_aresetn),
        .I4(\r_output_reg[valid]_0 ),
        .O(E[0]));
  FDSE r_rxd_reg
       (.C(s00_axi_aclk),
        .CE(r_pace_reg_0),
        .D(p_1_in6_in),
        .Q(r_rxd_reg_0),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h08080888)) 
    r_sample_i_1
       (.I0(s00_axi_aresetn),
        .I1(r_sample_i_2_n_0),
        .I2(r_pace_reg_0),
        .I3(r_sample_i_3_n_0),
        .I4(r_trigger_reg_0),
        .O(r_sample_i_1_n_0));
  LUT6 #(
    .INIT(64'h0100FFFF01000000)) 
    r_sample_i_2
       (.I0(\v_sample_reg_n_0_[1] ),
        .I1(\v_sample_reg_n_0_[0] ),
        .I2(\v_sample_reg_n_0_[2] ),
        .I3(\v_sample_reg_n_0_[3] ),
        .I4(r_pace_reg_0),
        .I5(r_sample_reg_0),
        .O(r_sample_i_2_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    r_sample_i_3
       (.I0(\v_sample_reg_n_0_[1] ),
        .I1(\v_sample_reg_n_0_[0] ),
        .I2(\v_sample_reg_n_0_[3] ),
        .I3(\v_sample_reg_n_0_[2] ),
        .O(r_sample_i_3_n_0));
  FDRE r_sample_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(r_sample_i_1_n_0),
        .Q(r_sample_reg_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    r_trigger_i_1
       (.I0(p_1_in6_in),
        .I1(p_0_in),
        .O(r_trigger0));
  FDRE r_trigger_reg
       (.C(s00_axi_aclk),
        .CE(r_pace_reg_0),
        .D(r_trigger0),
        .Q(r_trigger_reg_0),
        .R(SR));
  LUT3 #(
    .INIT(8'hB8)) 
    \rx_fifo[wvalid]_i_1 
       (.I0(\rx_fifo[wvalid] ),
        .I1(s00_axi_aresetn),
        .I2(\rx_fifo_reg[wvalid] ),
        .O(s00_axi_aresetn_0));
  LUT5 #(
    .INIT(32'h20080200)) 
    \rx_fifo[wvalid]_i_2 
       (.I0(\rx_fifo[wvalid]_i_3_n_0 ),
        .I1(\v_byte_count_reg[2]_1 ),
        .I2(\v_byte_count_reg[2]_0 ),
        .I3(v_num_bytes[0]),
        .I4(v_num_bytes[1]),
        .O(\rx_fifo[wvalid] ));
  LUT4 #(
    .INIT(16'h0400)) 
    \rx_fifo[wvalid]_i_3 
       (.I0(\v_byte_count_reg[2]_2 ),
        .I1(\r_output_reg[valid]_0 ),
        .I2(\rx_fifo_reg[wvalid] ),
        .I3(\v_byte_count_reg[0]__0_0 ),
        .O(\rx_fifo[wvalid]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0F40)) 
    \v_bit_count[0]_i_1 
       (.I0(stat__0[2]),
        .I1(stat__0[1]),
        .I2(\v_bit_count[2]_i_2__0_n_0 ),
        .I3(\v_bit_count_reg_n_0_[0] ),
        .O(\v_bit_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h10FF4000)) 
    \v_bit_count[1]_i_1 
       (.I0(stat__0[2]),
        .I1(\v_bit_count_reg_n_0_[0] ),
        .I2(stat__0[1]),
        .I3(\v_bit_count[2]_i_2__0_n_0 ),
        .I4(\v_bit_count_reg_n_0_[1] ),
        .O(\v_bit_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0444FFFF40000000)) 
    \v_bit_count[2]_i_1 
       (.I0(stat__0[2]),
        .I1(stat__0[1]),
        .I2(\v_bit_count_reg_n_0_[0] ),
        .I3(\v_bit_count_reg_n_0_[1] ),
        .I4(\v_bit_count[2]_i_2__0_n_0 ),
        .I5(\v_bit_count_reg_n_0_[2] ),
        .O(\v_bit_count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033004000)) 
    \v_bit_count[2]_i_2__0 
       (.I0(\FSM_sequential_stat[2]_i_3__0_n_0 ),
        .I1(stat__0[1]),
        .I2(r_sample_reg_0),
        .I3(\v_bit_count[2]_i_3__0_n_0 ),
        .I4(stat__0[0]),
        .I5(stat__0[2]),
        .O(\v_bit_count[2]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \v_bit_count[2]_i_3__0 
       (.I0(r_pace_reg_0),
        .I1(s00_axi_aresetn),
        .O(\v_bit_count[2]_i_3__0_n_0 ));
  FDRE \v_bit_count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v_bit_count[0]_i_1_n_0 ),
        .Q(\v_bit_count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \v_bit_count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v_bit_count[1]_i_1_n_0 ),
        .Q(\v_bit_count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \v_bit_count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v_bit_count[2]_i_1_n_0 ),
        .Q(\v_bit_count_reg_n_0_[2] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6000)) 
    \v_byte_count[0]__0_i_1 
       (.I0(\v_byte_count_reg[2]_1 ),
        .I1(\r_output_reg[valid]_0 ),
        .I2(\v_byte_count_reg[0]__0_0 ),
        .I3(s00_axi_aresetn),
        .O(\v_byte_count_reg[0]__0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6A000000)) 
    \v_byte_count[1]__0_i_1 
       (.I0(\v_byte_count_reg[2]_0 ),
        .I1(\r_output_reg[valid]_0 ),
        .I2(\v_byte_count_reg[2]_1 ),
        .I3(\v_byte_count_reg[0]__0_0 ),
        .I4(s00_axi_aresetn),
        .O(\v_byte_count_reg[1]__0 ));
  LUT6 #(
    .INIT(64'h6AAA000000000000)) 
    \v_byte_count[2]_i_1 
       (.I0(\v_byte_count_reg[2]_2 ),
        .I1(\r_output_reg[valid]_0 ),
        .I2(\v_byte_count_reg[2]_0 ),
        .I3(\v_byte_count_reg[2]_1 ),
        .I4(\v_byte_count_reg[0]__0_0 ),
        .I5(s00_axi_aresetn),
        .O(\v_byte_count_reg[2] ));
  LUT6 #(
    .INIT(64'h00000000E2EEEEEE)) 
    \v_num_bytes[0]_i_1 
       (.I0(v_num_bytes[0]),
        .I1(\v_num_bytes[1]_i_2_n_0 ),
        .I2(D[6]),
        .I3(D[5]),
        .I4(D[7]),
        .I5(RSTB),
        .O(\v_num_bytes_reg[0] ));
  LUT6 #(
    .INIT(64'h0000000022E2E2E2)) 
    \v_num_bytes[1]_i_1 
       (.I0(v_num_bytes[1]),
        .I1(\v_num_bytes[1]_i_2_n_0 ),
        .I2(D[7]),
        .I3(D[5]),
        .I4(D[6]),
        .I5(RSTB),
        .O(\v_num_bytes_reg[1] ));
  LUT4 #(
    .INIT(16'h0004)) 
    \v_num_bytes[1]_i_2 
       (.I0(\v_byte_count_reg[2]_0 ),
        .I1(\r_output_reg[valid]_0 ),
        .I2(\v_byte_count_reg[2]_2 ),
        .I3(\v_byte_count_reg[2]_1 ),
        .O(\v_num_bytes[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \v_pace[0]_i_1__0 
       (.I0(v_pace[1]),
        .I1(v_pace[2]),
        .I2(v_pace[0]),
        .O(\v_pace[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \v_pace[1]_i_1 
       (.I0(v_pace[1]),
        .I1(v_pace[0]),
        .O(\v_pace[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h68)) 
    \v_pace[2]_i_1 
       (.I0(v_pace[1]),
        .I1(v_pace[0]),
        .I2(v_pace[2]),
        .O(\v_pace[2]_i_1_n_0 ));
  FDRE \v_pace_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v_pace[0]_i_1__0_n_0 ),
        .Q(v_pace[0]),
        .R(SR));
  FDRE \v_pace_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v_pace[1]_i_1_n_0 ),
        .Q(v_pace[1]),
        .R(SR));
  FDRE \v_pace_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v_pace[2]_i_1_n_0 ),
        .Q(v_pace[2]),
        .R(SR));
  LUT5 #(
    .INIT(32'h04FF4000)) 
    v_parity_i_1__0
       (.I0(stat__0[2]),
        .I1(stat__0[1]),
        .I2(r_rxd_reg_0),
        .I3(v_parity2_out),
        .I4(v_parity_reg_n_0),
        .O(v_parity_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0000008000C00000)) 
    v_parity_i_2
       (.I0(r_sample_reg_0),
        .I1(r_pace_reg_0),
        .I2(s00_axi_aresetn),
        .I3(stat__0[2]),
        .I4(stat__0[0]),
        .I5(stat__0[1]),
        .O(v_parity2_out));
  FDRE v_parity_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v_parity_i_1__0_n_0),
        .Q(v_parity_reg_n_0),
        .R(1'b0));
  FDSE \v_rxd_reg[0] 
       (.C(s00_axi_aclk),
        .CE(r_pace_reg_0),
        .D(RxD),
        .Q(\v_rxd_reg_n_0_[0] ),
        .S(SR));
  FDSE \v_rxd_reg[1] 
       (.C(s00_axi_aclk),
        .CE(r_pace_reg_0),
        .D(\v_rxd_reg_n_0_[0] ),
        .Q(p_0_in),
        .S(SR));
  FDSE \v_rxd_reg[2] 
       (.C(s00_axi_aclk),
        .CE(r_pace_reg_0),
        .D(p_0_in),
        .Q(p_1_in6_in),
        .S(SR));
  LUT3 #(
    .INIT(8'hBC)) 
    \v_sample[0]_i_1 
       (.I0(r_trigger_reg_0),
        .I1(r_pace_reg_0),
        .I2(\v_sample_reg_n_0_[0] ),
        .O(\v_sample[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000600AA00AA00)) 
    \v_sample[1]_i_1 
       (.I0(\v_sample_reg_n_0_[1] ),
        .I1(\v_sample_reg_n_0_[0] ),
        .I2(r_sample_i_3_n_0),
        .I3(s00_axi_aresetn),
        .I4(r_trigger_reg_0),
        .I5(r_pace_reg_0),
        .O(\v_sample[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \v_sample[2]_i_1 
       (.I0(\v_sample_reg_n_0_[2] ),
        .I1(r_pace_reg_0),
        .I2(\v_sample_reg_n_0_[0] ),
        .I3(\v_sample_reg_n_0_[1] ),
        .I4(v_sample),
        .O(\v_sample[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \v_sample[3]_i_1 
       (.I0(\v_sample_reg_n_0_[3] ),
        .I1(r_pace_reg_0),
        .I2(\v_sample_reg_n_0_[1] ),
        .I3(\v_sample_reg_n_0_[0] ),
        .I4(\v_sample_reg_n_0_[2] ),
        .I5(v_sample),
        .O(\v_sample[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \v_sample[3]_i_2 
       (.I0(r_pace_reg_0),
        .I1(r_trigger_reg_0),
        .I2(s00_axi_aresetn),
        .O(v_sample));
  FDRE \v_sample_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v_sample[0]_i_1_n_0 ),
        .Q(\v_sample_reg_n_0_[0] ),
        .R(SR));
  FDRE \v_sample_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v_sample[1]_i_1_n_0 ),
        .Q(\v_sample_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \v_sample_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v_sample[2]_i_1_n_0 ),
        .Q(\v_sample_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \v_sample_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v_sample[3]_i_1_n_0 ),
        .Q(\v_sample_reg_n_0_[3] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \v_valid[0]_i_1 
       (.I0(stat__0[2]),
        .I1(stat__0[1]),
        .I2(r_pace_reg_0),
        .I3(stat__0[0]),
        .I4(v_valid[0]),
        .O(\v_valid[0]_i_1_n_0 ));
  FDRE \v_valid_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v_valid[0]_i_1_n_0 ),
        .Q(v_valid[0]),
        .R(SR));
  FDRE \v_valid_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v_valid[0]),
        .Q(v_valid[1]),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_tx
   (\tx[ready] ,
    TxD,
    OE,
    E,
    \rx_fifo_reg[wvalid] ,
    r_ready_reg_0,
    \FSM_onehot_tx_stat_reg[2] ,
    \FSM_onehot_tx_stat_reg[1] ,
    SR,
    s00_axi_aclk,
    s00_axi_aresetn,
    \FSM_sequential_stat_reg[1]_0 ,
    Q,
    r_flag_reg,
    r_flag_reg_0,
    v_byte_count__0,
    \v_data_reg[7]_0 );
  output \tx[ready] ;
  output TxD;
  output OE;
  output [0:0]E;
  output \rx_fifo_reg[wvalid] ;
  output r_ready_reg_0;
  output \FSM_onehot_tx_stat_reg[2] ;
  output \FSM_onehot_tx_stat_reg[1] ;
  input [0:0]SR;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input \FSM_sequential_stat_reg[1]_0 ;
  input [3:0]Q;
  input r_flag_reg;
  input r_flag_reg_0;
  input [1:0]v_byte_count__0;
  input [7:0]\v_data_reg[7]_0 ;

  wire [0:0]E;
  wire \FSM_onehot_tx_stat_reg[1] ;
  wire \FSM_onehot_tx_stat_reg[2] ;
  wire \FSM_sequential_stat[0]_i_1_n_0 ;
  wire \FSM_sequential_stat[1]_i_1_n_0 ;
  wire \FSM_sequential_stat[2]_i_1_n_0 ;
  wire \FSM_sequential_stat[2]_i_2_n_0 ;
  wire \FSM_sequential_stat[2]_i_3_n_0 ;
  wire \FSM_sequential_stat[2]_i_4_n_0 ;
  wire \FSM_sequential_stat[2]_i_5_n_0 ;
  wire \FSM_sequential_stat[2]_i_6_n_0 ;
  wire \FSM_sequential_stat_reg[1]_0 ;
  wire OE;
  wire [3:0]Q;
  wire [0:0]SR;
  wire TxD;
  wire r_flag_reg;
  wire r_flag_reg_0;
  wire r_oe_i_1_n_0;
  wire r_pace;
  wire r_pace_reg_n_0;
  wire r_ready_i_1_n_0;
  wire r_ready_reg_0;
  wire r_txd_i_2_n_0;
  wire r_txd_i_4_n_0;
  wire r_txd_i_5_n_0;
  wire r_txd_reg_i_3_n_0;
  wire \rx_fifo_reg[wvalid] ;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [2:0]stat__0;
  wire \tx[ready] ;
  wire \v_bit_count[0]_i_1_n_0 ;
  wire \v_bit_count[1]_i_1_n_0 ;
  wire \v_bit_count[1]_i_2_n_0 ;
  wire \v_bit_count[2]_i_1_n_0 ;
  wire \v_bit_count[2]_i_2_n_0 ;
  wire \v_bit_count[2]_i_3_n_0 ;
  wire \v_bit_count[2]_i_4_n_0 ;
  wire \v_bit_count[2]_i_5_n_0 ;
  wire \v_bit_count_reg_n_0_[0] ;
  wire \v_bit_count_reg_n_0_[1] ;
  wire \v_bit_count_reg_n_0_[2] ;
  wire [1:0]v_byte_count__0;
  wire [7:0]v_data;
  wire \v_data[7]_i_1_n_0 ;
  wire [7:0]\v_data_reg[7]_0 ;
  wire [6:0]v_pace;
  wire \v_pace[6]_i_2_n_0 ;
  wire \v_pace_reg_n_0_[0] ;
  wire \v_pace_reg_n_0_[1] ;
  wire \v_pace_reg_n_0_[2] ;
  wire \v_pace_reg_n_0_[3] ;
  wire \v_pace_reg_n_0_[4] ;
  wire \v_pace_reg_n_0_[5] ;
  wire \v_pace_reg_n_0_[6] ;
  wire v_parity_i_1_n_0;
  wire v_parity_reg_n_0;

  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00FFBF00)) 
    \FSM_sequential_stat[0]_i_1 
       (.I0(r_pace_reg_n_0),
        .I1(stat__0[2]),
        .I2(stat__0[1]),
        .I3(\FSM_sequential_stat[2]_i_2_n_0 ),
        .I4(stat__0[0]),
        .O(\FSM_sequential_stat[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCA0FFFFFF0F00000)) 
    \FSM_sequential_stat[1]_i_1 
       (.I0(r_pace_reg_n_0),
        .I1(\FSM_sequential_stat_reg[1]_0 ),
        .I2(stat__0[0]),
        .I3(stat__0[2]),
        .I4(\FSM_sequential_stat[2]_i_2_n_0 ),
        .I5(stat__0[1]),
        .O(\FSM_sequential_stat[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h73FF8800)) 
    \FSM_sequential_stat[2]_i_1 
       (.I0(stat__0[0]),
        .I1(stat__0[1]),
        .I2(r_pace_reg_n_0),
        .I3(\FSM_sequential_stat[2]_i_2_n_0 ),
        .I4(stat__0[2]),
        .O(\FSM_sequential_stat[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAAAAAA800AA00)) 
    \FSM_sequential_stat[2]_i_2 
       (.I0(s00_axi_aresetn),
        .I1(\FSM_sequential_stat[2]_i_3_n_0 ),
        .I2(\FSM_sequential_stat[2]_i_4_n_0 ),
        .I3(\FSM_sequential_stat[2]_i_5_n_0 ),
        .I4(\FSM_sequential_stat[2]_i_6_n_0 ),
        .I5(r_pace_reg_n_0),
        .O(\FSM_sequential_stat[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \FSM_sequential_stat[2]_i_3 
       (.I0(r_pace_reg_n_0),
        .I1(\FSM_sequential_stat_reg[1]_0 ),
        .I2(stat__0[0]),
        .I3(stat__0[1]),
        .O(\FSM_sequential_stat[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC000000002000000)) 
    \FSM_sequential_stat[2]_i_4 
       (.I0(stat__0[0]),
        .I1(stat__0[1]),
        .I2(\v_bit_count_reg_n_0_[2] ),
        .I3(r_pace_reg_n_0),
        .I4(\v_bit_count_reg_n_0_[0] ),
        .I5(\v_bit_count_reg_n_0_[1] ),
        .O(\FSM_sequential_stat[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \FSM_sequential_stat[2]_i_5 
       (.I0(stat__0[1]),
        .I1(stat__0[0]),
        .I2(stat__0[2]),
        .O(\FSM_sequential_stat[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_stat[2]_i_6 
       (.I0(stat__0[2]),
        .I1(stat__0[1]),
        .O(\FSM_sequential_stat[2]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "stat_wait:110,stat_stop_bit:101,stat_parity_bit:100,stat_transmit:011,stat_first_pace:001,stat_start_bit:010,stat_idle:000,stat_term:111" *) 
  FDRE \FSM_sequential_stat_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_stat[0]_i_1_n_0 ),
        .Q(stat__0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "stat_wait:110,stat_stop_bit:101,stat_parity_bit:100,stat_transmit:011,stat_first_pace:001,stat_start_bit:010,stat_idle:000,stat_term:111" *) 
  FDRE \FSM_sequential_stat_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_stat[1]_i_1_n_0 ),
        .Q(stat__0[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "stat_wait:110,stat_stop_bit:101,stat_parity_bit:100,stat_transmit:011,stat_first_pace:001,stat_start_bit:010,stat_idle:000,stat_term:111" *) 
  FDRE \FSM_sequential_stat_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_stat[2]_i_1_n_0 ),
        .Q(stat__0[2]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h44404040)) 
    r_flag_i_1
       (.I0(r_flag_reg),
        .I1(s00_axi_aresetn),
        .I2(r_flag_reg_0),
        .I3(Q[3]),
        .I4(\tx[ready] ),
        .O(\rx_fifo_reg[wvalid] ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hBFFE0002)) 
    r_oe_i_1
       (.I0(\FSM_sequential_stat_reg[1]_0 ),
        .I1(stat__0[2]),
        .I2(stat__0[0]),
        .I3(stat__0[1]),
        .I4(OE),
        .O(r_oe_i_1_n_0));
  FDRE r_oe_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(r_oe_i_1_n_0),
        .Q(OE),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    r_pace_i_1
       (.I0(\v_pace_reg_n_0_[4] ),
        .I1(\v_pace_reg_n_0_[5] ),
        .I2(\v_pace_reg_n_0_[6] ),
        .I3(\v_pace[6]_i_2_n_0 ),
        .O(r_pace));
  FDRE r_pace_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(r_pace),
        .Q(r_pace_reg_n_0),
        .R(SR));
  LUT6 #(
    .INIT(64'h7E7EFFFF08000901)) 
    r_ready_i_1
       (.I0(stat__0[2]),
        .I1(stat__0[1]),
        .I2(stat__0[0]),
        .I3(r_pace_reg_n_0),
        .I4(\FSM_sequential_stat_reg[1]_0 ),
        .I5(\tx[ready] ),
        .O(r_ready_i_1_n_0));
  FDRE r_ready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(r_ready_i_1_n_0),
        .Q(\tx[ready] ),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFCA0FF00FCA00F)) 
    r_txd_i_2
       (.I0(r_txd_reg_i_3_n_0),
        .I1(v_parity_reg_n_0),
        .I2(stat__0[0]),
        .I3(stat__0[1]),
        .I4(stat__0[2]),
        .I5(TxD),
        .O(r_txd_i_2_n_0));
  LUT6 #(
    .INIT(64'hCACAFFF0CACA0F00)) 
    r_txd_i_4
       (.I0(v_data[1]),
        .I1(v_data[3]),
        .I2(\v_bit_count_reg_n_0_[1] ),
        .I3(v_data[0]),
        .I4(\v_bit_count_reg_n_0_[0] ),
        .I5(v_data[2]),
        .O(r_txd_i_4_n_0));
  LUT6 #(
    .INIT(64'hCACAFFF0CACA0F00)) 
    r_txd_i_5
       (.I0(v_data[5]),
        .I1(v_data[7]),
        .I2(\v_bit_count_reg_n_0_[1] ),
        .I3(v_data[4]),
        .I4(\v_bit_count_reg_n_0_[0] ),
        .I5(v_data[6]),
        .O(r_txd_i_5_n_0));
  FDSE r_txd_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(r_txd_i_2_n_0),
        .Q(TxD),
        .S(SR));
  MUXF7 r_txd_reg_i_3
       (.I0(r_txd_i_4_n_0),
        .I1(r_txd_i_5_n_0),
        .O(r_txd_reg_i_3_n_0),
        .S(\v_bit_count_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \tx[data][7]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\FSM_sequential_stat_reg[1]_0 ),
        .I2(Q[1]),
        .I3(\tx[ready] ),
        .O(E));
  LUT5 #(
    .INIT(32'h0003AA00)) 
    \tx[valid]_i_1 
       (.I0(\tx[ready] ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\FSM_sequential_stat_reg[1]_0 ),
        .O(r_ready_reg_0));
  LUT6 #(
    .INIT(64'h003FFFFFAA800000)) 
    \v_bit_count[0]_i_1 
       (.I0(stat__0[0]),
        .I1(stat__0[1]),
        .I2(r_pace_reg_n_0),
        .I3(\v_bit_count[2]_i_3_n_0 ),
        .I4(\v_bit_count[2]_i_4_n_0 ),
        .I5(\v_bit_count_reg_n_0_[0] ),
        .O(\v_bit_count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h444F4F4F88808080)) 
    \v_bit_count[1]_i_1 
       (.I0(\v_bit_count_reg_n_0_[0] ),
        .I1(stat__0[0]),
        .I2(\v_bit_count[1]_i_2_n_0 ),
        .I3(\v_bit_count[2]_i_3_n_0 ),
        .I4(\v_bit_count[2]_i_4_n_0 ),
        .I5(\v_bit_count_reg_n_0_[1] ),
        .O(\v_bit_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \v_bit_count[1]_i_2 
       (.I0(r_pace_reg_n_0),
        .I1(stat__0[1]),
        .I2(stat__0[2]),
        .I3(s00_axi_aresetn),
        .O(\v_bit_count[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAABFFFFFAA800000)) 
    \v_bit_count[2]_i_1 
       (.I0(\v_bit_count[2]_i_2_n_0 ),
        .I1(stat__0[1]),
        .I2(r_pace_reg_n_0),
        .I3(\v_bit_count[2]_i_3_n_0 ),
        .I4(\v_bit_count[2]_i_4_n_0 ),
        .I5(\v_bit_count_reg_n_0_[2] ),
        .O(\v_bit_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \v_bit_count[2]_i_2 
       (.I0(\v_bit_count_reg_n_0_[0] ),
        .I1(\v_bit_count_reg_n_0_[1] ),
        .I2(stat__0[0]),
        .I3(\v_bit_count_reg_n_0_[2] ),
        .O(\v_bit_count[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00FCFFAA0000FFAA)) 
    \v_bit_count[2]_i_3 
       (.I0(\FSM_sequential_stat_reg[1]_0 ),
        .I1(\v_bit_count[2]_i_5_n_0 ),
        .I2(\v_bit_count_reg_n_0_[2] ),
        .I3(stat__0[1]),
        .I4(stat__0[0]),
        .I5(r_pace_reg_n_0),
        .O(\v_bit_count[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \v_bit_count[2]_i_4 
       (.I0(s00_axi_aresetn),
        .I1(stat__0[2]),
        .O(\v_bit_count[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \v_bit_count[2]_i_5 
       (.I0(\v_bit_count_reg_n_0_[1] ),
        .I1(\v_bit_count_reg_n_0_[0] ),
        .O(\v_bit_count[2]_i_5_n_0 ));
  FDRE \v_bit_count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v_bit_count[0]_i_1_n_0 ),
        .Q(\v_bit_count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \v_bit_count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v_bit_count[1]_i_1_n_0 ),
        .Q(\v_bit_count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \v_bit_count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v_bit_count[2]_i_1_n_0 ),
        .Q(\v_bit_count_reg_n_0_[2] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h5515FFFFA0E00000)) 
    \v_byte_count[0]_i_1 
       (.I0(Q[0]),
        .I1(\tx[ready] ),
        .I2(Q[1]),
        .I3(\FSM_sequential_stat_reg[1]_0 ),
        .I4(s00_axi_aresetn),
        .I5(v_byte_count__0[0]),
        .O(\FSM_onehot_tx_stat_reg[1] ));
  LUT6 #(
    .INIT(64'h22222FFF88888000)) 
    \v_byte_count[1]_i_1 
       (.I0(Q[1]),
        .I1(v_byte_count__0[0]),
        .I2(Q[0]),
        .I3(s00_axi_aresetn),
        .I4(E),
        .I5(v_byte_count__0[1]),
        .O(\FSM_onehot_tx_stat_reg[2] ));
  LUT5 #(
    .INIT(32'h81000000)) 
    \v_data[7]_i_1 
       (.I0(stat__0[0]),
        .I1(stat__0[1]),
        .I2(stat__0[2]),
        .I3(s00_axi_aresetn),
        .I4(\FSM_sequential_stat_reg[1]_0 ),
        .O(\v_data[7]_i_1_n_0 ));
  FDRE \v_data_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\v_data[7]_i_1_n_0 ),
        .D(\v_data_reg[7]_0 [0]),
        .Q(v_data[0]),
        .R(1'b0));
  FDRE \v_data_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\v_data[7]_i_1_n_0 ),
        .D(\v_data_reg[7]_0 [1]),
        .Q(v_data[1]),
        .R(1'b0));
  FDRE \v_data_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\v_data[7]_i_1_n_0 ),
        .D(\v_data_reg[7]_0 [2]),
        .Q(v_data[2]),
        .R(1'b0));
  FDRE \v_data_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\v_data[7]_i_1_n_0 ),
        .D(\v_data_reg[7]_0 [3]),
        .Q(v_data[3]),
        .R(1'b0));
  FDRE \v_data_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\v_data[7]_i_1_n_0 ),
        .D(\v_data_reg[7]_0 [4]),
        .Q(v_data[4]),
        .R(1'b0));
  FDRE \v_data_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\v_data[7]_i_1_n_0 ),
        .D(\v_data_reg[7]_0 [5]),
        .Q(v_data[5]),
        .R(1'b0));
  FDRE \v_data_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\v_data[7]_i_1_n_0 ),
        .D(\v_data_reg[7]_0 [6]),
        .Q(v_data[6]),
        .R(1'b0));
  FDRE \v_data_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\v_data[7]_i_1_n_0 ),
        .D(\v_data_reg[7]_0 [7]),
        .Q(v_data[7]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \v_pace[0]_i_1 
       (.I0(\v_pace_reg_n_0_[0] ),
        .O(v_pace[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \v_pace[1]_i_1 
       (.I0(\v_pace_reg_n_0_[0] ),
        .I1(\v_pace_reg_n_0_[1] ),
        .O(v_pace[1]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \v_pace[2]_i_1 
       (.I0(\v_pace_reg_n_0_[1] ),
        .I1(\v_pace_reg_n_0_[0] ),
        .I2(\v_pace_reg_n_0_[2] ),
        .O(v_pace[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \v_pace[3]_i_1 
       (.I0(\v_pace_reg_n_0_[2] ),
        .I1(\v_pace_reg_n_0_[0] ),
        .I2(\v_pace_reg_n_0_[1] ),
        .I3(\v_pace_reg_n_0_[3] ),
        .O(v_pace[3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hAA51)) 
    \v_pace[4]_i_1 
       (.I0(\v_pace[6]_i_2_n_0 ),
        .I1(\v_pace_reg_n_0_[6] ),
        .I2(\v_pace_reg_n_0_[5] ),
        .I3(\v_pace_reg_n_0_[4] ),
        .O(v_pace[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \v_pace[5]_i_1 
       (.I0(\v_pace_reg_n_0_[4] ),
        .I1(\v_pace_reg_n_0_[2] ),
        .I2(\v_pace_reg_n_0_[0] ),
        .I3(\v_pace_reg_n_0_[1] ),
        .I4(\v_pace_reg_n_0_[3] ),
        .I5(\v_pace_reg_n_0_[5] ),
        .O(v_pace[5]));
  LUT4 #(
    .INIT(16'hAA68)) 
    \v_pace[6]_i_1 
       (.I0(\v_pace_reg_n_0_[6] ),
        .I1(\v_pace_reg_n_0_[5] ),
        .I2(\v_pace_reg_n_0_[4] ),
        .I3(\v_pace[6]_i_2_n_0 ),
        .O(v_pace[6]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \v_pace[6]_i_2 
       (.I0(\v_pace_reg_n_0_[2] ),
        .I1(\v_pace_reg_n_0_[0] ),
        .I2(\v_pace_reg_n_0_[1] ),
        .I3(\v_pace_reg_n_0_[3] ),
        .O(\v_pace[6]_i_2_n_0 ));
  FDRE \v_pace_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v_pace[0]),
        .Q(\v_pace_reg_n_0_[0] ),
        .R(SR));
  FDRE \v_pace_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v_pace[1]),
        .Q(\v_pace_reg_n_0_[1] ),
        .R(SR));
  FDRE \v_pace_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v_pace[2]),
        .Q(\v_pace_reg_n_0_[2] ),
        .R(SR));
  FDRE \v_pace_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v_pace[3]),
        .Q(\v_pace_reg_n_0_[3] ),
        .R(SR));
  FDRE \v_pace_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v_pace[4]),
        .Q(\v_pace_reg_n_0_[4] ),
        .R(SR));
  FDRE \v_pace_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v_pace[5]),
        .Q(\v_pace_reg_n_0_[5] ),
        .R(SR));
  FDRE \v_pace_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v_pace[6]),
        .Q(\v_pace_reg_n_0_[6] ),
        .R(SR));
  LUT6 #(
    .INIT(64'h7F3FFF3F80000000)) 
    v_parity_i_1
       (.I0(r_txd_reg_i_3_n_0),
        .I1(\v_bit_count[2]_i_4_n_0 ),
        .I2(stat__0[1]),
        .I3(stat__0[0]),
        .I4(r_pace_reg_n_0),
        .I5(v_parity_reg_n_0),
        .O(v_parity_i_1_n_0));
  FDRE v_parity_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v_parity_i_1_n_0),
        .Q(v_parity_reg_n_0),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
