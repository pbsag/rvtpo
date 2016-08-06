; Do not change filenames or add or remove FILEI/FILEO statements using an editor. Use Cube/Application Manager.

/*
*COPY {scenario_dir}\output\PK_FreeFlow_Skim.MAT {scenario_dir}\output\pk_hwy_skim.MAT
*COPY {scenario_dir}\output\OP_FreeFlow_Skim.MAT {scenario_dir}\output\op_hwy_skim.MAT
*/


IF (FeedBack_ITER=1) 
FB_ITER = 1
*IF EXIST DEL {scenario_dir}\output\pk_hwy_skim.MAT
*IF EXIST DEL {scenario_dir}\output\op_hwy_skim.MAT
*COPY  {scenario_dir}\output\PK_FreeFlow_Skim.MAT  {scenario_dir}\output\pk_hwy_skim.MAT
*COPY  {scenario_dir}\output\OP_FreeFlow_Skim.MAT  {scenario_dir}\output\op_hwy_skim.MAT

ELSE
*IF EXIST DEL {scenario_dir}\output\pk_hwy_skim.MAT
*IF EXIST DEL {scenario_dir}\output\op_hwy_skim.MAT
*COPY  {scenario_dir}\output\PK_CNG_HwySkim.MAT  {scenario_dir}\output\pk_hwy_skim.MAT
*COPY  {scenario_dir}\output\OP_CNG_HwySkim.MAT  {scenario_dir}\output\op_hwy_skim.MAT
ENDIF


