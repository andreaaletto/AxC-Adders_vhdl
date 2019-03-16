library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.InexactCellType.all;

entity BC121D is
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
end BC121D;

architecture dataflow of BC121D is

	-- adder generico
	component adder is
        generic (
                nbits		: natural := 16;
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
	end component;

	component reg is
		generic(
			N : natural := 16
		);
		port 
		(	
			clk  : in std_logic;
			data_in : in std_logic_vector (N-1 downto 0);
			en : in std_logic;
			data_out : out std_logic_vector (N-1 downto 0) 
		);
	end component;
	
	-- ##### cambiare la seguente per cambiare i component
	for all : adder use entity work.generic_adder_subtractor;
	for all : reg use entity work.GenericRegister;
	
	signal x0a	: std_logic_vector (15 downto 0);
	signal x1a	: std_logic_vector (15 downto 0);
	signal x2a	: std_logic_vector (15 downto 0);
	signal x3a	: std_logic_vector (15 downto 0);
	signal x4a	: std_logic_vector (15 downto 0);
	signal x5a	: std_logic_vector (15 downto 0);
	signal x6a	: std_logic_vector (15 downto 0);
	signal x7a	: std_logic_vector (15 downto 0);

	signal x0b_in	: std_logic_vector (15 downto 0);
	signal x1b_in	: std_logic_vector (15 downto 0);
	signal x2b_in	: std_logic_vector (15 downto 0);
	signal x3b_in	: std_logic_vector (15 downto 0);
	signal x4b_in	: std_logic_vector (15 downto 0);
	signal x5b_in	: std_logic_vector (15 downto 0);
	signal x6b_in	: std_logic_vector (15 downto 0);
	signal x7b_in	: std_logic_vector (15 downto 0);

	signal x0b_out	: std_logic_vector (15 downto 0);
	signal x1b_out	: std_logic_vector (15 downto 0);
	signal x2b_out	: std_logic_vector (15 downto 0);
	signal x3b_out	: std_logic_vector (15 downto 0);
	signal x4b_out	: std_logic_vector (15 downto 0);
	signal x5b_out	: std_logic_vector (15 downto 0);
	signal x6b_out	: std_logic_vector (15 downto 0);
	signal x7b_out	: std_logic_vector (15 downto 0);

	signal x0c_in	: std_logic_vector (15 downto 0);
	signal x1c_in	: std_logic_vector (15 downto 0);
	signal x2c_in	: std_logic_vector (15 downto 0);
	signal x3c_in	: std_logic_vector (15 downto 0);
	signal x4c_in	: std_logic_vector (15 downto 0);
	signal x5c_in	: std_logic_vector (15 downto 0);
	signal x6c_in	: std_logic_vector (15 downto 0);
	signal x7c_in	: std_logic_vector (15 downto 0);

	signal x0c_out	: std_logic_vector (15 downto 0);
	signal x1c_out	: std_logic_vector (15 downto 0);
	signal x2c_out	: std_logic_vector (15 downto 0);
	signal x3c_out	: std_logic_vector (15 downto 0);
	signal x4c_out	: std_logic_vector (15 downto 0);
	signal x5c_out	: std_logic_vector (15 downto 0);
	signal x6c_out	: std_logic_vector (15 downto 0);
	signal x7c_out	: std_logic_vector (15 downto 0);

	signal x0d_in	: std_logic_vector (15 downto 0);
	signal x1d_in	: std_logic_vector (15 downto 0);
	signal x2d_in	: std_logic_vector (15 downto 0);
	signal x3d_in	: std_logic_vector (15 downto 0);
	signal x4d_in	: std_logic_vector (15 downto 0);
	signal x5d_in	: std_logic_vector (15 downto 0);
	signal x6d_in	: std_logic_vector (15 downto 0);
	signal x7d_in	: std_logic_vector (15 downto 0);

	signal x0d_out	: std_logic_vector (15 downto 0);
	signal x1d_out	: std_logic_vector (15 downto 0);
	signal x2d_out	: std_logic_vector (15 downto 0);
	signal x3d_out	: std_logic_vector (15 downto 0);
	signal x4d_out	: std_logic_vector (15 downto 0);
	signal x5d_out	: std_logic_vector (15 downto 0);
	signal x6d_out	: std_logic_vector (15 downto 0);
	signal x7d_out	: std_logic_vector (15 downto 0);


begin

	-- Extend input to 16 bit

	x0a(7 downto 0) <= x0;
	x1a(7 downto 0) <= x1;
	x2a(7 downto 0) <= x2;
	x3a(7 downto 0) <= x3;
	x4a(7 downto 0) <= x4;
	x5a(7 downto 0) <= x5;
	x6a(7 downto 0) <= x6;
	x7a(7 downto 0) <= x7;

	x0a(15 downto 8) <= "00000000";
	x1a(15 downto 8) <= "00000000";
	x2a(15 downto 8) <= "00000000";
	x3a(15 downto 8) <= "00000000";
	x4a(15 downto 8) <= "00000000";
	x5a(15 downto 8) <= "00000000";
	x6a(15 downto 8) <= "00000000";
	x7a(15 downto 8) <= "00000000";

	-- BC12 First step

	sum_0a7a_inst : adder port map ( add_1 => x0a, add_2 => x7a, sub_add_n => '0', sum => x0b_in);
	sum_1a6a_inst : adder port map ( add_1 => x1a, add_2 => x6a, sub_add_n => '0', sum => x1b_in);
	sum_2a5a_inst : adder port map ( add_1 => x2a, add_2 => x5a, sub_add_n => '0', sum => x2b_in);
	sum_3a4a_inst : adder port map ( add_1 => x3a, add_2 => x4a, sub_add_n => '0', sum => x3b_in);
	sub_3a4a_inst : adder port map ( add_1 => x3a, add_2 => x4a, sub_add_n => '1', sum => x4b_in);
	sub_2a5a_inst : adder port map ( add_1 => x2a, add_2 => x5a, sub_add_n => '1', sum => x5b_in);
	sub_1a6a_inst : adder port map ( add_1 => x1a, add_2 => x6a, sub_add_n => '1', sum => x6b_in);
	sub_0a7a_inst : adder port map ( add_1 => x0a, add_2 => x7a, sub_add_n => '1', sum => x7b_in);

	reg_x0b_inst : reg port map( clk => clk, en => en, data_in => x0b_in, data_out => x0b_out);
	reg_x1b_inst : reg port map( clk => clk, en => en, data_in => x1b_in, data_out => x1b_out);
	reg_x2b_inst : reg port map( clk => clk, en => en, data_in => x2b_in, data_out => x2b_out);
	reg_x3b_inst : reg port map( clk => clk, en => en, data_in => x3b_in, data_out => x3b_out);
	reg_x4b_inst : reg port map( clk => clk, en => en, data_in => x4b_in, data_out => x4b_out);
	reg_x5b_inst : reg port map( clk => clk, en => en, data_in => x5b_in, data_out => x5b_out);
	reg_x6b_inst : reg port map( clk => clk, en => en, data_in => x6b_in, data_out => x6b_out);
	reg_x7b_inst : reg port map( clk => clk, en => en, data_in => x7b_in, data_out => x7b_out);

	-- BC12 Second step

	sum_0b3b_inst : adder port map ( add_1 => x0b_out	, add_2 => x3b_out, sub_add_n => '0', sum => x0c_in);
	sum_1b2b_inst : adder port map ( add_1 => x1b_out	, add_2 => x2b_out, sub_add_n => '0', sum => x1c_in);
	sub_1b2b_inst : adder port map ( add_1 => x1b_out	, add_2 => x2b_out, sub_add_n => '1', sum => x2c_in);
	sub_0b3b_inst : adder port map ( add_1 => x0b_out	, add_2 => x3b_out, sub_add_n => '1', sum => x3c_in);
	inv_4b		  : adder port map ( add_1 => "00000000", add_2 => x4b_out, sub_add_n => '1', sum => x4c_in);
	inv_5b		  : adder port map ( add_1 => "00000000", add_2 => x5b_out, sub_add_n => '1', sum => x5c_in);
	inv_6b		  : adder port map ( add_1 => "00000000", add_2 => x6b_out, sub_add_n => '1', sum => x6c_in);
	x7c_in <= x7b_out;

	reg_x0c_inst : reg port map( clk => clk, en => en, data_in => x0c_in, data_out => x0c_out);
	reg_x1c_inst : reg port map( clk => clk, en => en, data_in => x1c_in, data_out => x1c_out);
	reg_x2c_inst : reg port map( clk => clk, en => en, data_in => x2c_in, data_out => x2c_out);
	reg_x3c_inst : reg port map( clk => clk, en => en, data_in => x3c_in, data_out => x3c_out);
	reg_x4c_inst : reg port map( clk => clk, en => en, data_in => x4c_in, data_out => x4c_out);
	reg_x5c_inst : reg port map( clk => clk, en => en, data_in => x5c_in, data_out => x5c_out);
	reg_x6c_inst : reg port map( clk => clk, en => en, data_in => x6c_in, data_out => x6c_out);
	reg_x7c_inst : reg port map( clk => clk, en => en, data_in => x7c_in, data_out => x7c_out);

	-- BC12 Third step

	sum_0c1c_inst : adder port map ( add_1 => x0c_out, add_2 => x1c_out, sub_add_n => '0', sum => x0d_in);
	sub_0c1c_inst : adder port map ( add_1 => x0c_out, add_2 => x1c_out, sub_add_n => '1', sum => x1d_in);
	inv_2c		  : adder port map ( add_1 => "00000000", add_2 => x2c_out, sub_add_n => '1', sum => x2d_in);
	x3d_in <= x3c_out;
	x4d_in <= x4c_out;
	x5d_in <= x5c_out;
	x6d_in <= x6c_out;
	x7d_in <= x7c_out;

	reg_x0d_inst : reg port map( clk => clk, en => en, data_in => x0d_in, data_out => x0d_out);
	reg_x1d_inst : reg port map( clk => clk, en => en, data_in => x1d_in, data_out => x1d_out);
	reg_x2d_inst : reg port map( clk => clk, en => en, data_in => x2d_in, data_out => x2d_out);
	reg_x3d_inst : reg port map( clk => clk, en => en, data_in => x3d_in, data_out => x3d_out);
	reg_x4d_inst : reg port map( clk => clk, en => en, data_in => x4d_in, data_out => x4d_out);
	reg_x5d_inst : reg port map( clk => clk, en => en, data_in => x5d_in, data_out => x5d_out);
	reg_x6d_inst : reg port map( clk => clk, en => en, data_in => x6d_in, data_out => x6d_out);
	reg_x7d_inst : reg port map( clk => clk, en => en, data_in => x7d_in, data_out => x7d_out);

	-- BC12 Permutation step

	y0 <= x0d_out (7 downto 0);
	y1 <= x7d_out (7 downto 0);
	y2 <= x3d_out (7 downto 0);
	y3 <= x5d_out (7 downto 0);
	y4 <= x1d_out (7 downto 0);
	y5 <= x6d_out (7 downto 0);
	y6 <= x2d_out (7 downto 0);
	y7 <= x4d_out (7 downto 0);

	--TODO: se xid_out(15 downto 8) è diverso da "00000000" c'è un errore di troncamento
	--TODO: inserire tutti i generics per nab e celltype negli adder

end dataflow;

