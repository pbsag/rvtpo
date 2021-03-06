;FILEO PRINTO[1] = "{SCENARIO_DIR}\Output\CLASSIFICATION.PRN"
; Do not change filenames or add or remove FILEI/FILEO statements using an editor. Use Cube/Application Manager.

; **NOTE THAT PILOT PROGRAMS TAKE NO INPUTS OR OUTPUTS IN THE APPLICATION MANAGER**
; set location of R executable
Rexe = '{CATALOG_DIR}\R\R-3.2.2\bin\Rscript.exe'

; set location of R script that runs the classification step
Rscript = '{CATALOG_DIR}\R\classification.R'

; Collect script arguments for R script.
input_se_file = '{SCENARIO_DIR}\Input\se.dbf'
lookup_dir = '{CATALOG_DIR}\Params\classification'
output_file = '{SCENARIO_DIR}\Output\se_classified_{year}{alternative}.dbf'

; Write batch file to run R model
PRINT LIST= Rexe ' ' Rscript ' ' input_se_file ' ' lookup_dir ' ' output_file, 
 FILE = "{CATALOG_DIR}\CUBE\CLASSIFICATION.BAT"
  
; Duplicate command in print file
;PRINT LIST= Rexe ' ' Rscript ' ' input_se_file ' ' lookup_dir ' ' output_file, 
 ; PRINTO = 1

; Run batch file from command line
*{CATALOG_DIR}\CUBE\CLASSIFICATION.BAT
; Do not change filenames or add or remove FILEI/FILEO statements using an editor. Use Cube/Application Manager.


