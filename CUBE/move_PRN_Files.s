; Do not change filenames or add or remove FILEI/FILEO statements using an editor. Use Cube/Application Manager.
*IF EXIST "{SCENARIO_DIR}\Output\Output.MDB" DEL "{SCENARIO_DIR}\Output\Output.MDB"
*COPY "{SCENARIO_DIR}\MAPS\EMPTY.MDB" "{SCENARIO_DIR}\OUTPUT\OUTPUT.MDB"
*COPY "{CATALOG_DIR}\CUBE\*.PRN" "{SCENARIO_DIR}\OUTPUT\LOGS\*.PRN"
*DEL "{CATALOG_DIR}\CUBE\*.PRN" 
