library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.InexactCellType.all;
use work.ImageBlockType.all;
 
entity tb_BC121D is
end tb_BC121D;

architecture behavioral of tb_BC121D is 

component BC121D is
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
			cell_type17	: Inexact_cell_type := cell_AMA1
 
	);
	
    port (
			clk				: in   	std_logic;
			en				: in   	std_logic;

			column_in 		: in 	dct_vector;
			column_out 		: out 	dct_vector;

			ready			: out 	std_logic
    );
end component BC121D;

	signal clk 			: std_logic := '0';
	signal en 			: std_logic := '1';
	signal ready 		: std_logic := '0';

	signal column_in 	: dct_vector;
	signal column_out 	: dct_vector;

	signal finished 	: std_logic := '0';
	
begin

--	CASO DI TEST
--
--	original tile:
--	[127, 123, 125, 120, 126, 123, 127, 128;
--	 128, 126, 128, 122, 125, 125, 122, 129;
--	 128, 124, 128, 126, 127, 120, 128, 129;
--	 124, 127, 128, 129, 121, 128, 129, 128;
--	 126, 125, 128, 126, 126, 125, 127, 128;
--	 125, 127, 126, 126, 128, 128, 128, 126;
--	 127, 127, 126, 124, 120, 127, 128, 126;
--	 123, 135, 120, 128, 121, 123, 126, 126]
--
--	transformed tile:
--	[8060, -12,  33, -10, -14,  1, -21,  -7;
--	   -3,   2,   9,  -5,   9, 13,  16,  13;
--	  -24,   2,   5,   4,   6, -9, -21,   7;
--	    4,   0,  -7,  10, -14, -3,   3,   1;
--	   -8,  -8,  -7,   6, -10, -3, -17, -11;
--	    0,   2,  -1,   4, -14,  5,  -7,  -7;
--	   14,  -2, -18,  -4,  14,  8,  -8,   4;
--	   -3,   2,   0,  -3,  11,  0,   1,   8]

-- Original vector:
-- [131;
--  113;
--  116;
--  109;
--  105;
--  90;
--  95;
--  93]

-- Transf vector:
-- [852;
--  38;
--  10;
--  -26;
--  24;
--  -18;
--  -2;
--  -4]

	column_in(0) <= std_logic_vector(to_signed(131, 16));
	column_in(1) <= std_logic_vector(to_signed(113, 16));
	column_in(2) <= std_logic_vector(to_signed(116, 16));
	column_in(3) <= std_logic_vector(to_signed(109, 16));
	column_in(4) <= std_logic_vector(to_signed(105, 16));
	column_in(5) <= std_logic_vector(to_signed(90, 16));
	column_in(6) <= std_logic_vector(to_signed(95, 16));
	column_in(7) <= std_logic_vector(to_signed(93, 16));



	uut : BC121D
		generic map( 
			nab0  => 0,
			nab1  => 0,
			nab2  => 0,
			nab3  => 0,
			nab4  => 0,
			nab5  => 0,
			nab6  => 0,
			nab7  => 0,
			nab8  => 0,
			nab9  => 0,
			nab10 => 0,
			nab11 => 0,
			nab12 => 0,
			nab13 => 0,
			nab14 => 0,
			nab15 => 0,
			nab16 => 0,
			nab17 => 0
		)
		port map (
			clk => clk,
			en => en,
			column_in => column_in,
			column_out => column_out,
			ready => ready
		);

	-- clock generator
	clk <= not clk after 5 ns when finished /= '1' else '0';
	
	-- stimulus process
	stim_proc: process
	begin		

		wait for 600 ns; --FIXME: modificare questa condizione in wait for ready = 1
	   
		assert column_out(0) = std_logic_vector(to_signed(852, 16)) 
			report "Errore calcolo componente 0"
			severity error;
		
		assert column_out(1) = std_logic_vector(to_signed(38, 16)) 
			report "Errore calcolo componente 1"
			severity error;
		
		assert column_out(2) = std_logic_vector(to_signed(10, 16)) 
			report "Errore calcolo componente 2"
			severity error;
		
		assert column_out(3) = std_logic_vector(to_signed(-26, 16)) 
			report "Errore calcolo componente 3"
			severity error;
		
		assert column_out(4) = std_logic_vector(to_signed(24, 16)) 
			report "Errore calcolo componente 4"
			severity error;
		
		assert column_out(5) = std_logic_vector(to_signed(-18, 16)) 
			report "Errore calcolo componente 5"
			severity error;
		
		assert column_out(6) = std_logic_vector(to_signed(-2, 16)) 
			report "Errore calcolo componente 6"
			severity error;
		
		assert column_out(7) = std_logic_vector(to_signed(-4, 16)) 
			report "Errore calcolo componente 7"
			severity error;

		report "Test del componente BC12-1D concluso." severity note;

		finished <= '1';
	wait;
	end process;

end;
