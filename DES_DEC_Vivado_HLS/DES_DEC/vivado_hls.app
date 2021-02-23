<project xmlns="com.autoesl.autopilot.project" name="DES_DEC" top="des_dec">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" csimMode="2" lastCsimMode="2"/>
    </Simulation>
    <files xmlns="">
        <file name="../../desDEC_tb.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="desEncrypt.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="desEncrypt.H" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="desDecrypt.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="desDecrypt.H" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="Without_pragmas" status="active"/>
        <solution name="Allocation_lshr_lim1" status="inactive"/>
        <solution name="Pipeline_loop4" status="inactive"/>
        <solution name="unroll_loop1_2" status="inactive"/>
        <solution name="Dataflow_DES" status="inactive"/>
        <solution name="pipleline_loop12" status="inactive"/>
        <solution name="C_2" status="inactive"/>
        <solution name="C_5_unroll_factor_2" status="inactive"/>
        <solution name="C_5_Unroll_factor_4" status="inactive"/>
        <solution name="C_6_Array_partition" status="inactive"/>
        <solution name="C_8_BRAM" status="inactive"/>
        <solution name="C_8_Register" status="inactive"/>
        <solution name="qB_3_constraint" status="inactive"/>
        <solution name="qB_3_constraints_piplineDES" status="inactive"/>
        <solution name="qB_4_pipelineDES" status="inactive"/>
        <solution name="qB1_1" status="inactive"/>
        <solution name="qB1_2" status="inactive"/>
        <solution name="qB1_3" status="inactive"/>
        <solution name="qB1_4" status="inactive"/>
        <solution name="qB1_5" status="inactive"/>
        <solution name="qB1_6" status="inactive"/>
    </solutions>
</project>

