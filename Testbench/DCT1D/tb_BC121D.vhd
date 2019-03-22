library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.InexactCellType.all;
 
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
			clk		: in   std_logic;
			en		: in   std_logic;

			x0 		: in   std_logic_vector (15 downto 0);
			x1 		: in   std_logic_vector (15 downto 0);
			x2 		: in   std_logic_vector (15 downto 0);
			x3 		: in   std_logic_vector (15 downto 0);
			x4 		: in   std_logic_vector (15 downto 0);
			x5 		: in   std_logic_vector (15 downto 0);
			x6 		: in   std_logic_vector (15 downto 0);
			x7 		: in   std_logic_vector (15 downto 0);

			y0 		: out   std_logic_vector (15 downto 0);
			y1 		: out   std_logic_vector (15 downto 0);
			y2 		: out   std_logic_vector (15 downto 0);
			y3 		: out   std_logic_vector (15 downto 0);
			y4 		: out   std_logic_vector (15 downto 0);
			y5 		: out   std_logic_vector (15 downto 0);
			y6 		: out   std_logic_vector (15 downto 0);
			y7 		: out   std_logic_vector (15 downto 0);

			ready	: out 	std_logic
    );
end component BC121D;

	signal clk : std_logic := '0';
	signal en : std_logic := '1';
	signal ready : std_logic := '0';

	signal x0 : std_logic_vector (15 downto 0);
	signal x1 : std_logic_vector (15 downto 0);
	signal x2 : std_logic_vector (15 downto 0);
	signal x3 : std_logic_vector (15 downto 0);
	signal x4 : std_logic_vector (15 downto 0);
	signal x5 : std_logic_vector (15 downto 0);
	signal x6 : std_logic_vector (15 downto 0);
	signal x7 : std_logic_vector (15 downto 0);

	signal y0 : std_logic_vector (15 downto 0);
	signal y1 : std_logic_vector (15 downto 0);
	signal y2 : std_logic_vector (15 downto 0);
	signal y3 : std_logic_vector (15 downto 0);
	signal y4 : std_logic_vector (15 downto 0);
	signal y5 : std_logic_vector (15 downto 0);
	signal y6 : std_logic_vector (15 downto 0);
	signal y7 : std_logic_vector (15 downto 0);
	
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
			x0 => x0,
			x1 => x1,
			x2 => x2,
			x3 => x3,
			x4 => x4,
			x5 => x5,
			x6 => x6,
			x7 => x7,
			y0 => y0,
			y1 => y1,
			y2 => y2,
			y3 => y3,
			y4 => y4,
			y5 => y5,
			y6 => y6,
			y7 => y7,
			ready => ready
		);

	-- clock generator
	clk <= not clk after 5 ns;
	
	-- stimulus process
	stim_proc: process
	begin		

		wait for 10 ns;	
		x0 <= std_logic_vector(to_signed(127, 16));
		x1 <= std_logic_vector(to_signed(123, 16));
		x2 <= std_logic_vector(to_signed(125, 16));
		x3 <= std_logic_vector(to_signed(120, 16));
		x4 <= std_logic_vector(to_signed(126, 16));
		x5 <= std_logic_vector(to_signed(123, 16));
		x6 <= std_logic_vector(to_signed(127, 16));
		x7 <= std_logic_vector(to_signed(128, 16));

		wait for 400 ns; --FIXME: modificare questa condizione in wait for ready = 1
		
		assert y0 = std_logic_vector(to_signed(8060, 16)) 
			report "Errore calcolo componente y0"
			severity error;
		
		assert y1 = std_logic_vector(to_signed(-3, 16)) 
			report "Errore calcolo componente y1"
			severity error;
		
		assert y2 = std_logic_vector(to_signed(-24, 16)) 
			report "Errore calcolo componente y2"
			severity error;
		
		assert y3 = std_logic_vector(to_signed(4, 16)) 
			report "Errore calcolo componente y3"
			severity error;
		
		assert y4 = std_logic_vector(to_signed(-8, 16)) 
			report "Errore calcolo componente y4"
			severity error;
		
		assert y5 = std_logic_vector(to_signed(0, 16)) 
			report "Errore calcolo componente y5"
			severity error;
		
		assert y6 = std_logic_vector(to_signed(14, 16)) 
			report "Errore calcolo componente y6"
			severity error;
		
		assert y7 = std_logic_vector(to_signed(-3, 16)) 
			report "Errore calcolo componente y7"
			severity error;

	wait;
	end process;

end;
