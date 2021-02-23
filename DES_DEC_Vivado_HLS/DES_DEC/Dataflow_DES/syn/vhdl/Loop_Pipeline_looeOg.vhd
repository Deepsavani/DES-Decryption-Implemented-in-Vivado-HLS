-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity Loop_Pipeline_looeOg_rom is 
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


architecture rtl of Loop_Pipeline_looeOg_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "100000", 1 => "000001", 2 => "000010", 3 => "000011", 4 => "000100", 
    5 => "000101", 6 => "000100", 7 => "000101", 8 => "000110", 9 => "000111", 
    10 => "001000", 11 => "001001", 12 => "001000", 13 => "001001", 14 => "001010", 
    15 => "001011", 16 => "001100", 17 => "001101", 18 => "001100", 19 => "001101", 
    20 => "001110", 21 => "001111", 22 => "010000", 23 => "010001", 24 => "010000", 
    25 => "010001", 26 => "010010", 27 => "010011", 28 => "010100", 29 => "010101", 
    30 => "010100", 31 => "010101", 32 => "010110", 33 => "010111", 34 => "011000", 
    35 => "011001", 36 => "011000", 37 => "011001", 38 => "011010", 39 => "011011", 
    40 => "011100", 41 => "011101", 42 => "011100", 43 => "011101", 44 => "011110", 
    45 => "011111", 46 => "100000", 47 => "000001" );

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

entity Loop_Pipeline_looeOg is
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

architecture arch of Loop_Pipeline_looeOg is
    component Loop_Pipeline_looeOg_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    Loop_Pipeline_looeOg_rom_U :  component Loop_Pipeline_looeOg_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


