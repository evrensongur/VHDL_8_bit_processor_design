library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity CPU is
    port (
        clk         : in std_logic;
        rst         : in std_logic;
        from_memory : in std_logic_vector(7 downto 0);

        to_memory   : out std_logic_vector(7 downto 0);
        write_en    : out std_logic;
        address     : out std_logic_vector(7 downto 0)   
    );
end entity CPU;

architecture arch of CPU is
component control_unit is
        port(
                clk			: in std_logic;
                rst			: in std_logic;
                CCR_Result	: in std_logic_vector(3 downto 0);
                IR			: in std_logic_vector(7 downto 0);
                
                IR_Load		: out std_logic;	
                MAR_Load 	: out std_logic;
                PC_Load 	: out std_logic;
                PC_Inc 		: out std_logic;
                A_Load 		: out std_logic;
                B_Load 		: out std_logic;
                ALU_Sel 	: out std_logic_vector(2 downto 0);
                CCR_Load 	: out std_logic;
                BUS1_Sel	: out std_logic_vector(1 downto 0);
                BUS2_Sel	: out std_logic_vector(1 downto 0);
                write_en	: out std_logic
    
        );
end component control_unit;    
component data_path is
    port (
        clk      :in std_logic;     
        rst      :in std_logic;       
        IR_LOAD  :in std_logic; 
        MAR_LOAD :in std_logic;     
        PC_LOAD  :in std_logic; 
        PC_INC   :in std_logic; 
        A_LOAD   :in std_logic;
        B_LOAD   :in std_logic;
        ALU_SEL  :in std_logic_vector(2 downto 0);
        CCR_LOAD :in std_logic;
        BUS1_SEL: in std_logic_vector(1 downto 0);
        BUS2_SEL: in std_logic_vector(1 downto 0);
        FROM_MEMORY: in std_logic_vector(7 downto 0);
        IR          : out std_logic_vector(7 downto 0);
        ADDRESS     : out std_logic_vector(7 downto 0);
        CCR_RESULT  : out std_logic_vector(3 downto 0);
        TO_MEMORY   : out std_logic_vector(7 downto 0)
    );
end component data_path;
signal IR_LOAD  : std_logic;  
signal IR		: std_logic_vector(7 downto 0);  
signal MAR_LOAD : std_logic;    
signal PC_LOAD  : std_logic;    
signal PC_INC   : std_logic;    
signal A_LOAD   : std_logic;    
signal B_LOAD   : std_logic;    
signal ALU_SEL  : std_logic_vector(2 downto 0);    
signal CCR_LOAD : std_logic;
signal CCR_RESULT : std_logic_vector(3 downto 0);    
signal BUS1_SEL : std_logic_vector(1 downto 0);     
signal BUS2_SEL : std_logic_vector(1 downto 0);   

begin
control_unit_module: control_unit port map(
                    clk		   =>clk,
                    rst		   => rst,
                    CCR_Result => CCR_Result,
                    IR		   => IR,
                                    
                    IR_Load	   => IR_Load,
                    MAR_Load   => MAR_Load,
                    PC_Load    => PC_Load,
                    PC_Inc 	   => PC_Inc,
                    A_Load 	   => A_Load,
                    B_Load 	   => B_Load,
                    ALU_Sel    => ALU_Sel,
                    CCR_Load   => CCR_Load,
                    BUS1_Sel   => BUS1_Sel,
                    BUS2_Sel   => BUS2_Sel,
                    write_en   =>  write_en               
                );    
data_path_module:data_path port map(
                clk         => clk,        
                rst         => rst,           
                IR_LOAD     => IR_LOAD,            
                MAR_LOAD    => MAR_LOAD,              
                PC_LOAD     => PC_LOAD,                   
                PC_INC      => PC_INC,                        
                A_LOAD      => A_LOAD,                        
                B_LOAD      => B_LOAD ,                       
                ALU_SEL     => ALU_SEL,                       
                CCR_LOAD    => CCR_LOAD,                      
                BUS1_SEL    => BUS1_SEL,                       
                BUS2_SEL    => BUS2_SEL,                       
                FROM_MEMORY => FROM_MEMORY,               
                IR          => IR,                    
                ADDRESS     => ADDRESS,           
                CCR_RESULT  => CCR_RESULT,    
                TO_MEMORY   => TO_MEMORY      

                );    
    
end architecture arch;