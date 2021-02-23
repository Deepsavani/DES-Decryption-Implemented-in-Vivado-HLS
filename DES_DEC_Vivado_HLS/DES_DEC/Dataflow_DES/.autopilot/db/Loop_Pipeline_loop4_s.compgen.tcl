# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 14
set hasByteEnable 0
set MemName Loop_Pipeline_loodEe
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 6
set AddrRange 32
set AddrWd 5
set TrueReset 0
set IsROM 1
set ROMData { "010000" "000111" "010100" "010101" "011101" "001100" "011100" "010001" "000001" "001111" "010111" "011010" "000101" "010010" "011111" "001010" "000010" "001000" "011000" "001110" "100000" "011011" "000011" "001001" "010011" "001101" "011110" "000110" "010110" "001011" "000100" "011001" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 2.772
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 15
set hasByteEnable 0
set MemName Loop_Pipeline_looeOg
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 6
set AddrRange 48
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "100000" "000001" "000010" "000011" "000100" "000101" "000100" "000101" "000110" "000111" "001000" "001001" "001000" "001001" "001010" "001011" "001100" "001101" "001100" "001101" "001110" "001111" "010000" "010001" "010000" "010001" "010010" "010011" "010100" "010101" "010100" "010101" "010110" "010111" "011000" "011001" "011000" "011001" "011010" "011011" "011100" "011101" "011100" "011101" "011110" "011111" "100000" "000001" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 2.772
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 16
set hasByteEnable 0
set MemName Loop_Pipeline_loofYi
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 4
set AddrRange 512
set AddrWd 9
set TrueReset 0
set IsROM 1
set ROMData { "1110" "0100" "1101" "0001" "0010" "1111" "1011" "1000" "0011" "1010" "0110" "1100" "0101" "1001" "0000" "0111" "0000" "1111" "0111" "0100" "1110" "0010" "1101" "0001" "1010" "0110" "1100" "1011" "1001" "0101" "0011" "1000" "0100" "0001" "1110" "1000" "1101" "0110" "0010" "1011" "1111" "1100" "1001" "0111" "0011" "1010" "0101" "0000" "1111" "1100" "1000" "0010" "0100" "1001" "0001" "0111" "0101" "1011" "0011" "1110" "1010" "0000" "0110" "1101" "1111" "0001" "1000" "1110" "0110" "1011" "0011" "0100" "1001" "0111" "0010" "1101" "1100" "0000" "0101" "1010" "0011" "1101" "0100" "0111" "1111" "0010" "1000" "1110" "1100" "0000" "0001" "1010" "0110" "1001" "1011" "0101" "0000" "1110" "0111" "1011" "1010" "0100" "1101" "0001" "0101" "1000" "1100" "0110" "1001" "0011" "0010" "1111" "1101" "1000" "1010" "0001" "0011" "1111" "0100" "0010" "1011" "0110" "0111" "1100" "0000" "0101" "1110" "1001" "1010" "0000" "1001" "1110" "0110" "0011" "1111" "0101" "0001" "1101" "1100" "0111" "1011" "0100" "0010" "1000" "1101" "0111" "0000" "1001" "0011" "0100" "0110" "1010" "0010" "1000" "0101" "1110" "1100" "1011" "1111" "0001" "1101" "0110" "0100" "1001" "1000" "1111" "0011" "0000" "1011" "0001" "0010" "1100" "0101" "1010" "1110" "0111" "0001" "1010" "1101" "0000" "0110" "1001" "1000" "0111" "0100" "1111" "1110" "0011" "1011" "0101" "0010" "1100" "0111" "1101" "1110" "0011" "0000" "0110" "1001" "1010" "0001" "0010" "1000" "0101" "1011" "1100" "0100" "1111" "1101" "1000" "1011" "0101" "0110" "1111" "0000" "0011" "0100" "0111" "0010" "1100" "0001" "1010" "1110" "1001" "1010" "0110" "1001" "0000" "1100" "1011" "0111" "1101" "1111" "0001" "0011" "1110" "0101" "0010" "1000" "0100" "0011" "1111" "0000" "0110" "1010" "0001" "1101" "1000" "1001" "0100" "0101" "1011" "1100" "0111" "0010" "1110" "0010" "1100" "0100" "0001" "0111" "1010" "1011" "0110" "1000" "0101" "0011" "1111" "1101" "0000" "1110" "1001" "1110" "1011" "0010" "1100" "0100" "0111" "1101" "0001" "0101" "0000" "1111" "1010" "0011" "1001" "1000" "0110" "0100" "0010" "0001" "1011" "1010" "1101" "0111" "1000" "1111" "1001" "1100" "0101" "0110" "0011" "0000" "1110" "1011" "1000" "1100" "0111" "0001" "1110" "0010" "1101" "0110" "1111" "0000" "1001" "1010" "0100" "0101" "0011" "1100" "0001" "1010" "1111" "1001" "0010" "0110" "1000" "0000" "1101" "0011" "0100" "1110" "0111" "0101" "1011" "1010" "1111" "0100" "0010" "0111" "1100" "1001" "0101" "0110" "0001" "1101" "1110" "0000" "1011" "0011" "1000" "1001" "1110" "1111" "0101" "0010" "1000" "1100" "0011" "0111" "0000" "0100" "1010" "0001" "1101" "1011" "0110" "0100" "0011" "0010" "1100" "1001" "0101" "1111" "1010" "1011" "1110" "0001" "0111" "0110" "0000" "1000" "1101" "0100" "1011" "0010" "1110" "1111" "0000" "1000" "1101" "0011" "1100" "1001" "0111" "0101" "1010" "0110" "0001" "1101" "0000" "1011" "0111" "0100" "1001" "0001" "1010" "1110" "0011" "0101" "1100" "0010" "1111" "1000" "0110" "0001" "0100" "1011" "1101" "1100" "0011" "0111" "1110" "1010" "1111" "0110" "1000" "0000" "0101" "1001" "0010" "0110" "1011" "1101" "1000" "0001" "0100" "1010" "0111" "1001" "0101" "0000" "1111" "1110" "0010" "0011" "1100" "1101" "0010" "1000" "0100" "0110" "1111" "1011" "0001" "1010" "1001" "0011" "1110" "0101" "0000" "1100" "0111" "0001" "1111" "1101" "1000" "1010" "0011" "0111" "0100" "1100" "0101" "0110" "1011" "0000" "1110" "1001" "0010" "0111" "1011" "0100" "0001" "1001" "1100" "1110" "0010" "0000" "0110" "1010" "1101" "1111" "0011" "0101" "1000" "0010" "0001" "1110" "0111" "0100" "1010" "1000" "1101" "1111" "1100" "1001" "0000" "0011" "0101" "0110" "1011" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 2.772
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 19 \
    name sub_key \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename sub_key \
    op interface \
    ports { sub_key_address0 { O 4 vector } sub_key_ce0 { O 1 bit } sub_key_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sub_key'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name p_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read \
    op interface \
    ports { p_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name p_read1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read1 \
    op interface \
    ports { p_read1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -4 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


