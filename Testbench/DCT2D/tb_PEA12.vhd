--! @file tb_PEA12.vhd
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
 
entity tb_PEA12 is
end tb_PEA12;

architecture behavioral of tb_PEA12 is 

component PEA12 is
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
			clk		: in   std_logic;
			en		: in   std_logic;
			rst_n		: in   std_logic;

			blk_in  : in	dct_block;
			blk_out : out	dct_block
    );
end component PEA12;

	signal clk 			: std_logic := '0';
	signal en 			: std_logic := '0';
	signal rst_n		: std_logic := '1';
	signal ready 		: std_logic := '0';

	signal blk_in 		: dct_block;
	signal blk_expected : dct_block;
	signal blk_out 		: dct_block;

	signal finished 	: std_logic := '0';
	
begin

--	CASO DI TEST
--
-- input tile:
-- [129, 133, 130, 130, 125, 128, 127, 130;
--  130, 129, 132, 129, 126, 120, 125, 127;
--  126, 126, 122, 121, 123, 127, 123, 123;
--  125, 127, 125, 122, 125, 128, 122, 126;
--  122, 126, 124, 123, 121, 129, 131, 124;
--  129, 129, 129, 119, 122, 123, 133, 118;
--  126, 127, 122, 126, 127, 123, 126, 119;
--  126, 127, 130, 126, 125, 129, 123, 132]
-- 
-- transformed tile:
-- [8057, 49, 57, -2, -53, -12, -4, -11;
--  39, 14, 12, -23, 19, -17, -9, -36;
--  121, 34, -28, -97, 77, -43, 21, -36;
--  36, 39, 33, -29, -62, 71, -81, 29;
--  43, -79, -3, -8, -3, -38, 66, -39;
--  -30, 11, -27, 69, 0, -7, -51, -11;
--  8, -3, 71, 29, -54, 1, 53, 7;
--  -33, -56, -18, 43, -17, 33, -39, -26]


	blk_in(0)(0) <= std_logic_vector(to_signed(129, 16));
	blk_in(1)(0) <= std_logic_vector(to_signed(130, 16));
	blk_in(2)(0) <= std_logic_vector(to_signed(126, 16));
	blk_in(3)(0) <= std_logic_vector(to_signed(125, 16));
	blk_in(4)(0) <= std_logic_vector(to_signed(122, 16));
	blk_in(5)(0) <= std_logic_vector(to_signed(129, 16));
	blk_in(6)(0) <= std_logic_vector(to_signed(126, 16));
	blk_in(7)(0) <= std_logic_vector(to_signed(126, 16));

	blk_in(0)(1) <= std_logic_vector(to_signed(133, 16));
	blk_in(1)(1) <= std_logic_vector(to_signed(129, 16));
	blk_in(2)(1) <= std_logic_vector(to_signed(126, 16));
	blk_in(3)(1) <= std_logic_vector(to_signed(127, 16));
	blk_in(4)(1) <= std_logic_vector(to_signed(126, 16));
	blk_in(5)(1) <= std_logic_vector(to_signed(129, 16));
	blk_in(6)(1) <= std_logic_vector(to_signed(127, 16));
	blk_in(7)(1) <= std_logic_vector(to_signed(127, 16));

	blk_in(0)(2) <= std_logic_vector(to_signed(130, 16));
	blk_in(1)(2) <= std_logic_vector(to_signed(132, 16));
	blk_in(2)(2) <= std_logic_vector(to_signed(122, 16));
	blk_in(3)(2) <= std_logic_vector(to_signed(125, 16));
	blk_in(4)(2) <= std_logic_vector(to_signed(124, 16));
	blk_in(5)(2) <= std_logic_vector(to_signed(129, 16));
	blk_in(6)(2) <= std_logic_vector(to_signed(122, 16));
	blk_in(7)(2) <= std_logic_vector(to_signed(130, 16));

	blk_in(0)(3) <= std_logic_vector(to_signed(130, 16));
	blk_in(1)(3) <= std_logic_vector(to_signed(129, 16));
	blk_in(2)(3) <= std_logic_vector(to_signed(121, 16));
	blk_in(3)(3) <= std_logic_vector(to_signed(122, 16));
	blk_in(4)(3) <= std_logic_vector(to_signed(123, 16));
	blk_in(5)(3) <= std_logic_vector(to_signed(119, 16));
	blk_in(6)(3) <= std_logic_vector(to_signed(126, 16));
	blk_in(7)(3) <= std_logic_vector(to_signed(126, 16));

	blk_in(0)(4) <= std_logic_vector(to_signed(125, 16));
	blk_in(1)(4) <= std_logic_vector(to_signed(126, 16));
	blk_in(2)(4) <= std_logic_vector(to_signed(123, 16));
	blk_in(3)(4) <= std_logic_vector(to_signed(125, 16));
	blk_in(4)(4) <= std_logic_vector(to_signed(121, 16));
	blk_in(5)(4) <= std_logic_vector(to_signed(122, 16));
	blk_in(6)(4) <= std_logic_vector(to_signed(127, 16));
	blk_in(7)(4) <= std_logic_vector(to_signed(125, 16));

	blk_in(0)(5) <= std_logic_vector(to_signed(128, 16));
	blk_in(1)(5) <= std_logic_vector(to_signed(120, 16));
	blk_in(2)(5) <= std_logic_vector(to_signed(127, 16));
	blk_in(3)(5) <= std_logic_vector(to_signed(128, 16));
	blk_in(4)(5) <= std_logic_vector(to_signed(129, 16));
	blk_in(5)(5) <= std_logic_vector(to_signed(123, 16));
	blk_in(6)(5) <= std_logic_vector(to_signed(123, 16));
	blk_in(7)(5) <= std_logic_vector(to_signed(129, 16));

	blk_in(0)(6) <= std_logic_vector(to_signed(127, 16));
	blk_in(1)(6) <= std_logic_vector(to_signed(125, 16));
	blk_in(2)(6) <= std_logic_vector(to_signed(123, 16));
	blk_in(3)(6) <= std_logic_vector(to_signed(122, 16));
	blk_in(4)(6) <= std_logic_vector(to_signed(131, 16));
	blk_in(5)(6) <= std_logic_vector(to_signed(133, 16));
	blk_in(6)(6) <= std_logic_vector(to_signed(126, 16));
	blk_in(7)(6) <= std_logic_vector(to_signed(123, 16));

	blk_in(0)(7) <= std_logic_vector(to_signed(130, 16));
	blk_in(1)(7) <= std_logic_vector(to_signed(127, 16));
	blk_in(2)(7) <= std_logic_vector(to_signed(123, 16));
	blk_in(3)(7) <= std_logic_vector(to_signed(126, 16));
	blk_in(4)(7) <= std_logic_vector(to_signed(124, 16));
	blk_in(5)(7) <= std_logic_vector(to_signed(118, 16));
	blk_in(6)(7) <= std_logic_vector(to_signed(119, 16));
	blk_in(7)(7) <= std_logic_vector(to_signed(132, 16));


	-- unit under test
	uut : PEA12
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
			blk_in => blk_in,
			blk_out => blk_out
		);

	-- clock generator
	clk <= not clk after 5 ns when finished /= '1' else '0';
	
	-- stimulus process
	stim_proc: process
		variable expected : integer := 0; 
		variable result : integer := 0; 
	begin		
		en <= '1';	
		wait for 80 ns; -- Il componente completa dopo 6 colpi di clock

		for i in 0 to 7 loop
			for j in 0 to 7 loop
				
				expected := to_integer(signed(blk_expected(i)(j)));
				result := to_integer(signed(blk_out(i)(j)));

				assert blk_out(i)(j) = blk_expected(i)(j)
				report "Errore calcolo componente (" & integer'image(i) & "," & integer'image(j) & "). Expected=" & integer'image(expected) & "; Result=" & integer'image(result)
				severity error;
			
			end loop;
		end loop;

		report "Test del componente PEA12-2D concluso." severity note;

		finished <= '1';
	wait;
	end process;  

	blk_expected(0)(0) <= std_logic_vector(to_signed(8057, 16));
	blk_expected(1)(0) <= std_logic_vector(to_signed(39, 16));
	blk_expected(2)(0) <= std_logic_vector(to_signed(121, 16));
	blk_expected(3)(0) <= std_logic_vector(to_signed(36, 16));
	blk_expected(4)(0) <= std_logic_vector(to_signed(43, 16));
	blk_expected(5)(0) <= std_logic_vector(to_signed(-30, 16));
	blk_expected(6)(0) <= std_logic_vector(to_signed(8, 16));
	blk_expected(7)(0) <= std_logic_vector(to_signed(-33, 16));

	blk_expected(0)(1) <= std_logic_vector(to_signed(49, 16));
	blk_expected(1)(1) <= std_logic_vector(to_signed(14, 16));
	blk_expected(2)(1) <= std_logic_vector(to_signed(34, 16));
	blk_expected(3)(1) <= std_logic_vector(to_signed(39, 16));
	blk_expected(4)(1) <= std_logic_vector(to_signed(-79, 16));
	blk_expected(5)(1) <= std_logic_vector(to_signed(11, 16));
	blk_expected(6)(1) <= std_logic_vector(to_signed(-3, 16));
	blk_expected(7)(1) <= std_logic_vector(to_signed(-56, 16));

	blk_expected(0)(2) <= std_logic_vector(to_signed(57, 16));
	blk_expected(1)(2) <= std_logic_vector(to_signed(12, 16));
	blk_expected(2)(2) <= std_logic_vector(to_signed(-28, 16));
	blk_expected(3)(2) <= std_logic_vector(to_signed(33, 16));
	blk_expected(4)(2) <= std_logic_vector(to_signed(-3, 16));
	blk_expected(5)(2) <= std_logic_vector(to_signed(-27, 16));
	blk_expected(6)(2) <= std_logic_vector(to_signed(71, 16));
	blk_expected(7)(2) <= std_logic_vector(to_signed(-18, 16));

	blk_expected(0)(3) <= std_logic_vector(to_signed(-2, 16));
	blk_expected(1)(3) <= std_logic_vector(to_signed(-23, 16));
	blk_expected(2)(3) <= std_logic_vector(to_signed(-97, 16));
	blk_expected(3)(3) <= std_logic_vector(to_signed(-29, 16));
	blk_expected(4)(3) <= std_logic_vector(to_signed(-8, 16));
	blk_expected(5)(3) <= std_logic_vector(to_signed(69, 16));
	blk_expected(6)(3) <= std_logic_vector(to_signed(29, 16));
	blk_expected(7)(3) <= std_logic_vector(to_signed(43, 16));

	blk_expected(0)(4) <= std_logic_vector(to_signed(-53, 16));
	blk_expected(1)(4) <= std_logic_vector(to_signed(19, 16));
	blk_expected(2)(4) <= std_logic_vector(to_signed(77, 16));
	blk_expected(3)(4) <= std_logic_vector(to_signed(-62, 16));
	blk_expected(4)(4) <= std_logic_vector(to_signed(-3, 16));
	blk_expected(5)(4) <= std_logic_vector(to_signed(0, 16));
	blk_expected(6)(4) <= std_logic_vector(to_signed(-54, 16));
	blk_expected(7)(4) <= std_logic_vector(to_signed(-17, 16));

	blk_expected(0)(5) <= std_logic_vector(to_signed(-12, 16));  
	blk_expected(1)(5) <= std_logic_vector(to_signed(-17, 16));
	blk_expected(2)(5) <= std_logic_vector(to_signed(-43, 16));
	blk_expected(3)(5) <= std_logic_vector(to_signed(71, 16));
	blk_expected(4)(5) <= std_logic_vector(to_signed(-38, 16));
	blk_expected(5)(5) <= std_logic_vector(to_signed(-7, 16));
	blk_expected(6)(5) <= std_logic_vector(to_signed(1, 16));
	blk_expected(7)(5) <= std_logic_vector(to_signed(33, 16));

	blk_expected(0)(6) <= std_logic_vector(to_signed(-4, 16)); 
	blk_expected(1)(6) <= std_logic_vector(to_signed(-9, 16));
	blk_expected(2)(6) <= std_logic_vector(to_signed(21, 16));
	blk_expected(3)(6) <= std_logic_vector(to_signed(-81, 16));
	blk_expected(4)(6) <= std_logic_vector(to_signed(66, 16));
	blk_expected(5)(6) <= std_logic_vector(to_signed(-51, 16));
	blk_expected(6)(6) <= std_logic_vector(to_signed(53, 16));
	blk_expected(7)(6) <= std_logic_vector(to_signed(-39, 16));

	blk_expected(0)(7) <= std_logic_vector(to_signed(-11, 16));
	blk_expected(1)(7) <= std_logic_vector(to_signed(-36, 16));
	blk_expected(2)(7) <= std_logic_vector(to_signed(-36, 16));
	blk_expected(3)(7) <= std_logic_vector(to_signed(29, 16));
	blk_expected(4)(7) <= std_logic_vector(to_signed(-39, 16));
	blk_expected(5)(7) <= std_logic_vector(to_signed(-11, 16));
	blk_expected(6)(7) <= std_logic_vector(to_signed(7, 16));
	blk_expected(7)(7) <= std_logic_vector(to_signed(-26, 16));
	
end;
