--! @file tb_AMA2.vhd
--!
--! @author	Salvatore Barone <salvatore.barone@unina.it>
--! 
--! @copyright
--! Copyright 2017-2019	Salvatore Barone <salvatore.barone@unina.it>
--! 
--! This file is part of ReedMuller
--! 
--! ReedMuller is free software; you can redistribute it and/or modify it under
--! the terms of the GNU General Public License as published by the Free
--! Software Foundation; either version 3 of the License, or any later version.
--! 
--! ReedMuller is distributed in the hope that it will be useful, but WITHOUT
--! ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
--! FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
--! more details.
--! 
--! You should have received a copy of the GNU General Public License along with
--! RMEncoder; if not, write to the Free Software Foundation, Inc., 51 Franklin
--! Street, Fifth Floor, Boston, MA 02110-1301, USA.

-- Changelog
-- 01-10-2018 :  Creazione e prima implementazione

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_AMA2 is
end tb_AMA2;

--! @test Testbench esaustivo per AMA2
architecture tb_AMA2 of tb_AMA2 is
	
	component AMA2 is
    port 
    (	
		add_1 		: in std_logic;
		add_2 		: in std_logic;
		carry_in  : in std_logic;
		carry_out : out std_logic;
		sum 			: out std_logic
	);
	end component;

	signal add_1 			: std_logic := '0';
	signal add_2 			: std_logic := '0';
	signal carry_in  	: std_logic := '0';
	signal carry_out 	: std_logic := '0';
	signal sum 				: std_logic := '0';
	
	
	signal add_1_in_test 	: std_logic_vector(0 to 7) 	:= b"00001111";
	signal add_2_in_test 	: std_logic_vector(0 to 7) 	:= b"00110011";
	signal carry_in_test 	: std_logic_vector(0 to 7) 	:= b"01010101";
	signal sum_out_test 	: std_logic_vector(0 to 7) 	:= b"11101000";
	signal carry_out_test : std_logic_vector(0 to 7) 	:= b"00010111";

begin

	----------------------------------------------------------------------------
	-- Istanza del componente sotto test
	uut : AMA2
    port map
    (	
		add_1 			=> add_1,
		add_2 			=> add_2,
		carry_in  	=> carry_in,
		carry_out 	=> carry_out,
		sum 				=> sum
	);
	
	----------------------------------------------------------------------------
	-- Processo di test
	stim_process : process
	begin
		for i in 0 to 7 loop
			add_1 <= add_1_in_test(i);
			add_2 <= add_2_in_test(i);
			carry_in <= carry_in_test(i);
			wait for 10 ns;
			assert(sum = sum_out_test(i) and carry_out = carry_out_test(i))
			report	"Errore i=" & integer'image(i) &
					"add_1=" & std_logic'image(add_1) &
					"add_2=" & std_logic'image(add_2) &
					"carry_in=" & std_logic'image(carry_in) &
					"carry_out=" & std_logic'image(carry_out) &
					"sum=" & std_logic'image(sum)
			severity failure;
		end loop;
		
		report "Test completato con successo" severity note;
		wait;
	end process;
	
end architecture;
