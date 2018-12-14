library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity semaforo IS
	generic (
				fclk2_in : natural := 25000000;
				D_vm	: natural := 3;
				U_vm	: natural := 0;
				D_vd	: natural := 2;
				U_vd	: natural := 0;
				TC	: integer := 10;
				tipo_display	: natural := 1);
	port
	(
		clk50MHz :  in  STD_LOGIC;
		rst_in	:	in	std_LOGIC;
		s1_in, s2_in, b1_in, b2_in	: in std_logic;
		ssd_D, ssd_Dp :  out  STD_LOGIC_VECTOR(0 TO 6);
		ssd_U, ssd_Up :  out  STD_LOGIC_VECTOR(0 TO 6);
		ssd_st : out STD_LOGIC_VECTOR(0 TO 6);
		count_out : out STD_LOGIC_VECTOR(6 DOWNTO 0);
		CVM, CVD, CAM, PVM, PVD, LUZ, clk_out_1s, count_fim_vd, count_fim_vm : out std_logic
	);
end entity;

architecture ifsc of semaforo is

-- Declaraçao dos componentes utilizados
	component div_clk is
		generic (fclk2 : natural := 50);       -- frequecia para simulacao
		port (
			clk : in std_logic;
			rst : in std_LOGIC;
			clk_out : out std_logic
		);
	end component;
	
component display IS
	generic (
				D	: natural := 3;
				U	: natural := 0;
				tipo_display	: natural := 1);
	port
	(
		clk :  in  STD_LOGIC;
		rst_in	:	in	std_LOGIC;
		enable, load, rstS : in std_logic;
		ssd_D :  out  STD_LOGIC_VECTOR(0 TO 6);
		ssd_U :  out  STD_LOGIC_VECTOR(0 TO 6);
		count_fim : out std_LOGIC
	);
end component;


component bin2ssd is
--  generic (ac_ccn : natural := 1); -- Anodo comum
  generic (ac_ccn : natural := 1); -- Catodo comum
  port (
    bin_in : in std_logic_vector(3 downto 0);
    ssd_out : out std_logic_vector(0 to 6)
  );
end component;

component sensor is
	generic (
		Tc : integer := 10);
	port(
		movimento,clk,rst : in std_logic;
		presenca : out std_logic
	);
end component;

component maquinaDeEstado IS
		GENERIC(TC : natural := 10);
		PORT (
			clk, rst : IN STD_LOGIC;
			s1, s2, btn1, btn2, contador_fim_VD, contador_fim_VM : IN STD_LOGIC;
			load_vd, load_vm : out std_logic;
			st_out : OUT STD_LOGIC_vector (3 downto 0);
			count_out : OUT STD_LOGIC_vector (6 downto 0);
			CVD, CVM, CAM, PVD, PVM, LUZ : OUT STD_LOGIC);
END component;

signal clk_1seg, count_fim_vm_temp, count_fim_vd_temp : std_logic;
signal load_vd_temp, load_vm_temp, s1_temp, s2_temp: std_logic;
signal ssd_D_temp, ssd_U_temp : STD_LOGIC_VECTOR(0 TO 6);
signal ssd_D_temp1, ssd_U_temp1 : STD_LOGIC_VECTOR(0 TO 6);
signal st_out_temp : std_logic_vector(3 downto 0);
signal count_out_temp : STD_LOGIC_VECTOR(6 DOWNTO 0);
begin
	count_out <= count_out_temp;
	count_fim_vd <= count_fim_vd_temp;
	count_fim_vm <= count_fim_vm_temp;
	clk_out_1s <= clk_1seg;
	U1: div_clk
	generic map(
		fclk2 => fclk2_in
	)
	port map(
		clk => clk50MHz,
		rst => rst_in,
		clk_out => clk_1seg
	);

	
	U2: display
	generic map(
		D	=> D_vm,
		U	=> U_vm,
		tipo_display => tipo_display)	
	 port map(
		clk => clk_1seg,
		rst_in => rst_in,
		enable => '1',
		load => load_vm_temp,
		rstS => '0',
		ssd_D => ssd_D_temp,
		ssd_U => ssd_U_temp,
		count_fim => count_fim_vm_temp
	);
	
	U3: display
	generic map(
		D	=> D_vd,
		U	=> U_vd,
		tipo_display => tipo_display)	
	port map(
		clk => clk_1seg,
		rst_in => rst_in,
		enable => '1',
		load => load_vd_temp,
		rstS => '0',
		ssd_D => ssd_D_temp1,
		ssd_U => ssd_U_temp1,
		count_fim => count_fim_vd_temp
	);
	
	
	
	U4:component sensor
	generic map(
		Tc => TC)
	port map(
		movimento => s1_in,
		clk => clk_1seg,
		rst => rst_in,
		presenca => s1_temp
	);

	U5:component sensor
	generic map (
		Tc => TC)
	port map(
		movimento => s2_in,
		clk => clk_1seg,
		rst => rst_in,
		presenca => s2_temp
	);	
	
	
	U6: maquinaDeEstado
		GENERIC MAP(TC => 99)
		PORT MAP(
			clk => clk_1seg,
			rst => rst_in,
			s1 => s1_temp, 
			s2 => s2_temp, 
			btn1 => not b1_in, 
			btn2 => not b2_in, 
			contador_fim_VD => count_fim_vd_temp,
			contador_fim_VM => count_fim_vm_temp,
			load_vd => load_vd_temp,
			load_vm => load_vm_temp, 
			CVD => CVD, 
			CVM => CVM, 
			CAM => CAM, 
			PVD => PVD, 
			PVM => PVM,
			st_out => st_out_temp,
			count_out => count_out_temp,
			LUZ => LUZ);
		
		ssd_D <= ssd_D_temp;
		ssd_U <= ssd_U_temp;
		ssd_Dp <= ssd_D_temp1;
		ssd_Up <= ssd_U_temp1;
		
		U7: bin2ssd
	--  generic (ac_ccn : natural := 1); -- Anodo comum
		generic map (ac_ccn => tipo_display) -- Catodo comum
		port map (
			bin_in => st_out_temp,
			ssd_out => ssd_st
		);


		
end architecture;

