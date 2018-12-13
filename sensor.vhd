library ieee;
use ieee.std_logic_1164.all;

entity sensor is

generic (

Tc : integer := 10);

port(

movimento,clk,rst : in std_logic;
presenca : out std_logic
);

end entity;

architecture arc of sensor is


begin

process (movimento,clk,rst) is

variable tempo_temp : integer range 0 to Tc;

begin

if (rst = '1') then 
	tempo_temp := 0;
	presenca <= '0';
elsif (movimento = '1') then
	tempo_temp := 0;
	presenca <= '1';
else if (rising_edge(clk)) then
tempo_temp := tempo_temp + 1;
if (tempo_temp = Tc) then
tempo_temp := 0;
presenca <= '0'; 

end if;
end if;
end if;

end process;
end architecture;