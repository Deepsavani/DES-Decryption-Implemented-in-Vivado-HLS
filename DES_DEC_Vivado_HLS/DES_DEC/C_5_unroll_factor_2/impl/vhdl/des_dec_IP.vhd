-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity des_dec_IP_rom is 
    generic(
             DWIDTH     : integer := 7; 
             AWIDTH     : integer := 6; 
             MEM_SIZE    : integer := 64
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          addr1      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce1       : in std_logic; 
          q1         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of des_dec_IP_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr1_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0111010", 1 => "0110010", 2 => "0101010", 3 => "0100010", 
    4 => "0011010", 5 => "0010010", 6 => "0001010", 7 => "0000010", 
    8 => "0111100", 9 => "0110100", 10 => "0101100", 11 => "0100100", 
    12 => "0011100", 13 => "0010100", 14 => "0001100", 15 => "0000100", 
    16 => "0111110", 17 => "0110110", 18 => "0101110", 19 => "0100110", 
    20 => "0011110", 21 => "0010110", 22 => "0001110", 23 => "0000110", 
    24 => "1000000", 25 => "0111000", 26 => "0110000", 27 => "0101000", 
    28 => "0100000", 29 => "0011000", 30 => "0010000", 31 => "0001000", 
    32 => "0111001", 33 => "0110001", 34 => "0101001", 35 => "0100001", 
    36 => "0011001", 37 => "0010001", 38 => "0001001", 39 => "0000001", 
    40 => "0111011", 41 => "0110011", 42 => "0101011", 43 => "0100011", 
    44 => "0011011", 45 => "0010011", 46 => "0001011", 47 => "0000011", 
    48 => "0111101", 49 => "0110101", 50 => "0101101", 51 => "0100101", 
    52 => "0011101", 53 => "0010101", 54 => "0001101", 55 => "0000101", 
    56 => "0111111", 57 => "0110111", 58 => "0101111", 59 => "0100111", 
    60 => "0011111", 61 => "0010111", 62 => "0001111", 63 => "0000111" );

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

memory_access_guard_1: process (addr1) 
begin
      addr1_tmp <= addr1;
--synthesis translate_off
      if (CONV_INTEGER(addr1) > mem_size-1) then
           addr1_tmp <= (others => '0');
      else 
           addr1_tmp <= addr1;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
        if (ce1 = '1') then 
            q1 <= mem(CONV_INTEGER(addr1_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity des_dec_IP is
    generic (
        DataWidth : INTEGER := 7;
        AddressRange : INTEGER := 64;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address1 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce1 : IN STD_LOGIC;
        q1 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of des_dec_IP is
    component des_dec_IP_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR;
            addr1 : IN STD_LOGIC_VECTOR;
            ce1 : IN STD_LOGIC;
            q1 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    des_dec_IP_rom_U :  component des_dec_IP_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0,
        addr1 => address1,
        ce1 => ce1,
        q1 => q1);

end architecture;


