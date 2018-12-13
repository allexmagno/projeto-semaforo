library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contador is
	generic (D_vm : natural := 4; 	U_vm : natural := 0;
				D_vd	:	natural := 2;	U_vd	: natural := 0
	);
	port (
		clk : in std_logic;
		rst: in std_logic;
		bcd_U : out std_logic_vector(3 downto 0);
		bcd_D : out std_logic_vector(3 downto 0);
		vermelho, amarelo, verde : out std_logic
	);
end entity;
architecture arch1 of contador is
 
begin


P1:	PROCESS(clk, rst)
		VARIABLE tempAmarelo: natural RANGE 0 TO 2;
		VARIABLE tempU: natural RANGE 0 TO 10;
		VARIABLE tempD: natural range 0 to D_vm+1;		
		VARIABLE tempU_vd: natural RANGE 0 TO 10;
		VARIABLE tempD_vd: natural range 0 to D_vd+1;
		VARIABLE tempU_vm: natural RANGE 0 TO 10;
		VARIABLE tempD_vm: natural range 0 to D_vm+1;
		-- 0 a 99
		BEGIN
		if(rst = '0') then
			tempD := 0;
			tempU := 0;
			tempD_vd := D_vd;
			tempU_vd := U_vd;
			tempD_vm := D_vm;
			tempU_vm := U_vm;
			tempAmarelo := 0;
			
		elsif (rising_edge(clk)) THEN
		
			if(tempD_vd = 0 and tempU_vd = 0) then
				tempD := 0;
				tempU := 0;
				tempD_vd := D_vd;
				tempU_vd := U_vd;
				tempD_vm := D_vm;
				tempU_vm := U_vm;
				tempAmarelo := 0;
				amarelo <= '0';
				verde <= '0';
				vermelho <= '0';
				
				
			elsif(tempAmarelo = 2) then
				amarelo <= '0';
				
				if(tempD_vm = 0 and tempU_vm = 0) then
					
					vermelho <= '0';
					verde	<= '1';
					
					if (tempU_vd > 0) then
						tempU_vd := tempU_vd - 1;
						tempU := tempU_vd;
					elsif (tempU_vd = 0) then
						tempU_vd := U_vd;
						tempU := tempU_vd;
					end if;
					if (tempD_vd > 0) then
						tempD_vd := tempD_vd - 1;
						tempD := tempD_vd;
					end if;
				
				else
				
					vermelho <= '1';
					
					if (tempU_vm > 0) then
						tempU_vm := tempU_vm - 1;
						tempU := tempU_vm;
					elsif (tempU_vm = 0) then
						tempU_vm := U_vm;
						tempU := tempU_vm;
					end if;
					if (tempD_vm > 0) then
						tempD_vm := tempD_vm - 1;
						tempD := tempD_vm;
					end if;
					
					if(tempD_vm = 0 and tempU_vm =0) then
						tempD_vm = D_vm tempU_vm = U_vm;
					end if;
				 end if;
			 else
				tempAmarelo := tempAmarelo + 1;
				amarelo <= '1';
			end if;
		END IF;
		bcd_D <= std_logic_vector(to_unsigned(tempD,4));
		bcd_U <= std_logic_vector(to_unsigned(tempU,4));
--	clk_out <= clk_out_tmp;
	end process;
	



end architecture;