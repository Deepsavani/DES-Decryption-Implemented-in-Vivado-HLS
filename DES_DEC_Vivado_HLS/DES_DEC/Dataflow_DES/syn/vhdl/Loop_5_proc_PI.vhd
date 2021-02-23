-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity Loop_5_proc_PI_rom is 
    generic(
             DWIDTH     : integer := 7; 
             AWIDTH     : integer := 6; 
             MEM_SIZE    : integer := 64
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of Loop_5_proc_PI_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0101000", 1 => "0001000", 2 => "0110000", 3 => "0010000", 
    4 => "0111000", 5 => "0011000", 6 => "1000000", 7 => "0100000", 
    8 => "0100111", 9 => "0000111", 10 => "0101111", 11 => "0001111", 
    12 => "0110111", 13 => "0010111", 14 => "0111111", 15 => "0011111", 
    16 => "0100110", 17 => "0000110", 18 => "0101110", 19 => "0001110", 
    20 => "0110110", 21 => "0010110", 22 => "0111110", 23 => "0011110", 
    24 => "0100101", 25 => "0000101", 26 => "0101101", 27 => "0001101", 
    28 => "0110101", 29 => "0010101", 30 => "0111101", 31 => "0011101", 
    32 => "0100100", 33 => "0000100", 34 => "0101100", 35 => "0001100", 
    36 => "0110100", 37 => "0010100", 38 => "0111100", 39 => "0011100", 
    40 => "0100011", 41 => "0000011", 42 => "0101011", 43 => "0001011", 
    44 => "0110011", 45 => "0010011", 46 => "0111011", 47 => "0011011", 
    48 => "0100010", 49 => "0000010", 50 => "0101010", 51 => "0001010", 
    52 => "0110010", 53 => "0010010", 54 => "0111010", 55 => "0011010", 
    56 => "0100001", 57 => "0000001", 58 => "0101001", 59 => "0001001", 
    60 => "0110001", 61 => "0010001", 62 => "0111001", 63 => "0011001" );

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

entity Loop_5_proc_PI is
    generic (
        DataWidth : INTEGER := 7;
        AddressRange : INTEGER := 64;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of Loop_5_proc_PI is
    component Loop_5_proc_PI_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    Loop_5_proc_PI_rom_U :  component Loop_5_proc_PI_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


