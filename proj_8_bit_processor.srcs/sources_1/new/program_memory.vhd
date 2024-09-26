 library IEEE;
 use IEEE.std_logic_1164.all;
 use IEEE.numeric_std.all;
 use IEEE.std_logic_unsigned.all;

 entity program_memory is
    port (
        clk : in std_logic;
        address : in std_logic_vector(7 downto 0);
        --- Output:
        data_out : out std_logic_vector(7 downto 0)

    );
 end entity program_memory;
 architecture arch of program_memory is
    type rom_type is array (0 to 127) of std_logic_vector(7 downto 0);
    constant ROM : rom_type :=(
        0 => x"87",
        1 => x"F0",
        2 => x"89",
        3 => x"F1",
        4 => x"42",
		5 => x"23",
		6 => x"0B",		
		7 => x"96",
		8 => X"80",	
		9=> x"20",
		10=> x"20",
		11=> x"87",
		12=> x"F2",	-- input port-02	
		13=> x"20",
		14=> x"04",
        others => x"00"
    );
signal enable :std_logic;

begin
process(address) 
begin
    if (address >=x"00" and address <= x"7F") then
        enable <= '1';
    else 
        enable <= '0';
    end if;
end process;    
process (clk)
begin
    if (rising_edge(clk)) then
        if (enable ='1') then
            data_out <= ROM(to_integer(unsigned (address)));

        end if;
    end if;
end process;    
    
end architecture arch;