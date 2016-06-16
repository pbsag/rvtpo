; Script for program NETWORK in file "C:\projects\ROANOKE\CUBE\FBNET00A.S"
;;<<Default Template>><<NETWORK>><<Default>>;;
; Do not change filenames or add or remove FILEI/FILEO statements using an editor. Use Cube/Application Manager.
RUN PGM=NETWORK MSG='Export NET to ShapeFile'
FILEI LINKI[2] = "{SCENARIO_DIR}\OUTPUT\LOADED_{Year}{Alternative}.NET"
;FILEI GEOMI[1] = "{CATALOG_DIR}\MasterNetwork\cubeShapeFile_2012A.shp"
FILEO NODEO = "{SCENARIO_DIR}\Output\loaded_network_Node.shp",
 FORMAT = SHP
FILEO LINKO = "{SCENARIO_DIR}\Output\loaded_network_Link.shp",
 FORMAT = SHP
 
ENDRUN


