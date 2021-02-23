-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
--
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity des_dec_array_temp_ram is 
    generic(
            MEM_TYPE    : string := "block"; 
            DWIDTH     : integer := 48; 
            AWIDTH     : integer := 8; 
            MEM_SIZE    : integer := 144
    ); 
    port (
          addr0     : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          d0        : in std_logic_vector(DWIDTH-1 downto 0); 
          we0       : in std_logic; 
          q0        : out std_logic_vector(DWIDTH-1 downto 0);
          addr1     : in std_logic_vector(AWIDTH-1 downto 0); 
          ce1       : in std_logic; 
          d1        : in std_logic_vector(DWIDTH-1 downto 0); 
          we1       : in std_logic; 
          q1        : out std_logic_vector(DWIDTH-1 downto 0);
          clk        : in std_logic 
    ); 
end entity; 


architecture rtl of des_dec_array_temp_ram is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr1_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
shared variable ram : mem_array := (
    0 to 15=> "000000000000000000000000000000000000000000000000", 
    16 => "000000000000000000000000000000000000000000111010", 
    17 => "000000000000000000000000000000000000000000110010", 
    18 => "000000000000000000000000000000000000000000101010", 
    19 => "000000000000000000000000000000000000000000100010", 
    20 => "000000000000000000000000000000000000000000011010", 
    21 => "000000000000000000000000000000000000000000010010", 
    22 => "000000000000000000000000000000000000000000001010", 
    23 => "000000000000000000000000000000000000000000000010", 
    24 => "000000000000000000000000000000000000000000111100", 
    25 => "000000000000000000000000000000000000000000110100", 
    26 => "000000000000000000000000000000000000000000101100", 
    27 => "000000000000000000000000000000000000000000100100", 
    28 => "000000000000000000000000000000000000000000011100", 
    29 => "000000000000000000000000000000000000000000010100", 
    30 => "000000000000000000000000000000000000000000001100", 
    31 => "000000000000000000000000000000000000000000000100", 
    32 => "000000000000000000000000000000000000000000111110", 
    33 => "000000000000000000000000000000000000000000110110", 
    34 => "000000000000000000000000000000000000000000101110", 
    35 => "000000000000000000000000000000000000000000100110", 
    36 => "000000000000000000000000000000000000000000011110", 
    37 => "000000000000000000000000000000000000000000010110", 
    38 => "000000000000000000000000000000000000000000001110", 
    39 => "000000000000000000000000000000000000000000000110", 
    40 => "000000000000000000000000000000000000000001000000", 
    41 => "000000000000000000000000000000000000000000111000", 
    42 => "000000000000000000000000000000000000000000110000", 
    43 => "000000000000000000000000000000000000000000101000", 
    44 => "000000000000000000000000000000000000000000100000", 
    45 => "000000000000000000000000000000000000000000011000", 
    46 => "000000000000000000000000000000000000000000010000", 
    47 => "000000000000000000000000000000000000000000001000", 
    48 => "000000000000000000000000000000000000000000111001", 
    49 => "000000000000000000000000000000000000000000110001", 
    50 => "000000000000000000000000000000000000000000101001", 
    51 => "000000000000000000000000000000000000000000100001", 
    52 => "000000000000000000000000000000000000000000011001", 
    53 => "000000000000000000000000000000000000000000010001", 
    54 => "000000000000000000000000000000000000000000001001", 
    55 => "000000000000000000000000000000000000000000000001", 
    56 => "000000000000000000000000000000000000000000111011", 
    57 => "000000000000000000000000000000000000000000110011", 
    58 => "000000000000000000000000000000000000000000101011", 
    59 => "000000000000000000000000000000000000000000100011", 
    60 => "000000000000000000000000000000000000000000011011", 
    61 => "000000000000000000000000000000000000000000010011", 
    62 => "000000000000000000000000000000000000000000001011", 
    63 => "000000000000000000000000000000000000000000000011", 
    64 => "000000000000000000000000000000000000000000111101", 
    65 => "000000000000000000000000000000000000000000110101", 
    66 => "000000000000000000000000000000000000000000101101", 
    67 => "000000000000000000000000000000000000000000100101", 
    68 => "000000000000000000000000000000000000000000011101", 
    69 => "000000000000000000000000000000000000000000010101", 
    70 => "000000000000000000000000000000000000000000001101", 
    71 => "000000000000000000000000000000000000000000000101", 
    72 => "000000000000000000000000000000000000000000111111", 
    73 => "000000000000000000000000000000000000000000110111", 
    74 => "000000000000000000000000000000000000000000101111", 
    75 => "000000000000000000000000000000000000000000100111", 
    76 => "000000000000000000000000000000000000000000011111", 
    77 => "000000000000000000000000000000000000000000010111", 
    78 => "000000000000000000000000000000000000000000001111", 
    79 => "000000000000000000000000000000000000000000000111", 
    80 => "000000000000000000000000000000000000000000101000", 
    81 => "000000000000000000000000000000000000000000001000", 
    82 => "000000000000000000000000000000000000000000110000", 
    83 => "000000000000000000000000000000000000000000010000", 
    84 => "000000000000000000000000000000000000000000111000", 
    85 => "000000000000000000000000000000000000000000011000", 
    86 => "000000000000000000000000000000000000000001000000", 
    87 => "000000000000000000000000000000000000000000100000", 
    88 => "000000000000000000000000000000000000000000100111", 
    89 => "000000000000000000000000000000000000000000000111", 
    90 => "000000000000000000000000000000000000000000101111", 
    91 => "000000000000000000000000000000000000000000001111", 
    92 => "000000000000000000000000000000000000000000110111", 
    93 => "000000000000000000000000000000000000000000010111", 
    94 => "000000000000000000000000000000000000000000111111", 
    95 => "000000000000000000000000000000000000000000011111", 
    96 => "000000000000000000000000000000000000000000100110", 
    97 => "000000000000000000000000000000000000000000000110", 
    98 => "000000000000000000000000000000000000000000101110", 
    99 => "000000000000000000000000000000000000000000001110", 
    100 => "000000000000000000000000000000000000000000110110", 
    101 => "000000000000000000000000000000000000000000010110", 
    102 => "000000000000000000000000000000000000000000111110", 
    103 => "000000000000000000000000000000000000000000011110", 
    104 => "000000000000000000000000000000000000000000100101", 
    105 => "000000000000000000000000000000000000000000000101", 
    106 => "000000000000000000000000000000000000000000101101", 
    107 => "000000000000000000000000000000000000000000001101", 
    108 => "000000000000000000000000000000000000000000110101", 
    109 => "000000000000000000000000000000000000000000010101", 
    110 => "000000000000000000000000000000000000000000111101", 
    111 => "000000000000000000000000000000000000000000011101", 
    112 => "000000000000000000000000000000000000000000100100", 
    113 => "000000000000000000000000000000000000000000000100", 
    114 => "000000000000000000000000000000000000000000101100", 
    115 => "000000000000000000000000000000000000000000001100", 
    116 => "000000000000000000000000000000000000000000110100", 
    117 => "000000000000000000000000000000000000000000010100", 
    118 => "000000000000000000000000000000000000000000111100", 
    119 => "000000000000000000000000000000000000000000011100", 
    120 => "000000000000000000000000000000000000000000100011", 
    121 => "000000000000000000000000000000000000000000000011", 
    122 => "000000000000000000000000000000000000000000101011", 
    123 => "000000000000000000000000000000000000000000001011", 
    124 => "000000000000000000000000000000000000000000110011", 
    125 => "000000000000000000000000000000000000000000010011", 
    126 => "000000000000000000000000000000000000000000111011", 
    127 => "000000000000000000000000000000000000000000011011", 
    128 => "000000000000000000000000000000000000000000100010", 
    129 => "000000000000000000000000000000000000000000000010", 
    130 => "000000000000000000000000000000000000000000101010", 
    131 => "000000000000000000000000000000000000000000001010", 
    132 => "000000000000000000000000000000000000000000110010", 
    133 => "000000000000000000000000000000000000000000010010", 
    134 => "000000000000000000000000000000000000000000111010", 
    135 => "000000000000000000000000000000000000000000011010", 
    136 => "000000000000000000000000000000000000000000100001", 
    137 => "000000000000000000000000000000000000000000000001", 
    138 => "000000000000000000000000000000000000000000101001", 
    139 => "000000000000000000000000000000000000000000001001", 
    140 => "000000000000000000000000000000000000000000110001", 
    141 => "000000000000000000000000000000000000000000010001", 
    142 => "000000000000000000000000000000000000000000111001", 
    143 => "000000000000000000000000000000000000000000011001" );

attribute syn_ramstyle : string; 
attribute syn_ramstyle of ram : variable is "block_ram";
attribute ram_style : string;
attribute ram_style of ram : variable is MEM_TYPE;

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

p_memory_access_0: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            if (we0 = '1') then 
                ram(CONV_INTEGER(addr0_tmp)) := d0; 
            end if;
            q0 <= ram(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
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

p_memory_access_1: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce1 = '1') then 
            if (we1 = '1') then 
                ram(CONV_INTEGER(addr1_tmp)) := d1; 
            end if;
            q1 <= ram(CONV_INTEGER(addr1_tmp)); 
        end if;
    end if;
end process;


end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity des_dec_array_temp is
    generic (
        DataWidth : INTEGER := 48;
        AddressRange : INTEGER := 144;
        AddressWidth : INTEGER := 8);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address1 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce1 : IN STD_LOGIC;
        we1 : IN STD_LOGIC;
        d1 : IN STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        q1 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of des_dec_array_temp is
    component des_dec_array_temp_ram is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            we0 : IN STD_LOGIC;
            d0 : IN STD_LOGIC_VECTOR;
            q0 : OUT STD_LOGIC_VECTOR;
            addr1 : IN STD_LOGIC_VECTOR;
            ce1 : IN STD_LOGIC;
            we1 : IN STD_LOGIC;
            d1 : IN STD_LOGIC_VECTOR;
            q1 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    des_dec_array_temp_ram_U :  component des_dec_array_temp_ram
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        we0 => we0,
        d0 => d0,
        q0 => q0,
        addr1 => address1,
        ce1 => ce1,
        we1 => we1,
        d1 => d1,
        q1 => q1);

end architecture;

