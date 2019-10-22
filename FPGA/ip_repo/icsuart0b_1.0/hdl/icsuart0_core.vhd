--
-- UART interface for ICS
--
-- (C) Masayuki Takagiwa
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity icsuart0_core is
    port (
        S00_axi_aclk      : in std_logic;
        S00_axi_aresetn   : in std_logic;

        Control           : in std_logic_vector(31 downto 0);
        Status            : out std_logic_vector(31 downto 0);
        Status_clear      : in std_logic_vector(31 downto 0);

        TxData            : in std_logic_vector(31 downto 0);
        TxData_valid      : in std_logic;

        RxData            : out std_logic_vector(31 downto 0);
        RxData_valid      : out std_logic;
        RxData_read       : in std_logic;

        TxD               : out std_logic;
        RxD               : in std_logic;
        OE                : out std_logic;

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
end icsuart0_core;

architecture rtl of icsuart0_core is

    component uart_rx
        generic (
            CYCLES : integer := 5
        );
        port (
            Clock         : in std_logic;
            Reset         : in std_logic;

            Data          : out std_logic_vector(7 downto 0);
            Parity_error  : out std_logic;
            Valid         : out std_logic;

            Rxd           : in std_logic;

            Debug_rx_pace    : out std_logic;
            Debug_rx_sample  : out std_logic;
            Debug_rx_d       : out std_logic;
            Debug_rx_trigger : out std_logic
        );
    end component;

    component uart_tx
        generic (
            CYCLES        : integer := 5;
            OE_LOW_ACTIVE : boolean := false
        );
        port (
            Clock : in std_logic;
            Reset : in std_logic;

            Ready : out std_logic;

            Data  : in std_logic_vector(7 downto 0);
            Valid : in std_logic;

            Txd   : out std_logic;
            Oe    : out std_logic
        );
    end component;

    component uart_fifo
        generic (
            DATA_WIDTH : integer := 8;
            DEPTH      : integer := 16
        );
        port (
            Clock   : in std_logic;
            Reset   : in std_logic;

            Wdata   : in std_logic_vector((DATA_WIDTH-1) downto 0);
            Wvalid  : in std_logic;

            Rdata   : out std_logic_vector((DATA_WIDTH-1) downto 0);
            Rvalid  : out std_logic;
            Renable : in std_logic;

            Empty   : out std_logic;
            Full    : out std_logic
        );
    end component;

    signal s_reset : std_logic;

    type TYPE_TX is record
        ready : std_logic;
        data  : std_logic_vector(7 downto 0);
        valid : std_logic;
    end record TYPE_TX;
    signal tx : TYPE_TX;

    type TYPE_TX_FIFO is record
        rdata   : std_logic_vector(31 downto 0);
        rvalid  : std_logic;
        renable : std_logic;
        empty   : std_logic;
        full    : std_logic;
    end record TYPE_TX_FIFO;
    signal tx_fifo : TYPE_TX_FIFO;

    type TYPE_RX is record
        data         : std_logic_vector(7 downto 0);
        parity_error : std_logic;
        valid        : std_logic;
    end record TYPE_RX;
    signal rx : TYPE_RX;

    type TYPE_RX_FIFO is record
        wdata   : std_logic_vector(31 downto 0);
        wvalid  : std_logic;
        empty   : std_logic;
        full    : std_logic;
    end record TYPE_RX_FIFO;
    signal rx_fifo : TYPE_RX_FIFO;

--    signal r_tx_end : std_logic;
--    signal r_rx_end : std_logic;
    signal r_flag   : std_logic; -- must monitor at status

    signal s_tx_num_bytes : integer range 0 to 3;
    signal r_tx_data : std_logic_vector(31 downto 0);
    signal r_rx_data : std_logic_vector(31 downto 0);

    type TYPE_STAT_TX is (STAT_TX_IDLE, STAT_TX_GET_DATA, STAT_TX_TRANSMIT, STAT_TX_WAIT, STAT_TX_END);
    signal tx_stat : TYPE_STAT_TX;

    signal r_flag_clear : std_logic;

--COMPONENT ila_0
--
--PORT (
--	clk : IN STD_LOGIC;
--
--
--
--	probe0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
--	probe1 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
--	probe2 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
--	probe3 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
--	probe4 : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
--	probe5 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
--	probe6 : IN STD_LOGIC_VECTOR(0 DOWNTO 0)
--);
--END COMPONENT  ;

begin

    s_reset <= not S00_axi_aresetn;

    ----------------------------------

    i_tx_fifo: uart_fifo
        generic map (
            DATA_WIDTH => 32,
            DEPTH      => 16
        )
        port map (
            Clock   => S00_axi_aclk,
            Reset   => s_reset,

            Wdata   => TxData,
            Wvalid  => TxData_valid,

            Rdata   => tx_fifo.rdata,
            Rvalid  => tx_fifo.rvalid,
            Renable => tx_fifo.renable,

            Empty   => tx_fifo.empty,
            Full    => tx_fifo.full
        );

    s_tx_num_bytes <= 3 when (r_tx_data(7 downto 5) = "100") -- position
                 else 2 when (r_tx_data(7 downto 5) = "101") -- read
                 else 3 when (r_tx_data(7 downto 5) = "110") -- write
                 else 0;

    process(S00_axi_aclk)
        variable v_byte_count : integer range 0 to 3;
    begin
        if (rising_edge(S00_axi_aclk)) then
            if (S00_axi_aresetn = '0') then
                tx_stat <= STAT_TX_IDLE;
                tx_fifo.renable <= '0';
                tx.valid <= '0';
            else
                case tx_stat is
                    when STAT_TX_END =>
                        -- set flag
                        -- goto idle
                        if (tx.ready = '1') then
                            tx_stat <= STAT_TX_IDLE;
                        end if;

                    when STAT_TX_WAIT =>
                        if (tx.ready = '1') then
                            tx_stat <= STAT_TX_END;
                        end if;
                        tx.valid <= '0';

                    when STAT_TX_TRANSMIT =>
                        if (tx.valid = '1') then
                            tx.valid <= '0';
                        elsif (tx.ready = '1') then
                            -- write selected byte to uart_tx
                            tx.data <= r_tx_data( (8 * (v_byte_count + 1) - 1) downto (8 * v_byte_count) );
                            tx.valid <= '1';
                            v_byte_count := v_byte_count + 1;
                            if (v_byte_count >= s_tx_num_bytes) then
                                tx_stat <= STAT_TX_WAIT;
                            end if;
                        else
                            tx.valid <= '0';
                        end if;

                    when STAT_TX_GET_DATA =>
                        if (tx_fifo.rvalid = '1') then
                            -- get word
                            r_tx_data <= tx_fifo.rdata;
                            -- goto transmit
                            tx_stat <= STAT_TX_TRANSMIT;
                        end if;
                        tx_fifo.renable <= '0';
                        v_byte_count := 0;
                        tx.valid <= '0';

                    when STAT_TX_IDLE =>
                        if (tx_fifo.empty = '0') then
                            -- assert read signal
                            tx_fifo.renable <= '1';
                            -- goto read command
                            tx_stat <= STAT_TX_GET_DATA;
                        else
                            tx_fifo.renable <= '0';
                        end if;

                    when others =>
                        -- goto idle state
                        tx_stat <= STAT_TX_IDLE;
                        tx_fifo.renable <= '0';
                        tx.valid <= '0';

                end case;
            end if;
        end if;
    end process;

    i_tx: uart_tx
        generic map (
            CYCLES => 5,
            OE_LOW_ACTIVE => false
        )
        port map (
            Clock => S00_axi_aclk,
            Reset => s_reset,

            Ready => tx.ready,

            Data  => tx.data,
            Valid => tx.valid,

            Txd   => TxD,
            Oe    => OE
        );

    ----------------------------------

    process(S00_axi_aclk)
    begin
        if (rising_edge(S00_axi_aclk)) then
            if (S00_axi_aresetn = '0') then
                r_flag <= '0';
            else
                -- flag
                if (r_flag_clear = '1') then -- rx_fifo.wvalid = '1') then
                    r_flag <= '0';
                elsif ((tx_stat = STAT_TX_END) and (tx.ready = '1')) then
                    r_flag <= '1';
                end if;
            end if;
        end if;
    end process;

    ----------------------------------

    i_rx_fifo: uart_fifo
        generic map (
            DATA_WIDTH => 32,
            DEPTH      => 16
        )
        port map (
            Clock   => S00_axi_aclk,
            Reset   => s_reset,

            Wdata   => rx_fifo.wdata,
            Wvalid  => rx_fifo.wvalid,

            Rdata   => RxData,
            Rvalid  => RxData_valid,
            Renable => RxData_read,

            Empty   => rx_fifo.empty,
            Full    => rx_fifo.full
        );

    process(S00_axi_aclk)
        variable v_byte_count : integer range 0 to 4;
        variable v_num_bytes : integer range 0 to 4;
    begin
        if (rising_edge(S00_axi_aclk)) then
            if (S00_axi_aresetn = '0') then
                v_byte_count := 0;
                v_num_bytes := 0;
                r_flag_clear <= '0';
            else
                r_flag_clear <= rx_fifo.wvalid;
                if (rx_fifo.wvalid = '1') then
                    rx_fifo.wvalid <= '0';
                elsif ((r_flag = '1') and (rx.valid = '1') and (v_byte_count = (v_num_bytes-1))) then
                    -- flag clear
                    -- write to fifo
                    rx_fifo.wvalid <= '1';
                else
                    rx_fifo.wvalid <= '0';
                end if;

                if (r_flag = '0') then
                    r_rx_data <= (others => '0');
                else
                    if (rx.valid = '1') then
                        -- write byte to word
                        r_rx_data( (8 * (v_byte_count + 1) - 1) downto (8 * v_byte_count) ) <= rx.data;
                    end if;
                end if;

                if (r_flag = '0') then
                    -- byte count clear
                    v_byte_count := 0;
                    -- word count clear
                    v_num_bytes := 4;
                elsif (rx.valid = '1') then
                    if (v_byte_count = 0) then
                        -- determine number of bytes at word count 0 and 1
                        case rx.data(6 downto 5) is
                            when "10" =>
                                v_num_bytes := 3;
                            when "01" =>
                                v_num_bytes := 2;
                            when "00" =>
                                v_num_bytes := 3;
                            when others =>
                                v_num_bytes := 3;
                        end case;
                    end if;
                    v_byte_count := v_byte_count + 1;

                end if;
            end if;
        end if;
    end process;











    rx_fifo.wdata <= r_rx_data;

    -- determine number of bytes

    i_rx: uart_rx
        generic map (
            CYCLES => 5
        )
        port map (
            Clock        => S00_axi_aclk,
            Reset        => s_reset,

            Data         => rx.data,
            Parity_error => rx.parity_error,
            Valid        => rx.valid,

            Rxd          => RxD,

            Debug_rx_pace    => Debug_rx_pace,
            Debug_rx_sample  => Debug_rx_sample,
            Debug_rx_d       => Debug_rx_d,
            Debug_rx_trigger => Debug_rx_trigger
        );

    ----------------------------------

    Status <= X"00000"
            & "000" & r_flag
            & "00" & rx_fifo.full & rx_fifo.empty
            & "00" & tx_fifo.full & tx_fifo.empty;

--    i_ila: ila_0
--        port map (
--            clk => S00_axi_aclk,
--            probe0 => rx_fifo.wdata,
--            probe1(0) => rx_fifo.wvalid,
--            probe2(0) => rx_fifo.empty,
--            probe3(0) => rx_fifo.full,
--            probe4 => rx.data,
--            probe5(0) => rx.parity_error,
--            probe6(0) => rx.valid
--        );

    Debug_fifo_wdata  <= rx_fifo.wdata;
    Debug_fifo_wvalid <= rx_fifo.wvalid;
    Debug_fifo_empty  <= rx_fifo.empty;
    Debug_rx_data     <= rx.data;
    Debug_rx_perror   <= rx.parity_error;
    Debug_rx_valid    <= rx.valid;

end rtl;

------------------------------------------------------------------------------
-- synthesis translate_off

library ieee;
use ieee.std_logic_1164.all;

entity icsuart0_core_sim is
end icsuart0_core_sim;

architecture sim of icsuart0_core_sim is

    constant CLK_CYCLE : time := 10 ns;

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
            Debug_rx_valid    : out std_logic
        );
    end component;

    component uart_fifo
        generic (
            DATA_WIDTH : integer := 8;
            DEPTH      : integer := 16
        );
        port (
            Clock   : in std_logic;
            Reset   : in std_logic;

            Wdata   : in std_logic_vector((DATA_WIDTH-1) downto 0);
            Wvalid  : in std_logic;

            Rdata   : out std_logic_vector((DATA_WIDTH-1) downto 0);
            Rvalid  : out std_logic;
            Renable : in std_logic;

            Empty   : out std_logic;
            Full    : out std_logic
        );
    end component;

    signal clock        : std_logic;
    signal resetn       : std_logic;
    signal control      : std_logic_vector(31 downto 0);
    signal status       : std_logic_vector(31 downto 0);
    signal status_clear : std_logic_vector(31 downto 0);
    signal txdata       : std_logic_vector(31 downto 0);
    signal txdata_valid : std_logic;
    signal rxdata       : std_logic_vector(31 downto 0);
    signal rxdata_valid : std_logic;
    signal rxdata_read  : std_logic;
    signal txd          : std_logic;
    signal rxd          : std_logic;
    signal oe           : std_logic;

    constant DELAY_CYCLE : integer := 3500;
    signal delay_line : std_logic_vector(DELAY_CYCLE downto 0);

begin

    clk_gen_proc: process
    begin
        clock <= '1';
        wait for CLK_CYCLE/2;
        clock <= '0';
        wait for CLK_CYCLE/2;
    end process;

    reset_gen_proc: process
    begin
        resetn <= '0';
        wait for CLK_CYCLE*3;
        wait for CLK_CYCLE/2;
        resetn <= '1';
        wait;
    end process;

    uut: icsuart0_core
        port map (
            S00_axi_aclk    => clock,
            S00_axi_aresetn => resetn,

            Control         => control,
            Status          => status,
            Status_clear    => status_clear,

            TxData          => txdata,
            TxData_valid    => txdata_valid,

            RxData          => rxdata,
            RxData_valid    => rxdata_valid,
            RxData_read     => rxdata_read,

            TxD             => txd,
            RxD             => rxd,
            OE              => oe,

            Debug_fifo_wdata  => open,
            Debug_fifo_wvalid => open,
            Debug_fifo_empty  => open,
            Debug_rx_data     => open,
            Debug_rx_perror   => open,
            Debug_rx_valid    => open
        );

    control <= (others => '0');
    status_clear <= (others => '0');

    process
    begin
        txdata <= (others => '0');
        txdata_valid <= '0';
        wait for CLK_CYCLE*10;
        wait for CLK_CYCLE/2;

        txdata <= X"0055AA81";
        txdata_valid <= '1';
        wait for CLK_CYCLE;
        txdata <= (others => '0');
        txdata_valid <= '0';


        wait;
    end process;

    process(clock)
    begin
        if (rising_edge(clock)) then
            if (rxdata_valid = '1') then
                rxdata_read <= '1';
            else
                rxdata_read <= '0';
            end if;
        end if;
    end process;

    process(clock)
    begin
        if (rising_edge(clock)) then
            if (resetn = '0') then
                delay_line <= (others => '1');
            else
                delay_line(DELAY_CYCLE downto 0) <= delay_line(DELAY_CYCLE-1 downto 0) & txd;
            end if;
        end if;
    end process;

    rxd <= delay_line(DELAY_CYCLE);

end sim;

-- synthesis translate_on
------------------------------------------------------------------------------
