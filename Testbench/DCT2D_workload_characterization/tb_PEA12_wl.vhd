--! @file tb_PEA12_wl.vhd
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
use std.textio.all;

library work;
use work.InexactCellType.all;
use work.ImageBlockType.all;
use work.TestBenchUtils.all;
 
entity tb_PEA12_wl is
end tb_PEA12_wl;

architecture behavioral of tb_PEA12_wl is 

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
	signal en 			: std_logic := '1';
	signal rst_n		: std_logic := '1';
	signal ready 		: std_logic := '0';

	signal blk_in 		: dct_block;
	signal blk_expected : dct_block;
	signal blk_out 		: dct_block;

	signal finished 	: std_logic := '0';
	
	constant bellero_conf : int_array(0 to 47) := (others => 0);

begin

	-- unit under test
	uut : PEA12
		generic map( 
			nab0  			=> bellero_conf(0),
			cell_type0  	=> Inexact_cell_type'val(bellero_conf(1)),
			nab1  			=> bellero_conf(2),
			cell_type1  	=> Inexact_cell_type'val(bellero_conf(3)),
			nab2  			=> bellero_conf(4),
			cell_type2  	=> Inexact_cell_type'val(bellero_conf(5)),
			nab3  			=> bellero_conf(6),
			cell_type3  	=> Inexact_cell_type'val(bellero_conf(7)),
			nab4  			=> bellero_conf(8),
			cell_type4  	=> Inexact_cell_type'val(bellero_conf(9)),
			nab5  			=> bellero_conf(10),
			cell_type5  	=> Inexact_cell_type'val(bellero_conf(11)),
			nab6  			=> bellero_conf(12),
			cell_type6  	=> Inexact_cell_type'val(bellero_conf(13)),
			nab7  			=> bellero_conf(14),
			cell_type7  	=> Inexact_cell_type'val(bellero_conf(15)),
			nab8  			=> bellero_conf(16),
			cell_type8  	=> Inexact_cell_type'val(bellero_conf(17)),
			nab9  			=> bellero_conf(18),
			cell_type9  	=> Inexact_cell_type'val(bellero_conf(19)),
			nab10 			=> bellero_conf(20),
			cell_type10 	=> Inexact_cell_type'val(bellero_conf(21)),
			nab11 			=> bellero_conf(22),
			cell_type11 	=> Inexact_cell_type'val(bellero_conf(23)),
			nab12 			=> bellero_conf(24),
			cell_type12 	=> Inexact_cell_type'val(bellero_conf(25)),
			nab13 			=> bellero_conf(26),
			cell_type13 	=> Inexact_cell_type'val(bellero_conf(27)),
			nab14 			=> bellero_conf(28),
			cell_type14 	=> Inexact_cell_type'val(bellero_conf(29)),
			nab15 			=> bellero_conf(30),
			cell_type15 	=> Inexact_cell_type'val(bellero_conf(31)),
			nab16 			=> bellero_conf(32),
			cell_type16 	=> Inexact_cell_type'val(bellero_conf(33)),
			nab17 			=> bellero_conf(34),
			cell_type17 	=> Inexact_cell_type'val(bellero_conf(35)),
			nab18 			=> bellero_conf(36),
			cell_type18 	=> Inexact_cell_type'val(bellero_conf(37)),
			nab19 			=> bellero_conf(38),
			cell_type19 	=> Inexact_cell_type'val(bellero_conf(39)),
			nab20 			=> bellero_conf(40),
			cell_type20 	=> Inexact_cell_type'val(bellero_conf(41)),
			nab21 			=> bellero_conf(42),
			cell_type21 	=> Inexact_cell_type'val(bellero_conf(43)),
			nab22 			=> bellero_conf(44),
			cell_type22 	=> Inexact_cell_type'val(bellero_conf(45)),
			nab23 			=> bellero_conf(46),
			cell_type23 	=> Inexact_cell_type'val(bellero_conf(47))
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
		file file_handler     			: text open read_mode is "../Testbench/DCT2D_workload_characterization/lena.txt";
		variable row                    : line;
		variable val            		: integer;
		variable v_data_row_counter     : integer := 0;
		variable length					: integer := 0;
	begin		

		wait for 80 ns; -- Il componente completa dopo 6 colpi di clock

		if(not endfile(file_handler)) then
			v_data_row_counter := v_data_row_counter + 1;
			readline(file_handler,row);
		else 
			report "Cannot read file length" severity error;
		end if;

		read(row,length);

		for l in 0 to length-1 loop
			--	Source block assignament
			for i in 0 to 7 loop
				v_data_row_counter := v_data_row_counter + 1;
				readline(file_handler,row);

				for j in 0 to 7 loop
					read(row,val);
					-- report "Assigning " & integer'image(val) & " to stim_block at pos (" & integer'image(i) & "," & integer'image(j) & ")" severity note;
					blk_in(i)(j) <= std_logic_vector(to_signed(val, 16));
				end loop;
			end loop;

			en <= '1';
			wait for 80 ns;
			en <= '0';

		end loop;

		report "Test del PEA12-WL concluso." severity note;

		finished <= '1';
	wait;
	end process; 
	
end;
