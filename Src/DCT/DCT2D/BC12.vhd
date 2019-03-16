library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.InexactCellType.all;

entity BC12 is
	generic ( --TODO aggiungere i generics
			nbits		: natural := 4;
			nab			: natural := 0;
			cell_type	: Inexact_cell_type := cell_AMA1 
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
			y7 		: out   std_logic_vector (7 downto 0)
    );
end BC12;

architecture dataflow of BC12 is

	component BC121D is
	generic ( --qui ci va nab0, cell0, nab1, cell1, ... per ogni rca che prevede l'algoritmo
			nbits		: natural := 4;
			nab			: natural := 0;
			cell_type	: Inexact_cell_type := cell_AMA1 
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
			y7 		: out   std_logic_vector (7 downto 0)
	);
	end component;
	
	signal x0a	: std_logic_vector (15 downto 0);
	signal x1a	: std_logic_vector (15 downto 0);
	signal x2a	: std_logic_vector (15 downto 0);
	signal x3a	: std_logic_vector (15 downto 0);
	signal x4a	: std_logic_vector (15 downto 0);
	signal x5a	: std_logic_vector (15 downto 0);
	signal x6a	: std_logic_vector (15 downto 0);
	signal x7a	: std_logic_vector (15 downto 0);


begin

end dataflow;

