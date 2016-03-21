; Do not change filenames or add or remove FILEI/FILEO statements using an editor. Use Cube/Application Manager.
*del {CATALOG_DIR}\CUBE\*.prn
*del {CATALOG_DIR}\CUBE\*.bak
*del {CATALOG_DIR}\CUBE\*.0??
*del {CATALOG_DIR}\CUBE\trc*.s
*IF NOT EXIST "{SCENARIO_DIR}\Output" MKDIR "{SCENARIO_DIR}\Output"
*IF NOT EXIST "{SCENARIO_DIR}\OUTPUT" MKDIR "{SCENARIO_DIR}\OUTPUT"
*IF NOT EXIST "{SCENARIO_DIR}\OUTPUT\LOGS" MKDIR "{SCENARIO_DIR}\OUTPUT\LOGS"
