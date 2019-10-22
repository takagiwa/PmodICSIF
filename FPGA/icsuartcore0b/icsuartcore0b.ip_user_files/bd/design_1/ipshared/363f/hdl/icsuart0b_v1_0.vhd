library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity icsuart0b_v1_0 is
	generic (
		-- Users to add parameters here

		CYCLES : integer := 5;

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S00_AXI
		C_S00_AXI_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_ADDR_WIDTH	: integer	:= 5
	);
	port (
		-- Users to add ports here

		TxD	: out std_logic;
		RxD	: in std_logic;
		OE	: out std_logic;

		Debug_fifo_wdata	: out std_logic_vector(31 downto 0);
		Debug_fifo_wvalid	: out std_logic;
		Debug_fifo_empty	: out std_logic;
		Debug_rx_data	: out std_logic_vector(7 downto 0);
		Debug_rx_perror	: out std_logic;
		Debug_rx_valid	: out std_logic;
		Debug_rx_pace    : out std_logic;
		Debug_rx_sample  : out std_logic;
		Debug_rx_d       : out std_logic;
		Debug_rx_trigger : out std_logic;

		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S00_AXI
		s00_axi_aclk	: in std_logic;
		s00_axi_aresetn	: in std_logic;
		s00_axi_awaddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_awprot	: in std_logic_vector(2 downto 0);
		s00_axi_awvalid	: in std_logic;
		s00_axi_awready	: out std_logic;
		s00_axi_wdata	: in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_wstrb	: in std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
		s00_axi_wvalid	: in std_logic;
		s00_axi_wready	: out std_logic;
		s00_axi_bresp	: out std_logic_vector(1 downto 0);
		s00_axi_bvalid	: out std_logic;
		s00_axi_bready	: in std_logic;
		s00_axi_araddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_arprot	: in std_logic_vector(2 downto 0);
		s00_axi_arvalid	: in std_logic;
		s00_axi_arready	: out std_logic;
		s00_axi_rdata	: out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_rresp	: out std_logic_vector(1 downto 0);
		s00_axi_rvalid	: out std_logic;
		s00_axi_rready	: in std_logic
	);
end icsuart0b_v1_0;

architecture arch_imp of icsuart0b_v1_0 is

	-- component declaration
	component icsuart0b_v1_0_S00_AXI is
		generic (
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 5
		);
		port (
		Control	: out std_logic_vector(31 downto 0);
		Status	: in std_logic_vector(31 downto 0);
		Status_clear	: out std_logic_vector(31 downto 0);
		TxData	: out std_logic_vector(31 downto 0);
		TxData_valid	: out std_logic;
		RxData	: in std_logic_vector(31 downto 0);
		RxData_valid	: in std_logic;
		RxData_read	: out std_logic;

		S_AXI_ACLK	: in std_logic;
		S_AXI_ARESETN	: in std_logic;
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		S_AXI_AWVALID	: in std_logic;
		S_AXI_AWREADY	: out std_logic;
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		S_AXI_WVALID	: in std_logic;
		S_AXI_WREADY	: out std_logic;
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		S_AXI_BVALID	: out std_logic;
		S_AXI_BREADY	: in std_logic;
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		S_AXI_ARVALID	: in std_logic;
		S_AXI_ARREADY	: out std_logic;
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		S_AXI_RVALID	: out std_logic;
		S_AXI_RREADY	: in std_logic
		);
	end component icsuart0b_v1_0_S00_AXI;

	component icsuart0_core
	    port (
	        S00_axi_aclk    : in std_logic;
	        S00_axi_aresetn : in std_logic;

	        Control         : in std_logic_vector(31 downto 0);
	        Status          : out std_logic_vector(31 downto 0);
	        Status_clear    : in std_logic_vector(31 downto 0);

	        TxData          : in std_logic_vector(31 downto 0);
	        TxData_valid    : in std_logic;

	        RxData          : out std_logic_vector(31 downto 0);
	        RxData_valid    : out std_logic;
	        RxData_read     : in std_logic;

	        TxD             : out std_logic;
	        RxD             : in std_logic;
	        OE              : out std_logic;

	        Debug_fifo_wdata  : out std_logic_vector(31 downto 0);
	        Debug_fifo_wvalid : out std_logic;
	        Debug_fifo_empty  : out std_logic;
	        Debug_rx_data     : out std_logic_vector(7 downto 0);
	        Debug_rx_perror   : out std_logic;
	        Debug_rx_valid    : out std_logic;
	        Debug_rx_pace    : out std_logic;
	        Debug_rx_sample  : out std_logic;
	        Debug_rx_d       : out std_logic;
	        Debug_rx_trigger : out std_logic
	    );
	end component;

	signal s_control : std_logic_vector(31 downto 0);
	signal s_status : std_logic_vector(31 downto 0);
	signal s_status_clear : std_logic_vector(31 downto 0);
	signal s_tx_data : std_logic_vector(31 downto 0);
	signal s_tx_data_valid : std_logic;
	signal s_rx_data : std_logic_vector(31 downto 0);
	signal s_rx_data_valid : std_logic;
	signal s_rx_data_read : std_logic;

begin

-- Instantiation of Axi Bus Interface S00_AXI
icsuart0b_v1_0_S00_AXI_inst : icsuart0b_v1_0_S00_AXI
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_S00_AXI_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S00_AXI_ADDR_WIDTH
	)
	port map (
		Control => s_control,
		Status => s_status,
		Status_clear => s_status_clear,
		TxData => s_tx_data,
		TxData_valid => s_tx_data_valid,
		RxData => s_rx_data,
		RxData_valid => s_rx_data_valid,
		RxData_read => s_rx_data_read,

		S_AXI_ACLK	=> s00_axi_aclk,
		S_AXI_ARESETN	=> s00_axi_aresetn,
		S_AXI_AWADDR	=> s00_axi_awaddr,
		S_AXI_AWPROT	=> s00_axi_awprot,
		S_AXI_AWVALID	=> s00_axi_awvalid,
		S_AXI_AWREADY	=> s00_axi_awready,
		S_AXI_WDATA	=> s00_axi_wdata,
		S_AXI_WSTRB	=> s00_axi_wstrb,
		S_AXI_WVALID	=> s00_axi_wvalid,
		S_AXI_WREADY	=> s00_axi_wready,
		S_AXI_BRESP	=> s00_axi_bresp,
		S_AXI_BVALID	=> s00_axi_bvalid,
		S_AXI_BREADY	=> s00_axi_bready,
		S_AXI_ARADDR	=> s00_axi_araddr,
		S_AXI_ARPROT	=> s00_axi_arprot,
		S_AXI_ARVALID	=> s00_axi_arvalid,
		S_AXI_ARREADY	=> s00_axi_arready,
		S_AXI_RDATA	=> s00_axi_rdata,
		S_AXI_RRESP	=> s00_axi_rresp,
		S_AXI_RVALID	=> s00_axi_rvalid,
		S_AXI_RREADY	=> s00_axi_rready
	);

	-- Add user logic here

    i_uart: icsuart0_core
        port map (
            S00_axi_aclk    => s00_axi_aclk,
            S00_axi_aresetn => s00_axi_aresetn,

            Control         => s_control,
            Status          => s_status,
            Status_clear    => s_status_clear,

            TxData          => s_tx_data,
            TxData_valid    => s_tx_data_valid,

            RxData          => s_rx_data,
            RxData_valid    => s_rx_data_valid,
            RxData_read     => s_rx_data_read,

            TxD             => TxD,
            RxD             => RxD,
            OE              => OE,

            Debug_fifo_wdata  => Debug_fifo_wdata,
            Debug_fifo_wvalid => Debug_fifo_wvalid,
            Debug_fifo_empty  => Debug_fifo_empty,
            Debug_rx_data     => Debug_rx_data,
            Debug_rx_perror   => Debug_rx_perror,
            Debug_rx_valid    => Debug_rx_valid,
            Debug_rx_pace    => Debug_rx_pace,
            Debug_rx_sample  => Debug_rx_sample,
            Debug_rx_d       => Debug_rx_d,
            Debug_rx_trigger => Debug_rx_trigger

        );

	-- User logic ends

end arch_imp;
