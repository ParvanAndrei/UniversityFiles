LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

entity divider_test is
end divider_test;

architecture divider_test_arch of divider_test is
    component divider is
        port (   op_a : in std_logic_vector (3 downto 0);
                 op_b : in std_logic_vector (3 downto 0);
                 result : out std_logic_vector (7 downto 0);
                 clk : in std_logic;
                 reset : in std_logic;
                 start : in std_logic;
                 ready : out std_logic 
            );
    end component;
 
    signal ck : std_logic := '0';
    signal op_a : std_logic_vector (3 downto 0);
    signal op_b : std_logic_vector (3 downto 0);
    signal result : std_logic_vector (7 downto 0);
    signal clk : std_logic;
    signal reset : std_logic;
    signal start : std_logic;
    signal ready : std_logic;
 
 
    begin
        DIV : divider port map 
         ( op_a => op_a,
           op_b => op_b,
           result => result,
           start => start,
           ready => ready,
           reset => reset,
           clk => clk );

        ck <= not ck after 5 ns;
        clk <= ck;
        op_a <= "0000", "1000" after 30 ns, "1100" after 100 ns, "1110" after 150 ns, "1111" after 250 ns;
        op_b <= "0000",	"0001" after 30 ns, "0011" after 100 ns, "0111" after 150 ns, "0000" after 250 ns;
        start <= '0', '1' after 50 ns, '0' after 90 ns, '1' after 300 ns, '0' after 310 ns;
        reset <= '0', '1' after 10 ns;
end divider_test_arch;

