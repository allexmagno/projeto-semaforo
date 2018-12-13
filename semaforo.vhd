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
				tipo_display	: natural := 1);
	port
	(
		clk50MHz :  in  STD_LOGIC;
		rst_in	:	in	std_LOGIC;
		ssd_D :  out  STD_LOGIC_VECTOR(0 TO 6);
		ssd_U :  out  STD_LOGIC_VECTOR(0 TO 6);
		CVM, CVD, CAM, PVM, PVD : out std_logic;
		contador : out std_LOGIC
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
		flag	: in std_LOGIC;
		ssd_D :  out  STD_LOGIC_VECTOR(0 TO 6);
		ssd_U :  out  STD_LOGIC_VECTOR(0 TO 6);
		contador : out std_LOGIC
	);
end component;

component maquinaDeEstado IS
		PORT (
			clk, rst : IN STD_LOGIC;
			s1, s2, btn1, btn2, contador : IN STD_LOGIC;
			flag_vm, flag_vd, rst_disp_vd, rst_disp_vm : out std_logic := '0';
			CVD, CVM, CAM, PVD, PVM : OUT STD_LOGIC);
END component;

signal clk_1seg, count_temp, flag_vm_temp, flag_vd_temp : std_logic;
signal disp_vm_temp, disp_vd_temp, rst_in_temp : std_logic;
begin

	rst_in_temp <= '0' when rst_in = '0' or disp_vd_temp = '0' or disp_vm_temp = '0'; 
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
		rst_in => rst_in_temp,
		flag => flag_vm_temp,
		ssd_D => ssd_D,
		ssd_U => ssd_U,
		contador => count_temp
	);
	
	U3: display
	generic map(
		D	=> D_vd,
		U	=> U_vd,
		tipo_display => tipo_display)	
	port map(
		clk => clk_1seg,
		rst_in => rst_in_temp,
		flag => flag_vd_temp,
		ssd_D => ssd_D,
		ssd_U => ssd_U,
		contador => count_temp
	);
	
	U4: maquinaDeEstado
		PORT MAP(
			clk => clk_1seg,
			rst => rst_in,
			s1 => s1_in,
			s2 => s2_in,
			btn1 => b1,
			btn2 => b2,
			contador => count_temp,
			flag_vm => flag_vm_temp,
			flag_vd => flag_vd_temp,
			rst_disp_vd => disp_vd_temp,
			rst_disp_vm => disp_vm_temp,
			CVD => CVD,
			CVM => CVM,
			CAM => CAM,
			PVD => PVD,
			PVM => PVM);
end architecture;

