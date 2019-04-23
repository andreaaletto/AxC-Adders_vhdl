--! @file tb_BAS08_wl.vhd
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
 
entity tb_BAS08_wl is
end tb_BAS08_wl;

architecture behavioral of tb_BAS08_wl is 

component BAS08Wrapper is
	generic (
			nab0		: natural 			:= 0;
			nab1		: natural 			:= 0;
			nab2		: natural 			:= 0;
			nab3		: natural 			:= 0;
			nab4		: natural 			:= 0;
			nab5		: natural 			:= 0;
			nab6		: natural 			:= 0;
			nab7		: natural 			:= 0;
			nab8		: natural 			:= 0;
			nab9		: natural 			:= 0;
			nab10		: natural 			:= 0;
			nab11		: natural 			:= 0;
			nab12		: natural 			:= 0;
			nab13		: natural 			:= 0;
			nab14		: natural 			:= 0;
			nab15		: natural 			:= 0;
			nab16		: natural 			:= 0;
			nab17		: natural 			:= 0;
			nab18		: natural 			:= 0;
			nab19		: natural 			:= 0;
			cell0		: natural 			:= 0;
			cell1		: natural 			:= 0;
			cell2		: natural 			:= 0;
			cell3		: natural 			:= 0;
			cell4		: natural 			:= 0;
			cell5		: natural 			:= 0;
			cell6		: natural 			:= 0;
			cell7		: natural 			:= 0;
			cell8		: natural 			:= 0;
			cell9		: natural 			:= 0;
			cell10		: natural 			:= 0;
			cell11		: natural 			:= 0;
			cell12		: natural 			:= 0;
			cell13		: natural 			:= 0;
			cell14		: natural 			:= 0;
			cell15		: natural 			:= 0;
			cell16		: natural 			:= 0;
			cell17		: natural 			:= 0;
			cell18		: natural 			:= 0;
			cell19		: natural 			:= 0
			
		);
	port (
				clk		: in   std_logic;
				en		: in   std_logic;
				rst_n		: in   std_logic;
	
				x00 : in std_logic_vector( 15 downto 0);
				x01 : in std_logic_vector( 15 downto 0);
				x02 : in std_logic_vector( 15 downto 0);
				x03 : in std_logic_vector( 15 downto 0);
				x04 : in std_logic_vector( 15 downto 0);
				x05 : in std_logic_vector( 15 downto 0);
				x06 : in std_logic_vector( 15 downto 0);
				x07 : in std_logic_vector( 15 downto 0);
				x10 : in std_logic_vector( 15 downto 0);
				x11 : in std_logic_vector( 15 downto 0);
				x12 : in std_logic_vector( 15 downto 0);
				x13 : in std_logic_vector( 15 downto 0);
				x14 : in std_logic_vector( 15 downto 0);
				x15 : in std_logic_vector( 15 downto 0);
				x16 : in std_logic_vector( 15 downto 0);
				x17 : in std_logic_vector( 15 downto 0);
				x20 : in std_logic_vector( 15 downto 0);
				x21 : in std_logic_vector( 15 downto 0);
				x22 : in std_logic_vector( 15 downto 0);
				x23 : in std_logic_vector( 15 downto 0);
				x24 : in std_logic_vector( 15 downto 0);
				x25 : in std_logic_vector( 15 downto 0);
				x26 : in std_logic_vector( 15 downto 0);
				x27 : in std_logic_vector( 15 downto 0);
				x30 : in std_logic_vector( 15 downto 0);
				x31 : in std_logic_vector( 15 downto 0);
				x32 : in std_logic_vector( 15 downto 0);
				x33 : in std_logic_vector( 15 downto 0);
				x34 : in std_logic_vector( 15 downto 0);
				x35 : in std_logic_vector( 15 downto 0);
				x36 : in std_logic_vector( 15 downto 0);
				x37 : in std_logic_vector( 15 downto 0);
				x40 : in std_logic_vector( 15 downto 0);
				x41 : in std_logic_vector( 15 downto 0);
				x42 : in std_logic_vector( 15 downto 0);
				x43 : in std_logic_vector( 15 downto 0);
				x44 : in std_logic_vector( 15 downto 0);
				x45 : in std_logic_vector( 15 downto 0);
				x46 : in std_logic_vector( 15 downto 0);
				x47 : in std_logic_vector( 15 downto 0);
				x50 : in std_logic_vector( 15 downto 0);
				x51 : in std_logic_vector( 15 downto 0);
				x52 : in std_logic_vector( 15 downto 0);
				x53 : in std_logic_vector( 15 downto 0);
				x54 : in std_logic_vector( 15 downto 0);
				x55 : in std_logic_vector( 15 downto 0);
				x56 : in std_logic_vector( 15 downto 0);
				x57 : in std_logic_vector( 15 downto 0);
				x60 : in std_logic_vector( 15 downto 0);
				x61 : in std_logic_vector( 15 downto 0);
				x62 : in std_logic_vector( 15 downto 0);
				x63 : in std_logic_vector( 15 downto 0);
				x64 : in std_logic_vector( 15 downto 0);
				x65 : in std_logic_vector( 15 downto 0);
				x66 : in std_logic_vector( 15 downto 0);
				x67 : in std_logic_vector( 15 downto 0);
				x70 : in std_logic_vector( 15 downto 0);
				x71 : in std_logic_vector( 15 downto 0);
				x72 : in std_logic_vector( 15 downto 0);
				x73 : in std_logic_vector( 15 downto 0);
				x74 : in std_logic_vector( 15 downto 0);
				x75 : in std_logic_vector( 15 downto 0);
				x76 : in std_logic_vector( 15 downto 0);
				x77 : in std_logic_vector( 15 downto 0);
				y00 : out std_logic_vector( 15 downto 0);
				y01 : out std_logic_vector( 15 downto 0);
				y02 : out std_logic_vector( 15 downto 0);
				y03 : out std_logic_vector( 15 downto 0);
				y04 : out std_logic_vector( 15 downto 0);
				y05 : out std_logic_vector( 15 downto 0);
				y06 : out std_logic_vector( 15 downto 0);
				y07 : out std_logic_vector( 15 downto 0);
				y10 : out std_logic_vector( 15 downto 0);
				y11 : out std_logic_vector( 15 downto 0);
				y12 : out std_logic_vector( 15 downto 0);
				y13 : out std_logic_vector( 15 downto 0);
				y14 : out std_logic_vector( 15 downto 0);
				y15 : out std_logic_vector( 15 downto 0);
				y16 : out std_logic_vector( 15 downto 0);
				y17 : out std_logic_vector( 15 downto 0);
				y20 : out std_logic_vector( 15 downto 0);
				y21 : out std_logic_vector( 15 downto 0);
				y22 : out std_logic_vector( 15 downto 0);
				y23 : out std_logic_vector( 15 downto 0);
				y24 : out std_logic_vector( 15 downto 0);
				y25 : out std_logic_vector( 15 downto 0);
				y26 : out std_logic_vector( 15 downto 0);
				y27 : out std_logic_vector( 15 downto 0);
				y30 : out std_logic_vector( 15 downto 0);
				y31 : out std_logic_vector( 15 downto 0);
				y32 : out std_logic_vector( 15 downto 0);
				y33 : out std_logic_vector( 15 downto 0);
				y34 : out std_logic_vector( 15 downto 0);
				y35 : out std_logic_vector( 15 downto 0);
				y36 : out std_logic_vector( 15 downto 0);
				y37 : out std_logic_vector( 15 downto 0);
				y40 : out std_logic_vector( 15 downto 0);
				y41 : out std_logic_vector( 15 downto 0);
				y42 : out std_logic_vector( 15 downto 0);
				y43 : out std_logic_vector( 15 downto 0);
				y44 : out std_logic_vector( 15 downto 0);
				y45 : out std_logic_vector( 15 downto 0);
				y46 : out std_logic_vector( 15 downto 0);
				y47 : out std_logic_vector( 15 downto 0);
				y50 : out std_logic_vector( 15 downto 0);
				y51 : out std_logic_vector( 15 downto 0);
				y52 : out std_logic_vector( 15 downto 0);
				y53 : out std_logic_vector( 15 downto 0);
				y54 : out std_logic_vector( 15 downto 0);
				y55 : out std_logic_vector( 15 downto 0);
				y56 : out std_logic_vector( 15 downto 0);
				y57 : out std_logic_vector( 15 downto 0);
				y60 : out std_logic_vector( 15 downto 0);
				y61 : out std_logic_vector( 15 downto 0);
				y62 : out std_logic_vector( 15 downto 0);
				y63 : out std_logic_vector( 15 downto 0);
				y64 : out std_logic_vector( 15 downto 0);
				y65 : out std_logic_vector( 15 downto 0);
				y66 : out std_logic_vector( 15 downto 0);
				y67 : out std_logic_vector( 15 downto 0);
				y70 : out std_logic_vector( 15 downto 0);
				y71 : out std_logic_vector( 15 downto 0);
				y72 : out std_logic_vector( 15 downto 0);
				y73 : out std_logic_vector( 15 downto 0);
				y74 : out std_logic_vector( 15 downto 0);
				y75 : out std_logic_vector( 15 downto 0);
				y76 : out std_logic_vector( 15 downto 0);
				y77 : out std_logic_vector( 15 downto 0)
	);
	end component BAS08Wrapper;

signal clk 			: std_logic := '0';
signal en 			: std_logic := '1';
signal rst_n		: std_logic := '1';
signal ready 		: std_logic := '0';

signal x00 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x01 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x02 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x03 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x04 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x05 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x06 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x07 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x10 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x11 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x12 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x13 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x14 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x15 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x16 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x17 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x20 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x21 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x22 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x23 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x24 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x25 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x26 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x27 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x30 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x31 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x32 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x33 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x34 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x35 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x36 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x37 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x40 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x41 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x42 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x43 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x44 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x45 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x46 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x47 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x50 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x51 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x52 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x53 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x54 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x55 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x56 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x57 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x60 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x61 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x62 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x63 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x64 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x65 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x66 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x67 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x70 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x71 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x72 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x73 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x74 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x75 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x76 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal x77 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y00 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y01 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y02 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y03 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y04 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y05 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y06 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y07 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y10 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y11 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y12 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y13 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y14 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y15 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y16 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y17 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y20 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y21 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y22 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y23 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y24 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y25 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y26 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y27 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y30 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y31 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y32 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y33 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y34 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y35 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y36 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y37 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y40 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y41 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y42 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y43 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y44 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y45 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y46 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y47 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y50 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y51 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y52 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y53 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y54 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y55 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y56 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y57 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y60 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y61 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y62 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y63 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y64 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y65 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y66 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y67 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y70 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y71 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y72 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y73 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y74 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y75 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y76 : std_logic_vector( 15 downto 0) := "0000000000000000";
signal y77 : std_logic_vector( 15 downto 0) := "0000000000000000";

signal finished 	: std_logic := '0';

constant bellero_conf : int_array(0 to 39) := (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
	
begin

	-- unit under test
	uut : BAS08Wrapper
		generic map( 
			nab0  			=> bellero_conf(0),
			cell0  			=> bellero_conf(1),
			nab1  			=> bellero_conf(2),
			cell1  			=> bellero_conf(3),
			nab2  			=> bellero_conf(4),
			cell2  			=> bellero_conf(5),
			nab3  			=> bellero_conf(6),
			cell3  			=> bellero_conf(7),
			nab4  			=> bellero_conf(8),
			cell4  			=> bellero_conf(9),
			nab5  			=> bellero_conf(10),
			cell5  			=> bellero_conf(11),
			nab6  			=> bellero_conf(12),
			cell6  			=> bellero_conf(13),
			nab7  			=> bellero_conf(14),
			cell7  			=> bellero_conf(15),
			nab8  			=> bellero_conf(16),
			cell8  			=> bellero_conf(17),
			nab9  			=> bellero_conf(18),
			cell9  			=> bellero_conf(19),
			nab10 			=> bellero_conf(20),
			cell10 			=> bellero_conf(21),
			nab11 			=> bellero_conf(22),
			cell11 			=> bellero_conf(23),
			nab12 			=> bellero_conf(24),
			cell12 			=> bellero_conf(25),
			nab13 			=> bellero_conf(26),
			cell13 			=> bellero_conf(27),
			nab14 			=> bellero_conf(28),
			cell14 			=> bellero_conf(29),
			nab15 			=> bellero_conf(30),
			cell15 			=> bellero_conf(31),
			nab16 			=> bellero_conf(32),
			cell16 			=> bellero_conf(33),
			nab17 			=> bellero_conf(34),
			cell17 			=> bellero_conf(35),
			nab18 			=> bellero_conf(36),
			cell18 			=> bellero_conf(37),
			nab19 			=> bellero_conf(38),
			cell19 			=> bellero_conf(39)
			
		)
		port map (
			clk => clk,
			en => en,
			rst_n => rst_n,
			x00 => x00,
			x01 => x01,
			x02 => x02,
			x03 => x03,
			x04 => x04,
			x05 => x05,
			x06 => x06,
			x07 => x07,
			x10 => x10,
			x11 => x11,
			x12 => x12,
			x13 => x13,
			x14 => x14,
			x15 => x15,
			x16 => x16,
			x17 => x17,
			x20 => x20,
			x21 => x21,
			x22 => x22,
			x23 => x23,
			x24 => x24,
			x25 => x25,
			x26 => x26,
			x27 => x27,
			x30 => x30,
			x31 => x31,
			x32 => x32,
			x33 => x33,
			x34 => x34,
			x35 => x35,
			x36 => x36,
			x37 => x37,
			x40 => x40,
			x41 => x41,
			x42 => x42,
			x43 => x43,
			x44 => x44,
			x45 => x45,
			x46 => x46,
			x47 => x47,
			x50 => x50,
			x51 => x51,
			x52 => x52,
			x53 => x53,
			x54 => x54,
			x55 => x55,
			x56 => x56,
			x57 => x57,
			x60 => x60,
			x61 => x61,
			x62 => x62,
			x63 => x63,
			x64 => x64,
			x65 => x65,
			x66 => x66,
			x67 => x67,
			x70 => x70,
			x71 => x71,
			x72 => x72,
			x73 => x73,
			x74 => x74,
			x75 => x75,
			x76 => x76,
			x77 => x77,
			y00 => y00,
			y01 => y01,
			y02 => y02,
			y03 => y03,
			y04 => y04,
			y05 => y05,
			y06 => y06,
			y07 => y07,
			y10 => y10,
			y11 => y11,
			y12 => y12,
			y13 => y13,
			y14 => y14,
			y15 => y15,
			y16 => y16,
			y17 => y17,
			y20 => y20,
			y21 => y21,
			y22 => y22,
			y23 => y23,
			y24 => y24,
			y25 => y25,
			y26 => y26,
			y27 => y27,
			y30 => y30,
			y31 => y31,
			y32 => y32,
			y33 => y33,
			y34 => y34,
			y35 => y35,
			y36 => y36,
			y37 => y37,
			y40 => y40,
			y41 => y41,
			y42 => y42,
			y43 => y43,
			y44 => y44,
			y45 => y45,
			y46 => y46,
			y47 => y47,
			y50 => y50,
			y51 => y51,
			y52 => y52,
			y53 => y53,
			y54 => y54,
			y55 => y55,
			y56 => y56,
			y57 => y57,
			y60 => y60,
			y61 => y61,
			y62 => y62,
			y63 => y63,
			y64 => y64,
			y65 => y65,
			y66 => y66,
			y67 => y67,
			y70 => y70,
			y71 => y71,
			y72 => y72,
			y73 => y73,
			y74 => y74,
			y75 => y75,
			y76 => y76,
			y77 => y77
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

		wait for 60 ns; -- Il componente completa dopo 6 colpi di clock

		if(not endfile(file_handler)) then
			v_data_row_counter := v_data_row_counter + 1;
			readline(file_handler,row);
		else 
			report "Cannot read file length" severity error;
		end if;

		read(row,length);
		report "read file length...ok" severity note;

		for l in 0 to length-1 loop
			--	Source block assignament
			v_data_row_counter := v_data_row_counter + 1;
			readline(file_handler,row); --now in "row" there is the 1st block line

			read(row,val); -- value read and assignament
			x00 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x01 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x02 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x03 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x04 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x05 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x06 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x07 <= std_logic_vector(to_signed(val, 16));

			v_data_row_counter := v_data_row_counter + 1;
			readline(file_handler,row); --now in "row" there is the 2nd block line
			read(row,val); -- value read and assignament
			x10 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x11 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x12 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x13 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x14 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x15 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x16 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x17 <= std_logic_vector(to_signed(val, 16));

			v_data_row_counter := v_data_row_counter + 1;
			readline(file_handler,row); --now in "row" there is the 3rd block line
			read(row,val); -- value read and assignament
			x20 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x21 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x22 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x23 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x24 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x25 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x26 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x27 <= std_logic_vector(to_signed(val, 16));

			v_data_row_counter := v_data_row_counter + 1;
			readline(file_handler,row); --now in "row" there is the 4th block line
			read(row,val); -- value read and assignament
			x30 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x31 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x32 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x33 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x34 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x35 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x36 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x37 <= std_logic_vector(to_signed(val, 16));

			v_data_row_counter := v_data_row_counter + 1;
			readline(file_handler,row); --now in "row" there is the 5th block line
			read(row,val); -- value read and assignament
			x40 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x41 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x42 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x43 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x44 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x45 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x46 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x47 <= std_logic_vector(to_signed(val, 16));

			v_data_row_counter := v_data_row_counter + 1;
			readline(file_handler,row); --now in "row" there is the 6th block line
			read(row,val); -- value read and assignament
			x50 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x51 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x52 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x53 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x54 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x55 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x56 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x57 <= std_logic_vector(to_signed(val, 16));

			v_data_row_counter := v_data_row_counter + 1;
			readline(file_handler,row); --now in "row" there is the 7th block line
			read(row,val); -- value read and assignament
			x60 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x61 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x62 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x63 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x64 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x65 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x66 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x67 <= std_logic_vector(to_signed(val, 16));

			v_data_row_counter := v_data_row_counter + 1;
			readline(file_handler,row); --now in "row" there is the 8th block line
			read(row,val); -- value read and assignament
			x70 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x71 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x72 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x73 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x74 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x75 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x76 <= std_logic_vector(to_signed(val, 16));
			read(row,val); -- value read and assignament
			x77 <= std_logic_vector(to_signed(val, 16));

			en <= '1';
			wait for 60 ns;
			en <= '0';

		end loop;


		report "Test del BAS08-WL concluso." severity note;

		finished <= '1';
	wait;
	end process; 
	           
end;









