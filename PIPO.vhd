 library ieee;
use ieee.std_logic_1164.all;

entity PIPO is
generic(m:integer:=8);
port(CLK_SAL,CLR:in std_logic;
          PI:in std_logic_vector(m-1 downto 0);
			    PO:out std_logic_vector(m-1 downto 0)
);
end PIPO;
architecture behavioral of PIPO is
signal temp: std_logic_vector(m-1 downto 0);
begin
process(CLK_SAL,CLR)
begin 
if(CLR='0')then
temp<=(others=>'0');
elsif(CLK_SAL'event and CLK_SAL='0')then
temp<=(PI);
end if;
PO<=(temp);
end process;
end behavioral;
