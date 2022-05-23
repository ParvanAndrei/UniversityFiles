LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY divider_test IS
END divider_test;

ARCHITECTURE divider_test_arch OF divider_test IS
    COMPONENT divider IS
        PORT (
            clk : IN STD_LOGIC;
            reset : IN STD_LOGIC;
            start : IN STD_LOGIC;
            op_a : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
            op_b : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
            result : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
        );
    END COMPONENT;

    SIGNAL ck : STD_LOGIC := '0';
    SIGNAL clk : STD_LOGIC;
    SIGNAL reset : STD_LOGIC;
    SIGNAL start : STD_LOGIC;
    SIGNAL op_a : STD_LOGIC_VECTOR (3 DOWNTO 0);
    SIGNAL op_b : STD_LOGIC_VECTOR (3 DOWNTO 0);
    SIGNAL result : STD_LOGIC_VECTOR (7 DOWNTO 0);
BEGIN
    DIV : divider PORT MAP
    (
        clk => clk,
        reset => reset,
        start => start,
        op_a => op_a,
        op_b => op_b,
        result => result
    );

    ck <= NOT ck AFTER 5 ns;
    clk <= ck;
    op_a <= "0000", "1000" AFTER 30 ns, "1100" AFTER 100 ns, "1110" AFTER 150 ns, "1111" AFTER 250 ns;
    op_b <= "0000", "0001" AFTER 30 ns, "0011" AFTER 100 ns, "0111" AFTER 150 ns, "0000" AFTER 250 ns;
    start <= '0', '1' AFTER 50 ns, '0' AFTER 90 ns, '1' AFTER 300 ns, '0' AFTER 310 ns;
    reset <= '0', '1' AFTER 10 ns;
END divider_test_arch;