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

			x0 		: in   std_logic_vector (7 downto 0);
			x1 		: in   std_logic_vector (7 downto 0);
			x2 		: in   std_logic_vector (7 downto 0);
			x3 		: in   std_logic_vector (7 downto 0);
			x4 		: in   std_logic_vector (7 downto 0);
			x5 		: in   std_logic_vector (7 downto 0);
			x6 		: in   std_logic_vector (7 downto 0);
			x7 		: in   std_logic_vector (7 downto 0);

			y0 		: out   std_logic_vector (7 downto 0);
			y1 		: out   std_logic_vector (7 downto 0);
			y2 		: out   std_logic_vector (7 downto 0);
			y3 		: out   std_logic_vector (7 downto 0);
			y4 		: out   std_logic_vector (7 downto 0);
			y5 		: out   std_logic_vector (7 downto 0);
			y6 		: out   std_logic_vector (7 downto 0);
			y7 		: out   std_logic_vector (7 downto 0);

			ready	: out 	std_logic
    );
end component BC121D;

	signal clk : std_logic := '0';
	signal en : std_logic := '1';
	signal ready : std_logic := '0';

	signal x0 : std_logic_vector (7 downto 0);
	signal x1 : std_logic_vector (7 downto 0);
	signal x2 : std_logic_vector (7 downto 0);
	signal x3 : std_logic_vector (7 downto 0);
	signal x4 : std_logic_vector (7 downto 0);
	signal x5 : std_logic_vector (7 downto 0);
	signal x6 : std_logic_vector (7 downto 0);
	signal x7 : std_logic_vector (7 downto 0);

	signal y0 : std_logic_vector (7 downto 0);
	signal y1 : std_logic_vector (7 downto 0);
	signal y2 : std_logic_vector (7 downto 0);
	signal y3 : std_logic_vector (7 downto 0);
	signal y4 : std_logic_vector (7 downto 0);
	signal y5 : std_logic_vector (7 downto 0);
	signal y6 : std_logic_vector (7 downto 0);
	signal y7 : std_logic_vector (7 downto 0);
	
begin

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
		x0 <= "00000000";
		x1 <= "00000000";
		x2 <= "00000000";
		x3 <= "00000000";
		x4 <= "00000000";
		x5 <= "00000000";
		x6 <= "00000000";
		x7 <= "00000000";

		wait for 400 ns; --FIXME: modificare questa condizione in wait for ready = 1
		
		assert y0 = "00000000" 
			report "Errore calcolo componente y0"
			severity error;
		
		assert y1 = "00000000" 
			report "Errore calcolo componente y1"
			severity error;
		
		assert y2 = "00000000" 
			report "Errore calcolo componente y2"
			severity error;
		
		assert y3 = "00000000" 
			report "Errore calcolo componente y3"
			severity error;
		
		assert y4 = "00000000" 
			report "Errore calcolo componente y4"
			severity error;
		
		assert y5 = "00000000" 
			report "Errore calcolo componente y5"
			severity error;
		
		assert y6 = "00000000" 
			report "Errore calcolo componente y6"
			severity error;
		
		assert y7 = "00000000" 
			report "Errore calcolo componente y7"
			severity error;

	wait;
	end process;

end;
