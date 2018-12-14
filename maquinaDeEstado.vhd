----------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
----------------------------------------------------------
ENTITY maquinaDeEstado IS
		GENERIC(TC : natural := 99);
		PORT (
			clk, rst : IN STD_LOGIC;
			s1, s2, btn1, btn2, contador_fim_VD, contador_fim_VM : IN STD_LOGIC;
			load_vd, load_vm : out std_logic;
			st_out : OUT STD_LOGIC_vector (3 downto 0);
			count_out : OUT STD_LOGIC_vector (6 downto 0);
			CVD, CVM, CAM, PVD, PVM, LUZ : OUT STD_LOGIC);
END maquinaDeEstado;
		----------------------------------------------------------
		ARCHITECTURE fsm OF maquinaDeEstado IS 
			TYPE state IS (st0, st1, st2, st3, st4, wait1);
			SIGNAL pr_state, nx_state : state;
			ATTRIBUTE enum_encoding : STRING; --optional attribute
			ATTRIBUTE enum_encoding OF state : TYPE IS "onehot";
			SIGNAL timer : INTEGER RANGE 0 TO TC+1;
			signal flag : std_logic := '0';
			signal botao, sensor : std_logic;
		BEGIN
		
	botao <= '1' when btn1 = '1' or btn2 = '1' else '0';
	sensor <= '1' when s1 = '1' or s2 = '1' else '0';
		
	------Logica Sequencial do semaforo:------------
	PROCESS (clk, rst)
	VARIABLE count : INTEGER RANGE 0 TO TC+1;
	variable f : std_logic;
	
	BEGIN
--		f := flag;
		IF (rst = '1') THEN
			pr_state <= st0;
			count := 0;
		ELSIF (rising_edge(clk)) THEN
--			if (f = '1') then
				count := count + 1;
				IF (count >= timer) THEN
					pr_state <= nx_state;
					count := 0;
--					f := '0';
				END IF;
--			else
--				pr_state <= nx_state;
--			end if;
		END IF;
		count_out <= std_LOGIC_vector(to_unsigned(timer - count, 7));
		case pr_state is
			when st0 =>
				st_out <= "0000";
				
			when st1 =>
				st_out <= "0001";
				
			when st2 =>
				st_out <= "0010";
				
			when st3 =>
				st_out <= "0011";
				
			when st4 =>
				st_out <= "0100";
				
			when wait1 =>
				st_out <= "0101";
		end case;
	END PROCESS;
	------Logica Combinacional------------
	-- botao do pedestre ativo em 1 
	-- sensor de carro ativo em 1
	PROCESS (pr_state, sensor, botao, contador_fim_VD, contador_fim_VM)
	BEGIN
	CVM <= '0';
	CAM <= '0';
	CVD <= '0';
	PVD <= '0';
	PVM <= '0';
	LUZ <= '1';
	timer <= 1;
	load_VD <= '0';
	load_VM <= '0';
		CASE pr_state IS
			WHEN st0 =>
				LUZ <= '0';
				--CVD <= '1';
				PVM <= '1';
				IF (botao = '1') THEN
					nx_state <= wait1;
				ELSE
					nx_state <= st0;
				END IF;
				
			WHEN wait1 =>
				CVD <= '1';
				PVM <= '1';
				IF(botao = '0' and sensor = '0') THEN
					nx_state <= st1;	
				elsif (botao = '0' and sensor = '1') then
					nx_state <= st2;
				ELSE
					nx_state <= wait1;
				END IF;
			
			WHEN st2 =>
				CVD <= '1';
				PVM <= '1';
				nx_state <= st1;
				IF(botao = '1' and sensor = '0') THEN
					timer <= 1;
				ELSE
					timer <= 99;
				END IF;

--				flag <= '1';				
				
			WHEN st1 =>
			-- contador = '1' indica que a contagem chegou a 0
				CAM <= '1';
				PVM <= '1';
				timer <= 2;
--				flag <= '1';
				load_VM <= '1';
				nx_state <= st3;

			WHEN st3 =>
				--flag_vm <= '1';  --rst_sync_contador vermelho
				CVM <= '1';
				PVD <= '1';
				IF (contador_fim_VM = '1') THEN
					--flag_vm <= '0';
					--rst_disp_vm <= '0';
					load_VD <= '1';
					nx_state <= st4;
				ELSE
					nx_state <= st3;
				END IF;
				
			WHEN st4 =>
				LUZ <= '0';
				CVD <= '1';
				PVM <= '1';
				
				IF (contador_fim_VD = '1' or sensor = '0') THEN
					nx_state <= st0;
				ELSIF (botao = '1') THEN
					nx_state <= wait1;
				ELSE
					nx_state <= st4;
				END IF;


--				if (sensor = '0') THEN
--						flag_vd <= '0';
--						rst_disp_vd <= '0';
--						nx_state <= st1;
--					elsif(contador = '1') then
--						rst_disp_vd <= '0';
--						flag_vd <= '0';
--						nx_state <= wait3;
--					end if;
					
--				ELSIF (contador = '1' and botao = '0') then
--					nx_state <= st0;				
--				ELSE
--					nx_state <= st4;
--				END IF;
				
				
--			WHEN wait2 =>
--				IF (contador = '1') THEN
--					nx_state <= st4;
--				ELSE
--					nx_state <= wait2;
--				END IF;
				
--			WHEN wait3 =>
--				IF(contador = '0') THEN
--					nx_state <= st0;
--				ELSE
--					nx_state <= wait3;
--				END IF;
				
		END CASE;
	END PROCESS;
END architecture;