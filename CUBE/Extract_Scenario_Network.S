;;<<Default Template>><<NETWORK>><<Default>>;;
; Do not change filenames or add or remove FILEI/FILEO statements using an editor. Use Cube/Application Manager.
RUN PGM=NETWORK PRNFILE="{SCENARIO_DIR}\OUTPUT\LOGS\Extract_Network.PRN" MSG='Extract Scenario Network'
FILEI LINKI[1] = "{CATALOG_DIR}\MasterNetwork\Master_highway.net"
FILEO NETO = "{SCENARIO_DIR}\Output\highway.net",
INCLUDE = A, B, LENGTH, DISTANCE, FACTYPE, LANES, POST_SPD, RTE_NAME, AAWDT, TMS_ID, SCREENLN, TUNNEL, BRIDGE, TRK_PHB, PED_PHB, TRAFF_PHB, VDOT_CAP

PROCESS  PHASE=LINKMERGE  
; Initialize fields to zeros if the current values are zeros
/*
DISTANCE = 0
FACTYPE = 0
LANES = 0
POST_SPD = 0
*/
; Add common links
IF(DIST_C > 0)
  FACTYPE = FT_C
  DISTANCE = DIST_C
  LANES = LANES_C
  POST_SPD = SPD_C
ENDIF

; Add new or year/scenario specific links
IF(ONLY_{NETALT} = 1)
  DISTANCE = DIST_{NETALT}
  FACTYPE = FT_{NETALT}
  LANES = LANES_{NETALT}
  POST_SPD = SPD_{NETALT}
ENDIF

; Add VDOT capacity override
VDOT_CAP = VDOTC_{NETALT}

; Delete undesired links
IF(ONLY_{NETALT} = -1) DELETE
IF (DISTANCE =0) DELETE

ENDPROCESS

ENDRUN
