-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity Loop_loop3_proc_PC2_rom is 
    generic(
             DWIDTH     : integer := 6; 
             AWIDTH     : integer := 6; 
             MEM_SIZE    : integer := 48
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of Loop_loop3_proc_PC2_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "001110", 1 => "010001", 2 => "001011", 3 => "011000", 4 => "000001", 
    5 => "000101", 6 => "000011", 7 => "011100", 8 => "001111", 9 => "000110", 
    10 => "010101", 11 => "001010", 12 => "010111", 13 => "010011", 14 => "001100", 
    15 => "000100", 16 => "011010", 17 => "001000", 18 => "010000", 19 => "000111", 
    20 => "011011", 21 => "010100", 22 => "001101", 23 => "000010", 24 => "101001", 
    25 => "110100", 26 => "011111", 27 => "100101", 28 => "101111", 29 => "110111", 
    30 => "011110", 31 => "101000", 32 => "110011", 33 => "101101", 34 => "100001", 
    35 => "110000", 36 => "101100", 37 => "110001", 38 => "100111", 39 => "111000", 
    40 => "100010", 41 => "110101", 42 => "101110", 43 => "101010", 44 => "110010", 
    45 => "100100", 46 => "011101", 47 => "100000" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem : signal is "select_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem : signal is "distributed";

begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity Loop_loop3_proc_PC2 is
    generic (
        DataWidth : INTEGER := 6;
        AddressRange : INTEGER := 48;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of Loop_loop3_proc_PC2 is
    component Loop_loop3_proc_PC2_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    Loop_loop3_proc_PC2_rom_U :  component Loop_loop3_proc_PC2_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


