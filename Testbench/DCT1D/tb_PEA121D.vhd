--! @file tb_PEA121D.vhd
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
 
entity tb_PEA121D is
end tb_PEA121D;

architecture behavioral of tb_PEA121D is 

component PEA121D is
	generic (
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
		cell_type16	: Inexact_cell_type := cell_AMA1; 
		nab17		: natural 			:= 0;
		cell_type17	: Inexact_cell_type := cell_AMA1;
		nab18		: natural 			:= 0;
		cell_type18	: Inexact_cell_type := cell_AMA1;
		nab19		: natural 			:= 0;
		cell_type19	: Inexact_cell_type := cell_AMA1;
		nab20		: natural 			:= 0;
		cell_type20	: Inexact_cell_type := cell_AMA1;
		nab21		: natural 			:= 0;
		cell_type21	: Inexact_cell_type := cell_AMA1;
		nab22		: natural 			:= 0;
		cell_type22	: Inexact_cell_type := cell_AMA1;
		nab23		: natural 			:= 0;
		cell_type23	: Inexact_cell_type := cell_AMA1
 
	);
	
    port (
			clk				: in   	std_logic;
			en				: in   	std_logic;
			rst_n			: in   	std_logic;

			column_in 		: in 	dct_vector;
			column_out 		: out 	dct_vector
    );
end component PEA121D;

	signal clk 			: std_logic := '0';
	signal en 			: std_logic := '1';
	signal rst_n		: std_logic := '1';

	signal column_in 	: dct_vector;
	signal column_out 	: dct_vector;

	signal finished 	: std_logic := '0';
	
begin

--	CASO DI TEST

-- input vector:
-- [33;
--  38;
--  39;
--  40;
--  43;
--  44;
--  43;
--  48]

-- transformed vector:
-- [328;
--  -40;
--  -6;
--  -2;
--  0;
--  -8;
--  2;
--  6]


	column_in(0) <= std_logic_vector(to_signed(33, 16));
	column_in(1) <= std_logic_vector(to_signed(38, 16));
	column_in(2) <= std_logic_vector(to_signed(39, 16));
	column_in(3) <= std_logic_vector(to_signed(40, 16));
	column_in(4) <= std_logic_vector(to_signed(43, 16));
	column_in(5) <= std_logic_vector(to_signed(44, 16));
	column_in(6) <= std_logic_vector(to_signed(43, 16));
	column_in(7) <= std_logic_vector(to_signed(48, 16));



	uut : PEA121D
		generic map( 
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
			nab16 		=> 0,
			nab17 		=> 0,
			nab18 		=> 0,
			nab19 		=> 0,
			nab20 		=> 0,
			nab21 		=> 0,
			nab22 		=> 0,
			nab23 		=> 0

		)
		port map (
			clk => clk,
			en => en,
			rst_n => rst_n,
			column_in => column_in,
			column_out => column_out
		);

	-- clock generator
	clk <= not clk after 5 ns when finished /= '1' else '0';
	
	-- stimulus process
	stim_proc: process
	begin		

		wait for 30 ns; -- Il componente completa dopo 3 colpi di clock
	   
		assert column_out(0) = std_logic_vector(to_signed(328, 16)) 
			report "Errore calcolo componente 0"
			severity error;
		
		assert column_out(1) = std_logic_vector(to_signed(-40, 16)) 
			report "Errore calcolo componente 1"
			severity error;
		
		assert column_out(2) = std_logic_vector(to_signed(-6, 16)) 
			report "Errore calcolo componente 2"
			severity error;
		
		assert column_out(3) = std_logic_vector(to_signed(-2, 16)) 
			report "Errore calcolo componente 3"
			severity error;
		
		assert column_out(4) = std_logic_vector(to_signed(0, 16)) 
			report "Errore calcolo componente 4"
			severity error;
		
		assert column_out(5) = std_logic_vector(to_signed(-8, 16)) 
			report "Errore calcolo componente 5"
			severity error;
		
		assert column_out(6) = std_logic_vector(to_signed(2, 16)) 
			report "Errore calcolo componente 6"
			severity error;
		
		assert column_out(7) = std_logic_vector(to_signed(6, 16)) 
			report "Errore calcolo componente 7"
			severity error;

		report "Test del componente PEA12-1D concluso." severity note;

		finished <= '1';
	wait;
	end process;

end;
