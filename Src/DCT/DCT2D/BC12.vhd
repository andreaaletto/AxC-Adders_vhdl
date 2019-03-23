library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.InexactCellType.all;
use work.ImageBlockType.all;


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

		ready : out std_logic
	);
	end component;

	component reg is
		generic(
			N : natural := 16
		);
		port 
		(	
			clk  : in std_logic;
			rst	 : in std_logic;
			data_in : in std_logic_vector (N-1 downto 0);
			en : in std_logic;
			data_out : out std_logic_vector (N-1 downto 0) 
		);
	end component;

	type dct_vector is array (0 to 7) of std_logic_vector(15 downto 0);

	signal row0_vector_in					: dct_vector; 
	signal row1_vector_in					: dct_vector; 
	signal row2_vector_in					: dct_vector; 
	signal row3_vector_in					: dct_vector; 
	signal row4_vector_in					: dct_vector; 
	signal row5_vector_in					: dct_vector; 
	signal row6_vector_in					: dct_vector; 
	signal row7_vector_in					: dct_vector; 
	 
	signal row0_vector_out					: dct_vector; 
	signal row1_vector_out					: dct_vector; 
	signal row2_vector_out					: dct_vector; 
	signal row3_vector_out					: dct_vector; 
	signal row4_vector_out					: dct_vector; 
	signal row5_vector_out					: dct_vector; 
	signal row6_vector_out					: dct_vector; 
	signal row7_vector_out					: dct_vector; 

	signal column0_vector_in				: dct_vector; 
	signal column1_vector_in				: dct_vector; 
	signal column2_vector_in				: dct_vector; 
	signal column3_vector_in				: dct_vector; 
	signal column4_vector_in				: dct_vector; 
	signal column5_vector_in				: dct_vector; 
	signal column6_vector_in				: dct_vector; 
	signal column7_vector_in				: dct_vector; 
	 
	signal column0_vector_out				: dct_vector; 
	signal column1_vector_out				: dct_vector; 
	signal column2_vector_out				: dct_vector; 
	signal column3_vector_out				: dct_vector; 
	signal column4_vector_out				: dct_vector; 
	signal column5_vector_out				: dct_vector; 
	signal column6_vector_out				: dct_vector; 
	signal column7_vector_out				: dct_vector;

begin

	-- Sign extension
	row0_vector_in(0) <= "00000000" & x00;
	row0_vector_in(1) <= "00000000" & x01;
	row0_vector_in(2) <= "00000000" & x02;
	row0_vector_in(3) <= "00000000" & x03;
	row0_vector_in(4) <= "00000000" & x04;
	row0_vector_in(5) <= "00000000" & x05;
	row0_vector_in(6) <= "00000000" & x06;
	row0_vector_in(7) <= "00000000" & x07;

	row1_vector_in(0) <= "00000000" & x10;
	row1_vector_in(1) <= "00000000" & x11;
	row1_vector_in(2) <= "00000000" & x12;
	row1_vector_in(3) <= "00000000" & x13;
	row1_vector_in(4) <= "00000000" & x14;
	row1_vector_in(5) <= "00000000" & x15;
	row1_vector_in(6) <= "00000000" & x16;
	row1_vector_in(7) <= "00000000" & x17;

	row2_vector_in(0) <= "00000000" & x20;
	row2_vector_in(1) <= "00000000" & x21;
	row2_vector_in(2) <= "00000000" & x22;
	row2_vector_in(3) <= "00000000" & x23;
	row2_vector_in(4) <= "00000000" & x24;
	row2_vector_in(5) <= "00000000" & x25;
	row2_vector_in(6) <= "00000000" & x26;
	row2_vector_in(7) <= "00000000" & x27;

	row3_vector_in(0) <= "00000000" & x30;
	row3_vector_in(1) <= "00000000" & x31;
	row3_vector_in(2) <= "00000000" & x32;
	row3_vector_in(3) <= "00000000" & x33;
	row3_vector_in(4) <= "00000000" & x34;
	row3_vector_in(5) <= "00000000" & x35;
	row3_vector_in(6) <= "00000000" & x36;
	row3_vector_in(7) <= "00000000" & x37;

	row4_vector_in(0) <= "00000000" & x40;
	row4_vector_in(1) <= "00000000" & x41;
	row4_vector_in(2) <= "00000000" & x42;
	row4_vector_in(3) <= "00000000" & x43;
	row4_vector_in(4) <= "00000000" & x44;
	row4_vector_in(5) <= "00000000" & x45;
	row4_vector_in(6) <= "00000000" & x46;
	row4_vector_in(7) <= "00000000" & x47;

	row5_vector_in(0) <= "00000000" & x50;
	row5_vector_in(1) <= "00000000" & x51;
	row5_vector_in(2) <= "00000000" & x52;
	row5_vector_in(3) <= "00000000" & x53;
	row5_vector_in(4) <= "00000000" & x54;
	row5_vector_in(5) <= "00000000" & x55;
	row5_vector_in(6) <= "00000000" & x56;
	row5_vector_in(7) <= "00000000" & x57;

	row6_vector_in(0) <= "00000000" & x60;
	row6_vector_in(1) <= "00000000" & x61;
	row6_vector_in(2) <= "00000000" & x62;
	row6_vector_in(3) <= "00000000" & x63;
	row6_vector_in(4) <= "00000000" & x64;
	row6_vector_in(5) <= "00000000" & x65;
	row6_vector_in(6) <= "00000000" & x66;
	row6_vector_in(7) <= "00000000" & x67;

	row7_vector_in(0) <= "00000000" & x70;
	row7_vector_in(1) <= "00000000" & x71;
	row7_vector_in(2) <= "00000000" & x72;
	row7_vector_in(3) <= "00000000" & x73;
	row7_vector_in(4) <= "00000000" & x74;
	row7_vector_in(5) <= "00000000" & x75;
	row7_vector_in(6) <= "00000000" & x76;
	row7_vector_in(7) <= "00000000" & x77;


	-- ROWS TRANSFORMATION BLOCK

	row0_transform_inst: BC121D
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

			x0 => row0_vector_in(0),
			x1 => row0_vector_in(1),
			x2 => row0_vector_in(2),
			x3 => row0_vector_in(3),
			x4 => row0_vector_in(4),
			x5 => row0_vector_in(5),
			x6 => row0_vector_in(6),
			x7 => row0_vector_in(7),

			y0 => row0_vector_out(0),
			y1 => row0_vector_out(1),
			y2 => row0_vector_out(2),
			y3 => row0_vector_out(3),
			y4 => row0_vector_out(4),
			y5 => row0_vector_out(5),
			y6 => row0_vector_out(6),
			y7 => row0_vector_out(7)

		);

	row1_transform_inst: BC121D
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

			x0 => row1_vector_in(0),
			x1 => row1_vector_in(1),
			x2 => row1_vector_in(2),
			x3 => row1_vector_in(3),
			x4 => row1_vector_in(4),
			x5 => row1_vector_in(5),
			x6 => row1_vector_in(6),
			x7 => row1_vector_in(7),

			y0 => row1_vector_out(0),
			y1 => row1_vector_out(1),
			y2 => row1_vector_out(2),
			y3 => row1_vector_out(3),
			y4 => row1_vector_out(4),
			y5 => row1_vector_out(5),
			y6 => row1_vector_out(6),
			y7 => row1_vector_out(7)

		);

	row2_transform_inst: BC121D
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

			x0 => row2_vector_in(0),
			x1 => row2_vector_in(1),
			x2 => row2_vector_in(2),
			x3 => row2_vector_in(3),
			x4 => row2_vector_in(4),
			x5 => row2_vector_in(5),
			x6 => row2_vector_in(6),
			x7 => row2_vector_in(7),

			y0 => row2_vector_out(0),
			y1 => row2_vector_out(1),
			y2 => row2_vector_out(2),
			y3 => row2_vector_out(3),
			y4 => row2_vector_out(4),
			y5 => row2_vector_out(5),
			y6 => row2_vector_out(6),
			y7 => row2_vector_out(7)

		);

	row3_transform_inst: BC121D
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

			x0 => row3_vector_in(0),
			x1 => row3_vector_in(1),
			x2 => row3_vector_in(2),
			x3 => row3_vector_in(3),
			x4 => row3_vector_in(4),
			x5 => row3_vector_in(5),
			x6 => row3_vector_in(6),
			x7 => row3_vector_in(7),

			y0 => row3_vector_out(0),
			y1 => row3_vector_out(1),
			y2 => row3_vector_out(2),
			y3 => row3_vector_out(3),
			y4 => row3_vector_out(4),
			y5 => row3_vector_out(5),
			y6 => row3_vector_out(6),
			y7 => row3_vector_out(7)

		);

	row4_transform_inst: BC121D
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

			x0 => row4_vector_in(0),
			x1 => row4_vector_in(1),
			x2 => row4_vector_in(2),
			x3 => row4_vector_in(3),
			x4 => row4_vector_in(4),
			x5 => row4_vector_in(5),
			x6 => row4_vector_in(6),
			x7 => row4_vector_in(7),

			y0 => row4_vector_out(0),
			y1 => row4_vector_out(1),
			y2 => row4_vector_out(2),
			y3 => row4_vector_out(3),
			y4 => row4_vector_out(4),
			y5 => row4_vector_out(5),
			y6 => row4_vector_out(6),
			y7 => row4_vector_out(7)

		);

	row5_transform_inst: BC121D
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

			x0 => row5_vector_in(0),
			x1 => row5_vector_in(1),
			x2 => row5_vector_in(2),
			x3 => row5_vector_in(3),
			x4 => row5_vector_in(4),
			x5 => row5_vector_in(5),
			x6 => row5_vector_in(6),
			x7 => row5_vector_in(7),

			y0 => row5_vector_out(0),
			y1 => row5_vector_out(1),
			y2 => row5_vector_out(2),
			y3 => row5_vector_out(3),
			y4 => row5_vector_out(4),
			y5 => row5_vector_out(5),
			y6 => row5_vector_out(6),
			y7 => row5_vector_out(7)

		);

	row6_transform_inst: BC121D
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

			x0 => row6_vector_in(0),
			x1 => row6_vector_in(1),
			x2 => row6_vector_in(2),
			x3 => row6_vector_in(3),
			x4 => row6_vector_in(4),
			x5 => row6_vector_in(5),
			x6 => row6_vector_in(6),
			x7 => row6_vector_in(7),

			y0 => row6_vector_out(0),
			y1 => row6_vector_out(1),
			y2 => row6_vector_out(2),
			y3 => row6_vector_out(3),
			y4 => row6_vector_out(4),
			y5 => row6_vector_out(5),
			y6 => row6_vector_out(6),
			y7 => row6_vector_out(7)

		);

	row7_transform_inst: BC121D
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

			x0 => row7_vector_in(0),
			x1 => row7_vector_in(1),
			x2 => row7_vector_in(2),
			x3 => row7_vector_in(3),
			x4 => row7_vector_in(4),
			x5 => row7_vector_in(5),
			x6 => row7_vector_in(6),
			x7 => row7_vector_in(7),

			y0 => row7_vector_out(0),
			y1 => row7_vector_out(1),
			y2 => row7_vector_out(2),
			y3 => row7_vector_out(3),
			y4 => row7_vector_out(4),
			y5 => row7_vector_out(5),
			y6 => row7_vector_out(6),
			y7 => row7_vector_out(7)

		);

	-- TODO: transposition block

	-- COLUMN TRANSFORMATION BLOCK

	column0_transform_inst: BC121D
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

			x0 => column0_vector_in(0),
			x1 => column0_vector_in(1),
			x2 => column0_vector_in(2),
			x3 => column0_vector_in(3),
			x4 => column0_vector_in(4),
			x5 => column0_vector_in(5),
			x6 => column0_vector_in(6),
			x7 => column0_vector_in(7),

			y0 => column0_vector_out(0),
			y1 => column0_vector_out(1),
			y2 => column0_vector_out(2),
			y3 => column0_vector_out(3),
			y4 => column0_vector_out(4),
			y5 => column0_vector_out(5),
			y6 => column0_vector_out(6),
			y7 => column0_vector_out(7)

		);

	column1_transform_inst: BC121D
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

			x0 => column1_vector_in(0),
			x1 => column1_vector_in(1),
			x2 => column1_vector_in(2),
			x3 => column1_vector_in(3),
			x4 => column1_vector_in(4),
			x5 => column1_vector_in(5),
			x6 => column1_vector_in(6),
			x7 => column1_vector_in(7),

			y0 => column1_vector_out(0),
			y1 => column1_vector_out(1),
			y2 => column1_vector_out(2),
			y3 => column1_vector_out(3),
			y4 => column1_vector_out(4),
			y5 => column1_vector_out(5),
			y6 => column1_vector_out(6),
			y7 => column1_vector_out(7)

		);

	column2_transform_inst: BC121D
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

			x0 => column2_vector_in(0),
			x1 => column2_vector_in(1),
			x2 => column2_vector_in(2),
			x3 => column2_vector_in(3),
			x4 => column2_vector_in(4),
			x5 => column2_vector_in(5),
			x6 => column2_vector_in(6),
			x7 => column2_vector_in(7),

			y0 => column2_vector_out(0),
			y1 => column2_vector_out(1),
			y2 => column2_vector_out(2),
			y3 => column2_vector_out(3),
			y4 => column2_vector_out(4),
			y5 => column2_vector_out(5),
			y6 => column2_vector_out(6),
			y7 => column2_vector_out(7)

		);

	column3_transform_inst: BC121D
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

			x0 => column3_vector_in(0),
			x1 => column3_vector_in(1),
			x2 => column3_vector_in(2),
			x3 => column3_vector_in(3),
			x4 => column3_vector_in(4),
			x5 => column3_vector_in(5),
			x6 => column3_vector_in(6),
			x7 => column3_vector_in(7),

			y0 => column3_vector_out(0),
			y1 => column3_vector_out(1),
			y2 => column3_vector_out(2),
			y3 => column3_vector_out(3),
			y4 => column3_vector_out(4),
			y5 => column3_vector_out(5),
			y6 => column3_vector_out(6),
			y7 => column3_vector_out(7)

		);

	column4_transform_inst: BC121D
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

			x0 => column4_vector_in(0),
			x1 => column4_vector_in(1),
			x2 => column4_vector_in(2),
			x3 => column4_vector_in(3),
			x4 => column4_vector_in(4),
			x5 => column4_vector_in(5),
			x6 => column4_vector_in(6),
			x7 => column4_vector_in(7),

			y0 => column4_vector_out(0),
			y1 => column4_vector_out(1),
			y2 => column4_vector_out(2),
			y3 => column4_vector_out(3),
			y4 => column4_vector_out(4),
			y5 => column4_vector_out(5),
			y6 => column4_vector_out(6),
			y7 => column4_vector_out(7)

		);

	column5_transform_inst: BC121D
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

			x0 => column5_vector_in(0),
			x1 => column5_vector_in(1),
			x2 => column5_vector_in(2),
			x3 => column5_vector_in(3),
			x4 => column5_vector_in(4),
			x5 => column5_vector_in(5),
			x6 => column5_vector_in(6),
			x7 => column5_vector_in(7),

			y0 => column5_vector_out(0),
			y1 => column5_vector_out(1),
			y2 => column5_vector_out(2),
			y3 => column5_vector_out(3),
			y4 => column5_vector_out(4),
			y5 => column5_vector_out(5),
			y6 => column5_vector_out(6),
			y7 => column5_vector_out(7)

		);

	column6_transform_inst: BC121D
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

			x0 => column6_vector_in(0),
			x1 => column6_vector_in(1),
			x2 => column6_vector_in(2),
			x3 => column6_vector_in(3),
			x4 => column6_vector_in(4),
			x5 => column6_vector_in(5),
			x6 => column6_vector_in(6),
			x7 => column6_vector_in(7),

			y0 => column6_vector_out(0),
			y1 => column6_vector_out(1),
			y2 => column6_vector_out(2),
			y3 => column6_vector_out(3),
			y4 => column6_vector_out(4),
			y5 => column6_vector_out(5),
			y6 => column6_vector_out(6),
			y7 => column6_vector_out(7)

		);

	column7_transform_inst: BC121D
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

			x0 => column7_vector_in(0),
			x1 => column7_vector_in(1),
			x2 => column7_vector_in(2),
			x3 => column7_vector_in(3),
			x4 => column7_vector_in(4),
			x5 => column7_vector_in(5),
			x6 => column7_vector_in(6),
			x7 => column7_vector_in(7),

			y0 => column7_vector_out(0),
			y1 => column7_vector_out(1),
			y2 => column7_vector_out(2),
			y3 => column7_vector_out(3),
			y4 => column7_vector_out(4),
			y5 => column7_vector_out(5),
			y6 => column7_vector_out(6),
			y7 => column7_vector_out(7)

		);

	-- Bit reduction block

	-- column1_vector_out
	-- column1_vector_out
	-- column1_vector_out
	-- column1_vector_out
	-- column1_vector_out
	-- column1_vector_out
	-- column1_vector_out
	-- column1_vector_out

	-- column2_vector_out
	-- column2_vector_out
	-- column2_vector_out
	-- column2_vector_out
	-- column2_vector_out
	-- column2_vector_out
	-- column2_vector_out
	-- column2_vector_out

	-- column3_vector_out
	-- column3_vector_out
	-- column3_vector_out
	-- column3_vector_out
	-- column3_vector_out
	-- column3_vector_out
	-- column3_vector_out
	-- column3_vector_out

	-- column4_vector_out
	-- column4_vector_out
	-- column4_vector_out
	-- column4_vector_out
	-- column4_vector_out
	-- column4_vector_out
	-- column4_vector_out
	-- column4_vector_out

	-- column5_vector_out
	-- column5_vector_out
	-- column5_vector_out
	-- column5_vector_out
	-- column5_vector_out
	-- column5_vector_out
	-- column5_vector_out
	-- column5_vector_out

	-- column6_vector_out
	-- column6_vector_out
	-- column6_vector_out
	-- column6_vector_out
	-- column6_vector_out
	-- column6_vector_out
	-- column6_vector_out
	-- column6_vector_out

	-- column7_vector_out
	-- column7_vector_out
	-- column7_vector_out
	-- column7_vector_out
	-- column7_vector_out
	-- column7_vector_out
	-- column7_vector_out
	-- column7_vector_out



	-- TODO assegnare con un demux output_buffer_out ad una delle colonne di uscita

end dataflow;

