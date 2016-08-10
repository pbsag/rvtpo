;;<<Default Template>><<NETWORK>><<Default>>;;
; Do not change filenames or add or remove FILEI/FILEO statements using an editor. Use Cube/Application Manager.
RUN PGM=NETWORK MSG='Attach capacity and FFS to network'
FILEI LOOKUPI[1] = "{CATALOG_DIR}\Params\Hwy_SPDCAP.dbf"
FILEO NETO = "{SCENARIO_DIR}\Output\RVTPOBase{Year}{Alternative}.NET"
FILEI LINKI[2] = "{SCENARIO_DIR}\Output\link_capacities{Year}{Alternative}.DBF"
FILEI LINKI[1] = "{SCENARIO_DIR}\Output\ATYPE NETWORK{Year}{Alternative}.NET"

PROCESS  PHASE=INPUT
;Use this phase to modify data as it is read, such as recoding node numbers.


ENDPROCESS


PROCESS  PHASE=NODEMERGE  
; Use this phase to make computations and selections of any data on the NODEI files.


ENDPROCESS


PROCESS  PHASE=LINKMERGE  

/* 
Capacities are computed using HCMR package where highway capacity manual formulas are computed for each link and are appended to the network as CAPE. However VDOT insists to have override capability to use a different capacity for a given link. The VDOT link capacity is coded "VDOT_CAP" attribute. If the attribute “VDOT_CAP” carries a non-zero value then it is used in place of hcmr computed capacity

Here three capacities are stored:
HCMR_CAP = original hwy capacity based on HCMR
VDOT_CAP = VDOT capacity to replace HCMR_CAP
CAPE = capacity per hour (from above two).

*/
; Save HCMR capacity as HCMR_CAP
HCMR_CAP = LI.2.CAPE


;VDOT note:use lookup table
LOOKUP LOOKUPI=1,
       NAME=Hwy_SPDCAP,
         LOOKUP[1]=CLASS, RESULT=SPEED,
         LOOKUP[2]=CLASS, RESULT=CAPACITY,
       FAIL[3]=0

IF (FFSPEED_R = 0) 
    FFSPEED = Hwy_SPDCAP(1,SPDCLASS)
ELSE
 FFSPEED = FFSPEED_R
ENDIF

IF (FFSPEED < POST_SPD)
    FFSPEED = POST_SPD
ENDIF

 ; Override hcmr capacity with VDOT link specific capacity
IF (LI.1.VDOT_CAP >0 )
    CAPE = LI.1.VDOT_CAP
ELSE
    CAPE=Hwy_SPDCAP(2,SPDCLASS)*LANES
ENDIF
 


; Use this phase to make computations and selections of any data on the LINKI files.
CAPE_AM = CAPE * 3.6 ; 2.5  ; AM Capacity
CAPE_MD = CAPE * 4.8; 4.40 ; 5.5  ; MD Capacity ;VDOT note: 4.4 is too low for MD  
CAPE_PM = CAPE * 3.9; 3.18 ; 2.5  ; PM Capacity  ;VDOT note: this one (3.18>3 hrs) does not make sense 
CAPE_NT = CAPE * 5.63 ; 4.5  ; NT Capacity
POST_SPEED = LI.1.POST_SPD  



;Local and collector ; VDOT note: post_SPD for minor arterials and collector variy a lot, use POST_SPD as reference
IF(LI.1.FACTYPE > 4 & LI.1.FACTYPE < 9 & LI.1.POST_SPD <> 0) 
     FFSPEED = LI.1.POST_SPD + 3
ENDIF



ENDPROCESS


PROCESS  PHASE=SUMMARY   
; Use this phase for combining and reporting of working variables.


ENDPROCESS

ENDRUN
