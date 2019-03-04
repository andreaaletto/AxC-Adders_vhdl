library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.InexactCellType.all;

entity generic_adder_subtractor is
	generic (
			nbits		: natural := 4;
			nab			: natural := 0;
			cell_type	: Inexact_cell_type := cell_AMA1 
	);
	
    port (
			add_1 		: in   std_logic_vector (nbits-1 downto 0);
			add_2 		: in   std_logic_vector (nbits-1 downto 0);
			sub_add_n	: in   std_logic;
			sum 		: out  std_logic_vector (nbits-1 downto 0);
			carry_out	: out  std_logic;
			overflow 	: out  std_logic
    );
end generic_adder_subtractor;

architecture structural of generic_adder_subtractor is

	-- adder generico
	component generic_adder is
		generic (
				nbits		: natural := 4;
				nab			: natural := 0;
				cell_type	: Inexact_cell_type := cell_AMA1 
		);
		
		port (
				add_1		: in   std_logic_vector (nbits-1 downto 0);
				add_2		: in   std_logic_vector (nbits-1 downto 0);
				carry_in	: in   std_logic;
				carry_out	: out  std_logic;
				sum 		: out  std_logic_vector (nbits-1 downto 0)
		);
	end component;
	
	-- ##### cambiare la seguente per cambiare il sommatore usato
	for all : generic_adder use entity work.RippleCarry;

	-- segnali di uscita dall'invertitore xor
	signal xorinv_out : std_logic_vector (nbits-1 downto 0);
	
	signal carry 	: std_logic;
	signal sum_tmp	: std_logic_vector (nbits-1 downto 0);

begin

	with sub_add_n select
	xorinv_out <= add_2 when '0', (not add_2) when others;

	g_adder : generic_adder
		generic map (nbits, nab, cell_type)
		port map (add_1, xorinv_out, sub_add_n, carry, sum_tmp);
				
	sum <= sum_tmp;
	carry_out <= carry;
	overflow <= (not add_1(nbits-1) and not add_2(nbits-1) and sum_tmp(nbits-1) and not carry) or 
				(add_1(nbits-1) and add_2(nbits-1) and not sum_tmp(nbits-1) and carry);
				

end structural;

