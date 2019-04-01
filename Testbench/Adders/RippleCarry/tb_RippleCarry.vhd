--! @file tb_RippleCarry.vhd
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

entity tb_RippleCarry is
end tb_RippleCarry;

--! @test Testbench esaustivo per RippleCarry su 8 bit
architecture tb_RippleCarry of tb_RippleCarry is

	component RippleCarry is
	generic
	(
		nbits : natural := 4;
		nab : natural := 0;
		cell_type : Inexact_cell_type := cell_AMA1
	);
    port 
    (
		add_1 : in std_logic_vector (nbits-1 downto 0);
		add_2 : in std_logic_vector (nbits-1 downto 0);
		carry_in : in std_logic;
		carry_out : out std_logic;
		sum : out std_logic_vector (nbits-1 downto 0)
	);
	end component;
	
	constant nbits : natural := 8;
	signal add_1 : std_logic_vector (nbits-1 downto 0) := (others => '0');
	signal add_2 : std_logic_vector (nbits-1 downto 0) := (others => '0');
	signal carry_in : std_logic := '0';
	
	signal carry_out : std_logic := '0';
	signal sum : std_logic_vector (nbits-1 downto 0)  := (others => '0');
	
begin

	----------------------------------------------------------------------------
	-- Istanza del componente sotto test
	uut : RippleCarry
	generic map
	(
		nbits => nbits
	)
    port map
    (
		add_1 => add_1,
		add_2 => add_2,
		carry_in => carry_in,
		carry_out => carry_out,
		sum => sum
	);
		
	----------------------------------------------------------------------------
	-- Processo di test
	stim_process : process
		variable sum_test : integer := 0;
		variable carry_out_test : std_logic := '0';
	begin
		------------------------------------------------------------------------
		-- Prima parte del test
		-- Carry in è nullo
		carry_in <= '0';
		for i in 0 to 2**nbits-1 loop
			for j in 0 to 2**nbits-1 loop
				add_1 <= std_logic_vector(to_unsigned(i, nbits));
				add_2 <= std_logic_vector(to_unsigned(j, nbits));
				
				sum_test := i + j;
				if sum_test > 2**nbits-1 then
					carry_out_test := '1';
				else
					carry_out_test := '0';
				end if;
					
				wait for 10 ns;
				
				assert
				(
					sum = std_logic_vector(to_unsigned(sum_test, nbits))
					and 
					carry_out = carry_out_test
				)
				report	"Errore i=" & integer'image(i) &
						" j=" & integer'image(j) &
						" carry_in=" & std_logic'image(carry_in) &
						" sum_test=" & integer'image(sum_test) &
						" carry_out_test=" & std_logic'image(carry_out_test) &
						" carry_out=" & std_logic'image(carry_out)
				severity failure;				
			end loop;
		end loop;
		
		------------------------------------------------------------------------
		-- Prima parte del test
		-- Carry in è '1'
		carry_in <= '1';
		for i in 0 to 2**nbits-1 loop
			for j in 0 to 2**nbits-1 loop
				add_1 <=  std_logic_vector(to_unsigned(i, nbits));
				add_2 <=  std_logic_vector(to_unsigned(j, nbits));
				
				sum_test := i + j + 1;
				if sum_test > 2**nbits-1 then
					carry_out_test := '1';
				else
					carry_out_test := '0';
				end if;
					
				wait for 10 ns;
				
				assert
				(
					sum = std_logic_vector(to_unsigned(sum_test, nbits))
					and 
					carry_out = carry_out_test
				)
				report	"Errore i=" & integer'image(i) &
						" j=" & integer'image(j) &
						" carry_in=" & std_logic'image(carry_in) &
						" sum_test=" & integer'image(sum_test) &
						" carry_out_test=" & std_logic'image(carry_out_test) &
						" carry_out=" & std_logic'image(carry_out)
				severity failure;				
			end loop;
		end loop;
		
		report "Test completato con successo" severity note;
		wait;
	end process;

end architecture;
