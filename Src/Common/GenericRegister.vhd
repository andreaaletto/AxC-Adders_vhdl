--! @file FullAdder.vhd
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
-- 17-04-2017: creazione del file e prima implementazione
-- 01-10-2018: Documentazione del codice e test esaustivo

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--! @ingroup MajorityVoter
--! @{
--! @defgroup FullAdder FullAdder
--! @{
--! @brief Addizionatore ad 1 bit
--!
--! Il componente esegue la somma di due numeri espressi in binario, con
--! lunghezza di un bit.

--! @brief Interfaccia di un sommatore ad un bit.
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

--! @brief 
architecture GenericRegister of GenericRegister is
begin

	process(clk, rst)
    begin
        if rst = '0' then
            data_out <= (others => '0');
        elsif rising_edge(clk) then
            if en = '1' then
                data_out <= data_in;
            end if;
        end if;
    end process;
	
end architecture;

--! @}
--! @}
