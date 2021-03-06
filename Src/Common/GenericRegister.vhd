--! @file GenericRegister.vhd
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

entity GenericRegister is
	generic(
		N : natural := 16
	); 
	port (	
		clk  : in std_logic;
		rst  : in std_logic;
		data_in : in std_logic_vector (N-1 downto 0);
		en : in std_logic;
		data_out : out std_logic_vector (N-1 downto 0)
	);
end GenericRegister;

architecture GenericRegister of GenericRegister is
    signal tmp : std_logic_vector(N-1 downto 0) := (others => '0');
begin

    data_out <= tmp;
	process(clk, rst, data_in, en)
    begin
        if rst = '0' then
            tmp <= (others => '0');
        elsif rising_edge(clk) then
            if en = '1' then
                tmp <= data_in;
            end if;
        end if;
    end process;
	
end architecture;

