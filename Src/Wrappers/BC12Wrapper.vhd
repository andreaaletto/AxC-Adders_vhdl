----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.03.2019 11:03:10
-- Design Name: 
-- Module Name: BC12Wrapper - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
use work.InexactCellType.all;
use work.ImageBlockType.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BC12Wrapper is
generic (
		nab0		: natural 			:= 0;
		nab1		: natural 			:= 0;
		nab2		: natural 			:= 0;
		nab3		: natural 			:= 0;
		nab4		: natural 			:= 0;
		nab5		: natural 			:= 0;
		nab6		: natural 			:= 0;
		nab7		: natural 			:= 0;
		nab8		: natural 			:= 0;
		nab9		: natural 			:= 0;
		nab10		: natural 			:= 0;
		nab11		: natural 			:= 0;
		nab12		: natural 			:= 0;
		nab13		: natural 			:= 0;
		nab14		: natural 			:= 0;
		nab15		: natural 			:= 0;
		nab16		: natural 			:= 0;
		nab17		: natural 			:= 0
	);
    port (
			clk		: in   std_logic;
			en		: in   std_logic;

			x00 : in std_logic_vector( 15 downto 0);
            x01 : in std_logic_vector( 15 downto 0);
            x02 : in std_logic_vector( 15 downto 0);
            x03 : in std_logic_vector( 15 downto 0);
            x04 : in std_logic_vector( 15 downto 0);
            x05 : in std_logic_vector( 15 downto 0);
            x06 : in std_logic_vector( 15 downto 0);
            x07 : in std_logic_vector( 15 downto 0);
            x10 : in std_logic_vector( 15 downto 0);
            x11 : in std_logic_vector( 15 downto 0);
            x12 : in std_logic_vector( 15 downto 0);
            x13 : in std_logic_vector( 15 downto 0);
            x14 : in std_logic_vector( 15 downto 0);
            x15 : in std_logic_vector( 15 downto 0);
            x16 : in std_logic_vector( 15 downto 0);
            x17 : in std_logic_vector( 15 downto 0);
            x20 : in std_logic_vector( 15 downto 0);
            x21 : in std_logic_vector( 15 downto 0);
            x22 : in std_logic_vector( 15 downto 0);
            x23 : in std_logic_vector( 15 downto 0);
            x24 : in std_logic_vector( 15 downto 0);
            x25 : in std_logic_vector( 15 downto 0);
            x26 : in std_logic_vector( 15 downto 0);
            x27 : in std_logic_vector( 15 downto 0);
            x30 : in std_logic_vector( 15 downto 0);
            x31 : in std_logic_vector( 15 downto 0);
            x32 : in std_logic_vector( 15 downto 0);
            x33 : in std_logic_vector( 15 downto 0);
            x34 : in std_logic_vector( 15 downto 0);
            x35 : in std_logic_vector( 15 downto 0);
            x36 : in std_logic_vector( 15 downto 0);
            x37 : in std_logic_vector( 15 downto 0);
            x40 : in std_logic_vector( 15 downto 0);
            x41 : in std_logic_vector( 15 downto 0);
            x42 : in std_logic_vector( 15 downto 0);
            x43 : in std_logic_vector( 15 downto 0);
            x44 : in std_logic_vector( 15 downto 0);
            x45 : in std_logic_vector( 15 downto 0);
            x46 : in std_logic_vector( 15 downto 0);
            x47 : in std_logic_vector( 15 downto 0);
            x50 : in std_logic_vector( 15 downto 0);
            x51 : in std_logic_vector( 15 downto 0);
            x52 : in std_logic_vector( 15 downto 0);
            x53 : in std_logic_vector( 15 downto 0);
            x54 : in std_logic_vector( 15 downto 0);
            x55 : in std_logic_vector( 15 downto 0);
            x56 : in std_logic_vector( 15 downto 0);
            x57 : in std_logic_vector( 15 downto 0);
            x60 : in std_logic_vector( 15 downto 0);
            x61 : in std_logic_vector( 15 downto 0);
            x62 : in std_logic_vector( 15 downto 0);
            x63 : in std_logic_vector( 15 downto 0);
            x64 : in std_logic_vector( 15 downto 0);
            x65 : in std_logic_vector( 15 downto 0);
            x66 : in std_logic_vector( 15 downto 0);
            x67 : in std_logic_vector( 15 downto 0);
            x70 : in std_logic_vector( 15 downto 0);
            x71 : in std_logic_vector( 15 downto 0);
            x72 : in std_logic_vector( 15 downto 0);
            x73 : in std_logic_vector( 15 downto 0);
            x74 : in std_logic_vector( 15 downto 0);
            x75 : in std_logic_vector( 15 downto 0);
            x76 : in std_logic_vector( 15 downto 0);
            x77 : in std_logic_vector( 15 downto 0);

            y00 : out std_logic_vector( 15 downto 0);
            y01 : out std_logic_vector( 15 downto 0);
            y02 : out std_logic_vector( 15 downto 0);
            y03 : out std_logic_vector( 15 downto 0);
            y04 : out std_logic_vector( 15 downto 0);
            y05 : out std_logic_vector( 15 downto 0);
            y06 : out std_logic_vector( 15 downto 0);
            y07 : out std_logic_vector( 15 downto 0);
            y10 : out std_logic_vector( 15 downto 0);
            y11 : out std_logic_vector( 15 downto 0);
            y12 : out std_logic_vector( 15 downto 0);
            y13 : out std_logic_vector( 15 downto 0);
            y14 : out std_logic_vector( 15 downto 0);
            y15 : out std_logic_vector( 15 downto 0);
            y16 : out std_logic_vector( 15 downto 0);
            y17 : out std_logic_vector( 15 downto 0);
            y20 : out std_logic_vector( 15 downto 0);
            y21 : out std_logic_vector( 15 downto 0);
            y22 : out std_logic_vector( 15 downto 0);
            y23 : out std_logic_vector( 15 downto 0);
            y24 : out std_logic_vector( 15 downto 0);
            y25 : out std_logic_vector( 15 downto 0);
            y26 : out std_logic_vector( 15 downto 0);
            y27 : out std_logic_vector( 15 downto 0);
            y30 : out std_logic_vector( 15 downto 0);
            y31 : out std_logic_vector( 15 downto 0);
            y32 : out std_logic_vector( 15 downto 0);
            y33 : out std_logic_vector( 15 downto 0);
            y34 : out std_logic_vector( 15 downto 0);
            y35 : out std_logic_vector( 15 downto 0);
            y36 : out std_logic_vector( 15 downto 0);
            y37 : out std_logic_vector( 15 downto 0);
            y40 : out std_logic_vector( 15 downto 0);
            y41 : out std_logic_vector( 15 downto 0);
            y42 : out std_logic_vector( 15 downto 0);
            y43 : out std_logic_vector( 15 downto 0);
            y44 : out std_logic_vector( 15 downto 0);
            y45 : out std_logic_vector( 15 downto 0);
            y46 : out std_logic_vector( 15 downto 0);
            y47 : out std_logic_vector( 15 downto 0);
            y50 : out std_logic_vector( 15 downto 0);
            y51 : out std_logic_vector( 15 downto 0);
            y52 : out std_logic_vector( 15 downto 0);
            y53 : out std_logic_vector( 15 downto 0);
            y54 : out std_logic_vector( 15 downto 0);
            y55 : out std_logic_vector( 15 downto 0);
            y56 : out std_logic_vector( 15 downto 0);
            y57 : out std_logic_vector( 15 downto 0);
            y60 : out std_logic_vector( 15 downto 0);
            y61 : out std_logic_vector( 15 downto 0);
            y62 : out std_logic_vector( 15 downto 0);
            y63 : out std_logic_vector( 15 downto 0);
            y64 : out std_logic_vector( 15 downto 0);
            y65 : out std_logic_vector( 15 downto 0);
            y66 : out std_logic_vector( 15 downto 0);
            y67 : out std_logic_vector( 15 downto 0);
            y70 : out std_logic_vector( 15 downto 0);
            y71 : out std_logic_vector( 15 downto 0);
            y72 : out std_logic_vector( 15 downto 0);
            y73 : out std_logic_vector( 15 downto 0);
            y74 : out std_logic_vector( 15 downto 0);
            y75 : out std_logic_vector( 15 downto 0);
            y76 : out std_logic_vector( 15 downto 0);
            y77 : out std_logic_vector( 15 downto 0);
			
			ready	: out 	std_logic
    );
end BC12Wrapper;

architecture Behavioral of BC12Wrapper is

component BC12 is
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

			blk_in  : in	dct_block;
			blk_out : out	dct_block;
			
			ready	: out 	std_logic
    );
end component;

signal blk_in : dct_block;
signal blk_out : dct_block;

begin

    bc12_inst : BC12
        generic map(
            nab0 =>             nab0,
            nab1 =>             nab1,
            nab2 =>             nab2,
            nab3 =>             nab3,
            nab4 =>             nab4,
            nab5 =>             nab5,
            nab6 =>             nab6,
            nab7 =>             nab7,
            nab8 =>             nab8,
            nab9 =>             nab9,
            nab10 =>            nab10,
            nab11 =>            nab11,
            nab12 =>            nab12,
            nab13 =>            nab13,
            nab14 =>            nab14,
            nab15 =>            nab15,
            nab16 =>            nab16,
            nab17 =>            nab17,
            cell_type0 =>       cell_AMA1,
            cell_type1 =>       cell_AMA1,
            cell_type2 =>       cell_AMA1,
            cell_type3 =>       cell_AMA1,
            cell_type4 =>       cell_AMA1,
            cell_type5 =>       cell_AMA1,
            cell_type6 =>       cell_AMA1,
            cell_type7 =>       cell_AMA1,
            cell_type8 =>       cell_AMA1,
            cell_type9 =>       cell_AMA1,
            cell_type10 =>      cell_AMA1,
            cell_type11 =>      cell_AMA1,
            cell_type12 =>      cell_AMA1,
            cell_type13 =>      cell_AMA1,
            cell_type14 =>      cell_AMA1,
            cell_type15 =>      cell_AMA1,
            cell_type16 =>      cell_AMA1,
            cell_type17 =>      cell_AMA1
        )
        port map(
            clk => clk,
            en => en,
            blk_in => blk_in,
            blk_out => blk_out,
            ready => ready
    );

    blk_in(0)(0) <= x00;
    blk_in(0)(1) <= x01;
    blk_in(0)(2) <= x02;
    blk_in(0)(3) <= x03;
    blk_in(0)(4) <= x04;
    blk_in(0)(5) <= x05;
    blk_in(0)(6) <= x06;
    blk_in(0)(7) <= x07;
    blk_in(1)(0) <= x10;
    blk_in(1)(1) <= x11;
    blk_in(1)(2) <= x12;
    blk_in(1)(3) <= x13;
    blk_in(1)(4) <= x14;
    blk_in(1)(5) <= x15;
    blk_in(1)(6) <= x16;
    blk_in(1)(7) <= x17;
    blk_in(2)(0) <= x20;
    blk_in(2)(1) <= x21;
    blk_in(2)(2) <= x22;
    blk_in(2)(3) <= x23;
    blk_in(2)(4) <= x24;
    blk_in(2)(5) <= x25;
    blk_in(2)(6) <= x26;
    blk_in(2)(7) <= x27;
    blk_in(3)(0) <= x30;
    blk_in(3)(1) <= x31;
    blk_in(3)(2) <= x32;
    blk_in(3)(3) <= x33;
    blk_in(3)(4) <= x34;
    blk_in(3)(5) <= x35;
    blk_in(3)(6) <= x36;
    blk_in(3)(7) <= x37;
    blk_in(4)(0) <= x40;
    blk_in(4)(1) <= x41;
    blk_in(4)(2) <= x42;
    blk_in(4)(3) <= x43;
    blk_in(4)(4) <= x44;
    blk_in(4)(5) <= x45;
    blk_in(4)(6) <= x46;
    blk_in(4)(7) <= x47;
    blk_in(5)(0) <= x50;
    blk_in(5)(1) <= x51;
    blk_in(5)(2) <= x52;
    blk_in(5)(3) <= x53;
    blk_in(5)(4) <= x54;
    blk_in(5)(5) <= x55;
    blk_in(5)(6) <= x56;
    blk_in(5)(7) <= x57;
    blk_in(6)(0) <= x60;
    blk_in(6)(1) <= x61;
    blk_in(6)(2) <= x62;
    blk_in(6)(3) <= x63;
    blk_in(6)(4) <= x64;
    blk_in(6)(5) <= x65;
    blk_in(6)(6) <= x66;
    blk_in(6)(7) <= x67;
    blk_in(7)(0) <= x70;
    blk_in(7)(1) <= x71;
    blk_in(7)(2) <= x72;
    blk_in(7)(3) <= x73;
    blk_in(7)(4) <= x74;
    blk_in(7)(5) <= x75;
    blk_in(7)(6) <= x76;
    blk_in(7)(7) <= x77;
    
    y00 <= blk_out(0)(0);
    y01 <= blk_out(0)(1);
    y02 <= blk_out(0)(2);
    y03 <= blk_out(0)(3);
    y04 <= blk_out(0)(4);
    y05 <= blk_out(0)(5);
    y06 <= blk_out(0)(6);
    y07 <= blk_out(0)(7);
    y10 <= blk_out(1)(0);
    y11 <= blk_out(1)(1);
    y12 <= blk_out(1)(2);
    y13 <= blk_out(1)(3);
    y14 <= blk_out(1)(4);
    y15 <= blk_out(1)(5);
    y16 <= blk_out(1)(6);
    y17 <= blk_out(1)(7);
    y20 <= blk_out(2)(0);
    y21 <= blk_out(2)(1);
    y22 <= blk_out(2)(2);
    y23 <= blk_out(2)(3);
    y24 <= blk_out(2)(4);
    y25 <= blk_out(2)(5);
    y26 <= blk_out(2)(6);
    y27 <= blk_out(2)(7);
    y30 <= blk_out(3)(0);
    y31 <= blk_out(3)(1);
    y32 <= blk_out(3)(2);
    y33 <= blk_out(3)(3);
    y34 <= blk_out(3)(4);
    y35 <= blk_out(3)(5);
    y36 <= blk_out(3)(6);
    y37 <= blk_out(3)(7);
    y40 <= blk_out(4)(0);
    y41 <= blk_out(4)(1);
    y42 <= blk_out(4)(2);
    y43 <= blk_out(4)(3);
    y44 <= blk_out(4)(4);
    y45 <= blk_out(4)(5);
    y46 <= blk_out(4)(6);
    y47 <= blk_out(4)(7);
    y50 <= blk_out(5)(0);
    y51 <= blk_out(5)(1);
    y52 <= blk_out(5)(2);
    y53 <= blk_out(5)(3);
    y54 <= blk_out(5)(4);
    y55 <= blk_out(5)(5);
    y56 <= blk_out(5)(6);
    y57 <= blk_out(5)(7);
    y60 <= blk_out(6)(0);
    y61 <= blk_out(6)(1);
    y62 <= blk_out(6)(2);
    y63 <= blk_out(6)(3);
    y64 <= blk_out(6)(4);
    y65 <= blk_out(6)(5);
    y66 <= blk_out(6)(6);
    y67 <= blk_out(6)(7);
    y70 <= blk_out(7)(0);
    y71 <= blk_out(7)(1);
    y72 <= blk_out(7)(2);
    y73 <= blk_out(7)(3);
    y74 <= blk_out(7)(4);
    y75 <= blk_out(7)(5);
    y76 <= blk_out(7)(6);
    y77 <= blk_out(7)(7);

end Behavioral;