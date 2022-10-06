#============================================================
# Additional settings
#============================================================

set_global_assignment -name ALLOW_ANY_ROM_SIZE_FOR_RECOGNITION ON
set_global_assignment -name ALLOW_ANY_RAM_SIZE_FOR_RECOGNITION ON

#============================================================
# Clocks
#============================================================

set_location_assignment PIN_N2 -to clk
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to clk

#============================================================
# LEDs
#============================================================

set_location_assignment PIN_AE23  -to leds[0]
set_location_assignment PIN_AF23  -to leds[1]
set_location_assignment PIN_AB21  -to leds[2]
set_location_assignment PIN_AC22  -to leds[3]
set_location_assignment PIN_AD22  -to leds[4]
set_location_assignment PIN_AD23  -to leds[5]
set_location_assignment PIN_AD21  -to leds[6]
set_location_assignment PIN_AC21  -to leds[7]
set_location_assignment PIN_AA14  -to leds[8]
set_location_assignment PIN_Y13   -to leds[9]
set_location_assignment PIN_AA13  -to leds[10]
set_location_assignment PIN_AC14  -to leds[11]
set_location_assignment PIN_AD15  -to leds[12]
set_location_assignment PIN_AE15  -to leds[13]
set_location_assignment PIN_AF13  -to leds[14]
set_location_assignment PIN_AE13  -to leds[15]
set_location_assignment PIN_AE12  -to leds[16]
set_location_assignment PIN_AD12  -to leds[17]
set_location_assignment PIN_AE22  -to leds[18]
set_location_assignment PIN_AF22  -to leds[19]
set_location_assignment PIN_W19   -to leds[20]
set_location_assignment PIN_V18   -to leds[21]
set_location_assignment PIN_U18   -to leds[22]
set_location_assignment PIN_U17   -to leds[23]
set_location_assignment PIN_AA20  -to leds[24]
set_location_assignment PIN_Y18   -to leds[25]
set_location_assignment PIN_Y12   -to leds[26]

set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to leds*


#============================================================
# SDRAM
#============================================================

set_location_assignment PIN_T6 -to SDRAM_A[0]
set_location_assignment PIN_V4 -to SDRAM_A[1]
set_location_assignment PIN_V3 -to SDRAM_A[2]
set_location_assignment PIN_W2 -to SDRAM_A[3]
set_location_assignment PIN_W1 -to SDRAM_A[4]
set_location_assignment PIN_U6 -to SDRAM_A[5]
set_location_assignment PIN_U7 -to SDRAM_A[6]
set_location_assignment PIN_U5 -to SDRAM_A[7]
set_location_assignment PIN_W4 -to SDRAM_A[8]
set_location_assignment PIN_W3 -to SDRAM_A[9]
set_location_assignment PIN_Y1 -to SDRAM_A[10]
set_location_assignment PIN_V5 -to SDRAM_A[11]

set_location_assignment PIN_AE2 -to SDRAM_BA[0]
set_location_assignment PIN_AE3 -to SDRAM_BA[1]

set_location_assignment PIN_V6 -to SDRAM_DQ[0]
set_location_assignment PIN_AA2 -to SDRAM_DQ[1]
set_location_assignment PIN_AA1 -to SDRAM_DQ[2]
set_location_assignment PIN_Y3 -to SDRAM_DQ[3]
set_location_assignment PIN_Y4 -to SDRAM_DQ[4]
set_location_assignment PIN_R8 -to SDRAM_DQ[5]
set_location_assignment PIN_T8 -to SDRAM_DQ[6]
set_location_assignment PIN_V7 -to SDRAM_DQ[7]
set_location_assignment PIN_W6 -to SDRAM_DQ[8]
set_location_assignment PIN_AB2 -to SDRAM_DQ[9]
set_location_assignment PIN_AB1 -to SDRAM_DQ[10]
set_location_assignment PIN_AA4 -to SDRAM_DQ[11]
set_location_assignment PIN_AA3 -to SDRAM_DQ[12]
set_location_assignment PIN_AC2 -to SDRAM_DQ[13]
set_location_assignment PIN_AC1 -to SDRAM_DQ[14]
set_location_assignment PIN_AA5 -to SDRAM_DQ[15]

set_location_assignment PIN_AD2 -to SDRAM_DQML
set_location_assignment PIN_Y5 -to SDRAM_DQMH
set_location_assignment PIN_AA7 -to SDRAM_CLK
set_location_assignment PIN_AA6 -to SDRAM_CKE
set_location_assignment PIN_AD3 -to SDRAM_nWE
set_location_assignment PIN_AB3 -to SDRAM_nCAS
set_location_assignment PIN_AC3 -to SDRAM_nCS
set_location_assignment PIN_AB4 -to SDRAM_nRAS

set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_*
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to SDRAM_*
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to SDRAM_*
set_instance_assignment -name FAST_OUTPUT_ENABLE_REGISTER ON -to SDRAM_DQ[*]
set_instance_assignment -name FAST_INPUT_REGISTER ON -to SDRAM_DQ[*]
set_instance_assignment -name ALLOW_SYNCH_CTRL_USAGE OFF -to *|SDRAM_*
set_instance_assignment -name FAST_OUTPUT_ENABLE_REGISTER ON -to SDRAM_DQML
set_instance_assignment -name FAST_OUTPUT_ENABLE_REGISTER ON -to SDRAM_DQMH
