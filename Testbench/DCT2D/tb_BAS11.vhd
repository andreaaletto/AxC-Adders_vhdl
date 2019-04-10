--! @file tb_BAS11.vhd
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
 
entity tb_BAS11 is
end tb_BAS11;

architecture behavioral of tb_BAS11 is 

component BAS11 is
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
			clk		: in   std_logic;
			en		: in   std_logic;
			rst_n		: in   std_logic;

			blk_in  : in	dct_block;
			blk_out : out	dct_block
    );
end component BAS11;

	signal clk 			: std_logic := '0';
	signal en 			: std_logic := '1';
	signal rst_n		: std_logic := '1';
	signal ready 		: std_logic := '0';

	signal blk_in_0 		: dct_block;
	signal blk_expected_0 	: dct_block;
	signal blk_out_0 		: dct_block;

	signal blk_in_05 		: dct_block;
	signal blk_expected_05 	: dct_block;
	signal blk_out_05 		: dct_block;

	signal blk_in_1 		: dct_block;
	signal blk_expected_1 	: dct_block;
	signal blk_out_1 		: dct_block;

	signal blk_in_2 		: dct_block;
	signal blk_expected_2 	: dct_block;
	signal blk_out_2 		: dct_block;

	signal finished 	: std_logic := '0';
	
begin

--	CASO DI TEST a=0

	blk_in_0(0)(0) <= std_logic_vector(to_signed(124, 16));
	blk_in_0(1)(0) <= std_logic_vector(to_signed(122, 16));
	blk_in_0(2)(0) <= std_logic_vector(to_signed(121, 16));
	blk_in_0(3)(0) <= std_logic_vector(to_signed(123, 16));
	blk_in_0(4)(0) <= std_logic_vector(to_signed(124, 16));
	blk_in_0(5)(0) <= std_logic_vector(to_signed(121, 16));
	blk_in_0(6)(0) <= std_logic_vector(to_signed(126, 16));
	blk_in_0(7)(0) <= std_logic_vector(to_signed(125, 16));

	blk_in_0(0)(1) <= std_logic_vector(to_signed(121, 16));
	blk_in_0(1)(1) <= std_logic_vector(to_signed(123, 16));
	blk_in_0(2)(1) <= std_logic_vector(to_signed(123, 16));
	blk_in_0(3)(1) <= std_logic_vector(to_signed(123, 16));
	blk_in_0(4)(1) <= std_logic_vector(to_signed(122, 16));
	blk_in_0(5)(1) <= std_logic_vector(to_signed(122, 16));
	blk_in_0(6)(1) <= std_logic_vector(to_signed(125, 16));
	blk_in_0(7)(1) <= std_logic_vector(to_signed(121, 16));

	blk_in_0(0)(2) <= std_logic_vector(to_signed(118, 16));
	blk_in_0(1)(2) <= std_logic_vector(to_signed(120, 16));
	blk_in_0(2)(2) <= std_logic_vector(to_signed(121, 16));
	blk_in_0(3)(2) <= std_logic_vector(to_signed(120, 16));
	blk_in_0(4)(2) <= std_logic_vector(to_signed(125, 16));
	blk_in_0(5)(2) <= std_logic_vector(to_signed(123, 16));
	blk_in_0(6)(2) <= std_logic_vector(to_signed(123, 16));
	blk_in_0(7)(2) <= std_logic_vector(to_signed(122, 16));

	blk_in_0(0)(3) <= std_logic_vector(to_signed(117, 16));
	blk_in_0(1)(3) <= std_logic_vector(to_signed(121, 16));
	blk_in_0(2)(3) <= std_logic_vector(to_signed(122, 16));
	blk_in_0(3)(3) <= std_logic_vector(to_signed(123, 16));
	blk_in_0(4)(3) <= std_logic_vector(to_signed(119, 16));
	blk_in_0(5)(3) <= std_logic_vector(to_signed(118, 16));
	blk_in_0(6)(3) <= std_logic_vector(to_signed(121, 16));
	blk_in_0(7)(3) <= std_logic_vector(to_signed(121, 16));

	blk_in_0(0)(4) <= std_logic_vector(to_signed(120, 16));
	blk_in_0(1)(4) <= std_logic_vector(to_signed(116, 16));
	blk_in_0(2)(4) <= std_logic_vector(to_signed(121, 16));
	blk_in_0(3)(4) <= std_logic_vector(to_signed(116, 16));
	blk_in_0(4)(4) <= std_logic_vector(to_signed(120, 16));
	blk_in_0(5)(4) <= std_logic_vector(to_signed(120, 16));
	blk_in_0(6)(4) <= std_logic_vector(to_signed(120, 16));
	blk_in_0(7)(4) <= std_logic_vector(to_signed(120, 16));

	blk_in_0(0)(5) <= std_logic_vector(to_signed(123, 16));
	blk_in_0(1)(5) <= std_logic_vector(to_signed(117, 16));
	blk_in_0(2)(5) <= std_logic_vector(to_signed(122, 16));
	blk_in_0(3)(5) <= std_logic_vector(to_signed(117, 16));
	blk_in_0(4)(5) <= std_logic_vector(to_signed(116, 16));
	blk_in_0(5)(5) <= std_logic_vector(to_signed(118, 16));
	blk_in_0(6)(5) <= std_logic_vector(to_signed(116, 16));
	blk_in_0(7)(5) <= std_logic_vector(to_signed(121, 16));

	blk_in_0(0)(6) <= std_logic_vector(to_signed(120, 16));
	blk_in_0(1)(6) <= std_logic_vector(to_signed(127, 16));
	blk_in_0(2)(6) <= std_logic_vector(to_signed(125, 16));
	blk_in_0(3)(6) <= std_logic_vector(to_signed(126, 16));
	blk_in_0(4)(6) <= std_logic_vector(to_signed(118, 16));
	blk_in_0(5)(6) <= std_logic_vector(to_signed(129, 16));
	blk_in_0(6)(6) <= std_logic_vector(to_signed(116, 16));
	blk_in_0(7)(6) <= std_logic_vector(to_signed(120, 16));

	blk_in_0(0)(7) <= std_logic_vector(to_signed(126, 16));
	blk_in_0(1)(7) <= std_logic_vector(to_signed(131, 16));
	blk_in_0(2)(7) <= std_logic_vector(to_signed(133, 16));
	blk_in_0(3)(7) <= std_logic_vector(to_signed(118, 16));
	blk_in_0(4)(7) <= std_logic_vector(to_signed(116, 16));
	blk_in_0(5)(7) <= std_logic_vector(to_signed(123, 16));
	blk_in_0(6)(7) <= std_logic_vector(to_signed(122, 16));
	blk_in_0(7)(7) <= std_logic_vector(to_signed(119, 16));

	blk_expected_0(0)(0) <= std_logic_vector(to_signed(7772, 16));
	blk_expected_0(1)(0) <= std_logic_vector(to_signed(8, 16));
	blk_expected_0(2)(0) <= std_logic_vector(to_signed(0, 16));
	blk_expected_0(3)(0) <= std_logic_vector(to_signed(14, 16));
	blk_expected_0(4)(0) <= std_logic_vector(to_signed(-44, 16));
	blk_expected_0(5)(0) <= std_logic_vector(to_signed(6, 16));
	blk_expected_0(6)(0) <= std_logic_vector(to_signed(-8, 16));
	blk_expected_0(7)(0) <= std_logic_vector(to_signed(16, 16));

	blk_expected_0(0)(1) <= std_logic_vector(to_signed(-3, 16));
	blk_expected_0(1)(1) <= std_logic_vector(to_signed(-34, 16));
	blk_expected_0(2)(1) <= std_logic_vector(to_signed(0, 16));
	blk_expected_0(3)(1) <= std_logic_vector(to_signed(-5, 16));
	blk_expected_0(4)(1) <= std_logic_vector(to_signed(43, 16));
	blk_expected_0(5)(1) <= std_logic_vector(to_signed(-10, 16));
	blk_expected_0(6)(1) <= std_logic_vector(to_signed(18, 16));
	blk_expected_0(7)(1) <= std_logic_vector(to_signed(-23, 16));
	
	blk_expected_0(0)(2) <= std_logic_vector(to_signed(0, 16));
	blk_expected_0(1)(2) <= std_logic_vector(to_signed(0, 16));
	blk_expected_0(2)(2) <= std_logic_vector(to_signed(0, 16));
	blk_expected_0(3)(2) <= std_logic_vector(to_signed(0, 16));
	blk_expected_0(4)(2) <= std_logic_vector(to_signed(0, 16));
	blk_expected_0(5)(2) <= std_logic_vector(to_signed(0, 16));
	blk_expected_0(6)(2) <= std_logic_vector(to_signed(0, 16));
	blk_expected_0(7)(2) <= std_logic_vector(to_signed(0, 16));
	
	blk_expected_0(0)(3) <= std_logic_vector(to_signed(22, 16));
	blk_expected_0(1)(3) <= std_logic_vector(to_signed(-10, 16));
	blk_expected_0(2)(3) <= std_logic_vector(to_signed(0, 16));
	blk_expected_0(3)(3) <= std_logic_vector(to_signed(-6, 16));
	blk_expected_0(4)(3) <= std_logic_vector(to_signed(-6, 16));
	blk_expected_0(5)(3) <= std_logic_vector(to_signed(-6, 16));
	blk_expected_0(6)(3) <= std_logic_vector(to_signed(-2, 16));
	blk_expected_0(7)(3) <= std_logic_vector(to_signed(-6, 16));
	
	blk_expected_0(0)(4) <= std_logic_vector(to_signed(6, 16));
	blk_expected_0(1)(4) <= std_logic_vector(to_signed(-2, 16));
	blk_expected_0(2)(4) <= std_logic_vector(to_signed(0, 16));
	blk_expected_0(3)(4) <= std_logic_vector(to_signed(16, 16));
	blk_expected_0(4)(4) <= std_logic_vector(to_signed(-10, 16));
	blk_expected_0(5)(4) <= std_logic_vector(to_signed(-4, 16));
	blk_expected_0(6)(4) <= std_logic_vector(to_signed(10, 16));
	blk_expected_0(7)(4) <= std_logic_vector(to_signed(-16, 16));
	
	blk_expected_0(0)(5) <= std_logic_vector(to_signed(9, 16));  
	blk_expected_0(1)(5) <= std_logic_vector(to_signed(0, 16));
	blk_expected_0(2)(5) <= std_logic_vector(to_signed(0, 16));
	blk_expected_0(3)(5) <= std_logic_vector(to_signed(3, 16));
	blk_expected_0(4)(5) <= std_logic_vector(to_signed(-1, 16));
	blk_expected_0(5)(5) <= std_logic_vector(to_signed(8, 16));
	blk_expected_0(6)(5) <= std_logic_vector(to_signed(-8, 16));
	blk_expected_0(7)(5) <= std_logic_vector(to_signed(-7, 16));
	
	blk_expected_0(0)(6) <= std_logic_vector(to_signed(-1, 16)); 
	blk_expected_0(1)(6) <= std_logic_vector(to_signed(-8, 16));
	blk_expected_0(2)(6) <= std_logic_vector(to_signed(0, 16));
	blk_expected_0(3)(6) <= std_logic_vector(to_signed(-15, 16));
	blk_expected_0(4)(6) <= std_logic_vector(to_signed(29, 16));
	blk_expected_0(5)(6) <= std_logic_vector(to_signed(4, 16));
	blk_expected_0(6)(6) <= std_logic_vector(to_signed(-8, 16));
	blk_expected_0(7)(6) <= std_logic_vector(to_signed(5, 16));
	
	blk_expected_0(0)(7) <= std_logic_vector(to_signed(-39, 16));
	blk_expected_0(1)(7) <= std_logic_vector(to_signed(-13, 16));
	blk_expected_0(2)(7) <= std_logic_vector(to_signed(0, 16));
	blk_expected_0(3)(7) <= std_logic_vector(to_signed(5, 16));
	blk_expected_0(4)(7) <= std_logic_vector(to_signed(21, 16));
	blk_expected_0(5)(7) <= std_logic_vector(to_signed(-13, 16));
	blk_expected_0(6)(7) <= std_logic_vector(to_signed(9, 16));
	blk_expected_0(7)(7) <= std_logic_vector(to_signed(0, 16));


	-- unit under test
	uut0 : BAS11
		generic map( 
			a_param 	=> "000",
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
			blk_in => blk_in_0,
			blk_out => blk_out_0
		);

	-- clock generator
	clk <= not clk after 5 ns when finished /= '1' else '0';
	
	-- stimulus process
	stim_proc: process
		variable expected : integer := 0; 
		variable result : integer := 0; 
	begin		

		wait for 60 ns; -- Il componente completa dopo 6 colpi di clock

		for i in 0 to 7 loop
			for j in 0 to 7 loop
				
				expected := to_integer(signed(blk_expected_0(i)(j)));
				result := to_integer(signed(blk_out_0(i)(j)));

				assert blk_out_0(i)(j) = blk_expected_0(i)(j)
				report "Errore calcolo componente (" & integer'image(i) & "," & integer'image(j) & "). Expected=" & integer'image(expected) & "; Result=" & integer'image(result)
				severity error;
			
			end loop;
		end loop;

		report "Test del componente BAS11-2D concluso." severity note;

		finished <= '1';
	wait;
	end process;  

	

end;
