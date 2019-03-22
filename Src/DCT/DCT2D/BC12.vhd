library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.InexactCellType.all;

entity BC12 is
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

			x00 	: in   std_logic_vector (7 downto 0);
			x01 	: in   std_logic_vector (7 downto 0);
			x02 	: in   std_logic_vector (7 downto 0);
			x03 	: in   std_logic_vector (7 downto 0);
			x04 	: in   std_logic_vector (7 downto 0);
			x05 	: in   std_logic_vector (7 downto 0);
			x06 	: in   std_logic_vector (7 downto 0);
			x07 	: in   std_logic_vector (7 downto 0);

			x10 	: in   std_logic_vector (7 downto 0);
			x11 	: in   std_logic_vector (7 downto 0);
			x12 	: in   std_logic_vector (7 downto 0);
			x13 	: in   std_logic_vector (7 downto 0);
			x14 	: in   std_logic_vector (7 downto 0);
			x15 	: in   std_logic_vector (7 downto 0);
			x16 	: in   std_logic_vector (7 downto 0);
			x17 	: in   std_logic_vector (7 downto 0);

			x20 	: in   std_logic_vector (7 downto 0);
			x21 	: in   std_logic_vector (7 downto 0);
			x22 	: in   std_logic_vector (7 downto 0);
			x23 	: in   std_logic_vector (7 downto 0);
			x24 	: in   std_logic_vector (7 downto 0);
			x25 	: in   std_logic_vector (7 downto 0);
			x26 	: in   std_logic_vector (7 downto 0);
			x27 	: in   std_logic_vector (7 downto 0);

			x30 	: in   std_logic_vector (7 downto 0);
			x31 	: in   std_logic_vector (7 downto 0);
			x32 	: in   std_logic_vector (7 downto 0);
			x33 	: in   std_logic_vector (7 downto 0);
			x34 	: in   std_logic_vector (7 downto 0);
			x35 	: in   std_logic_vector (7 downto 0);
			x36 	: in   std_logic_vector (7 downto 0);
			x37 	: in   std_logic_vector (7 downto 0);

			x40 	: in   std_logic_vector (7 downto 0);
			x41 	: in   std_logic_vector (7 downto 0);
			x42 	: in   std_logic_vector (7 downto 0);
			x43 	: in   std_logic_vector (7 downto 0);
			x44 	: in   std_logic_vector (7 downto 0);
			x45 	: in   std_logic_vector (7 downto 0);
			x46 	: in   std_logic_vector (7 downto 0);
			x47 	: in   std_logic_vector (7 downto 0);

			x50 	: in   std_logic_vector (7 downto 0);
			x51 	: in   std_logic_vector (7 downto 0);
			x52 	: in   std_logic_vector (7 downto 0);
			x53 	: in   std_logic_vector (7 downto 0);
			x54 	: in   std_logic_vector (7 downto 0);
			x55 	: in   std_logic_vector (7 downto 0);
			x56 	: in   std_logic_vector (7 downto 0);
			x57 	: in   std_logic_vector (7 downto 0);

			x60 	: in   std_logic_vector (7 downto 0);
			x61 	: in   std_logic_vector (7 downto 0);
			x62 	: in   std_logic_vector (7 downto 0);
			x63 	: in   std_logic_vector (7 downto 0);
			x64 	: in   std_logic_vector (7 downto 0);
			x65 	: in   std_logic_vector (7 downto 0);
			x66 	: in   std_logic_vector (7 downto 0);
			x67 	: in   std_logic_vector (7 downto 0);

			x70 	: in   std_logic_vector (7 downto 0);
			x71 	: in   std_logic_vector (7 downto 0);
			x72 	: in   std_logic_vector (7 downto 0);
			x73 	: in   std_logic_vector (7 downto 0);
			x74 	: in   std_logic_vector (7 downto 0);
			x75 	: in   std_logic_vector (7 downto 0);
			x76 	: in   std_logic_vector (7 downto 0);
			x77 	: in   std_logic_vector (7 downto 0);

			y00 	: out   std_logic_vector (7 downto 0);
			y10 	: out   std_logic_vector (7 downto 0);
			y20 	: out   std_logic_vector (7 downto 0);
			y30 	: out   std_logic_vector (7 downto 0);
			y40 	: out   std_logic_vector (7 downto 0);
			y50 	: out   std_logic_vector (7 downto 0);
			y60 	: out   std_logic_vector (7 downto 0);
			y70 	: out   std_logic_vector (7 downto 0);

			y01 	: out   std_logic_vector (7 downto 0);
			y11 	: out   std_logic_vector (7 downto 0);
			y21 	: out   std_logic_vector (7 downto 0);
			y31 	: out   std_logic_vector (7 downto 0);
			y41 	: out   std_logic_vector (7 downto 0);
			y51 	: out   std_logic_vector (7 downto 0);
			y61 	: out   std_logic_vector (7 downto 0);
			y71 	: out   std_logic_vector (7 downto 0);

			y02 	: out   std_logic_vector (7 downto 0);
			y12 	: out   std_logic_vector (7 downto 0);
			y22 	: out   std_logic_vector (7 downto 0);
			y32 	: out   std_logic_vector (7 downto 0);
			y42 	: out   std_logic_vector (7 downto 0);
			y52 	: out   std_logic_vector (7 downto 0);
			y62 	: out   std_logic_vector (7 downto 0);
			y72 	: out   std_logic_vector (7 downto 0);

			y03 	: out   std_logic_vector (7 downto 0);
			y13 	: out   std_logic_vector (7 downto 0);
			y23 	: out   std_logic_vector (7 downto 0);
			y33 	: out   std_logic_vector (7 downto 0);
			y43 	: out   std_logic_vector (7 downto 0);
			y53 	: out   std_logic_vector (7 downto 0);
			y63 	: out   std_logic_vector (7 downto 0);
			y73 	: out   std_logic_vector (7 downto 0);

			y04 	: out   std_logic_vector (7 downto 0);
			y14 	: out   std_logic_vector (7 downto 0);
			y24 	: out   std_logic_vector (7 downto 0);
			y34 	: out   std_logic_vector (7 downto 0);
			y44 	: out   std_logic_vector (7 downto 0);
			y54 	: out   std_logic_vector (7 downto 0);
			y64 	: out   std_logic_vector (7 downto 0);
			y74 	: out   std_logic_vector (7 downto 0);

			y05 	: out   std_logic_vector (7 downto 0);
			y15 	: out   std_logic_vector (7 downto 0);
			y25 	: out   std_logic_vector (7 downto 0);
			y35 	: out   std_logic_vector (7 downto 0);
			y45 	: out   std_logic_vector (7 downto 0);
			y55 	: out   std_logic_vector (7 downto 0);
			y65 	: out   std_logic_vector (7 downto 0);
			y75 	: out   std_logic_vector (7 downto 0);

			y06 	: out   std_logic_vector (7 downto 0);
			y16 	: out   std_logic_vector (7 downto 0);
			y26 	: out   std_logic_vector (7 downto 0);
			y36 	: out   std_logic_vector (7 downto 0);
			y46 	: out   std_logic_vector (7 downto 0);
			y56 	: out   std_logic_vector (7 downto 0);
			y66 	: out   std_logic_vector (7 downto 0);
			y76 	: out   std_logic_vector (7 downto 0);

			y07 	: out   std_logic_vector (7 downto 0);
			y17 	: out   std_logic_vector (7 downto 0);
			y27 	: out   std_logic_vector (7 downto 0);
			y37 	: out   std_logic_vector (7 downto 0);
			y47 	: out   std_logic_vector (7 downto 0);
			y57 	: out   std_logic_vector (7 downto 0);
			y67 	: out   std_logic_vector (7 downto 0);
			y77 	: out   std_logic_vector (7 downto 0)
    );
end BC12;

architecture dataflow of BC12 is

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
		y7 		: out   std_logic_vector (7 downto 0)
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

	type img_block is array (0 to 7) of std_logic_vector(7 downto 0);

	signal row_blk_in					: img_block; 
	signal row_blk_out					: img_block; 
	signal column_blk_in				: img_block; 
	signal column_blk_out				: img_block; 

	signal row_transf_in0		: std_logic_vector (7 downto 0);
	signal row_transf_in1		: std_logic_vector (7 downto 0);
	signal row_transf_in2		: std_logic_vector (7 downto 0);
	signal row_transf_in3		: std_logic_vector (7 downto 0);
	signal row_transf_in4		: std_logic_vector (7 downto 0);
	signal row_transf_in5		: std_logic_vector (7 downto 0);
	signal row_transf_in6		: std_logic_vector (7 downto 0);
	signal row_transf_in7		: std_logic_vector (7 downto 0);

	signal row_transf_out0		: std_logic_vector (7 downto 0);
	signal row_transf_out1		: std_logic_vector (7 downto 0);
	signal row_transf_out2		: std_logic_vector (7 downto 0);
	signal row_transf_out3		: std_logic_vector (7 downto 0);
	signal row_transf_out4		: std_logic_vector (7 downto 0);
	signal row_transf_out5		: std_logic_vector (7 downto 0);
	signal row_transf_out6		: std_logic_vector (7 downto 0);
	signal row_transf_out7		: std_logic_vector (7 downto 0);

	signal column_transf_in0	: std_logic_vector (7 downto 0);
	signal column_transf_in1	: std_logic_vector (7 downto 0);
	signal column_transf_in2	: std_logic_vector (7 downto 0);
	signal column_transf_in3	: std_logic_vector (7 downto 0);
	signal column_transf_in4	: std_logic_vector (7 downto 0);
	signal column_transf_in5	: std_logic_vector (7 downto 0);
	signal column_transf_in6	: std_logic_vector (7 downto 0);
	signal column_transf_in7	: std_logic_vector (7 downto 0);

	signal column_transf_out0	: std_logic_vector (7 downto 0);
	signal column_transf_out1	: std_logic_vector (7 downto 0);
	signal column_transf_out2	: std_logic_vector (7 downto 0);
	signal column_transf_out3	: std_logic_vector (7 downto 0);
	signal column_transf_out4	: std_logic_vector (7 downto 0);
	signal column_transf_out5	: std_logic_vector (7 downto 0);
	signal column_transf_out6	: std_logic_vector (7 downto 0);
	signal column_transf_out7	: std_logic_vector (7 downto 0);

begin

	--TODO: selezionare la riga con un mux ed immetterla in row_transf_in_i
	DCT1Dto2D_generate : for i in 0 to 7 generate
	row_transform_inst: BC121D
		generic map(
			nab0 			=> nab0,
			cell_type0 		=> cell_type0,
			nab1 			=> nab1,
			cell_type1 		=> cell_type1,
			nab2 			=> nab2,
			cell_type2 		=> cell_type2,
			nab3 			=> nab3,
			cell_type3 		=> cell_type3,
			nab4 			=> nab4,
			cell_type4 		=> cell_type4,
			nab5 			=> nab5,
			cell_type5 		=> cell_type5,
			nab6 			=> nab6,
			cell_type6 		=> cell_type6,
			nab7 			=> nab7,
			cell_type7 		=> cell_type7,
			nab8 			=> nab8,
			cell_type8 		=> cell_type8,
			nab9 			=> nab9,
			cell_type9 		=> cell_type9,
			nab10 			=> nab10,
			cell_type10 	=> cell_type10,
			nab11 			=> nab11,
			cell_type11 	=> cell_type11,
			nab12 			=> nab12,
			cell_type12 	=> cell_type12,
			nab13 			=> nab13,
			cell_type13 	=> cell_type13,
			nab14 			=> nab14,
			cell_type14 	=> cell_type14,
			nab15 			=> nab15,
			cell_type15 	=> cell_type15,
			nab16 			=> nab16,
			cell_type16 	=> cell_type16,
			nab17 			=> nab17,
			cell_type17 	=> cell_type17
		)
		port map(
			clk => clk,
			en => en,

			x0 => row_block_in(i),
			x1 => row_block_in(i),
			x2 => row_block_in(i),
			x3 => row_block_in(i),
			x4 => row_block_in(i),
			x5 => row_block_in(i),
			x6 => row_block_in(i),
			x7 => row_block_in(i),

			y0 => row_block_out(i),
			y1 => row_block_out(i),
			y2 => row_block_out(i),
			y3 => row_block_out(i),
			y4 => row_block_out(i),
			y5 => row_block_out(i),
			y6 => row_block_out(i),
			y7 => row_block_out(i)

		);

	-- TODO: transposition block

	column_transform_inst: BC121D
		generic map(
			nab0 			=> nab0,
			cell_type0 		=> cell_type0,
			nab1 			=> nab1,
			cell_type1 		=> cell_type1,
			nab2 			=> nab2,
			cell_type2 		=> cell_type2,
			nab3 			=> nab3,
			cell_type3 		=> cell_type3,
			nab4 			=> nab4,
			cell_type4 		=> cell_type4,
			nab5 			=> nab5,
			cell_type5 		=> cell_type5,
			nab6 			=> nab6,
			cell_type6 		=> cell_type6,
			nab7 			=> nab7,
			cell_type7 		=> cell_type7,
			nab8 			=> nab8,
			cell_type8 		=> cell_type8,
			nab9 			=> nab9,
			cell_type9 		=> cell_type9,
			nab10 			=> nab10,
			cell_type10 	=> cell_type10,
			nab11 			=> nab11,
			cell_type11 	=> cell_type11,
			nab12 			=> nab12,
			cell_type12 	=> cell_type12,
			nab13 			=> nab13,
			cell_type13 	=> cell_type13,
			nab14 			=> nab14,
			cell_type14 	=> cell_type14,
			nab15 			=> nab15,
			cell_type15 	=> cell_type15,
			nab16 			=> nab16,
			cell_type16 	=> cell_type16,
			nab17 			=> nab17,
			cell_type17 	=> cell_type17
		)
		port map(
			clk => clk,
			en => en,

			x0 => column_transf_in0,
			x1 => column_transf_in1,
			x2 => column_transf_in2,
			x3 => column_transf_in3,
			x4 => column_transf_in4,
			x5 => column_transf_in5,
			x6 => column_transf_in6,
			x7 => column_transf_in7,

			y0 => column_transf_out0,
			y1 => column_transf_out1,
			y2 => column_transf_out2,
			y3 => column_transf_out3,
			y4 => column_transf_out4,
			y5 => column_transf_out5,
			y6 => column_transf_out6,
			y7 => column_transf_out7

		);

	end generate; 


	-- TODO assegnare con un demux output_buffer_out ad una delle colonne di uscita

end dataflow;

