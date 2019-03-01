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
--! @defgroup FullAdder FullAdder
--! @{
--! @brief Addizionatore ad 1 bit
--!
--! Il componente esegue la somma di due numeri espressi in binario, con
--! lunghezza di un bit.

--! @brief Interfaccia di un sommatore ad un bit.
entity FullAdder is
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
end FullAdder;

--! @brief Implementazione data-flow del sommatore
architecture FullAdder of FullAdder is
begin
	carry_out <= (add_1 and add_2) or (carry_in and (add_1 xor add_2));
	sum <= add_1 xor add_2 xor carry_in;
end architecture;

--! @}
--! @}
