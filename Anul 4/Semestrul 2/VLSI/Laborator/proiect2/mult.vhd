LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY mult IS
PORT ( 
    clk     : IN  std_logic;
    reset   : IN  std_logic;
    a       : IN  std_logic_vector(3 DOWNTO 0); 
    b       : IN  std_logic_vector(3 DOWNTO 0); 
    start   : IN  std_logic;
    p       : OUT std_logic_vector(7 DOWNTO 0);
    ready   : OUT  std_logic
);
END mult;

ARCHITECTURE mult OF mult IS  
    COMPONENT date   
        PORT ( 
            clk     : IN  std_logic;
            reset   : IN  std_logic;
            a       : IN  std_logic_vector(3 DOWNTO 0); 
            b       : IN  std_logic_vector(3 DOWNTO 0); 
            ld_a    : IN  std_logic;
            ld_b    : IN  std_logic;
            dec_b   : IN  std_logic;
            clr_p   : IN  std_logic;
            ld_p    : IN  std_logic;
            ld_r    : IN  std_logic;
            zero_b  : OUT std_logic;
            p       : OUT std_logic_vector(7 DOWNTO 0)
        );
    END COMPONENT;  
 
    COMPONENT control  
        PORT ( 
            clk     : IN  std_logic;
            reset   : IN  std_logic;
            --FSM inputs
            start   : IN  std_logic;
            zero_b  : IN  std_logic;
            --FSM outputs
            ld_a    : OUT std_logic;
            ld_b    : OUT std_logic;
            dec_b   : OUT std_logic;
            clr_p   : OUT std_logic;
            ld_p    : OUT std_logic;
            ld_r    : OUT std_logic;
            ready   : OUT std_logic
        );     
     END COMPONENT;  

-- signals to connect date/control  
SIGNAL ld_a, ld_b, dec_b, clr_p, ld_p, ld_r, zero_b : std_logic;   
 
BEGIN  
      
  i_date: date 
  PORT MAP( 
        clk         => clk, 
        reset       => reset, 

        a           => a,  
        b           => b,  
 
        ld_a        => ld_a,  
        ld_b        => ld_b,  
        dec_b       => dec_b,
        clr_p       => clr_p, 
        ld_p        => ld_p,  
        ld_r        => ld_r,  
        zero_b      => zero_b,
        p           => p
   ); 
   
  i_ctrl: control 
    PORT MAP( 
        clk         => clk, 
        reset       => reset, 

        start       => start,  
        zero_b      => zero_b,  
 
        ld_a        => ld_a,  
        ld_b        => ld_b,  
        dec_b       => dec_b,
        clr_p       => clr_p, 
        ld_p        => ld_p, 
        ld_r        => ld_r,
        ready       => ready
   ); 
 
END mult; 
