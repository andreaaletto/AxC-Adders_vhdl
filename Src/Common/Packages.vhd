library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package ImageBlockType is 
	type image_vector is array (0 to 7) of std_logic_vector(7 downto 0);
	type image_block is array (0 to 7) of image_vector;

	type dct_vector is array (0 to 7) of std_logic_vector(15 downto 0);
	type dct_block is array (0 to 7) of dct_vector;
end package;

package InexactCellType is 
	type Inexact_cell_type is (cell_AMA1, cell_AMA2, cell_AMA3, cell_AMA4, cell_AXA1, cell_AXA2, cell_AXA3, cell_InAx1, cell_InAx2, cell_InAx3);
end package;

package AlgorithmType is 
	type algorithm_type is (BC12, CB11, BAS08, BAS09, BAS11, PEA12, PEA14);
end package;