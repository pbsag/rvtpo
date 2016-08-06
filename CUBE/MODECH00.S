; Script for program MATRIX in file "C:\projects\rvtpo\Cube\MC_Merge_HBO_HBSH.s"
;;<<Default Template>><<MATRIX>><<Default>>;;
; Do not change filenames or add or remove FILEI/FILEO statements using an editor. Use Cube/Application Manager.
RUN PGM=MATRIX MSG='HBO + HBSH'
FILEO MATO[1] = "{SCENARIO_DIR}\OUTPUT\Dest_HBO_HBSH.MAT",
 MO = 1, NAME = HBO_HBSH
FILEI MATI[2] = "{SCENARIO_DIR}\OUTPUT\Dest_HBSH.MAT"
FILEI MATI[1] = "{SCENARIO_DIR}\OUTPUT\Dest_HBO.MAT"

MW[1] = MI.1.1 + MI.2.1
        
ENDRUN


; Script for program MATRIX in file "C:\projects\rvtpo\Cube\ModeChoiceModel.s"
;;<<Default Template>><<MATRIX>><<Default>>;;
; Do not change filenames or add or remove FILEI/FILEO statements using an editor. Use Cube/Application Manager.
RUN PGM=MATRIX
FILEO MATO[1] = "{SCENARIO_DIR}\OUTPUT\HBW_MCTRIPS.MAT",
 MO = 21-25, NAME = DA, SR, WLB, PMB, NOM
FILEI ZDATI[1] = "{SCENARIO_DIR}\Input\TrnWalkPercent.dbf"
FILEI MATI[2] = "{SCENARIO_DIR}\OUTPUT\Dest_HBW.MAT"
FILEI MATI[1] = "{SCENARIO_DIR}\OUTPUT\HBW_MCPROB.MAT"

        MW[1] = MI.2.1
        FILLMW MW[11] = MI.1.1(10)
			  
			  MW[2] = MW[1] * (ZI.1.PCWPROD[I] * 0.01) * (ZI.1.PCWATTR[J] * 0.01)      ; Can Walk
        MW[3] = MW[1] - MW[2]                                                    ; No Trn Access
			  
			  MW[21] = MW[11] * MW[2] +  MW[16] * MW[3] ; DA trips
			  MW[22] = MW[12] * MW[2] +  MW[17] * MW[3] ; SR trips
			  MW[23] = MW[13] * MW[2] +  MW[18] * MW[3] ; LB trips
			  MW[24] = MW[14] * MW[2] +  MW[19] * MW[3] ; PM trips
			  MW[25] = MW[15] * MW[2] +  MW[20] * MW[3] ; NM trips
        
        ; Aggregate all trips        
        JLOOP

           EDA = EDA + MW[21]  
           ESR = ESR + MW[22]  
           ELB = ELB + MW[23]  
           EPM = EPM + MW[24]  
           ENM = ENM + MW[25]		
           
           TRN    = ELB + EPM 
           AUT    = EDA + ESR 
           TOT    = AUT + TRN + ENM
           
           IF(I==264 && J==264)
              print,list= "EST_EDA"  ," = ",EDA , FILE = "{SCENARIO_DIR}\OUTPUT\LOGS\@PURP@ESTIMATED.DAT",
 append = F
              print,list= "EST_ESR"  ," = ",ESR , FILE = "{SCENARIO_DIR}\OUTPUT\LOGS\@PURP@ESTIMATED.DAT",
 append = F
              print,list= "EST_ELB"  ," = ",ELB , FILE = "{SCENARIO_DIR}\OUTPUT\LOGS\@PURP@ESTIMATED.DAT",
 append = F
              print,list= "EST_EPM"  ," = ",EPM , FILE = "{SCENARIO_DIR}\OUTPUT\LOGS\@PURP@ESTIMATED.DAT",
 append = F
              print,list= "EST_ENM"  ," = ",ENM , FILE = "{SCENARIO_DIR}\OUTPUT\LOGS\@PURP@ESTIMATED.DAT",
 append = F
              print,list= "EST_TRN"  ," = ",TRN , FILE = "{SCENARIO_DIR}\OUTPUT\LOGS\@PURP@ESTIMATED.DAT",
 append = F
              print,list= "EST_AUT"  ," = ",AUT , FILE = "{SCENARIO_DIR}\OUTPUT\LOGS\@PURP@ESTIMATED.DAT",
 append = F
              print,list= "EST_TOT"  ," = ",TOT , FILE = "{SCENARIO_DIR}\OUTPUT\LOGS\@PURP@ESTIMATED.DAT",
 append = F            
           ENDIF         
        ENDJLOOP
        
ENDRUN


; Script for program MATRIX in file "C:\PROJECTS\RVTPO\CUBE\MCMAT00B.S"
;;<<Default Template>><<MATRIX>><<Default>>;;
; Do not change filenames or add or remove FILEI/FILEO statements using an editor. Use Cube/Application Manager.
RUN PGM=MATRIX
FILEO MATO[1] = "{SCENARIO_DIR}\OUTPUT\HBO_MCTRIPS.MAT",
 MO = 21-25, NAME = DA, SR, WLB, PMB, NOM
FILEI ZDATI[1] = "{SCENARIO_DIR}\Input\TrnWalkPercent.dbf"
FILEI MATI[2] = "{SCENARIO_DIR}\OUTPUT\Dest_HBO_HBSH.MAT"
FILEI MATI[1] = "{SCENARIO_DIR}\OUTPUT\HBO_MCPROB.MAT"

        MW[1] = MI.2.1
        FILLMW MW[11] = MI.1.1(10)
			  
			  MW[2] = MW[1] * (ZI.1.PCWPROD[I] * 0.01) * (ZI.1.PCWATTR[J] * 0.01)      ; Can Walk
        MW[3] = MW[1] - MW[2]                                                    ; No Trn Access
			  
			  MW[21] = MW[11] * MW[2] +  MW[16] * MW[3] ; DA trips
			  MW[22] = MW[12] * MW[2] +  MW[17] * MW[3] ; SR trips
			  MW[23] = MW[13] * MW[2] +  MW[18] * MW[3] ; LB trips
			  MW[24] = MW[14] * MW[2] +  MW[19] * MW[3] ; PM trips
			  MW[25] = MW[15] * MW[2] +  MW[20] * MW[3] ; NM trips
        
        ; Aggregate all trips        
        JLOOP

           EDA = EDA + MW[21]  
           ESR = ESR + MW[22]  
           ELB = ELB + MW[23]  
           EPM = EPM + MW[24]  
           ENM = ENM + MW[25]		
           
           TRN    = ELB + EPM 
           AUT    = EDA + ESR 
           TOT    = AUT + TRN + ENM
           
           IF(I==264 && J==264)
              print,list= "EST_EDA"  ," = ",EDA , FILE = "{SCENARIO_DIR}\OUTPUT\LOGS\@PURP@ESTIMATED.DAT",
 append = F
              print,list= "EST_ESR"  ," = ",ESR , FILE = "{SCENARIO_DIR}\OUTPUT\LOGS\@PURP@ESTIMATED.DAT",
 append = F
              print,list= "EST_ELB"  ," = ",ELB , FILE = "{SCENARIO_DIR}\OUTPUT\LOGS\@PURP@ESTIMATED.DAT",
 append = F
              print,list= "EST_EPM"  ," = ",EPM , FILE = "{SCENARIO_DIR}\OUTPUT\LOGS\@PURP@ESTIMATED.DAT",
 append = F
              print,list= "EST_ENM"  ," = ",ENM , FILE = "{SCENARIO_DIR}\OUTPUT\LOGS\@PURP@ESTIMATED.DAT",
 append = F
              print,list= "EST_TRN"  ," = ",TRN , FILE = "{SCENARIO_DIR}\OUTPUT\LOGS\@PURP@ESTIMATED.DAT",
 append = F
              print,list= "EST_AUT"  ," = ",AUT , FILE = "{SCENARIO_DIR}\OUTPUT\LOGS\@PURP@ESTIMATED.DAT",
 append = F
              print,list= "EST_TOT"  ," = ",TOT , FILE = "{SCENARIO_DIR}\OUTPUT\LOGS\@PURP@ESTIMATED.DAT",
 append = F            
           ENDIF         
        ENDJLOOP
        
ENDRUN


; Script for program MATRIX in file "C:\PROJECTS\RVTPO\CUBE\MCMAT00C.S"
;;<<Default Template>><<MATRIX>><<Default>>;;
; Do not change filenames or add or remove FILEI/FILEO statements using an editor. Use Cube/Application Manager.
RUN PGM=MATRIX
FILEO MATO[1] = "{SCENARIO_DIR}\OUTPUT\NHB_MCTRIPS.MAT",
 MO = 21-25, NAME = DA, SR, WLB, PMB, NOM
FILEI ZDATI[1] = "{SCENARIO_DIR}\Input\TrnWalkPercent.dbf"
FILEI MATI[2] = "{SCENARIO_DIR}\OUTPUT\Dest_NHB.MAT"
FILEI MATI[1] = "{SCENARIO_DIR}\OUTPUT\NHB_MCPROB.MAT"

        MW[1] = MI.2.1
        FILLMW MW[11] = MI.1.1(10)
			  
			  MW[2] = MW[1] * (ZI.1.PCWPROD[I] * 0.01) * (ZI.1.PCWATTR[J] * 0.01)      ; Can Walk
        MW[3] = MW[1] - MW[2]                                                    ; No Trn Access
			  
			  MW[21] = MW[11] * MW[2] +  MW[16] * MW[3] ; DA trips
			  MW[22] = MW[12] * MW[2] +  MW[17] * MW[3] ; SR trips
			  MW[23] = MW[13] * MW[2] +  MW[18] * MW[3] ; LB trips
			  MW[24] = MW[14] * MW[2] +  MW[19] * MW[3] ; PM trips
			  MW[25] = MW[15] * MW[2] +  MW[20] * MW[3] ; NM trips
        
        ; Aggregate all trips        
        JLOOP

           EDA = EDA + MW[21]  
           ESR = ESR + MW[22]  
           ELB = ELB + MW[23]  
           EPM = EPM + MW[24]  
           ENM = ENM + MW[25]		
           
           TRN    = ELB + EPM 
           AUT    = EDA + ESR 
           TOT    = AUT + TRN + ENM
           
           IF(I==264 && J==264)
              print,list= "EST_EDA"  ," = ",EDA , FILE = "{SCENARIO_DIR}\OUTPUT\LOGS\@PURP@ESTIMATED.DAT",
 append = F
              print,list= "EST_ESR"  ," = ",ESR , FILE = "{SCENARIO_DIR}\OUTPUT\LOGS\@PURP@ESTIMATED.DAT",
 append = F
              print,list= "EST_ELB"  ," = ",ELB , FILE = "{SCENARIO_DIR}\OUTPUT\LOGS\@PURP@ESTIMATED.DAT",
 append = F
              print,list= "EST_EPM"  ," = ",EPM , FILE = "{SCENARIO_DIR}\OUTPUT\LOGS\@PURP@ESTIMATED.DAT",
 append = F
              print,list= "EST_ENM"  ," = ",ENM , FILE = "{SCENARIO_DIR}\OUTPUT\LOGS\@PURP@ESTIMATED.DAT",
 append = F
              print,list= "EST_TRN"  ," = ",TRN , FILE = "{SCENARIO_DIR}\OUTPUT\LOGS\@PURP@ESTIMATED.DAT",
 append = F
              print,list= "EST_AUT"  ," = ",AUT , FILE = "{SCENARIO_DIR}\OUTPUT\LOGS\@PURP@ESTIMATED.DAT",
 append = F
              print,list= "EST_TOT"  ," = ",TOT , FILE = "{SCENARIO_DIR}\OUTPUT\LOGS\@PURP@ESTIMATED.DAT",
 append = F            
           ENDIF         
        ENDJLOOP
        
ENDRUN


; Script for program MATRIX in file "C:\PROJECTS\RVTPO\CUBE\MCMAT00D.S"
;;<<Default Template>><<MATRIX>><<Default>>;;
; Do not change filenames or add or remove FILEI/FILEO statements using an editor. Use Cube/Application Manager.
RUN PGM=MATRIX
FILEO MATO[1] = "{SCENARIO_DIR}\OUTPUT\HBSC_MCTRIPS.MAT",
 MO = 21-25, NAME = DA, SR, WLB, PMB, NOM
FILEI ZDATI[1] = "{SCENARIO_DIR}\Input\TrnWalkPercent.dbf"
FILEI MATI[2] = "{SCENARIO_DIR}\OUTPUT\Dest_HBSC.MAT"
FILEI MATI[1] = "{SCENARIO_DIR}\OUTPUT\HBSC_MCPROB.MAT"

        MW[1] = MI.2.1
        FILLMW MW[11] = MI.1.1(10)
			  
			  MW[2] = MW[1] * (ZI.1.PCWPROD[I] * 0.01) * (ZI.1.PCWATTR[J] * 0.01)      ; Can Walk
        MW[3] = MW[1] - MW[2]                                                    ; No Trn Access
			  
			  MW[21] = MW[11] * MW[2] +  MW[16] * MW[3] ; DA trips
			  MW[22] = MW[12] * MW[2] +  MW[17] * MW[3] ; SR trips
			  MW[23] = MW[13] * MW[2] +  MW[18] * MW[3] ; LB trips
			  MW[24] = MW[14] * MW[2] +  MW[19] * MW[3] ; PM trips
			  MW[25] = MW[15] * MW[2] +  MW[20] * MW[3] ; NM trips
        
        ; Aggregate all trips        
        JLOOP

           EDA = EDA + MW[21]  
           ESR = ESR + MW[22]  
           ELB = ELB + MW[23]  
           EPM = EPM + MW[24]  
           ENM = ENM + MW[25]		
           
           TRN    = ELB + EPM 
           AUT    = EDA + ESR 
           TOT    = AUT + TRN + ENM
           
           IF(I==264 && J==264)
              print,list= "EST_EDA"  ," = ",EDA , FILE = "{SCENARIO_DIR}\OUTPUT\LOGS\@PURP@ESTIMATED.DAT",
 append = F
              print,list= "EST_ESR"  ," = ",ESR , FILE = "{SCENARIO_DIR}\OUTPUT\LOGS\@PURP@ESTIMATED.DAT",
 append = F
              print,list= "EST_ELB"  ," = ",ELB , FILE = "{SCENARIO_DIR}\OUTPUT\LOGS\@PURP@ESTIMATED.DAT",
 append = F
              print,list= "EST_EPM"  ," = ",EPM , FILE = "{SCENARIO_DIR}\OUTPUT\LOGS\@PURP@ESTIMATED.DAT",
 append = F
              print,list= "EST_ENM"  ," = ",ENM , FILE = "{SCENARIO_DIR}\OUTPUT\LOGS\@PURP@ESTIMATED.DAT",
 append = F
              print,list= "EST_TRN"  ," = ",TRN , FILE = "{SCENARIO_DIR}\OUTPUT\LOGS\@PURP@ESTIMATED.DAT",
 append = F
              print,list= "EST_AUT"  ," = ",AUT , FILE = "{SCENARIO_DIR}\OUTPUT\LOGS\@PURP@ESTIMATED.DAT",
 append = F
              print,list= "EST_TOT"  ," = ",TOT , FILE = "{SCENARIO_DIR}\OUTPUT\LOGS\@PURP@ESTIMATED.DAT",
 append = F            
           ENDIF         
        ENDJLOOP
        
ENDRUN


; Script for program MATRIX in file "C:\projects\rvtpo\CUBE\MCMAT00A.S"
;;<<Default Template>><<MATRIX>><<Default>>;;
; Do not change filenames or add or remove FILEI/FILEO statements using an editor. Use Cube/Application Manager.
RUN PGM=MATRIX MSG='MC Trips by Mode and Purpose'
FILEI MATI[4] = "{SCENARIO_DIR}\OUTPUT\NHB_MCTRIPS.MAT"
FILEI MATI[3] = "{SCENARIO_DIR}\OUTPUT\HBSC_MCTRIPS.MAT"
FILEI MATI[2] = "{SCENARIO_DIR}\OUTPUT\HBO_MCTRIPS.MAT"
FILEI MATI[1] = "{SCENARIO_DIR}\OUTPUT\HBW_MCTRIPS.MAT"


FILEO MATO[1] = "{SCENARIO_DIR}\OUTPUT\All_MCTRIPS.MAT",
MO = 1-20, NAME = HBW_DA, HBW_SR, HBW_WLB, HBW_PMB, HBW_NOM,
 HBO_DA, HBO_SR, HBO_WLB, HBO_PMB, HBO_NOM,
 HBSC_DA, HBSC_SR, HBSC_WLB, HBSC_PMB, HBSC_NOM,
 NHB_DA, NHB_SR, NHB_WLB, NHB_PMB, NHB_NOM
 
FILLMW MW[1] = MI.1.1(5) 
FILLMW MW[6] = MI.2.1(5) 
FILLMW MW[11] = MI.3.1(5) 
FILLMW MW[16] = MI.4.1(5) 
 
ENDRUN


