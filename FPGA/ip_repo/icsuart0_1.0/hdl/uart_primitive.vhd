--
-- UART primitives
--
-- (C) Masayuki Takagiwa
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uart_tx is
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
end uart_tx;

architecture rtl of uart_tx is

    type TYPE_TX is (STAT_IDLE, STAT_START_BIT, STAT_TRANSMIT, STAT_PARITY_BIT, STAT_STOP_BIT, STAT_WAIT, STAT_TERM);
    signal stat : TYPE_TX;

    signal r_pace : std_logic;

    signal r_ready : std_logic;
    signal r_txd   : std_logic;
    signal r_oe    : std_logic;

begin

    pace_maker_proc: process(Clock)
        variable v_pace : integer range 0 to ((16*CYCLES)-1);
    begin
        if (rising_edge(Clock)) then
            if (Reset = '1') then
                v_pace := 0;
                r_pace <= '0';
            else
                if (v_pace = ((16*CYCLES)-1)) then
                    v_pace := 0;
                    r_pace <= '1';
                else
                    v_pace := v_pace + 1;
                    r_pace <= '0';
                end if;
            end if;
        end if;
    end process;

    main_proc: process(Clock)
        variable v_bit_count : integer range 0 to 7;
        variable v_parity    : std_logic;
        variable v_data      : std_logic_vector(7 downto 0);
    begin
        if (rising_edge(Clock)) then
            if (Reset = '1') then
                r_ready <= '0';
                r_txd <= '1';
                r_oe <= '0';
            else
                case stat is
                    when STAT_TERM =>
                        if (Valid = '1') then
                            v_data := Data;
                            r_ready <= '0';
                            stat <= STAT_START_BIT;
                        else
                            r_oe <= '0';
                            stat <= STAT_IDLE;
                        end if;
                    when STAT_WAIT =>
                        if (r_pace = '1') then
                            r_ready <= '1';
                            stat <= STAT_TERM;
                        end if;

                    when STAT_STOP_BIT =>
                        r_txd <= '1'; -- stop bit
                        if (r_pace = '1') then
                            stat <= STAT_WAIT;
                        end if;

                    when STAT_PARITY_BIT =>
                        r_txd <= v_parity;
                        if (r_pace = '1') then
                            stat <= STAT_STOP_BIT;
                        end if;

                    when STAT_TRANSMIT =>
                        r_txd <= v_data(v_bit_count);
                        if (r_pace = '1') then
                            if (v_bit_count = 7) then
                                stat <= STAT_PARITY_BIT;
                            end if;
                            v_parity := v_parity xor v_data(v_bit_count);
                            v_bit_count := v_bit_count + 1;
                        end if;

                    when STAT_START_BIT =>
                        r_txd <= '0'; -- start bit
                        v_parity := '0';
                        v_bit_count := 0;
                        if (r_pace = '1') then
                            stat <= STAT_TRANSMIT;
                        end if;

                    when STAT_IDLE =>
                        if (Valid = '1') then
                            v_data := Data;
                            r_oe <= '1';
                            r_ready <= '0';
                            stat <= STAT_START_BIT;
                        else
                            r_oe <= '0';
                            r_ready <= '1';
                        end if;
                        r_txd <= '1';

                    when others =>
                        r_oe <= '0';
                        r_ready <= '0';
                        r_txd <= '1';
                        stat <= STAT_IDLE;
                end case;
            end if;
        end if;
    end process;

    Ready <= r_ready;

    Txd <= r_txd;
    Oe <= not r_oe when (OE_LOW_ACTIVE = true)
     else r_oe;

end rtl;

------------------------------------------------------------------------------
-- synthesis translate_off

library ieee;
use ieee.std_logic_1164.all;

entity uart_tx_sim is
end uart_tx_sim;

architecture sim of uart_tx_sim is

    constant CLK_CYCLE : time := 10 ns;

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

    signal clock : std_logic;
    signal reset : std_logic;
    signal ready : std_logic;
    signal data  : std_logic_vector(7 downto 0);
    signal valid : std_logic;
    signal txd   : std_logic;
    signal oe    : std_logic;

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
        reset <= '1';
        wait for CLK_CYCLE*3;
        wait for CLK_CYCLE/2;
        reset <= '0';
        wait;
    end process;

    uut: uart_tx
        generic map (
            CYCLES => 5,
            OE_LOW_ACTIVE => false
        )
        port map (
            Clock => clock,
            Reset => reset,
            Ready => ready,
            Data  => data,
            Valid => valid,
            Txd   => txd,
            Oe    => oe
        );

    ctrl_proc: process
    begin
        data <= (others => 'Z');
        valid <= '0';
        wait for CLK_CYCLE * 10;
        wait for CLK_CYCLE/2;

        if (Ready /= '1') then report "Something wrong at Ready port." severity failure; end if;
        if (txd /= '1') then report "Something wrong at Txd port." severity failure; end if;
        if (Oe /= '0') then report "Something wrong at Oe port." severity failure; end if;

        data <= X"01";
        valid <= '1';
        wait for CLK_CYCLE;
        data <= (others => 'Z');
        valid <= '0';

        -- TODO: check three output signals

        wait until (Ready'event and Ready = '1');
        wait until (Clock'event and Clock = '0');

        data <= X"81";
        valid <= '1';
        wait for CLK_CYCLE;
        data <= (others => 'Z');
        valid <= '0';

        wait;
    end process;

end sim;

-- synthesis translate_on
------------------------------------------------------------------------------

