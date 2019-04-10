--! @file tb_BAS111D.vhd
--!
--! @author	Andrea Aletto <andrea.aletto8@gmail.com>
--! 
--! @copyright
--! Copyright 2017-2019	Andrea Aletto <andrea.aletto8@gmail.com>
--! 
--! This file is part of AxC-Adders_vhdl
--! 
--! AxC-Adders_vhdl is free software; you can redistribute it and/or modify it under
--! the terms of the GNU General Public License as published by the Free
--! Software Foundation; either version 3 of the License, or any later version.
--! 
--! AxC-Adders_vhdl is distributed in the hope that it will be useful, but WITHOUT
--! ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
--! FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
--! more details.
--! 
--! You should have received a copy of the GNU General Public License along with
--! RMEncoder; if not, write to the Free Software Foundation, Inc., 51 Franklin
--! Street, Fifth Floor, Boston, MA 02110-1301, USA.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.InexactCellType.all;
use work.ImageBlockType.all;
 
entity tb_BAS111D is
end tb_BAS111D;

architecture behavioral of tb_BAS111D is 

component BAS111D is
	generic (
		a_param		: std_logic_vector(2 downto 0) 	:= "000"; --intended as fixed point (2,1)
		nab0		: natural 			:= 0;
		cell_type0	: Inexact_cell_type := cell_AMA1; 
		nab1		: natural 			:= 0;
		cell_type1	: Inexact_cell_type := cell_AMA1; 
		nab2		: natural 			:= 0;
		cell_type2	: Inexact_cell_type := cell_AMA1; 
		nab3		: natural 			:= 0;
		cell_type3	: Inexact_cell_type := cell_AMA1; 
		nab4		: natural 			:= 0;
		cell_type4	: Inexact_cell_type := cell_AMA1; 
		nab5		: natural 			:= 0;
		cell_type5	: Inexact_cell_type := cell_AMA1; 
		nab6		: natural 			:= 0;
		cell_type6	: Inexact_cell_type := cell_AMA1; 
		nab7		: natural 			:= 0;
		cell_type7	: Inexact_cell_type := cell_AMA1; 
		nab8		: natural 			:= 0;
		cell_type8	: Inexact_cell_type := cell_AMA1; 
		nab9		: natural 			:= 0;
		cell_type9	: Inexact_cell_type := cell_AMA1; 
		nab10		: natural 			:= 0;
		cell_type10	: Inexact_cell_type := cell_AMA1; 
		nab11		: natural 			:= 0;
		cell_type11	: Inexact_cell_type := cell_AMA1; 
		nab12		: natural 			:= 0;
		cell_type12	: Inexact_cell_type := cell_AMA1; 
		nab13		: natural 			:= 0;
		cell_type13	: Inexact_cell_type := cell_AMA1; 
		nab14		: natural 			:= 0;
		cell_type14	: Inexact_cell_type := cell_AMA1; 
		nab15		: natural 			:= 0;
		cell_type15	: Inexact_cell_type := cell_AMA1; 
		nab16		: natural 			:= 0;
		cell_type16	: Inexact_cell_type := cell_AMA1
 
	);
	
    port (
			clk				: in   	std_logic;
			en				: in   	std_logic;
			rst_n			: in   	std_logic;

			column_in 		: in 	dct_vector;
			column_out 		: out 	dct_vector
    );
end component BAS111D;

	signal clk 			: std_logic := '0';
	signal en 			: std_logic := '1';
	signal rst_n		: std_logic := '1';

	signal column_in_0 	: dct_vector;
	signal column_out_0 : dct_vector;
	signal column_exp_0 : dct_vector;

	signal column_in_05  : dct_vector;
	signal column_out_05 : dct_vector;
	signal column_exp_05 : dct_vector;

	signal column_in_1 	: dct_vector;
	signal column_out_1 : dct_vector;
	signal column_exp_1 : dct_vector;

	signal column_in_2 	: dct_vector;
	signal column_out_2 : dct_vector;
	signal column_exp_2 : dct_vector;

	signal finished 	: std_logic := '0';
	
begin

--	CASO DI TEST a=0

	column_in_0(0) <= std_logic_vector(to_signed(0, 16));
	column_in_0(1) <= std_logic_vector(to_signed(-13, 16));
	column_in_0(2) <= std_logic_vector(to_signed(-5, 16));
	column_in_0(3) <= std_logic_vector(to_signed(-12, 16));
	column_in_0(4) <= std_logic_vector(to_signed(1, 16));
	column_in_0(5) <= std_logic_vector(to_signed(-10, 16));
	column_in_0(6) <= std_logic_vector(to_signed(-2, 16));
	column_in_0(7) <= std_logic_vector(to_signed(2, 16));

	column_exp_0(0) <= std_logic_vector(to_signed(-39, 16));
	column_exp_0(1) <= std_logic_vector(to_signed(-13, 16));
	column_exp_0(2) <= std_logic_vector(to_signed(0, 16));
	column_exp_0(3) <= std_logic_vector(to_signed(5, 16));
	column_exp_0(4) <= std_logic_vector(to_signed(21, 16));
	column_exp_0(5) <= std_logic_vector(to_signed(-13, 16));
	column_exp_0(6) <= std_logic_vector(to_signed(9, 16));
	column_exp_0(7) <= std_logic_vector(to_signed(0, 16));

-- CASO DI TEST a=0.5

 	column_in_05(0) <= std_logic_vector(to_signed(6, 16));
	column_in_05(1) <= std_logic_vector(to_signed(-5, 16));
	column_in_05(2) <= std_logic_vector(to_signed(0, 16));
	column_in_05(3) <= std_logic_vector(to_signed(-11, 16));
	column_in_05(4) <= std_logic_vector(to_signed(1, 16));
	column_in_05(5) <= std_logic_vector(to_signed(-7, 16));
	column_in_05(6) <= std_logic_vector(to_signed(1, 16));
	column_in_05(7) <= std_logic_vector(to_signed(3, 16));

	column_exp_05(0) <= std_logic_vector(to_signed(-12, 16));
	column_exp_05(1) <= std_logic_vector(to_signed(-3, 16));
	column_exp_05(2) <= std_logic_vector(to_signed(1, 16));
	column_exp_05(3) <= std_logic_vector(to_signed(7, 16));
	column_exp_05(4) <= std_logic_vector(to_signed(10, 16));
	column_exp_05(5) <= std_logic_vector(to_signed(-12, 16));
	column_exp_05(6) <= std_logic_vector(to_signed(9, 16));
	column_exp_05(7) <= std_logic_vector(to_signed(6, 16));

-- CASO DI TEST a=1

 	column_in_1(0) <= std_logic_vector(to_signed(13, 16));
	column_in_1(1) <= std_logic_vector(to_signed(3, 16));
	column_in_1(2) <= std_logic_vector(to_signed(6, 16));
	column_in_1(3) <= std_logic_vector(to_signed(-10, 16));
	column_in_1(4) <= std_logic_vector(to_signed(2, 16));
	column_in_1(5) <= std_logic_vector(to_signed(-4, 16));
	column_in_1(6) <= std_logic_vector(to_signed(5, 16));
	column_in_1(7) <= std_logic_vector(to_signed(5, 16));

	column_exp_1(0) <= std_logic_vector(to_signed(20, 16));
	column_exp_1(1) <= std_logic_vector(to_signed(6, 16));
	column_exp_1(2) <= std_logic_vector(to_signed(6, 16));
	column_exp_1(3) <= std_logic_vector(to_signed(10, 16));
	column_exp_1(4) <= std_logic_vector(to_signed(0, 16));
	column_exp_1(5) <= std_logic_vector(to_signed(-12, 16));
	column_exp_1(6) <= std_logic_vector(to_signed(10, 16));
	column_exp_1(7) <= std_logic_vector(to_signed(20, 16));

-- CASO DI TEST a=2

 	column_in_2(0) <= std_logic_vector(to_signed(26, 16));
	column_in_2(1) <= std_logic_vector(to_signed(19, 16));
	column_in_2(2) <= std_logic_vector(to_signed(17, 16));
	column_in_2(3) <= std_logic_vector(to_signed(-8, 16));
	column_in_2(4) <= std_logic_vector(to_signed(3, 16));
	column_in_2(5) <= std_logic_vector(to_signed(2, 16));
	column_in_2(6) <= std_logic_vector(to_signed(12, 16));
	column_in_2(7) <= std_logic_vector(to_signed(8, 16));

	column_exp_2(0) <= std_logic_vector(to_signed(79, 16));
	column_exp_2(1) <= std_logic_vector(to_signed(25, 16));
	column_exp_2(2) <= std_logic_vector(to_signed(24, 16));
	column_exp_2(3) <= std_logic_vector(to_signed(15, 16));
	column_exp_2(4) <= std_logic_vector(to_signed(-21, 16));
	column_exp_2(5) <= std_logic_vector(to_signed(-11, 16));
	column_exp_2(6) <= std_logic_vector(to_signed(11, 16));
	column_exp_2(7) <= std_logic_vector(to_signed(66, 16));

	--uut

	uut_0 : BAS111D
		generic map(
			a_param		=> "000",
			nab0  		=> 0,
			nab1  		=> 0,
			nab2  		=> 0,
			nab3  		=> 0,
			nab4  		=> 0,
			nab5  		=> 0,
			nab6  		=> 0,
			nab7  		=> 0,
			nab8  		=> 0,
			nab9  		=> 0,
			nab10 		=> 0,
			nab11 		=> 0,
			nab12 		=> 0,
			nab13 		=> 0,
			nab14 		=> 0,
			nab15 		=> 0,
			nab16 		=> 0
		)
		port map (
			clk => clk,
			en => en,
			rst_n => rst_n,
			column_in => column_in_0,
			column_out => column_out_0
		);

	uut_05 : BAS111D
		generic map(
			a_param		=> "001",
			nab0  		=> 0,
			nab1  		=> 0,
			nab2  		=> 0,
			nab3  		=> 0,
			nab4  		=> 0,
			nab5  		=> 0,
			nab6  		=> 0,
			nab7  		=> 0,
			nab8  		=> 0,
			nab9  		=> 0,
			nab10 		=> 0,
			nab11 		=> 0,
			nab12 		=> 0,
			nab13 		=> 0,
			nab14 		=> 0,
			nab15 		=> 0,
			nab16 		=> 0
		)
		port map (
			clk => clk,
			en => en,
			rst_n => rst_n,
			column_in => column_in_05,
			column_out => column_out_05
		);

	uut_1 : BAS111D
		generic map(
			a_param		=> "010",
			nab0  		=> 0,
			nab1  		=> 0,
			nab2  		=> 0,
			nab3  		=> 0,
			nab4  		=> 0,
			nab5  		=> 0,
			nab6  		=> 0,
			nab7  		=> 0,
			nab8  		=> 0,
			nab9  		=> 0,
			nab10 		=> 0,
			nab11 		=> 0,
			nab12 		=> 0,
			nab13 		=> 0,
			nab14 		=> 0,
			nab15 		=> 0,
			nab16 		=> 0
		)
		port map (
			clk => clk,
			en => en,
			rst_n => rst_n,
			column_in => column_in_1,
			column_out => column_out_1
		);

	uut_2 : BAS111D
		generic map(
			a_param		=> "100",
			nab0  		=> 0,
			nab1  		=> 0,
			nab2  		=> 0,
			nab3  		=> 0,
			nab4  		=> 0,
			nab5  		=> 0,
			nab6  		=> 0,
			nab7  		=> 0,
			nab8  		=> 0,
			nab9  		=> 0,
			nab10 		=> 0,
			nab11 		=> 0,
			nab12 		=> 0,
			nab13 		=> 0,
			nab14 		=> 0,
			nab15 		=> 0,
			nab16 		=> 0
		)
		port map (
			clk => clk,
			en => en,
			rst_n => rst_n,
			column_in => column_in_2,
			column_out => column_out_2
		);



	-- clock generator
	clk <= not clk after 5 ns when finished /= '1' else '0';
	
	-- stimulus process
	stim_proc: process
		variable expected : integer := 0; 
		variable result : integer := 0; 
	begin		

		wait for 30 ns; -- Il componente completa dopo 3 colpi di clock
	   
		report "Start check a_param=0" severity note;
		for i in 0 to 7 loop
				
			expected := to_integer(signed(column_exp_0(i)));
			result := to_integer(signed(column_out_0(i)));

			assert column_out_0(i) = column_exp_0(i)
			report "Errore calcolo componente (" & integer'image(i) & "). Expected=" & integer'image(expected) & "; Result=" & integer'image(result)
			severity error;
			
		end loop;

		report "Start check a_param=0.5" severity note;
		for i in 0 to 7 loop
				
			expected := to_integer(signed(column_exp_05(i)));
			result := to_integer(signed(column_out_05(i)));

			assert column_out_05(i) = column_exp_05(i)
			report "Errore calcolo componente (" & integer'image(i) & "). Expected=" & integer'image(expected) & "; Result=" & integer'image(result)
			severity error;
			
		end loop;

		report "Start check a_param=1" severity note;
		for i in 0 to 7 loop
				
			expected := to_integer(signed(column_exp_1(i)));
			result := to_integer(signed(column_out_1(i)));

			assert column_out_1(i) = column_exp_1(i)
			report "Errore calcolo componente (" & integer'image(i) & "). Expected=" & integer'image(expected) & "; Result=" & integer'image(result)
			severity error;
			
		end loop;

		report "Start check a_param=2" severity note;
		for i in 0 to 7 loop
				
			expected := to_integer(signed(column_exp_2(i)));
			result := to_integer(signed(column_out_2(i)));

			assert column_out_2(i) = column_exp_2(i)
			report "Errore calcolo componente (" & integer'image(i) & "). Expected=" & integer'image(expected) & "; Result=" & integer'image(result)
			severity error;
			
		end loop;

		report "Test del componente BAS11-1D concluso." severity note;

		finished <= '1';
	wait;
	end process;

end;
