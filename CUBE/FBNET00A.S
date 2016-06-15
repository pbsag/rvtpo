;;<<Default Template>><<NETWORK>><<Default>>;;
; Do not change filenames or add or remove FILEI/FILEO statements using an editor. Use Cube/Application Manager.
RUN PGM=NETWORK MSG='Export NET to ShapeFile'
;FILEO NETO = "{SCENARIO_DIR}\Maps\results.mdb\loaded_network"
FILEO NETO = "{SCENARIO_DIR}\Output\loaded_network.shp"
FILEI LINKI[2] = "{SCENARIO_DIR}\OUTPUT\LOADED_2012A.NET"
FILEI LINKI[1] = "{SCENARIO_DIR}\Maps\empty.mdb\HWNetwork_Link"
ENDRUN
