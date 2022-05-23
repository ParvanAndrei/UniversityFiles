ARCHITECTURE add_8_df OF add_8 IS
  SIGNAL carry : std_logic_vector(8 DOWNTO 0);
BEGIN
  carry(0)          <= '1'; 
  if op_code = "01" then 
    s(7 DOWNTO 0)     <= a XOR (not b) XOR carry(7 DOWNTO 0);  
    carry(8 DOWNTO 1) <= (a AND (not b)) OR (carry(7 DOWNTO 0) AND (a OR (not b))); 
    s(8)              <= (not carry(8));
  elseif op_code= "00" 
  
  end if;
END add_8_df;



-- b_mux<= not b when 
--op='1' else nu stiu ce 

