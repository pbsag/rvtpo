; Do not change filenames or add or remove FILEI/FILEO statements using an editor. Use Cube/Application Manager.

/*
*COPY {scenario_dir}\output\PK_FreeFlow_Skim.MAT {scenario_dir}\output\pk_hwy_skim.MAT
*COPY {scenario_dir}\output\OP_FreeFlow_Skim.MAT {scenario_dir}\output\op_hwy_skim.MAT
*/


IF (FeedBack_ITER=1) 
FB_ITER = 1
*COPY  {scenario_dir}\output\PK_FreeFlow_Skim.MAT  {scenario_dir}\output\pk_hwy_skim.MAT
*COPY  {scenario_dir}\output\OP_FreeFlow_Skim.MAT  {scenario_dir}\output\op_hwy_skim.MAT

pk_hwy_skim = 'PK_FreeFlow_Skim.MAT'
OP_hwy_skim = 'OP_FreeFlow_Skim.MAT'

ELSE
*COPY  {scenario_dir}\output\PK_CNG_HwySkim.MAT  {scenario_dir}\output\pk_hwy_skim.MAT
*COPY  {scenario_dir}\output\OP_CNG_HwySkim.MAT  {scenario_dir}\output\op_hwy_skim.MAT

pk_hwy_skim = 'PK_CNG_HwySkim.MAT'
OP_hwy_skim = 'OP_CNG_HwySkim.MAT'
ENDIF


