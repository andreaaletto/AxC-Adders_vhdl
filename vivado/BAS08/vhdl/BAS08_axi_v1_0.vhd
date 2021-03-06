library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity BAS08_axi_v1_0 is
	generic (
		-- Users to add parameters here
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
        nab17		: natural 			:= 0;
		nab18		: natural 			:= 0;
		nab19		: natural 			:= 0;
		cell0		: natural 			:= 0;
		cell1		: natural 			:= 0;
		cell2		: natural 			:= 0;
		cell3		: natural 			:= 0;
		cell4		: natural 			:= 0;
		cell5		: natural 			:= 0;
		cell6		: natural 			:= 0;
		cell7		: natural 			:= 0;
		cell8		: natural 			:= 0;
		cell9		: natural 			:= 0;
		cell10		: natural 			:= 0;
		cell11		: natural 			:= 0;
		cell12		: natural 			:= 0;
		cell13		: natural 			:= 0;
		cell14		: natural 			:= 0;
		cell15		: natural 			:= 0;
		cell16		: natural 			:= 0;
        cell17		: natural 			:= 0;
		cell18		: natural 			:= 0;
		cell19		: natural 			:= 0;

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S00_AXI
		C_S00_AXI_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_ADDR_WIDTH	: integer	:= 9
	);
	port (
		-- Users to add ports here

		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S00_AXI
		s00_axi_aclk	: in std_logic;
		s00_axi_aresetn	: in std_logic;
		s00_axi_awaddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_awprot	: in std_logic_vector(2 downto 0);
		s00_axi_awvalid	: in std_logic;
		s00_axi_awready	: out std_logic;
		s00_axi_wdata	: in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_wstrb	: in std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
		s00_axi_wvalid	: in std_logic;
		s00_axi_wready	: out std_logic;
		s00_axi_bresp	: out std_logic_vector(1 downto 0);
		s00_axi_bvalid	: out std_logic;
		s00_axi_bready	: in std_logic;
		s00_axi_araddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_arprot	: in std_logic_vector(2 downto 0);
		s00_axi_arvalid	: in std_logic;
		s00_axi_arready	: out std_logic;
		s00_axi_rdata	: out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_rresp	: out std_logic_vector(1 downto 0);
		s00_axi_rvalid	: out std_logic;
		s00_axi_rready	: in std_logic
	);
end BAS08_axi_v1_0;

architecture arch_imp of BAS08_axi_v1_0 is

	-- component declaration
	component BAS08_axi_v1_0_S00_AXI is
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
			nab17		: natural 			:= 0;
			nab18		: natural 			:= 0;
			nab19		: natural 			:= 0;
			cell0		: natural 			:= 0;
		cell1		: natural 			:= 0;
		cell2		: natural 			:= 0;
		cell3		: natural 			:= 0;
		cell4		: natural 			:= 0;
		cell5		: natural 			:= 0;
		cell6		: natural 			:= 0;
		cell7		: natural 			:= 0;
		cell8		: natural 			:= 0;
		cell9		: natural 			:= 0;
		cell10		: natural 			:= 0;
		cell11		: natural 			:= 0;
		cell12		: natural 			:= 0;
		cell13		: natural 			:= 0;
		cell14		: natural 			:= 0;
		cell15		: natural 			:= 0;
		cell16		: natural 			:= 0;
        cell17		: natural 			:= 0;
		cell18		: natural 			:= 0;
		cell19		: natural 			:= 0;
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 9
		);
		port (
		S_AXI_ACLK	: in std_logic;
		S_AXI_ARESETN	: in std_logic;
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		S_AXI_AWVALID	: in std_logic;
		S_AXI_AWREADY	: out std_logic;
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		S_AXI_WVALID	: in std_logic;
		S_AXI_WREADY	: out std_logic;
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		S_AXI_BVALID	: out std_logic;
		S_AXI_BREADY	: in std_logic;
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		S_AXI_ARVALID	: in std_logic;
		S_AXI_ARREADY	: out std_logic;
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		S_AXI_RVALID	: out std_logic;
		S_AXI_RREADY	: in std_logic
		);
	end component BAS08_axi_v1_0_S00_AXI;

begin

-- Instantiation of Axi Bus Interface S00_AXI
BAS08_axi_v1_0_S00_AXI_inst : BAS08_axi_v1_0_S00_AXI
	generic map (
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
            nab18 =>            nab18,
			nab19 =>            nab19,
			cell0 =>             cell0,
            cell1 =>             cell1,
            cell2 =>             cell2,
            cell3 =>             cell3,
            cell4 =>             cell4,
            cell5 =>             cell5,
            cell6 =>             cell6,
            cell7 =>             cell7,
            cell8 =>             cell8,
            cell9 =>             cell9,
            cell10 =>            cell10,
            cell11 =>            cell11,
            cell12 =>            cell12,
            cell13 =>            cell13,
            cell14 =>            cell14,
            cell15 =>            cell15,
            cell16 =>            cell16,
            cell17 =>            cell17,
            cell18 =>            cell18,
            cell19 =>            cell19,
		C_S_AXI_DATA_WIDTH	=> C_S00_AXI_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S00_AXI_ADDR_WIDTH
	)
	port map (
		S_AXI_ACLK	=> s00_axi_aclk,
		S_AXI_ARESETN	=> s00_axi_aresetn,
		S_AXI_AWADDR	=> s00_axi_awaddr,
		S_AXI_AWPROT	=> s00_axi_awprot,
		S_AXI_AWVALID	=> s00_axi_awvalid,
		S_AXI_AWREADY	=> s00_axi_awready,
		S_AXI_WDATA	=> s00_axi_wdata,
		S_AXI_WSTRB	=> s00_axi_wstrb,
		S_AXI_WVALID	=> s00_axi_wvalid,
		S_AXI_WREADY	=> s00_axi_wready,
		S_AXI_BRESP	=> s00_axi_bresp,
		S_AXI_BVALID	=> s00_axi_bvalid,
		S_AXI_BREADY	=> s00_axi_bready,
		S_AXI_ARADDR	=> s00_axi_araddr,
		S_AXI_ARPROT	=> s00_axi_arprot,
		S_AXI_ARVALID	=> s00_axi_arvalid,
		S_AXI_ARREADY	=> s00_axi_arready,
		S_AXI_RDATA	=> s00_axi_rdata,
		S_AXI_RRESP	=> s00_axi_rresp,
		S_AXI_RVALID	=> s00_axi_rvalid,
		S_AXI_RREADY	=> s00_axi_rready
	);

	-- Add user logic here

	-- User logic ends

end arch_imp;
