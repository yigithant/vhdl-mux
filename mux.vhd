library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.numeric_std.all;

entity mux is port
(
input:in std_logic_vector(7 downto 0);
sel:in std_logic_vector(2 downto 0);
o,not_o:out std_logic;
enable:in std_logic
);
end mux;

architecture karakter of mux is
begin 
process(input,sel,enable)
begin
if(enable='1') then
	case sel is
		when "000"=>o<=input(0); not_o<=not input(0);
		when "001"=>o<=input(1); not_o<=not input(1);
		when "010"=>o<=input(2); not_o<=not input(2);
		when "011"=>o<=input(3); not_o<=not input(3);
		when "100"=>o<=input(4); not_o<=not input(4);
		when "101"=>o<=input(5); not_o<=not input(5);
		when "110"=>o<=input(6); not_o<=not input(6);
		when "111"=>o<=input(7); not_o<=not input(7);
	when others=>o<='X';not_o<='X';
end case;
end if;
end process;
end karakter;

--'U': uninitialized. This signal hasn't been set yet.
--'X': unknown. Impossible to determine this value/result.
--'0': logic 0
--'1': logic 1
--'Z': High Impedance
--'W': Weak signal, can't tell if it should be 0 or 1.
--'L': Weak signal that should probably go to 0
--'H': Weak signal that should probably go to 1
--'-': Don't care.