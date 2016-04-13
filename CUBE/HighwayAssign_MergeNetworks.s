;;<<Default Template>><<NETWORK>><<Default>>;;
; Do not change filenames or add or remove FILEI/FILEO statements using an editor. Use Cube/Application Manager.
RUN PGM=NETWORK PRNFILE="{SCENARIO_DIR}\Output\Merge_Hwy_Assignments.PRN"
FILEO NETO = "{SCENARIO_DIR}\Output\LOADED_{Year}{Alternative}.NET",
 EXCLUDE = V_1, VC_1, V1_1, V2_1, V3_1, V4_1, VT_1, V1T_1, V2T_1, V3T_1, V4T_1
FILEI LINKI[4] = "{SCENARIO_DIR}\Output\LOADED_NT.NET"
FILEI LINKI[3] = "{SCENARIO_DIR}\Output\LOADED_PM.NET"
FILEI LINKI[2] = "{SCENARIO_DIR}\Output\LOADED_MD.NET"
FILEI LINKI[1] = "{SCENARIO_DIR}\Output\LOADED_AM.NET"
FILEO PRINTO[1] = "{SCENARIO_DIR}\Output\Hwy_eval_period.csv"
 
 
; =========================================================
; LINKMERGE PHASE
; =========================================================
PHASE=LINKMERGE  
; Total Volume
/*
AM_Vol=li.1.V_2 + li.1.V_1
MD_Vol=li.2.V_2 + li.2.V_1
PM_Vol=li.3.V_2 + li.3.V_1
NT_Vol=li.4.V_2 + li.4.V_1
*/
AM_Vol=li.1.V_2 
MD_Vol=li.2.V_2
PM_Vol=li.3.V_2 
NT_Vol=li.4.V_2 
Total_Vol = AM_Vol + MD_Vol + PM_Vol + NT_Vol

; Drive Alone
AM_DA=li.1.V1_2 
MD_DA=li.2.V1_2 
PM_DA=li.3.V1_2 
NT_DA=li.4.V1_2 
TOTAL_DA = AM_DA + MD_DA + PM_DA + NT_DA

; ShareRide 2+
AM_SR=li.1.V2_2 
MD_SR=li.2.V2_2 
PM_SR=li.3.V2_2 
NT_SR=li.4.V2_2 
TOTAL_SR = AM_SR + MD_SR + PM_SR + NT_SR

; IEEI
AM_IEEI=li.1.V3_2 
MD_IEEI=li.2.V3_2 
PM_IEEI=li.3.V3_2 
NT_IEEI=li.4.V3_2 
TOTAL_IEEI = AM_IEEI + MD_IEEI + PM_IEEI + NT_IEEI

; Commercial Vehicles
AM_CV=li.1.V4_2 
MD_CV=li.2.V4_2 
PM_CV=li.3.V4_2 
NT_CV=li.4.V4_2 
TOTAL_CV = AM_CV + MD_CV + PM_CV + NT_CV

; EE
AM_EX=li.1.V1_1 
MD_EX=li.2.V1_1 
PM_EX=li.3.V1_1 
NT_EX=li.4.V1_1 
TOTAL_EX = AM_EX + MD_EX + PM_EX + NT_EX


; Select Link Volumes
sl_DA=li.1.V5_2 +li.2.V5_2 +li.3.V5_2 +li.4.V5_2  
sl_SR=li.1.V6_2 +li.2.V6_2 +li.3.V6_2 +li.4.V6_2  
sl_IEEI=li.1.V7_2 +li.2.V7_2 +li.3.V7_2 +li.4.V7_2  
sl_CV=li.1.V8_2 +li.2.V8_2 +li.3.V8_2 +li.4.V8_2  
sl_EE=li.1.V2_1 +li.2.V2_1 +li.3.V2_1 +li.4.V2_1  
sl_tot=sl_DA+ sl_SR +  sl_IEEI + sl_CV + sl_EE

;Sum period specific loaded attributes to all period (24 hour)...
VDT_1 = li.1.VDT_2 + li.2.VDT_2 + li.3.VDT_2 + li.4.VDT_2
VHT_1 = li.1.VHT_2 + li.2.VHT_2 + li.3.VHT_2 + li.4.VHT_2

if(VHT_2>0) 
  CSPD_2 = VDT_2/VHT_2
else 
  CSPD_2 = 0
endif

if(CSPD_2>0) 
  TIME_2 = 60*DISTANCE/CSPD_2 
else 
  TIME_2 = 60*DISTANCE/FFSPEED 
endif

; write out peak and off-peak congested time to use in feedback
SPEED_PK_CNG =  li.1.CSPD_2
TIME_PK_CNG = li.1.TIME_2
SPEED_OP_CNG =  li.2.CSPD_2
TIME_OP_CNG = li.2.TIME_2

; Group facility types
oft=LI.1.FACTYPE                                 ; Facility Type
if (oft = 1 | oft =2 | oft =9 | oft = 10) ft = 1 ; Freeway       
if (oft = 3 | oft =4)                     ft = 2 ; Major Arterial
if (oft = 5)                              ft = 3 ; Minor Arterial
if (oft = 6 | oft = 7 | oft = 8)          ft = 4 ; Collector + Local         
if (oft = 10)                             ft = 5 ; Connectors   

; Write a header file for links
 if (A=1) print CSV=T,list='ScreenLine', 'A','B','Area Type','Fac Type','Fac Type Group', 'FFSPEED', 'Count' ,'Volume','Distance', 'AM_Vol', 'MD_Vol',  'PM_Vol', 'NT_Vol',  'AM_VMT', 'MD_VMT' , 'PM_VMT' , 'NT_VMT',   
 'AM_VHT', 'MD_VHT' , 'PM_VHT' , 'NT_VHT', 'AM_Speed', 'MD_Speed' , 'PM_Speed' , 'NT_Speed' printo=1 
 
IF (Li.1.AAWDT>0)
 ; Write out links with counts
 print CSV=T list = LI.1.SCREENLN , LI.1.A, LI.1.B, LI.1.ATYPE, LI.1.FACTYPE, FT,  FFSPEED, LI.1.AAWDT, TOTAL_VOL, LI.1.DISTANCE,  AM_Vol, MD_Vol,  PM_Vol, NT_Vol, li.1.VDT_2, li.2.VDT_2, li.3.VDT_2 , li.4.VDT_2, li.1.VHT_2,  li.2.VHT_2,  li.3.VHT_2,  li.4.VHT_2, li.1.CSPD_2, li.2.CSPD_2, li.3.CSPD_2, li.4.CSPD_2 printo=1

 ENDIF
 
 
ENDPROCESS
ENDRUN
