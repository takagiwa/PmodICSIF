--
-- UART interface for ICS
--
-- (C) Masayuki Takagiwa
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity icsuart0_core is
    port map (
        S00_axi_aclk    : in std_logic;
        S00_axi_aresetn : in std_logic;

        Control         : in std_logic_vector(31 downto 0);
        Status          : out std_logic_vector(31 downto 0);
        Status_clear    : in std_logic_vector(31 downto 0);

        TxData          : in std_logic_vector(31 downto 0);
        TxData_valid    : in std_logic;

        RxData          : out std_logic_vector(31 downto 0);
        RxData_valid    : out std_logic;

        TxD             : out std_logic;
        RxD             : in std_logic;
        OE              : out std_logic
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

            Rxd           : in std_logic
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
        renable : std_logic;
        empty   : std_logic;
        full    : std_logic;
    end record TYPE_RX_FIFO;
    signal rx_fifo : TYPE_RX_FIFO;

    signal r_tx_end : std_logic;
    signal r_rx_end : std_logic;
    signal r_flag   : std_logic; -- must monitor at status

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

    process(S00_axi_aclk)
    begin
        if (rising_edge(S00_axi_aclk)) then
            if (S00_axi_aresetn = '0') then
            else
                case tx_stat is
                    when STAT_TX_END =>
                        -- set flag
                        -- goto idle

                    when STAT_TX_WAIT =>
                        if (byte count = (number of bytes-1)) then
                            -- goto end
                        else
                            -- increment byte count
                            -- goto transmit
                        end if;

                    when STAT_TX_TRANSMIT =>
                        if (ready) then
                            -- write selected byte to uart_tx
                        end if;

                    when STAT_TX_GET_DATA =>
                        if (valid) then
                            -- get word
                            -- determine number of bytes
                            -- goto transmit
                        end if;

                    when STAT_TX_IDLE =>
                        if ((not empty) and (flag cleared)) then
                            -- assert read signal
                            -- goto read command
                        end if;
                    when others =>
                        -- goto idle state
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
            else
                -- flag
            end if;
        end if;
    end process;

    ----------------------------------

    i_tx_fifo: uart_fifo
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
            Renable => rx_fifo.renable,

            Empty   => rx_fifo.empty,
            Full    => rx_fifo.full
        );

    process(S00_axi_aclk)
    begin
        if (rising_edge(S00_axi_aclk)) then
            if (S00_axi_aresetn = '0') then
            else
                if (final byte write) then
                    -- flag clear
                    -- write to fifo
                end if;

                if (flag set) then
                    if (word count = 1) then
                        if (valid byte count) then
                            -- write byte to word
                        end if;
                    end if;
                end if;

                if (flag clear) then
                    -- byte count clear
                    -- word count clear
                elsif (valid) then
                    if ((word count = 0) and (byte count = 0)) then
                        -- determine number of bytes at word count 0 and 1
                    elsif (word count = 1) then
                        if (byte count < number of bytes at word count 1) then
                            -- increase byte count
                        end if;
                    else -- word count = 0
                        if (byte count = number of bytes at word count 0) then
                            -- increase word count
                            -- clear byte count
                        else
                            -- increase byte count
                        end if;
                    end if;
                end if;
            end if;
        end if;
    end process;

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

            Rxd          => RxD
        );

    ----------------------------------

end rtl;

------------------------------------------------------------------------------
-- synthesis translate_off

library ieee;
use ieee.std_logic_1164.all;

entity icsuart0_core_sim is
end icsuart0_core_sim;

architecture sim of icsuart0_core_sim is

begin

end sim;

-- synthesis translate_on
------------------------------------------------------------------------------
