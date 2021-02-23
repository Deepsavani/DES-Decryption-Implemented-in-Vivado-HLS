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
          addr24      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce24       : in std_logic; 
          q24         : out std_logic_vector(DWIDTH-1 downto 0);
          addr25      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce25       : in std_logic; 
          q25         : out std_logic_vector(DWIDTH-1 downto 0);
          addr26      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce26       : in std_logic; 
          q26         : out std_logic_vector(DWIDTH-1 downto 0);
          addr27      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce27       : in std_logic; 
          q27         : out std_logic_vector(DWIDTH-1 downto 0);
          addr28      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce28       : in std_logic; 
          q28         : out std_logic_vector(DWIDTH-1 downto 0);
          addr29      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce29       : in std_logic; 
          q29         : out std_logic_vector(DWIDTH-1 downto 0);
          addr30      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce30       : in std_logic; 
          q30         : out std_logic_vector(DWIDTH-1 downto 0);
          addr31      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce31       : in std_logic; 
          q31         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of des_dec_IP_rom is 

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
signal addr24_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr25_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr26_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr27_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr28_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr29_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr30_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr31_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem0 : mem_array := (
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
signal mem1 : mem_array := (
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
signal mem2 : mem_array := (
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
signal mem3 : mem_array := (
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
signal mem4 : mem_array := (
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
signal mem5 : mem_array := (
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
signal mem6 : mem_array := (
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
signal mem7 : mem_array := (
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
signal mem8 : mem_array := (
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
signal mem9 : mem_array := (
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
signal mem10 : mem_array := (
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
signal mem11 : mem_array := (
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
signal mem12 : mem_array := (
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
signal mem13 : mem_array := (
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
signal mem14 : mem_array := (
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
signal mem15 : mem_array := (
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
attribute syn_rom_style of mem12 : signal is "select_rom";
attribute syn_rom_style of mem13 : signal is "select_rom";
attribute syn_rom_style of mem14 : signal is "select_rom";
attribute syn_rom_style of mem15 : signal is "select_rom";
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
attribute ROM_STYLE of mem12 : signal is "distributed";
attribute ROM_STYLE of mem13 : signal is "distributed";
attribute ROM_STYLE of mem14 : signal is "distributed";
attribute ROM_STYLE of mem15 : signal is "distributed";

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

memory_access_guard_24: process (addr24) 
begin
      addr24_tmp <= addr24;
--synthesis translate_off
      if (CONV_INTEGER(addr24) > mem_size-1) then
           addr24_tmp <= (others => '0');
      else 
           addr24_tmp <= addr24;
      end if;
--synthesis translate_on
end process;

memory_access_guard_25: process (addr25) 
begin
      addr25_tmp <= addr25;
--synthesis translate_off
      if (CONV_INTEGER(addr25) > mem_size-1) then
           addr25_tmp <= (others => '0');
      else 
           addr25_tmp <= addr25;
      end if;
--synthesis translate_on
end process;

memory_access_guard_26: process (addr26) 
begin
      addr26_tmp <= addr26;
--synthesis translate_off
      if (CONV_INTEGER(addr26) > mem_size-1) then
           addr26_tmp <= (others => '0');
      else 
           addr26_tmp <= addr26;
      end if;
--synthesis translate_on
end process;

memory_access_guard_27: process (addr27) 
begin
      addr27_tmp <= addr27;
--synthesis translate_off
      if (CONV_INTEGER(addr27) > mem_size-1) then
           addr27_tmp <= (others => '0');
      else 
           addr27_tmp <= addr27;
      end if;
--synthesis translate_on
end process;

memory_access_guard_28: process (addr28) 
begin
      addr28_tmp <= addr28;
--synthesis translate_off
      if (CONV_INTEGER(addr28) > mem_size-1) then
           addr28_tmp <= (others => '0');
      else 
           addr28_tmp <= addr28;
      end if;
--synthesis translate_on
end process;

memory_access_guard_29: process (addr29) 
begin
      addr29_tmp <= addr29;
--synthesis translate_off
      if (CONV_INTEGER(addr29) > mem_size-1) then
           addr29_tmp <= (others => '0');
      else 
           addr29_tmp <= addr29;
      end if;
--synthesis translate_on
end process;

memory_access_guard_30: process (addr30) 
begin
      addr30_tmp <= addr30;
--synthesis translate_off
      if (CONV_INTEGER(addr30) > mem_size-1) then
           addr30_tmp <= (others => '0');
      else 
           addr30_tmp <= addr30;
      end if;
--synthesis translate_on
end process;

memory_access_guard_31: process (addr31) 
begin
      addr31_tmp <= addr31;
--synthesis translate_off
      if (CONV_INTEGER(addr31) > mem_size-1) then
           addr31_tmp <= (others => '0');
      else 
           addr31_tmp <= addr31;
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
        if (ce24 = '1') then 
            q24 <= mem12(CONV_INTEGER(addr24_tmp)); 
        end if;
        if (ce25 = '1') then 
            q25 <= mem12(CONV_INTEGER(addr25_tmp)); 
        end if;
        if (ce26 = '1') then 
            q26 <= mem13(CONV_INTEGER(addr26_tmp)); 
        end if;
        if (ce27 = '1') then 
            q27 <= mem13(CONV_INTEGER(addr27_tmp)); 
        end if;
        if (ce28 = '1') then 
            q28 <= mem14(CONV_INTEGER(addr28_tmp)); 
        end if;
        if (ce29 = '1') then 
            q29 <= mem14(CONV_INTEGER(addr29_tmp)); 
        end if;
        if (ce30 = '1') then 
            q30 <= mem15(CONV_INTEGER(addr30_tmp)); 
        end if;
        if (ce31 = '1') then 
            q31 <= mem15(CONV_INTEGER(addr31_tmp)); 
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
        q23 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address24 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce24 : IN STD_LOGIC;
        q24 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address25 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce25 : IN STD_LOGIC;
        q25 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address26 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce26 : IN STD_LOGIC;
        q26 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address27 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce27 : IN STD_LOGIC;
        q27 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address28 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce28 : IN STD_LOGIC;
        q28 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address29 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce29 : IN STD_LOGIC;
        q29 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address30 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce30 : IN STD_LOGIC;
        q30 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address31 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce31 : IN STD_LOGIC;
        q31 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
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
            q23 : OUT STD_LOGIC_VECTOR;
            addr24 : IN STD_LOGIC_VECTOR;
            ce24 : IN STD_LOGIC;
            q24 : OUT STD_LOGIC_VECTOR;
            addr25 : IN STD_LOGIC_VECTOR;
            ce25 : IN STD_LOGIC;
            q25 : OUT STD_LOGIC_VECTOR;
            addr26 : IN STD_LOGIC_VECTOR;
            ce26 : IN STD_LOGIC;
            q26 : OUT STD_LOGIC_VECTOR;
            addr27 : IN STD_LOGIC_VECTOR;
            ce27 : IN STD_LOGIC;
            q27 : OUT STD_LOGIC_VECTOR;
            addr28 : IN STD_LOGIC_VECTOR;
            ce28 : IN STD_LOGIC;
            q28 : OUT STD_LOGIC_VECTOR;
            addr29 : IN STD_LOGIC_VECTOR;
            ce29 : IN STD_LOGIC;
            q29 : OUT STD_LOGIC_VECTOR;
            addr30 : IN STD_LOGIC_VECTOR;
            ce30 : IN STD_LOGIC;
            q30 : OUT STD_LOGIC_VECTOR;
            addr31 : IN STD_LOGIC_VECTOR;
            ce31 : IN STD_LOGIC;
            q31 : OUT STD_LOGIC_VECTOR);
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
        q23 => q23,
        addr24 => address24,
        ce24 => ce24,
        q24 => q24,
        addr25 => address25,
        ce25 => ce25,
        q25 => q25,
        addr26 => address26,
        ce26 => ce26,
        q26 => q26,
        addr27 => address27,
        ce27 => ce27,
        q27 => q27,
        addr28 => address28,
        ce28 => ce28,
        q28 => q28,
        addr29 => address29,
        ce29 => ce29,
        q29 => q29,
        addr30 => address30,
        ce30 => ce30,
        q30 => q30,
        addr31 => address31,
        ce31 => ce31,
        q31 => q31);

end architecture;


