library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.InexactCellType.all;
 
entity tb_generic_adder_subtractor is
end tb_generic_adder_subtractor;
 
architecture behavioral of tb_generic_adder_subtractor is 

	component generic_adder_subtractor is
		generic (
				nbits		: natural := 4;
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
	
	signal add_1 : 			std_logic_vector (7 downto 0);
	signal add_2 :		 	std_logic_vector (7 downto 0);
	signal sub_add_n : 	std_logic;
	signal sum : 		std_logic_vector (7 downto 0);
	signal overflow : 	std_logic;
	
begin

	uut : generic_adder_subtractor
		generic map( nbits => 8, nab => 0, cell_type => cell_AMA1 )
		port map (
			add_1 => add_1,
			add_2 => add_2,
			sub_add_n => sub_add_n,
			sum => sum,
			overflow => overflow);
	
	-- stimulus process
	stim_proc: process
		variable test_sum : integer;
		variable test_ovfl : std_logic;
		variable error_count : integer := 0;
	begin		

		wait for 10 ns;	
		
		-- prova in addizione
		sub_add_n <= '0';
		for i in 0 to 255 loop
			add_1 <= std_logic_vector(to_unsigned(i, 8));
			for j in 0 to 255 loop
				add_2 <= std_logic_vector(to_unsigned(j, 8));
				
				test_sum := i + j;
				if test_sum > 255 then
					test_ovfl := '1';
				else
					test_ovfl := '0';
				end if;
				
				wait for 20 ns;
				
				assert 	sum = std_logic_vector(to_signed(test_sum, 8))
					report "Errore calcolo somma in somma con i=" & integer'image(i) & " j=" & integer'image(j)
					severity error;
					
--				assert overflow = test_ovfl
--					report "Errore calcolo overflow in somma con i=" & integer'image(i) & " j=" & integer'image(j)
--					severity error;
					
				if 	sum /= std_logic_vector(to_signed(test_sum, 8)) and
					overflow /= test_ovfl
														then
					error_count := error_count + 1;
				end if;
				
			end loop;
		end loop;
		
		
		-- prova in sottrazione
		sub_add_n <= '1';
		for i in 0 to 255 loop
			add_1 <= std_logic_vector(to_unsigned(i, 8));
			for j in 0 to 255 loop
				add_2 <= std_logic_vector(to_unsigned(j, 8));
				
				test_sum := i - j;
				if test_sum < 0 then
					test_ovfl := '1';
				else
					test_ovfl := '0';
				end if;
				
				wait for 20 ns;
				
				assert 	sum = std_logic_vector(to_signed(test_sum, 8))
					report "Errore calcolo somma in sottrazione con i=" & integer'image(i) & " j=" & integer'image(j)
					severity error;
					
--				assert overflow = test_ovfl
--					report "Errore calcolo overflow in sottrazione con i=" & integer'image(i) & " j=" & integer'image(j)
--					severity error;
					
				if 	sum /= std_logic_vector(to_signed(test_sum, 8)) and
					overflow /= test_ovfl
														then
					error_count := error_count + 1;
				end if;
				
			end loop;
		end loop;
		
		--- report dell'error_count
		report "Si sono verificati " & integer'image(error_count) & " errori durante il test" severity note;

	wait;
	end process;

end;
