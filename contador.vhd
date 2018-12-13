library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contador is
	generic (D : natural := 4; 	U : natural := 0
	);
	port (
		clk : in std_logic;
		rst: in std_logic;
		flag : in std_logic;
		bcd_U : out std_logic_vector(3 downto 0);
		bcd_D : out std_logic_vector(3 downto 0);
		count : out std_logic := '0'
	);
end entity;
architecture arch1 of contador is
 
begin


P1:	PROCESS(clk, rst)
		VARIABLE tempU: natural RANGE 0 TO 10;
		VARIABLE tempD: natural range 0 to D+1;
		-- 0 a 99
		BEGIN
		if(rst = '0') then
			tempD := D;
			tempU := U;
			count <= '0';
			
		elsif (rising_edge(clk) and flag = '1') THEN
		
-- Quando zera ele da um sinal de saida alto para a aquina de estado
			if(tempD = 0 and tempU = 0) then
					count <= '1';
					tempD := D;
					tempU := U;
			else
				if (tempU > 0) then
					tempU := tempU - 1;
				elsif (tempU = 0) then
					tempU := 9;
					if (tempD > 0) then
						tempD := tempD - 1;
					end if;
				end if;
			 end if;
		END IF;
		bcd_D <= std_logic_vector(to_unsigned(tempD,4));
		bcd_U <= std_logic_vector(to_unsigned(tempU,4));
	end process;
	


end architecture;