open_project -project {C:\Users\Mike Klopfer\Documents\GitHub\Microsemi_SmartFusion2_FutureCreativeBoard_BaseDesign\FCBBaseDesign\designer\SF2_MSS_sys\SF2_MSS_sys_fp\SF2_MSS_sys.pro}\
         -connect_programmers {FALSE}
if { [catch {load_programming_data \
    -name {M2S025} \
    -fpga {C:\Users\Mike Klopfer\Documents\GitHub\Microsemi_SmartFusion2_FutureCreativeBoard_BaseDesign\FCBBaseDesign\designer\SF2_MSS_sys\SF2_MSS_sys.map} \
    -header {C:\Users\Mike Klopfer\Documents\GitHub\Microsemi_SmartFusion2_FutureCreativeBoard_BaseDesign\FCBBaseDesign\designer\SF2_MSS_sys\SF2_MSS_sys.hdr} \
    -envm {C:\Users\Mike Klopfer\Documents\GitHub\Microsemi_SmartFusion2_FutureCreativeBoard_BaseDesign\FCBBaseDesign\designer\SF2_MSS_sys\SF2_MSS_sys.efc}  \
    -spm {C:\Users\Mike Klopfer\Documents\GitHub\Microsemi_SmartFusion2_FutureCreativeBoard_BaseDesign\FCBBaseDesign\designer\SF2_MSS_sys\SF2_MSS_sys.spm} \
    -dca {C:\Users\Mike Klopfer\Documents\GitHub\Microsemi_SmartFusion2_FutureCreativeBoard_BaseDesign\FCBBaseDesign\designer\SF2_MSS_sys\SF2_MSS_sys.dca} } return_val] } {
save_project
close_project
exit }
set_programming_file -name {M2S025} -no_file
save_project
close_project
