--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : prima_schema.vhf
-- /___/   /\     Timestamp : 01/12/2021 19:37:37
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family artix7 -flat -suppress -vhdl "C:/Users/yoyol/Desktop/College stuff/PED/proiect_ed_part1/prima_schema.vhf" -w "C:/Users/yoyol/Desktop/College stuff/PED/proiect_ed_part1/prima_schema.sch"
--Design Name: prima_schema
--Device: artix7
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL CB4CE_HXILINX_prima_schema -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB4CE_HXILINX_prima_schema is
  
port (
    CEO  : out STD_LOGIC;
    Q0   : out STD_LOGIC;
    Q1   : out STD_LOGIC;
    Q2   : out STD_LOGIC;
    Q3   : out STD_LOGIC;
    TC   : out STD_LOGIC;
    C    : in STD_LOGIC;
    CE   : in STD_LOGIC;
    CLR  : in STD_LOGIC
    );
end CB4CE_HXILINX_prima_schema;

architecture Behavioral of CB4CE_HXILINX_prima_schema is

  signal COUNT : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(3 downto 0) := (others => '1');
  
begin

process(C, CLR)
begin
  if (CLR='1') then
    COUNT <= (others => '0');
  elsif (C'event and C = '1') then
    if (CE='1') then 
      COUNT <= COUNT+1;
    end if;
  end if;
end process;

TC   <= '1' when (COUNT = TERMINAL_COUNT) else '0';
CEO  <= '1' when ((COUNT = TERMINAL_COUNT) and CE='1') else '0';

Q3 <= COUNT(3);
Q2 <= COUNT(2);
Q1 <= COUNT(1);
Q0 <= COUNT(0);

end Behavioral;

----- CELL FTC_HXILINX_prima_schema -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FTC_HXILINX_prima_schema is
generic(
    INIT : bit := '0'
    );

  port (
    Q   : out STD_LOGIC := '0';
    C   : in STD_LOGIC;
    CLR : in STD_LOGIC;
    T   : in STD_LOGIC
    );
end FTC_HXILINX_prima_schema;

architecture Behavioral of FTC_HXILINX_prima_schema is
signal q_tmp : std_logic := TO_X01(INIT);
begin

process(C, CLR)
begin
  if (CLR='1') then
    q_tmp <= '0';
  elsif (C'event and C = '1') then
    if(T='1') then
      q_tmp <= not q_tmp;
    end if;
  end if;  
end process;

Q <= q_tmp;

end Behavioral;

----- CELL CB16CE_HXILINX_prima_schema -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB16CE_HXILINX_prima_schema is
port (
    CEO : out STD_LOGIC;
    Q   : out STD_LOGIC_VECTOR(15 downto 0);
    TC  : out STD_LOGIC;
    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC
    );
end CB16CE_HXILINX_prima_schema;

architecture Behavioral of CB16CE_HXILINX_prima_schema is

  signal COUNT : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(15 downto 0) := (others => '1');
  
begin

process(C, CLR)
begin
  if (CLR='1') then
    COUNT <= (others => '0');
  elsif (C'event and C = '1') then
    if (CE='1') then 
      COUNT <= COUNT+1;
    end if;
  end if;
end process;

TC  <= '1' when (COUNT = TERMINAL_COUNT) else '0';
CEO <= '1' when ((COUNT = TERMINAL_COUNT) and CE='1') else '0';
Q   <= COUNT;

end Behavioral;

----- CELL COMP16_HXILINX_prima_schema -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity COMP16_HXILINX_prima_schema is
port(
    EQ  : out std_logic;

    A   : in std_logic_vector(15 downto 0);
    B   : in std_logic_vector(15 downto 0)
  );
end COMP16_HXILINX_prima_schema;

architecture COMP16_HXILINX_prima_schema_V of COMP16_HXILINX_prima_schema is
begin
  EQ <= '1' when (A=B) else '0';
end COMP16_HXILINX_prima_schema_V;
----- CELL CB2CE_HXILINX_prima_schema -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB2CE_HXILINX_prima_schema is
  
port (
    CEO  : out STD_LOGIC;
    Q0   : out STD_LOGIC;
    Q1   : out STD_LOGIC;
    TC   : out STD_LOGIC;
    C    : in STD_LOGIC;
    CE   : in STD_LOGIC;
    CLR  : in STD_LOGIC
    );
end CB2CE_HXILINX_prima_schema;

architecture Behavioral of CB2CE_HXILINX_prima_schema is

  signal COUNT : STD_LOGIC_VECTOR(1 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(1 downto 0) := (others => '1');
  
begin

process(C, CLR)
begin
  if (CLR='1') then
    COUNT <= (others => '0');
  elsif (C'event and C = '1') then
    if (CE='1') then 
      COUNT <= COUNT+1;
    end if;
  end if;
end process;

TC   <= '1' when (COUNT = TERMINAL_COUNT) else '0';
CEO  <= '1' when ((COUNT = TERMINAL_COUNT) and CE='1') else '0';

Q1 <= COUNT(1);
Q0 <= COUNT(0);

end Behavioral;


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity prima_schema is
   port ( clock_in    : in    std_logic; 
          reset_in    : in    std_logic; 
          Ai_galben   : out   std_logic; 
          As_galben   : out   std_logic; 
          A_inainte   : out   std_logic; 
          A_stanga    : out   std_logic; 
          Bi_galben   : out   std_logic; 
          Bs_galben   : out   std_logic; 
          B_inainte   : out   std_logic; 
          B_stanga    : out   std_logic; 
          comp_o      : out   std_logic; 
          count0_0    : out   std_logic; 
          count0_1    : out   std_logic; 
          count0_2    : out   std_logic; 
          count0_3    : out   std_logic; 
          count1      : out   std_logic_vector (15 downto 0); 
          cr1_o       : out   std_logic; 
          C_inainte   : out   std_logic; 
          C_stanga    : out   std_logic; 
          D_inainte   : out   std_logic; 
          D_stanga    : out   std_logic; 
          EQ_D        : out   std_logic; 
          EQ_posedge  : out   std_logic; 
          q0          : out   std_logic; 
          q1          : out   std_logic; 
          q2          : out   std_logic; 
          s_000       : out   std_logic; 
          s_001       : out   std_logic; 
          s_010       : out   std_logic; 
          s_011       : out   std_logic; 
          s_100       : out   std_logic; 
          s_101       : out   std_logic; 
          s_110       : out   std_logic; 
          s_111       : out   std_logic; 
          t_10us      : out   std_logic; 
          t_10us_d    : out   std_logic; 
          t_10us_pose : out   std_logic);
end prima_schema;

architecture BEHAVIORAL of prima_schema is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal clk_in            : std_logic;
   signal XLXN_1            : std_logic;
   signal XLXN_2            : std_logic;
   signal XLXN_11           : std_logic;
   signal XLXN_21           : std_logic;
   signal XLXN_35           : std_logic;
   signal XLXN_119          : std_logic;
   signal XLXN_134          : std_logic;
   signal XLXN_135          : std_logic;
   signal XLXN_136          : std_logic;
   signal XLXN_138          : std_logic;
   signal XLXN_139          : std_logic;
   signal XLXN_140          : std_logic;
   signal XLXN_141          : std_logic;
   signal XLXN_210          : std_logic;
   signal XLXN_211          : std_logic;
   signal XLXN_221          : std_logic;
   signal XLXN_222          : std_logic;
   signal XLXN_223          : std_logic;
   signal XLXN_471          : std_logic_vector (15 downto 0);
   signal t_10us_d_DUMMY    : std_logic;
   signal t_10us_DUMMY      : std_logic;
   signal s_100_DUMMY       : std_logic;
   signal s_101_DUMMY       : std_logic;
   signal Bi_galben_DUMMY   : std_logic;
   signal As_galben_DUMMY   : std_logic;
   signal s_110_DUMMY       : std_logic;
   signal s_111_DUMMY       : std_logic;
   signal EQ_posedge_DUMMY  : std_logic;
   signal count1_DUMMY      : std_logic_vector (15 downto 0);
   signal Bs_galben_DUMMY   : std_logic;
   signal t_10us_pose_DUMMY : std_logic;
   signal Ai_galben_DUMMY   : std_logic;
   signal s_000_DUMMY       : std_logic;
   signal s_001_DUMMY       : std_logic;
   signal EQ_D_DUMMY        : std_logic;
   signal cr1_o_DUMMY       : std_logic;
   signal q0_DUMMY          : std_logic;
   signal q1_DUMMY          : std_logic;
   signal s_010_DUMMY       : std_logic;
   signal q2_DUMMY          : std_logic;
   signal s_011_DUMMY       : std_logic;
   signal comp_o_DUMMY      : std_logic;
   component CB4CE_HXILINX_prima_schema
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             Q2  : out   std_logic; 
             Q3  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
   component CB16CE_HXILINX_prima_schema
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q   : out   std_logic_vector (15 downto 0); 
             TC  : out   std_logic);
   end component;
   
   component COMP16_HXILINX_prima_schema
      port ( A  : in    std_logic_vector (15 downto 0); 
             B  : in    std_logic_vector (15 downto 0); 
             EQ : out   std_logic);
   end component;
   
   component FDCE
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCE : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component CB2CE_HXILINX_prima_schema
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component FTC_HXILINX_prima_schema
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             T   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_1";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_2";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_3";
   attribute HU_SET of XLXI_13 : label is "XLXI_13_4";
   attribute HU_SET of XLXI_50 : label is "XLXI_50_0";
   attribute HU_SET of XLXI_173 : label is "XLXI_173_8";
   attribute HU_SET of XLXI_175 : label is "XLXI_175_7";
   attribute HU_SET of XLXI_177 : label is "XLXI_177_5";
   attribute HU_SET of XLXI_179 : label is "XLXI_179_6";
begin
   XLXN_471(15 downto 0) <= x"0007";
   Ai_galben <= Ai_galben_DUMMY;
   As_galben <= As_galben_DUMMY;
   Bi_galben <= Bi_galben_DUMMY;
   Bs_galben <= Bs_galben_DUMMY;
   comp_o <= comp_o_DUMMY;
   count1(15 downto 0) <= count1_DUMMY(15 downto 0);
   cr1_o <= cr1_o_DUMMY;
   EQ_D <= EQ_D_DUMMY;
   EQ_posedge <= EQ_posedge_DUMMY;
   q0 <= q0_DUMMY;
   q1 <= q1_DUMMY;
   q2 <= q2_DUMMY;
   s_000 <= s_000_DUMMY;
   s_001 <= s_001_DUMMY;
   s_010 <= s_010_DUMMY;
   s_011 <= s_011_DUMMY;
   s_100 <= s_100_DUMMY;
   s_101 <= s_101_DUMMY;
   s_110 <= s_110_DUMMY;
   s_111 <= s_111_DUMMY;
   t_10us <= t_10us_DUMMY;
   t_10us_d <= t_10us_d_DUMMY;
   t_10us_pose <= t_10us_pose_DUMMY;
   XLXI_1 : CB4CE_HXILINX_prima_schema
      port map (C=>clock_in,
                CE=>XLXN_2,
                CLR=>reset_in,
                CEO=>XLXN_1,
                Q0=>count0_0,
                Q1=>count0_1,
                Q2=>count0_2,
                Q3=>count0_3,
                TC=>open);
   
   XLXI_2 : CB16CE_HXILINX_prima_schema
      port map (C=>clock_in,
                CE=>XLXN_1,
                CLR=>clk_in,
                CEO=>open,
                Q(15 downto 0)=>count1_DUMMY(15 downto 0),
                TC=>open);
   
   XLXI_3 : COMP16_HXILINX_prima_schema
      port map (A(15 downto 0)=>count1_DUMMY(15 downto 0),
                B(15 downto 0)=>XLXN_471(15 downto 0),
                EQ=>cr1_o_DUMMY);
   
   XLXI_4 : FDCE
      port map (C=>clock_in,
                CE=>XLXN_21,
                CLR=>reset_in,
                D=>comp_o_DUMMY,
                Q=>EQ_D_DUMMY);
   
   XLXI_5 : INV
      port map (I=>EQ_D_DUMMY,
                O=>XLXN_11);
   
   XLXI_6 : AND2
      port map (I0=>XLXN_11,
                I1=>comp_o_DUMMY,
                O=>EQ_posedge_DUMMY);
   
   XLXI_7 : VCC
      port map (P=>XLXN_2);
   
   XLXI_9 : VCC
      port map (P=>XLXN_21);
   
   XLXI_10 : OR2
      port map (I0=>EQ_posedge_DUMMY,
                I1=>reset_in,
                O=>clk_in);
   
   XLXI_11 : FDCE
      port map (C=>clock_in,
                CE=>XLXN_21,
                CLR=>reset_in,
                D=>cr1_o_DUMMY,
                Q=>comp_o_DUMMY);
   
   XLXI_12 : FDCE
      port map (C=>clock_in,
                CE=>XLXN_119,
                CLR=>reset_in,
                D=>t_10us_DUMMY,
                Q=>t_10us_d_DUMMY);
   
   XLXI_13 : CB2CE_HXILINX_prima_schema
      port map (C=>clock_in,
                CE=>clk_in,
                CLR=>reset_in,
                CEO=>open,
                Q0=>open,
                Q1=>open,
                TC=>t_10us_DUMMY);
   
   XLXI_14 : VCC
      port map (P=>XLXN_119);
   
   XLXI_15 : INV
      port map (I=>t_10us_d_DUMMY,
                O=>XLXN_35);
   
   XLXI_16 : AND2
      port map (I0=>t_10us_DUMMY,
                I1=>XLXN_35,
                O=>t_10us_pose_DUMMY);
   
   XLXI_50 : CB4CE_HXILINX_prima_schema
      port map (C=>clock_in,
                CE=>t_10us_pose_DUMMY,
                CLR=>reset_in,
                CEO=>open,
                Q0=>q0_DUMMY,
                Q1=>q1_DUMMY,
                Q2=>q2_DUMMY,
                Q3=>open,
                TC=>open);
   
   XLXI_51 : AND3
      port map (I0=>XLXN_136,
                I1=>XLXN_135,
                I2=>XLXN_134,
                O=>s_000_DUMMY);
   
   XLXI_52 : AND3
      port map (I0=>q2_DUMMY,
                I1=>XLXN_211,
                I2=>XLXN_210,
                O=>s_001_DUMMY);
   
   XLXI_53 : AND3
      port map (I0=>XLXN_139,
                I1=>q1_DUMMY,
                I2=>XLXN_138,
                O=>s_010_DUMMY);
   
   XLXI_54 : AND3
      port map (I0=>XLXN_141,
                I1=>XLXN_140,
                I2=>q0_DUMMY,
                O=>s_100_DUMMY);
   
   XLXI_55 : AND3
      port map (I0=>q2_DUMMY,
                I1=>q1_DUMMY,
                I2=>XLXN_221,
                O=>s_011_DUMMY);
   
   XLXI_56 : AND3
      port map (I0=>q2_DUMMY,
                I1=>XLXN_222,
                I2=>q0_DUMMY,
                O=>s_101_DUMMY);
   
   XLXI_57 : AND3
      port map (I0=>XLXN_223,
                I1=>q1_DUMMY,
                I2=>q0_DUMMY,
                O=>s_110_DUMMY);
   
   XLXI_58 : AND3
      port map (I0=>q2_DUMMY,
                I1=>q1_DUMMY,
                I2=>q0_DUMMY,
                O=>s_111_DUMMY);
   
   XLXI_59 : INV
      port map (I=>q0_DUMMY,
                O=>XLXN_134);
   
   XLXI_60 : INV
      port map (I=>q1_DUMMY,
                O=>XLXN_135);
   
   XLXI_61 : INV
      port map (I=>q2_DUMMY,
                O=>XLXN_136);
   
   XLXI_62 : INV
      port map (I=>q0_DUMMY,
                O=>XLXN_138);
   
   XLXI_63 : INV
      port map (I=>q2_DUMMY,
                O=>XLXN_139);
   
   XLXI_64 : INV
      port map (I=>q1_DUMMY,
                O=>XLXN_140);
   
   XLXI_65 : INV
      port map (I=>q2_DUMMY,
                O=>XLXN_141);
   
   XLXI_98 : INV
      port map (I=>q0_DUMMY,
                O=>XLXN_210);
   
   XLXI_99 : INV
      port map (I=>q1_DUMMY,
                O=>XLXN_211);
   
   XLXI_100 : INV
      port map (I=>q0_DUMMY,
                O=>XLXN_221);
   
   XLXI_101 : INV
      port map (I=>q1_DUMMY,
                O=>XLXN_222);
   
   XLXI_102 : INV
      port map (I=>q2_DUMMY,
                O=>XLXN_223);
   
   XLXI_173 : FTC_HXILINX_prima_schema
      port map (C=>clock_in,
                CLR=>reset_in,
                T=>s_011_DUMMY,
                Q=>As_galben_DUMMY);
   
   XLXI_175 : FTC_HXILINX_prima_schema
      port map (C=>clock_in,
                CLR=>reset_in,
                T=>s_001_DUMMY,
                Q=>Ai_galben_DUMMY);
   
   XLXI_177 : FTC_HXILINX_prima_schema
      port map (C=>clock_in,
                CLR=>reset_in,
                T=>s_101_DUMMY,
                Q=>Bi_galben_DUMMY);
   
   XLXI_179 : FTC_HXILINX_prima_schema
      port map (C=>clock_in,
                CLR=>reset_in,
                T=>s_111_DUMMY,
                Q=>Bs_galben_DUMMY);
   
   XLXI_181 : OR2
      port map (I0=>Ai_galben_DUMMY,
                I1=>s_000_DUMMY,
                O=>A_inainte);
   
   XLXI_182 : OR2
      port map (I0=>As_galben_DUMMY,
                I1=>s_010_DUMMY,
                O=>A_stanga);
   
   XLXI_183 : OR2
      port map (I0=>Bi_galben_DUMMY,
                I1=>s_100_DUMMY,
                O=>B_inainte);
   
   XLXI_184 : OR2
      port map (I0=>Bs_galben_DUMMY,
                I1=>s_110_DUMMY,
                O=>B_stanga);
   
   XLXI_185 : OR2
      port map (I0=>Bi_galben_DUMMY,
                I1=>s_100_DUMMY,
                O=>D_inainte);
   
   XLXI_186 : OR2
      port map (I0=>Bs_galben_DUMMY,
                I1=>s_110_DUMMY,
                O=>D_stanga);
   
   XLXI_187 : OR2
      port map (I0=>Ai_galben_DUMMY,
                I1=>s_000_DUMMY,
                O=>C_inainte);
   
   XLXI_188 : OR2
      port map (I0=>As_galben_DUMMY,
                I1=>s_010_DUMMY,
                O=>C_stanga);
   
end BEHAVIORAL;


