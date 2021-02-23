-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity des_dec_PC1_rom is 
    generic(
             DWIDTH     : integer := 6; 
             AWIDTH     : integer := 6; 
             MEM_SIZE    : integer := 56
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of des_dec_PC1_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111001", 1 => "110001", 2 => "101001", 3 => "100001", 4 => "011001", 
    5 => "010001", 6 => "001001", 7 => "000001", 8 => "111010", 9 => "110010", 
    10 => "101010", 11 => "100010", 12 => "011010", 13 => "010010", 14 => "001010", 
    15 => "000010", 16 => "111011", 17 => "110011", 18 => "101011", 19 => "100011", 
    20 => "011011", 21 => "010011", 22 => "001011", 23 => "000011", 24 => "111100", 
    25 => "110100", 26 => "101100", 27 => "100100", 28 => "111111", 29 => "110111", 
    30 => "101111", 31 => "100111", 32 => "011111", 33 => "010111", 34 => "001111", 
    35 => "000111", 36 => "111110", 37 => "110110", 38 => "101110", 39 => "100110", 
    40 => "011110", 41 => "010110", 42 => "001110", 43 => "000110", 44 => "111101", 
    45 => "110101", 46 => "101101", 47 => "100101", 48 => "011101", 49 => "010101", 
    50 => "001101", 51 => "000101", 52 => "011100", 53 => "010100", 54 => "001100", 
    55 => "000100" );

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

entity des_dec_PC1 is
    generic (
        DataWidth : INTEGER := 6;
        AddressRange : INTEGER := 56;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of des_dec_PC1 is
    component des_dec_PC1_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    des_dec_PC1_rom_U :  component des_dec_PC1_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


