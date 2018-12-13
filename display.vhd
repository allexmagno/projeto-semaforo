library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity display IS
	generic (
				D	: natural := 3;
				U	: natural := 0;
				tipo_display	: natural := 1);
	port
	(
		clk :  in  STD_LOGIC;
		rst_in	:	in	std_LOGIC;
		flag : in std_LOGIC;
		ssd_D :  out  STD_LOGIC_VECTOR(0 TO 6);
		ssd_U :  out  STD_LOGIC_VECTOR(0 TO 6);
		count : out std_LOGIC
	);
end entity;

architecture ifsc of display is

-- Declaraçao dos componentes utilizados

	component contador is
		generic (D : natural := 9; 	U : natural := 9
		);
		port (
			clk : in std_logic;
			rst: in	std_logic;
			flag : in std_logic;
			bcd_U : out std_logic_vector(3 downto 0);
			bcd_D : out std_logic_vector(3 downto 0);
			count : out std_logic
		);
	end component;
	
	component bin2ssd is
	--  generic (ac_ccn : natural := 1); -- Anodo comum
		generic (ac_ccn : natural := 0); -- Catodo comum
		port (
			bin_in : in std_logic_vector(3 downto 0);
			ssd_out : out std_logic_vector(0 to 6)
		);
	end component;
	
-- Sinais entre os componentes
signal	cont_temp : std_LOGIC;
signal	bcdU_temp, bcdD_temp	:	std_logic_vector(3 downto 0);
signal	ssd_D_temp, ssd_U_temp : STD_LOGIC_VECTOR(0 TO 6);
	
begin
		
	-- descrever component eh optativo	
	U1: contador
	generic map (
		D => D,	U => U
		)
	port map (
		clk => clk,
		rst => rst_in,
		flag => flag,
		bcd_U => bcdU_temp,
		bcd_D => bcdD_temp,
		count => cont_temp
		
	);
	
	U2: bin2ssd
	--  generic (ac_ccn : natural := 1); -- Anodo comum
		generic map (ac_ccn => tipo_display) -- Catodo comum
		port map (
			bin_in => bcdU_temp,
			ssd_out => ssd_U_temp
		);
		
	U3: component bin2ssd
	--  generic (ac_ccn : natural := 1); -- Anodo comum
		generic map (ac_ccn => tipo_display) -- Catodo comum
		port map(
			bin_in => bcdD_temp,
			ssd_out => ssd_D_temp
		);
		
	count <= cont_temp;
	ssd_D <= ssd_D_temp;
	ssd_U <= ssd_U_temp;
	
end architecture;