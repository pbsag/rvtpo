&PROJFIL
11
0
0
Roanoke Area MPO Model
FB
00
Roanoke MPO Area Travel Demand Model

Fri Mar 18 15:08:44 2016
C:\projects\roanoke\Cube\RVARC.BMP

C:\projects\roanoke\Cube\RVARC_TDM.app
VOYAGER


1
Roanoke MPO Model
681,-229,0,0,Arial,22,400,1,0,8388608
&End_TextAnnotation
English
#PROGRAM0
1
0
1


PILOT

1
1
0
-1.0
Delete Extraneous Files and Create Necessary Output Folders
999999
536
-806
781
-887
0
0
0
#INFIL0
Script File
System Cmd.
0
0
S
C:\projects\roanoke\Cube\Initialize.S
1
PIL
ISCR1 
999999
125
-808
521
-880
-1
-1
0
#INFIL1
Variable File

0
0
VAR
*.VAR
0
VRI
VARI  
999999
200
-839
524
-896
-1
-1
0
#OUTFIL0
Print Data 1

0
0
PRN
*.PRN
0
PIL
PRINTO1
999999
757
-808
1075
-865
0
#OUTFIL1
Print Data 2

0
0
PRN
*.PRN
0
PIL
PRINTO2
999999
900
-519
1250
-595
0
#OUTFIL2
Print Data 3

0
0
PRN
*.PRN
0
PIL
PRINTO3
999999
900
-601
1250
-677
0
#OUTFIL3
Print Data 4

0
0
PRN
*.PRN
0
PIL
PRINTO4
999999
900
-683
1250
-759
0
#OUTFIL4
Print Data 5

0
0
PRN
*.PRN
0
PIL
PRINTO5
999999
900
-765
1250
-841
0
#OUTFIL5
Print Data 6

0
0
PRN
*.PRN
0
PIL
PRINTO6
999999
900
-847
1250
-923
0
#OUTFIL6
Print Data 7

0
0
PRN
*.PRN
0
PIL
PRINTO7
999999
900
-929
1250
-1005
0
#OUTFIL7
Print Data 8

0
0
PRN
*.PRN
0
PIL
PRINTO8
999999
900
-1011
1250
-1087
0
#OUTFIL8
Print Data 9

0
0
PRN
*.PRN
0
PIL
PRINTO9
999999
900
-1093
1250
-1169
0
#OUTFIL9
Print Data 10

0
0
PRN
*.PRN
0
PIL
PRINTO10
999999
900
-1175
1250
-1251
0
#PROGRAM1
2
1
2

C:\projects\roanoke\Cube\NETBUILD.APP
Network

0
1
0


999999
536
-1088
1035
-1227
0
0
0
#INFIL0
Link/Net. 1
Starting Network
0
0
*
{SCENARIO_DIR}\Input\highway_{year}.net
1
0000
      
999999
125
-1043
521
-1115
-1
-1
0
#INFIL1
Node File 2
Land Use Data
0
0
*
{SCENARIO_DIR}\Input\se_{Year}.dbf
1
0001
      
999999
125
-1120
521
-1192
-1
-1
0
#INFIL2
Lookup File 1
Area Type Crossclassification
0
0
*
{CATALOG_DIR}\Params\AT.dbf
1
0002
      
999999
125
-1197
521
-1269
-1
-1
0
#OUTFIL0
Record File 1
Zones with Area type
0
0
*
{SCENARIO_DIR}\Output\ZONAL AT{Year}{Alternative}.DBF
1
0002
      
999999
1057
-1081
1446
-1153
0
#OUTFIL1
Network File

0
0
*
{SCENARIO_DIR}\Output\RVTPOBase{Year}{Alternative}.NET
1
0201
      
999999
1057
-1158
1446
-1230
0
#PROGRAM2
3
1
3

C:\projects\roanoke\Cube\PATHBUILD.APP
Highway Paths

0
1
0


999999
536
-1398
1035
-1537
0
0
0
#INFIL0
Network File

0
0
*
{SCENARIO_DIR}\Output\RVTPOBase{Year}{Alternative}.NET
1
0021
      
999999
125
-1353
521
-1425
1
1
0
#INFIL1
Zonal Data 1
Zones w AT
0
0
*
{SCENARIO_DIR}\Output\ZONAL AT{Year}{Alternative}.DBF
1
0025
      
999999
125
-1430
521
-1502
1
0
0
#INFIL2
Lookup File 1

0
0
*
{CATALOG_DIR}\Params\Term_Time.dbf
1
0035
      
999999
125
-1507
521
-1579
-1
-1
0
#OUTFIL0
Matrix File 1
Skim
0
0
*
{SCENARIO_DIR}\Output\IMPED11.MAT
1
0001
      
999999
1057
-1429
1446
-1501
0
#PROGRAM3
4
1
4

C:\projects\roanoke\Cube\DEMAND.APP
Trip Generation

0
1
0


999999
536
-1794
1035
-1933
0
0
0
#INFIL0
Zonal Data 1

0
0
*
{SCENARIO_DIR}\Output\se_classified_{year}{Alternative}.dbf
1
0101
      
999999
125
-1597
521
-1669
-1
-1
0
#INFIL1
Lookup File 1

0
0
*
{CATALOG_DIR}\PARAMS\TRIP_PROD\HBW.DBF
1
0111
      
999999
125
-1674
521
-1746
-1
-1
0
#INFIL2
Lookup File 2

0
0
*
{CATALOG_DIR}\PARAMS\TRIP_PROD\NHBW.DBF
1
0112
      
999999
125
-1751
521
-1823
-1
-1
0
#INFIL3
Lookup File 3

0
0
*
{CATALOG_DIR}\PARAMS\TRIP_PROD\HBO.DBF
1
0113
      
999999
125
-1828
521
-1900
-1
-1
0
#INFIL4
Lookup File 4

0
0
*
{CATALOG_DIR}\PARAMS\TRIP_PROD\HBSCHOOL.DBF
1
0114
      
999999
125
-1905
521
-1977
-1
-1
0
#INFIL5
Lookup File 5

0
0
*
{CATALOG_DIR}\PARAMS\TRIP_PROD\HBSHOP.DBF
1
0115
      
999999
125
-1982
521
-2054
-1
-1
0
#INFIL6
Lookup File 6

0
0
*
{CATALOG_DIR}\PARAMS\TRIP_PROD\NHBO.DBF
1
0116
      
999999
125
-2059
521
-2131
-1
-1
0
#OUTFIL0
ZonalPAData 1

0
0
*
{SCENARIO_DIR}\OUTPUT\HH_PROD.DBF
1
0101
      
999999
1057
-1825
1446
-1897
0
#PROGRAM4
5
1
13

C:\projects\roanoke\Cube\TRIPS.APP
PA to OD

0
1
0


999999
2286
-2697
2785
-2836
0
0
0
#INFIL0
Matrix File 1
NHB MC
0
0
*
{SCENARIO_DIR}\OUTPUT\NHB_MCTRIPS.MAT
1
0001
      
999999
1875
-2462
2271
-2534
-1
-1
0
#INFIL1
Matrix File 2
HBW MC
0
0
*
{SCENARIO_DIR}\OUTPUT\HBW_MCTRIPS.MAT
1
0002
      
999999
1875
-2539
2271
-2611
-1
-1
0
#INFIL2
Matrix File 3
HBO MC
0
0
*
{SCENARIO_DIR}\OUTPUT\HBO_MCTRIPS.MAT
1
0003
      
999999
1875
-2616
2271
-2688
-1
-1
0
#INFIL3
Matrix File 4
HBSC MC
0
0
*
{SCENARIO_DIR}\OUTPUT\HBSC_MCTRIPS.MAT
1
0004
      
999999
1875
-2693
2271
-2765
-1
-1
0
#INFIL4
Matrix File 5
IEEI <Period>
0
0
*
{SCENARIO_DIR}\Output\IEEI_{Year}_@PERIOD_NAME@.MAT
1
0005
      
999999
1875
-2770
2271
-2842
-1
-1
0
#INFIL5
Matrix File 6
EE <Period>
0
0
*
{SCENARIO_DIR}\Output\EE_{year}_@PERIOD_NAME@.MAT
1
0006
      
999999
1875
-2847
2271
-2919
-1
-1
0
#INFIL6
Matrix File 7
CV <Period>
0
0
*
{SCENARIO_DIR}\Output\CV_{Year}_@PERIOD_NAME@.MAT
1
0007
      
999999
1875
-2924
2271
-2996
-1
-1
0
#INFIL7
Lookup File 1
TOD Facs
0
0
*
{CATALOG_DIR}\Params\TOD_FACS.DBF
1
0032
      
999999
1875
-3001
2271
-3073
-1
-1
0
#OUTFIL0
Matrix File 1
ODAUTO <Period>
0
0
*
{SCENARIO_DIR}\Output\ODAUTO_@PERIOD_NAME@.MAT
1
0001
      
999999
2807
-2652
3196
-2724
0
#OUTFIL1
Matrix File 1
PK Transit
0
0
*
{SCENARIO_DIR}\Output\PK_Transit.MAT
1
0401
      
999999
2807
-2729
3196
-2801
0
#OUTFIL2
Matrix File 2
OP Transit
0
0
*
{SCENARIO_DIR}\Output\OP_Transit.MAT
1
0402
      
999999
2807
-2806
3196
-2878
0
#PROGRAM5
6
1
14

C:\projects\roanoke\Cube\ASSIGNMENT.APP
Highway Assignment

0
1
0


999999
3584
-1398
4083
-1537
0
0
0
#INFIL0
Matrix File 1
OD Auto <Period>
0
0
*
{SCENARIO_DIR}\Output\ODAUTO_@PERIOD_NAME@.MAT
1
0001
      
999999
3173
-1391
3569
-1463
-1
-1
0
#INFIL1
Network File

0
0
*
{SCENARIO_DIR}\Output\RVTPOBase{Year}{Alternative}.NET
1
0521
      
999999
3173
-1468
3569
-1540
-1
-1
0
#OUTFIL0
Matrix File 1
Select Link <Period>
0
0
*
{SCENARIO_DIR}\Output\SL_Loaded_@PERIOD_NAME@.MAT
1
0001
      
999999
4105
-1277
4494
-1349
0
#OUTFIL1
Network File
Loaded Network
0
0
*
{SCENARIO_DIR}\Output\LOADED_{Year}{Alternative}.NET
1
0101
      
999999
4105
-1354
4494
-1426
0
#OUTFIL2
Print Data 1
Hwy Eval Period
0
0
*
{SCENARIO_DIR}\Output\Hwy_eval_period.csv
1
0104
      
999999
4105
-1431
4494
-1503
0
#OUTFIL3
Print Data 1
Hwy Eval
0
0
*
{SCENARIO_DIR}\Output\Hwy_eval.csv
1
0404
      
999999
4105
-1508
4494
-1580
0
#OUTFIL4
Print Data 2
Hwy Link Eval
0
0
*
{SCENARIO_DIR}\Output\Hwy_eval_links.csv
1
0405
      
999999
4105
-1585
4494
-1657
0
#PROGRAM6
8
1
11

C:\projects\roanoke\Cube\TRIPDI00.APP
Trip Distribution

0
1
0


999999
2258
-1794
2757
-1933
0
0
0
#INFIL0
Zonal Data 1

0
0
*
{SCENARIO_DIR}\OUTPUT\HH_PROD.DBF
1
0022
      
999999
1847
-1635
2243
-1707
-1
-1
0
#INFIL1
Zonal Data 2

0
0
*
{SCENARIO_DIR}\OUTPUT\se_classified_{year}{Alternative}.dbf
1
0023
      
999999
1847
-1712
2243
-1784
-1
-1
0
#INFIL2
Matrix File 1
MC Logsums
0
0
*
{SCENARIO_DIR}\OUTPUT\@MCLS_MAT@_MCLS.MAT
1
0100
      
999999
1847
-1789
2243
-1861
-1
-1
0
#INFIL3
Matrix File 2
Highway Skims
0
0
*
{SCENARIO_DIR}\OUTPUT\op_Hwyskim.MAT
1
0101
      
999999
1847
-1866
2243
-1938
-1
-1
0
#INFIL4
Matrix File 2
Highway Skims
0
0
*
{SCENARIO_DIR}\OUTPUT\PK_Hwyskim.MAT
1
0103
      
999999
1847
-1943
2243
-2015
-1
-1
0
#INFIL5
Lookup File 1
DC Parameters
0
0
*
{CATALOG_DIR}\PARAMS\DESTCHOICE_PARAMETERS.DBF
1
0106
      
999999
1847
-2020
2243
-2092
-1
-1
0
#OUTFIL0
Matrix File 1
Dest <purpose>
0
0
*
{SCENARIO_DIR}\OUTPUT\Dest_@PURP@.MAT
1
0100
      
999999
2779
-1787
3168
-1859
0
#OUTFIL1
Matrix File 1
HBSC Trip Table
0
0
*
{SCENARIO_DIR}\Output\Dest_HBSC.MAT
1
0301
      
999999
2779
-1864
3168
-1936
0
#PROGRAM7
9
1
5

C:\projects\ROANOKE\CUBE\TRANSIT.APP
Transit Network

0
1
0


999999
536
-2499
1035
-2638
0
0
0
#INFIL0
Link/Net. 1

0
0
*
{SCENARIO_DIR}\Output\RVTPOBase{Year}{Alternative}.NET
1
0001
      
999999
125
-2302
521
-2374
1
1
0
#INFIL1
Lookup File 1

0
0
*
{CATALOG_DIR}\Params\transit\TRANSPD.dbf
1
0031
      
999999
125
-2379
521
-2451
-1
-1
0
#INFIL2
Line File 1

0
0
*
{SCENARIO_DIR}\Input\TROUTE_{Year}.LIN
1
0302
      
999999
125
-2456
521
-2528
-1
-1
0
#INFIL3
System File 1

0
0
*
{CATALOG_DIR}\Params\transit\TSYSD.PTS
1
0317
      
999999
125
-2533
521
-2605
-1
-1
0
#INFIL4
Fares File

0
0
*
{CATALOG_DIR}\Params\transit\TFARES.FAR
1
0323
      
999999
125
-2610
521
-2682
-1
-1
0
#INFIL5
Factor File 1

0
0
*
{CATALOG_DIR}\Params\transit\WalkBus.FAC
1
0334
      
999999
125
-2687
521
-2759
-1
-1
0
#INFIL6
Factor File 2

0
0
*
{CATALOG_DIR}\Params\transit\WalkPrem.FAC
1
0335
      
999999
125
-2764
521
-2836
-1
-1
0
#OUTFIL0
Network File
PK Trn Network
0
0
*
{SCENARIO_DIR}\Output\PK_TransitWalk.NET
1
0301
      
999999
1057
-2264
1446
-2336
0
#OUTFIL1
Report File

0
0
*
{SCENARIO_DIR}\Output\PK_TransitWalk.rpt
1
0312
      
999999
1057
-2341
1446
-2413
0
#OUTFIL2
Matrix File 1
PK Walk Bus
0
0
*
{SCENARIO_DIR}\Output\PK_TSKIMBus.MAT
1
0323
      
999999
1057
-2418
1446
-2490
0
#OUTFIL3
Matrix File 2
PK Walk Prem
0
0
*
{SCENARIO_DIR}\Output\PK_TSKIMPrem.MAT
1
0324
      
999999
1057
-2495
1446
-2567
0
#OUTFIL4
Network File
OP Trn Network
0
0
*
{SCENARIO_DIR}\Output\OP_TransitWalk.NET
1
0401
      
999999
1057
-2572
1446
-2644
0
#OUTFIL5
Report File

0
0
*
{SCENARIO_DIR}\Output\OP_TransitWalk.rpt
1
0412
      
999999
1057
-2649
1446
-2721
0
#OUTFIL6
Matrix File 1
OP Walk Bus
0
0
*
{SCENARIO_DIR}\Output\OP_TSKIMBus.MAT
1
0423
      
999999
1057
-2726
1446
-2798
0
#OUTFIL7
Matrix File 2
OP Walk Prem
0
0
*
{SCENARIO_DIR}\Output\OP_TSKIMPrem.MAT
1
0424
      
999999
1057
-2803
1446
-2875
0
#PROGRAM8
10
1
10

C:\projects\ROANOKE\CUBE\MCLOGSUM.APP
MC Logsums

0
1
0


999999
2230
-1398
2729
-1537
0
0
0
#INFIL0
Matrix File 1
Highway Skim
0
0
*
{SCENARIO_DIR}\OUTPUT\@hwySkim@
1
0001
      
999999
1819
-1353
2215
-1425
-1
-1
0
#INFIL1
Lookup File 1
MC Constants
0
0
*
{CATALOG_DIR}\Params\mc\MC_Constants.csv
1
0042
      
999999
1819
-1430
2215
-1502
-1
-1
0
#INFIL2
Lookup File 2
MC Coefficients
0
0
*
{CATALOG_DIR}\Params\mc\MC_Coefficients.csv
1
0043
      
999999
1819
-1507
2215
-1579
-1
-1
0
#PROGRAM9
11
1
12

C:\projects\ROANOKE\CUBE\MODECH00.APP
modechoice

0
1
0


999999
2286
-2189
2785
-2328
0
0
0
#INFIL0
Matrix File 1
Logsum <purpose>
0
0
*
{SCENARIO_DIR}\OUTPUT\@PURP@_MCPROB.MAT
1
0301
      
999999
1875
-2182
2271
-2254
-1
-1
0
#INFIL1
Matrix File 2
Dest <purpose>
0
0
*
{SCENARIO_DIR}\OUTPUT\Dest_@PURPNAME@.MAT
1
0302
      
999999
1875
-2259
2271
-2331
-1
-1
0
#OUTFIL0
Matrix File 1
MC <purpose>
0
0
*
{SCENARIO_DIR}\OUTPUT\@PURP@_MCTRIPS.MAT
1
0301
      
999999
2807
-2220
3196
-2292
0
#PROGRAM10
12
1
6

C:\projects\ROANOKE\CUBE\EXTERN00.APP
External Model

0
1
0


999999
508
-3261
1007
-3400
0
0
0
#INFIL0
Zonal Data 1

0
0
*
{SCENARIO_DIR}\Input\se_{year}.dbf
1
0001
      
999999
97
-3178
493
-3250
-1
-1
0
#INFIL1
Matrix File 1

0
0
*
{SCENARIO_DIR}\Output\IMPED11.MAT
1
0501
      
999999
97
-3255
493
-3327
2
0
0
#INFIL2
Matrix File 1

0
0
*
{SCENARIO_DIR}\INPUT\EE_seed.MAT
1
0601
      
999999
97
-3332
493
-3404
-1
-1
0
#INFIL3
Lookup File 1

0
0
*
{SCENARIO_DIR}\INPUT\EXTERNALTRIPS_{year}.DBF
1
0632
      
999999
97
-3409
493
-3481
-1
-1
0
#OUTFIL0
Record File 1
NR-NHB PA
0
0
*
{SCENARIO_DIR}\Output\NHBNR_PA_{year}.DBF
1
0121
      
999999
1029
-3178
1418
-3250
0
#OUTFIL1
Matrix File 1
IEEI <Period>
0
0
*
{SCENARIO_DIR}\Output\IEEI_{year}_AM.MAT
1
0301
      
999999
1029
-3255
1418
-3327
0
#OUTFIL2
Matrix File 1
EE <Period>
0
0
*
{SCENARIO_DIR}\Output\EE_{year}_AM.MAT
1
0401
      
999999
1029
-3332
1418
-3404
0
#OUTFIL3
Matrix File 1
Hwy Skim
0
0
*
{SCENARIO_DIR}\OUTPUT\Hwyskim.MAT
1
0501
      
999999
1029
-3409
1418
-3481
0
#PROGRAM11
13
1
7

C:\projects\ROANOKE\CUBE\COMMER00.APP
Commercial Vehicle

0
1
0


999999
536
-3825
1035
-3964
0
0
0
#INFIL0
Zonal Data 1

0
0
*
{SCENARIO_DIR}\Input\se_{year}.dbf
1
0001
      
999999
125
-3780
521
-3852
-1
-1
0
#INFIL1
Lookup File 1
CV Trip Rates
0
0
*
{CATALOG_DIR}\PARAMS\CVRATES.CSV
1
0011
      
999999
125
-3857
521
-3929
-1
-1
0
#INFIL2
Matrix File 1
Hwy Skim
0
0
*
{SCENARIO_DIR}\OUTPUT\Hwyskim.MAT
1
0101
      
999999
125
-3934
521
-4006
10
3
0
#OUTFIL0
Matrix File 1
CV<Period>
0
0
*
{SCENARIO_DIR}\Output\CV_{Year}_AM.MAT
1
0201
      
999999
1057
-3856
1446
-3928
0
#PROGRAM12
14
1
17

C:\projects\ROANOKE\CUBE\TRNASS00.APP
TrnAssignment

0
1
0


999999
2314
-3543
2813
-3682
0
0
0
#INFIL0
Network File

0
0
*
{SCENARIO_DIR}\Output\PK_TransitWalk.NET
1
0001
      
999999
1903
-3308
2299
-3380
-1
-1
0
#INFIL1
Route File 1

0
0
*
{SCENARIO_DIR}\Output\PK_TPATHBus.RTE
1
0044
      
999999
1903
-3385
2299
-3457
-1
-1
0
#INFIL2
Route File 2

0
0
*
{SCENARIO_DIR}\Output\PK_TPATHPrem.RTE
1
0045
      
999999
1903
-3462
2299
-3534
-1
-1
0
#INFIL3
Matrix File 1

0
0
*
{SCENARIO_DIR}\Output\PK_Transit.mat
1
0054
      
999999
1903
-3539
2299
-3611
-1
-1
0
#INFIL4
Network File

0
0
*
{SCENARIO_DIR}\Output\OP_TransitWalk.NET
1
0101
      
999999
1903
-3616
2299
-3688
-1
-1
0
#INFIL5
Route File 1

0
0
*
{SCENARIO_DIR}\Output\OP_TPATHBus.RTE
1
0144
      
999999
1903
-3693
2299
-3765
-1
-1
0
#INFIL6
Route File 2

0
0
*
{SCENARIO_DIR}\Output\OP_TPATHPrem.RTE
1
0145
      
999999
1903
-3770
2299
-3842
-1
-1
0
#INFIL7
Matrix File 1

0
0
*
{SCENARIO_DIR}\Output\OP_Transit.mat
1
0154
      
999999
1903
-3847
2299
-3919
-1
-1
0
#OUTFIL0
Links File 1
PK Trn File
0
0
*
{SCENARIO_DIR}\Output\Trn_PK.dbf
1
0002
      
999999
2835
-3536
3224
-3608
0
#OUTFIL1
Links File 1
OP Trn File
0
0
*
{SCENARIO_DIR}\Output\Trn_OP.dbf
1
0102
      
999999
2835
-3613
3224
-3685
0
#PROGRAM13
15
0
8




0
1
0
-1.0

255
2145
-1145
122
0
1
Feedback Loop
1
1
0
16
0
0
FeedBack_ITER
1
5
1
-1
2015
12
3
30
13
3
6
105
0
0
#PROGRAM14
16
1
15

C:\projects\roanoke\Cube\HIGHWA_Congested.app
Congested Skims

0
1
0


999999
3612
-1709
4111
-1848
0
0
0
#INFIL0
Network File

0
0
*
{SCENARIO_DIR}\Output\LOADED_{Year}{Alternative}.NET
1
0021
      
999999
3201
-1664
3597
-1736
-1
-1
0
#INFIL1
Zonal Data 1
Terminal Time
0
0
*
{SCENARIO_DIR}\Output\ZONAL AT{Year}{Alternative}.DBF
1
0025
      
999999
3201
-1741
3597
-1813
-1
-1
0
#INFIL2
Lookup File 1

0
0
*
{CATALOG_DIR}\Params\Term_Time.dbf
1
0035
      
999999
3201
-1818
3597
-1890
-1
-1
0
#OUTFIL0
Matrix File 1
PK Cong Skim
0
0
*
{SCENARIO_DIR}\Output\PK_CNG_HwySkim.MAT
1
0001
      
999999
4133
-1702
4522
-1774
0
#OUTFIL1
Matrix File 1
OP Cong Skim
0
0
*
{SCENARIO_DIR}\Output\OP_CNG_HwySkim.MAT
1
0101
      
999999
4133
-1779
4522
-1851
0
#PROGRAM15
7
0
9


PILOT

1
1
0
-1.0

999999
3810
-1201
4055
-1282
0
0
0
#INFIL0
Script File

0
0
S
C:\projects\roanoke\Cube\Feedback_Pilot.S
1
PIL
ISCR1 
999999
3399
-1203
3795
-1275
-1
-1
0
#INFIL1
Variable File

0
0
VAR
*.VAR
0
VRI
VARI  
999999
3474
-1234
3798
-1291
-1
-1
0
#OUTFIL0
Print Data 1

0
0
PRN
*.PRN
0
PIL
PRINTO1
999999
4031
-1203
4349
-1260
0
#OUTFIL1
Print Data 2

0
0
PRN
*.PRN
0
PIL
PRINTO2
999999
4070
-936
4466
-1008
0
#OUTFIL2
Print Data 3

0
0
PRN
*.PRN
0
PIL
PRINTO3
999999
4070
-1013
4466
-1085
0
#OUTFIL3
Print Data 4

0
0
PRN
*.PRN
0
PIL
PRINTO4
999999
4070
-1090
4466
-1162
0
#OUTFIL4
Print Data 5

0
0
PRN
*.PRN
0
PIL
PRINTO5
999999
4070
-1167
4466
-1239
0
#OUTFIL5
Print Data 6

0
0
PRN
*.PRN
0
PIL
PRINTO6
999999
4070
-1244
4466
-1316
0
#OUTFIL6
Print Data 7

0
0
PRN
*.PRN
0
PIL
PRINTO7
999999
4070
-1321
4466
-1393
0
#OUTFIL7
Print Data 8

0
0
PRN
*.PRN
0
PIL
PRINTO8
999999
4070
-1398
4466
-1470
0
#OUTFIL8
Print Data 9

0
0
PRN
*.PRN
0
PIL
PRINTO9
999999
4070
-1475
4466
-1547
0
#OUTFIL9
Print Data 10

0
0
PRN
*.PRN
0
PIL
PRINTO10
999999
4070
-1552
4466
-1624
0
#PROGRAM16
17
0
16


PILOT

1
1
0
-1.0

999999
4120
-2922
4365
-3003
0
0
0
#INFIL0
Script File

0
0
S
C:\projects\roanoke\Cube\Feedback_Pilot_end.S
1
PIL
ISCR1 
999999
3709
-2924
4105
-2996
-1
-1
0
#INFIL1
Variable File

0
0
VAR
*.VAR
0
VRI
VARI  
999999
3784
-2955
4108
-3012
-1
-1
0
#OUTFIL0
Print Data 1

0
0
PRN
*.PRN
0
PIL
PRINTO1
999999
4341
-2924
4659
-2981
0
#OUTFIL1
Print Data 2

0
0
PRN
*.PRN
0
PIL
PRINTO2
999999
4380
-2657
4776
-2729
0
#OUTFIL2
Print Data 3

0
0
PRN
*.PRN
0
PIL
PRINTO3
999999
4380
-2734
4776
-2806
0
#OUTFIL3
Print Data 4

0
0
PRN
*.PRN
0
PIL
PRINTO4
999999
4380
-2811
4776
-2883
0
#OUTFIL4
Print Data 5

0
0
PRN
*.PRN
0
PIL
PRINTO5
999999
4380
-2888
4776
-2960
0
#OUTFIL5
Print Data 6

0
0
PRN
*.PRN
0
PIL
PRINTO6
999999
4380
-2965
4776
-3037
0
#OUTFIL6
Print Data 7

0
0
PRN
*.PRN
0
PIL
PRINTO7
999999
4380
-3042
4776
-3114
0
#OUTFIL7
Print Data 8

0
0
PRN
*.PRN
0
PIL
PRINTO8
999999
4380
-3119
4776
-3191
0
#OUTFIL8
Print Data 9

0
0
PRN
*.PRN
0
PIL
PRINTO9
999999
4380
-3196
4776
-3268
0
#OUTFIL9
Print Data 10

0
0
PRN
*.PRN
0
PIL
PRINTO10
999999
4380
-3273
4776
-3345
0
#PROGRAM17
18
0
18


PILOT

1
1
0
-1.0

999999
4064
-3571
4309
-3652
0
0
0
#INFIL0
Script File

0
0
S
C:\projects\Roanoke\CUBE\move_PRN_Files.s
1
PIL
ISCR1 
999999
3653
-3573
4049
-3645
-1
-1
0
#INFIL1
Variable File

0
0
VAR
*.VAR
0
VRI
VARI  
999999
3728
-3604
4052
-3661
-1
-1
0
#OUTFIL0
Print Data 1

0
0
PRN
*.PRN
0
PIL
PRINTO1
999999
4285
-3573
4603
-3630
0
#OUTFIL1
Print Data 2

0
0
PRN
*.PRN
0
PIL
PRINTO2
999999
4300
156
4696
84
0
#OUTFIL2
Print Data 3

0
0
PRN
*.PRN
0
PIL
PRINTO3
999999
4300
79
4696
7
0
#OUTFIL3
Print Data 4

0
0
PRN
*.PRN
0
PIL
PRINTO4
999999
4300
2
4696
-70
0
#OUTFIL4
Print Data 5

0
0
PRN
*.PRN
0
PIL
PRINTO5
999999
4300
-75
4696
-147
0
#OUTFIL5
Print Data 6

0
0
PRN
*.PRN
0
PIL
PRINTO6
999999
4300
-152
4696
-224
0
#OUTFIL6
Print Data 7

0
0
PRN
*.PRN
0
PIL
PRINTO7
999999
4300
-229
4696
-301
0
#OUTFIL7
Print Data 8

0
0
PRN
*.PRN
0
PIL
PRINTO8
999999
4300
-306
4696
-378
0
#OUTFIL8
Print Data 9

0
0
PRN
*.PRN
0
PIL
PRINTO9
999999
4300
-383
4696
-455
0
#OUTFIL9
Print Data 10

0
0
PRN
*.PRN
0
PIL
PRINTO10
999999
4300
-460
4696
-532
0