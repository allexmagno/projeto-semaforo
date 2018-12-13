----------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
----------------------------------------------------------
ENTITY maquinaDeEstado IS
		PORT (
			clk, rst : IN STD_LOGIC;
			s1, s2, btn1, btn2, contador : IN STD_LOGIC;
			flag_vm, flag_vd, rst_dip_vd, rst_dip_vm : out std_logic := '0';
			CVD, CVM, CAM, PVD, PVM : OUT STD_LOGIC);
END maquinaDeEstado;
		----------------------------------------------------------
		ARCHITECTURE fsm OF maquinaDeEstado IS 
			TYPE state IS (st0, st1, st2, st3, st4, wait1);
			SIGNAL pr_state, nx_state : state;
			ATTRIBUTE enum_encoding : STRING; --optional attribute
			ATTRIBUTE enum_encoding OF state : TYPE IS "onehot";
			SIGNAL timer : INTEGER RANGE 0 TO TC;
			--signal flag, flag_vm : std_logic := '0';
		BEGIN
	------Logica Sequencial do semaforo:------------
	PROCESS (clk, rst)
	VARIABLE count : INTEGER RANGE 0 TO 3;
			BEGIN
			IF (rst = '1') THEN
				pr_state <= st0;
				count := 0;
			ELSIF (clk'EVENT AND clk = '1' and flag = '1') THEN
				count := count + 1;
				IF (count >= timer) THEN
					pr_state <= nx_state;
					count := 0;
					flag <= '0';
				END IF;
			END IF;
			END PROCESS;
	------Logica Combinacional------------
	PROCESS (pr_state, controle, sensor)
	BEGIN
	CVM <= '0';
	CAM <= '0';
	CVD <= '1';
	PVD <= '0';
	PVM <= '1';
		CASE pr_state IS
			WHEN st0 =>
				IF (btn1 = '0' or btn2 = '0') THEN
					nx_state <= wait1;
				ELSE
					nx_state <= st0;
				END IF;
				
			WHEN st1 =>
			-- contador = '1' indica que a contagem chegou a 0
				CAM <= '1';
				timer <= '2';
				flag <= '1';
				nx_state <= st3;
				
			WHEN st2 =>
				timer <= TC;
				nx_state <= st1;
				flag <= '1';				
				
			WHEN st3 =>
				flag_vm <= '1';
				CVM <= '1';
				PVD <= '1';
				IF (contador = '1') THEN
					rst_dip_vm <= '0';
					nx_state <= wait2;
				ELSE
					nx_state <= st3;
				END IF;
				
			WHEN st4 =>
				flag_vd <= '1';
				CVD <= '1';
				PVM <= '1';
				
				IF(btn1 = '0' or btn2 = '0') then
					if (s1 = 0 and s2 = 0) THEN
						rst_dip_vd <= '0';
						nx_state <= st1;
					elsif(contador = '1') then
						rst_dip_vd <= '0';
						nx_state <= wait3;
					end if;
					
				ELSIF (contador = '1' and btn1 = '0' and btn2 = '0') then
					nx_state <= st0;				
				ELSE
					nx_state <= st4;
				END IF;
				
				
			WHEN wait1 =>
				IF(btn = '1') THEN
					if(s1 = 0 and s2 = 0) then
						nx_state <= st1;	
					else
						nx_state <= st2;
					end if;
				ELSE
					nx_state <= wait1;
				END IF;
				
			WHEN wait2 =>
				IF (contador = '0') THEN
					nx_state <= st4;
				ELSE
					nx_state <= wait2;
				END IF;
				
			WHEN wait3 =>
				IF(contador = '0') THEN
					nx_state <= st1;
				ELSE
					nx_state <= wait3;
				END IF;
				
		END CASE;
	END PROCESS;
END architecture;