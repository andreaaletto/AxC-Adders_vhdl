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

--! @ingroup MajorityVoter
--! @{
--! @defgroup AMA1 AMA1
--! @{
--! @brief Addizionatore AMA1 ad 1 bit
--!
--! Il componente esegue la somma di due numeri espressi in binario, con
--! lunghezza di un bit.

--! @brief Interfaccia di un sommatore ad un bit.
entity AMA2 is
    port 
    (	
		--! Primo addendo
		add_1 : in std_logic;
		--! Secondo addendo
		add_2 : in std_logic;
		--! Eventuale carry in ingresso da una precedente somma
		carry_in  : in std_logic;
		--! Carry generato per la somma successiva
		carry_out : out std_logic;
		--! Somma
		sum : out std_logic
	);
end AMA2;

--! @brief Implementazione data-flow del sommatore
architecture AMA2 of AMA2 is
	signal in_concat : std_logic_vector(2 downto 0) := add_1 & add_2 & carry_in;  
begin

	sum 			<=  (not add_1 and not add_2) or (not add_1 and not carry_in) or (not add_2 and not carry_in);
	carry_out <= not((not add_1 and not add_2) or (not add_1 and not carry_in) or (not add_2 and not carry_in));

end architecture;

--! @}
--! @}
