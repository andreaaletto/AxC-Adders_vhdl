library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CB11_axi_v1_0 is
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
		nab20		: natural 			:= 0;
		nab21		: natural 			:= 0;
		nab22		: natural 			:= 0;
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
end CB11_axi_v1_0;

architecture arch_imp of CB11_axi_v1_0 is

	-- component declaration
	component CB11_axi_v1_0_S00_AXI is
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
		nab20		: natural 			:= 0;
		nab21		: natural 			:= 0;
		nab22		: natural 			:= 0;
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
	end component CB11_axi_v1_0_S00_AXI;

begin

-- Instantiation of Axi Bus Interface S00_AXI
CB11_axi_v1_0_S00_AXI_inst : CB11_axi_v1_0_S00_AXI
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
		nab20 =>            nab20,
		nab21 =>            nab21,
		nab22 =>            nab22,
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
