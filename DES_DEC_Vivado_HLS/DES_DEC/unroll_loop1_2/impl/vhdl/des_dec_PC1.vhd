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
          addr1      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce1       : in std_logic; 
          q1         : out std_logic_vector(DWIDTH-1 downto 0);
          addr2      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce2       : in std_logic; 
          q2         : out std_logic_vector(DWIDTH-1 downto 0);
          addr3      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce3       : in std_logic; 
          q3         : out std_logic_vector(DWIDTH-1 downto 0);
          addr4      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce4       : in std_logic; 
          q4         : out std_logic_vector(DWIDTH-1 downto 0);
          addr5      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce5       : in std_logic; 
          q5         : out std_logic_vector(DWIDTH-1 downto 0);
          addr6      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce6       : in std_logic; 
          q6         : out std_logic_vector(DWIDTH-1 downto 0);
          addr7      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce7       : in std_logic; 
          q7         : out std_logic_vector(DWIDTH-1 downto 0);
          addr8      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce8       : in std_logic; 
          q8         : out std_logic_vector(DWIDTH-1 downto 0);
          addr9      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce9       : in std_logic; 
          q9         : out std_logic_vector(DWIDTH-1 downto 0);
          addr10      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce10       : in std_logic; 
          q10         : out std_logic_vector(DWIDTH-1 downto 0);
          addr11      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce11       : in std_logic; 
          q11         : out std_logic_vector(DWIDTH-1 downto 0);
          addr12      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce12       : in std_logic; 
          q12         : out std_logic_vector(DWIDTH-1 downto 0);
          addr13      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce13       : in std_logic; 
          q13         : out std_logic_vector(DWIDTH-1 downto 0);
          addr14      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce14       : in std_logic; 
          q14         : out std_logic_vector(DWIDTH-1 downto 0);
          addr15      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce15       : in std_logic; 
          q15         : out std_logic_vector(DWIDTH-1 downto 0);
          addr16      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce16       : in std_logic; 
          q16         : out std_logic_vector(DWIDTH-1 downto 0);
          addr17      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce17       : in std_logic; 
          q17         : out std_logic_vector(DWIDTH-1 downto 0);
          addr18      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce18       : in std_logic; 
          q18         : out std_logic_vector(DWIDTH-1 downto 0);
          addr19      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce19       : in std_logic; 
          q19         : out std_logic_vector(DWIDTH-1 downto 0);
          addr20      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce20       : in std_logic; 
          q20         : out std_logic_vector(DWIDTH-1 downto 0);
          addr21      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce21       : in std_logic; 
          q21         : out std_logic_vector(DWIDTH-1 downto 0);
          addr22      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce22       : in std_logic; 
          q22         : out std_logic_vector(DWIDTH-1 downto 0);
          addr23      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce23       : in std_logic; 
          q23         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of des_dec_PC1_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr1_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr2_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr3_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr4_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr5_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr6_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr7_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr8_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr9_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr10_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr11_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr12_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr13_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr14_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr15_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr16_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr17_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr18_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr19_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr20_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr21_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr22_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr23_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem0 : mem_array := (
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
signal mem1 : mem_array := (
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
signal mem2 : mem_array := (
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
signal mem3 : mem_array := (
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
signal mem4 : mem_array := (
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
signal mem5 : mem_array := (
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
signal mem6 : mem_array := (
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
signal mem7 : mem_array := (
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
signal mem8 : mem_array := (
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
signal mem9 : mem_array := (
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
signal mem10 : mem_array := (
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
signal mem11 : mem_array := (
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
attribute syn_rom_style of mem0 : signal is "select_rom";
attribute syn_rom_style of mem1 : signal is "select_rom";
attribute syn_rom_style of mem2 : signal is "select_rom";
attribute syn_rom_style of mem3 : signal is "select_rom";
attribute syn_rom_style of mem4 : signal is "select_rom";
attribute syn_rom_style of mem5 : signal is "select_rom";
attribute syn_rom_style of mem6 : signal is "select_rom";
attribute syn_rom_style of mem7 : signal is "select_rom";
attribute syn_rom_style of mem8 : signal is "select_rom";
attribute syn_rom_style of mem9 : signal is "select_rom";
attribute syn_rom_style of mem10 : signal is "select_rom";
attribute syn_rom_style of mem11 : signal is "select_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem0 : signal is "distributed";
attribute ROM_STYLE of mem1 : signal is "distributed";
attribute ROM_STYLE of mem2 : signal is "distributed";
attribute ROM_STYLE of mem3 : signal is "distributed";
attribute ROM_STYLE of mem4 : signal is "distributed";
attribute ROM_STYLE of mem5 : signal is "distributed";
attribute ROM_STYLE of mem6 : signal is "distributed";
attribute ROM_STYLE of mem7 : signal is "distributed";
attribute ROM_STYLE of mem8 : signal is "distributed";
attribute ROM_STYLE of mem9 : signal is "distributed";
attribute ROM_STYLE of mem10 : signal is "distributed";
attribute ROM_STYLE of mem11 : signal is "distributed";

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

memory_access_guard_2: process (addr2) 
begin
      addr2_tmp <= addr2;
--synthesis translate_off
      if (CONV_INTEGER(addr2) > mem_size-1) then
           addr2_tmp <= (others => '0');
      else 
           addr2_tmp <= addr2;
      end if;
--synthesis translate_on
end process;

memory_access_guard_3: process (addr3) 
begin
      addr3_tmp <= addr3;
--synthesis translate_off
      if (CONV_INTEGER(addr3) > mem_size-1) then
           addr3_tmp <= (others => '0');
      else 
           addr3_tmp <= addr3;
      end if;
--synthesis translate_on
end process;

memory_access_guard_4: process (addr4) 
begin
      addr4_tmp <= addr4;
--synthesis translate_off
      if (CONV_INTEGER(addr4) > mem_size-1) then
           addr4_tmp <= (others => '0');
      else 
           addr4_tmp <= addr4;
      end if;
--synthesis translate_on
end process;

memory_access_guard_5: process (addr5) 
begin
      addr5_tmp <= addr5;
--synthesis translate_off
      if (CONV_INTEGER(addr5) > mem_size-1) then
           addr5_tmp <= (others => '0');
      else 
           addr5_tmp <= addr5;
      end if;
--synthesis translate_on
end process;

memory_access_guard_6: process (addr6) 
begin
      addr6_tmp <= addr6;
--synthesis translate_off
      if (CONV_INTEGER(addr6) > mem_size-1) then
           addr6_tmp <= (others => '0');
      else 
           addr6_tmp <= addr6;
      end if;
--synthesis translate_on
end process;

memory_access_guard_7: process (addr7) 
begin
      addr7_tmp <= addr7;
--synthesis translate_off
      if (CONV_INTEGER(addr7) > mem_size-1) then
           addr7_tmp <= (others => '0');
      else 
           addr7_tmp <= addr7;
      end if;
--synthesis translate_on
end process;

memory_access_guard_8: process (addr8) 
begin
      addr8_tmp <= addr8;
--synthesis translate_off
      if (CONV_INTEGER(addr8) > mem_size-1) then
           addr8_tmp <= (others => '0');
      else 
           addr8_tmp <= addr8;
      end if;
--synthesis translate_on
end process;

memory_access_guard_9: process (addr9) 
begin
      addr9_tmp <= addr9;
--synthesis translate_off
      if (CONV_INTEGER(addr9) > mem_size-1) then
           addr9_tmp <= (others => '0');
      else 
           addr9_tmp <= addr9;
      end if;
--synthesis translate_on
end process;

memory_access_guard_10: process (addr10) 
begin
      addr10_tmp <= addr10;
--synthesis translate_off
      if (CONV_INTEGER(addr10) > mem_size-1) then
           addr10_tmp <= (others => '0');
      else 
           addr10_tmp <= addr10;
      end if;
--synthesis translate_on
end process;

memory_access_guard_11: process (addr11) 
begin
      addr11_tmp <= addr11;
--synthesis translate_off
      if (CONV_INTEGER(addr11) > mem_size-1) then
           addr11_tmp <= (others => '0');
      else 
           addr11_tmp <= addr11;
      end if;
--synthesis translate_on
end process;

memory_access_guard_12: process (addr12) 
begin
      addr12_tmp <= addr12;
--synthesis translate_off
      if (CONV_INTEGER(addr12) > mem_size-1) then
           addr12_tmp <= (others => '0');
      else 
           addr12_tmp <= addr12;
      end if;
--synthesis translate_on
end process;

memory_access_guard_13: process (addr13) 
begin
      addr13_tmp <= addr13;
--synthesis translate_off
      if (CONV_INTEGER(addr13) > mem_size-1) then
           addr13_tmp <= (others => '0');
      else 
           addr13_tmp <= addr13;
      end if;
--synthesis translate_on
end process;

memory_access_guard_14: process (addr14) 
begin
      addr14_tmp <= addr14;
--synthesis translate_off
      if (CONV_INTEGER(addr14) > mem_size-1) then
           addr14_tmp <= (others => '0');
      else 
           addr14_tmp <= addr14;
      end if;
--synthesis translate_on
end process;

memory_access_guard_15: process (addr15) 
begin
      addr15_tmp <= addr15;
--synthesis translate_off
      if (CONV_INTEGER(addr15) > mem_size-1) then
           addr15_tmp <= (others => '0');
      else 
           addr15_tmp <= addr15;
      end if;
--synthesis translate_on
end process;

memory_access_guard_16: process (addr16) 
begin
      addr16_tmp <= addr16;
--synthesis translate_off
      if (CONV_INTEGER(addr16) > mem_size-1) then
           addr16_tmp <= (others => '0');
      else 
           addr16_tmp <= addr16;
      end if;
--synthesis translate_on
end process;

memory_access_guard_17: process (addr17) 
begin
      addr17_tmp <= addr17;
--synthesis translate_off
      if (CONV_INTEGER(addr17) > mem_size-1) then
           addr17_tmp <= (others => '0');
      else 
           addr17_tmp <= addr17;
      end if;
--synthesis translate_on
end process;

memory_access_guard_18: process (addr18) 
begin
      addr18_tmp <= addr18;
--synthesis translate_off
      if (CONV_INTEGER(addr18) > mem_size-1) then
           addr18_tmp <= (others => '0');
      else 
           addr18_tmp <= addr18;
      end if;
--synthesis translate_on
end process;

memory_access_guard_19: process (addr19) 
begin
      addr19_tmp <= addr19;
--synthesis translate_off
      if (CONV_INTEGER(addr19) > mem_size-1) then
           addr19_tmp <= (others => '0');
      else 
           addr19_tmp <= addr19;
      end if;
--synthesis translate_on
end process;

memory_access_guard_20: process (addr20) 
begin
      addr20_tmp <= addr20;
--synthesis translate_off
      if (CONV_INTEGER(addr20) > mem_size-1) then
           addr20_tmp <= (others => '0');
      else 
           addr20_tmp <= addr20;
      end if;
--synthesis translate_on
end process;

memory_access_guard_21: process (addr21) 
begin
      addr21_tmp <= addr21;
--synthesis translate_off
      if (CONV_INTEGER(addr21) > mem_size-1) then
           addr21_tmp <= (others => '0');
      else 
           addr21_tmp <= addr21;
      end if;
--synthesis translate_on
end process;

memory_access_guard_22: process (addr22) 
begin
      addr22_tmp <= addr22;
--synthesis translate_off
      if (CONV_INTEGER(addr22) > mem_size-1) then
           addr22_tmp <= (others => '0');
      else 
           addr22_tmp <= addr22;
      end if;
--synthesis translate_on
end process;

memory_access_guard_23: process (addr23) 
begin
      addr23_tmp <= addr23;
--synthesis translate_off
      if (CONV_INTEGER(addr23) > mem_size-1) then
           addr23_tmp <= (others => '0');
      else 
           addr23_tmp <= addr23;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem0(CONV_INTEGER(addr0_tmp)); 
        end if;
        if (ce1 = '1') then 
            q1 <= mem0(CONV_INTEGER(addr1_tmp)); 
        end if;
        if (ce2 = '1') then 
            q2 <= mem1(CONV_INTEGER(addr2_tmp)); 
        end if;
        if (ce3 = '1') then 
            q3 <= mem1(CONV_INTEGER(addr3_tmp)); 
        end if;
        if (ce4 = '1') then 
            q4 <= mem2(CONV_INTEGER(addr4_tmp)); 
        end if;
        if (ce5 = '1') then 
            q5 <= mem2(CONV_INTEGER(addr5_tmp)); 
        end if;
        if (ce6 = '1') then 
            q6 <= mem3(CONV_INTEGER(addr6_tmp)); 
        end if;
        if (ce7 = '1') then 
            q7 <= mem3(CONV_INTEGER(addr7_tmp)); 
        end if;
        if (ce8 = '1') then 
            q8 <= mem4(CONV_INTEGER(addr8_tmp)); 
        end if;
        if (ce9 = '1') then 
            q9 <= mem4(CONV_INTEGER(addr9_tmp)); 
        end if;
        if (ce10 = '1') then 
            q10 <= mem5(CONV_INTEGER(addr10_tmp)); 
        end if;
        if (ce11 = '1') then 
            q11 <= mem5(CONV_INTEGER(addr11_tmp)); 
        end if;
        if (ce12 = '1') then 
            q12 <= mem6(CONV_INTEGER(addr12_tmp)); 
        end if;
        if (ce13 = '1') then 
            q13 <= mem6(CONV_INTEGER(addr13_tmp)); 
        end if;
        if (ce14 = '1') then 
            q14 <= mem7(CONV_INTEGER(addr14_tmp)); 
        end if;
        if (ce15 = '1') then 
            q15 <= mem7(CONV_INTEGER(addr15_tmp)); 
        end if;
        if (ce16 = '1') then 
            q16 <= mem8(CONV_INTEGER(addr16_tmp)); 
        end if;
        if (ce17 = '1') then 
            q17 <= mem8(CONV_INTEGER(addr17_tmp)); 
        end if;
        if (ce18 = '1') then 
            q18 <= mem9(CONV_INTEGER(addr18_tmp)); 
        end if;
        if (ce19 = '1') then 
            q19 <= mem9(CONV_INTEGER(addr19_tmp)); 
        end if;
        if (ce20 = '1') then 
            q20 <= mem10(CONV_INTEGER(addr20_tmp)); 
        end if;
        if (ce21 = '1') then 
            q21 <= mem10(CONV_INTEGER(addr21_tmp)); 
        end if;
        if (ce22 = '1') then 
            q22 <= mem11(CONV_INTEGER(addr22_tmp)); 
        end if;
        if (ce23 = '1') then 
            q23 <= mem11(CONV_INTEGER(addr23_tmp)); 
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
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address1 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce1 : IN STD_LOGIC;
        q1 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address2 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce2 : IN STD_LOGIC;
        q2 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address3 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce3 : IN STD_LOGIC;
        q3 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address4 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce4 : IN STD_LOGIC;
        q4 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address5 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce5 : IN STD_LOGIC;
        q5 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address6 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce6 : IN STD_LOGIC;
        q6 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address7 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce7 : IN STD_LOGIC;
        q7 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address8 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce8 : IN STD_LOGIC;
        q8 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address9 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce9 : IN STD_LOGIC;
        q9 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address10 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce10 : IN STD_LOGIC;
        q10 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address11 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce11 : IN STD_LOGIC;
        q11 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address12 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce12 : IN STD_LOGIC;
        q12 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address13 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce13 : IN STD_LOGIC;
        q13 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address14 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce14 : IN STD_LOGIC;
        q14 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address15 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce15 : IN STD_LOGIC;
        q15 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address16 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce16 : IN STD_LOGIC;
        q16 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address17 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce17 : IN STD_LOGIC;
        q17 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address18 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce18 : IN STD_LOGIC;
        q18 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address19 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce19 : IN STD_LOGIC;
        q19 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address20 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce20 : IN STD_LOGIC;
        q20 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address21 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce21 : IN STD_LOGIC;
        q21 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address22 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce22 : IN STD_LOGIC;
        q22 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address23 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce23 : IN STD_LOGIC;
        q23 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of des_dec_PC1 is
    component des_dec_PC1_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR;
            addr1 : IN STD_LOGIC_VECTOR;
            ce1 : IN STD_LOGIC;
            q1 : OUT STD_LOGIC_VECTOR;
            addr2 : IN STD_LOGIC_VECTOR;
            ce2 : IN STD_LOGIC;
            q2 : OUT STD_LOGIC_VECTOR;
            addr3 : IN STD_LOGIC_VECTOR;
            ce3 : IN STD_LOGIC;
            q3 : OUT STD_LOGIC_VECTOR;
            addr4 : IN STD_LOGIC_VECTOR;
            ce4 : IN STD_LOGIC;
            q4 : OUT STD_LOGIC_VECTOR;
            addr5 : IN STD_LOGIC_VECTOR;
            ce5 : IN STD_LOGIC;
            q5 : OUT STD_LOGIC_VECTOR;
            addr6 : IN STD_LOGIC_VECTOR;
            ce6 : IN STD_LOGIC;
            q6 : OUT STD_LOGIC_VECTOR;
            addr7 : IN STD_LOGIC_VECTOR;
            ce7 : IN STD_LOGIC;
            q7 : OUT STD_LOGIC_VECTOR;
            addr8 : IN STD_LOGIC_VECTOR;
            ce8 : IN STD_LOGIC;
            q8 : OUT STD_LOGIC_VECTOR;
            addr9 : IN STD_LOGIC_VECTOR;
            ce9 : IN STD_LOGIC;
            q9 : OUT STD_LOGIC_VECTOR;
            addr10 : IN STD_LOGIC_VECTOR;
            ce10 : IN STD_LOGIC;
            q10 : OUT STD_LOGIC_VECTOR;
            addr11 : IN STD_LOGIC_VECTOR;
            ce11 : IN STD_LOGIC;
            q11 : OUT STD_LOGIC_VECTOR;
            addr12 : IN STD_LOGIC_VECTOR;
            ce12 : IN STD_LOGIC;
            q12 : OUT STD_LOGIC_VECTOR;
            addr13 : IN STD_LOGIC_VECTOR;
            ce13 : IN STD_LOGIC;
            q13 : OUT STD_LOGIC_VECTOR;
            addr14 : IN STD_LOGIC_VECTOR;
            ce14 : IN STD_LOGIC;
            q14 : OUT STD_LOGIC_VECTOR;
            addr15 : IN STD_LOGIC_VECTOR;
            ce15 : IN STD_LOGIC;
            q15 : OUT STD_LOGIC_VECTOR;
            addr16 : IN STD_LOGIC_VECTOR;
            ce16 : IN STD_LOGIC;
            q16 : OUT STD_LOGIC_VECTOR;
            addr17 : IN STD_LOGIC_VECTOR;
            ce17 : IN STD_LOGIC;
            q17 : OUT STD_LOGIC_VECTOR;
            addr18 : IN STD_LOGIC_VECTOR;
            ce18 : IN STD_LOGIC;
            q18 : OUT STD_LOGIC_VECTOR;
            addr19 : IN STD_LOGIC_VECTOR;
            ce19 : IN STD_LOGIC;
            q19 : OUT STD_LOGIC_VECTOR;
            addr20 : IN STD_LOGIC_VECTOR;
            ce20 : IN STD_LOGIC;
            q20 : OUT STD_LOGIC_VECTOR;
            addr21 : IN STD_LOGIC_VECTOR;
            ce21 : IN STD_LOGIC;
            q21 : OUT STD_LOGIC_VECTOR;
            addr22 : IN STD_LOGIC_VECTOR;
            ce22 : IN STD_LOGIC;
            q22 : OUT STD_LOGIC_VECTOR;
            addr23 : IN STD_LOGIC_VECTOR;
            ce23 : IN STD_LOGIC;
            q23 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    des_dec_PC1_rom_U :  component des_dec_PC1_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0,
        addr1 => address1,
        ce1 => ce1,
        q1 => q1,
        addr2 => address2,
        ce2 => ce2,
        q2 => q2,
        addr3 => address3,
        ce3 => ce3,
        q3 => q3,
        addr4 => address4,
        ce4 => ce4,
        q4 => q4,
        addr5 => address5,
        ce5 => ce5,
        q5 => q5,
        addr6 => address6,
        ce6 => ce6,
        q6 => q6,
        addr7 => address7,
        ce7 => ce7,
        q7 => q7,
        addr8 => address8,
        ce8 => ce8,
        q8 => q8,
        addr9 => address9,
        ce9 => ce9,
        q9 => q9,
        addr10 => address10,
        ce10 => ce10,
        q10 => q10,
        addr11 => address11,
        ce11 => ce11,
        q11 => q11,
        addr12 => address12,
        ce12 => ce12,
        q12 => q12,
        addr13 => address13,
        ce13 => ce13,
        q13 => q13,
        addr14 => address14,
        ce14 => ce14,
        q14 => q14,
        addr15 => address15,
        ce15 => ce15,
        q15 => q15,
        addr16 => address16,
        ce16 => ce16,
        q16 => q16,
        addr17 => address17,
        ce17 => ce17,
        q17 => q17,
        addr18 => address18,
        ce18 => ce18,
        q18 => q18,
        addr19 => address19,
        ce19 => ce19,
        q19 => q19,
        addr20 => address20,
        ce20 => ce20,
        q20 => q20,
        addr21 => address21,
        ce21 => ce21,
        q21 => q21,
        addr22 => address22,
        ce22 => ce22,
        q22 => q22,
        addr23 => address23,
        ce23 => ce23,
        q23 => q23);

end architecture;


