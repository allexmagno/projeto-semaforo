library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity display IS
	generic (
				fclk2_in : natural := 25000000;
				D_vm	: natural := 3;
				U_vm	: natural := 0;
				D_vd : natural := 2;
				U_vd	: natural := 0;
				tipo_display	: natural := 1);
	port
	(
		clk50MHz :  in  STD_LOGIC;
		rst_in	:	in	std_LOGIC;
		ssd_D_c :  out  STD_LOGIC_VECTOR(0 TO 6);
		ssd_U_c :  out  STD_LOGIC_VECTOR(0 TO 6);
		ssd_D_p :  out  STD_LOGIC_VECTOR(0 TO 6);
		ssd_U_p :  out  STD_LOGIC_VECTOR(0 TO 6);
		verde, vermelho, amarelo : out std_LOGIC
	);
end entity;

architecture ifsc of display is

-- Declaraçao dos componentes utilizados
	component div_clk is
		generic (fclk2 : natural := 50);       -- frequecia para simulacao
		port (
			clk : in std_logic;
			rst : in std_LOGIC;
			clk_out : out std_logic
		);
	end component;
	
	component contador is
		generic (D_vm : natural := 9; 	U_vm : natural := 9;
					D_vd : natural := 9;		U_vd : natural := 9
		);
		port (
			clk : in std_logic;
			rst: in	std_logic;
			bcd_U : out std_logic_vector(3 downto 0);
			bcd_D : out std_logic_vector(3 downto 0);
			vermelho, amarelo, verde : out std_logic
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
signal	clk_1seg_temp, vm_temp, am_temp, vd_temp : std_LOGIC;
signal	bcdU_temp, bcdD_temp	:	std_logic_vector(3 downto 0);
signal	ssd_D_temp, ssd_U_temp : STD_LOGIC_VECTOR(0 TO 6);
	
begin

	U1: div_clk
		generic map (fclk2 => fclk2_in)       -- frequecia para simulacao
		port map (
			clk => clk50MHz,
			rst => rst_in,
			clk_out => clk_1seg_temp
		);
		
	-- descrever component eh optativo	
	U2: contador
	generic map (
		D_vm => D_vm,	U_vm => U_vm,
		D_vd => D_vd, U_vd => U_vd
		)
	port map (
		clk => clk_1seg_temp,
		rst=> rst_in,
		bcd_U => bcdU_temp,
		bcd_D => bcdD_temp,
		verde => vd_temp,
		amarelo => am_temp,
		vermelho => vm_temp
		
	);
	
	U3: bin2ssd
	--  generic (ac_ccn : natural := 1); -- Anodo comum
		generic map (ac_ccn => tipo_display) -- Catodo comum
		port map (
			bin_in => bcdU_temp,
			ssd_out => ssd_U_temp
		);
		
	U4: component bin2ssd
	--  generic (ac_ccn : natural := 1); -- Anodo comum
		generic map (ac_ccn => tipo_display) -- Catodo comum
		port map(
			bin_in => bcdD_temp,
			ssd_out => ssd_D_temp
		);
		
	ssd_D_c <= ssd_D_temp;
	ssd_U_c <= ssd_U_temp;
	ssd_D_p <= ssd_D_temp;
	ssd_U_p <= ssd_U_temp;
	
	vermelho <= vm_temp;
	amarelo <= am_temp; 
	verde <= vd_temp;
	
end architecture;