library ieee;
use ieee.std_logic_1164.all;
entity div_clk is
	generic (fclk2 : natural := 25);       -- frequecia para simulacao
	port (
		clk : in std_logic;
		rst : in std_logic;
		clk_out : out std_logic
	);
end entity;
architecture arch1 of div_clk is

	signal clk_1seg_temp : std_logic := '1';

begin

	divClock:PROCESS (clk, rst) -- e sequencial pois tem rising_edge
	VARIABLE temp: natural RANGE 0 TO fclk2*2;
	BEGIN
	if (rst = '1') then
		clk_1seg_temp <= '1';
		temp := 0;
	elsif (rising_edge(clk)) THEN
		temp := temp + 1;
		IF (temp < fclk2/2) THEN
			clk_1seg_temp <= '1'; -- começando alto
		ELSE
			clk_1seg_temp <= '0';
		end if;
		if (temp = fclk2) then
			temp := 0;
			clk_1seg_temp <= '1';
		END IF;
	END IF;
	END PROCESS;
	clk_out <= clk_1seg_temp;
	
end architecture;