% fname: routing_oddeven__sel_nop__topology_8x8__.m
% ./noxim -routing oddeven -sel nop -dimx 8 -dimy 8  -sim 10000 -warmup 2000 -size 8 8 -buffer 8 -hs 27 0.2 -hs 28 0.2 -hs 35 0.2 -hs 36 0.2 

function [max_pir, max_throughput, min_delay] = routing_oddeven__sel_nop__topology_8x8__(symbol)

data = [
%             pir      avg_delay     throughput      max_delay       rpackets         rflits
           0.0022        18.1247      0.0172969             99           1107           8856
           0.0022        19.2111      0.0179617            124           1113           8909
           0.0022        18.8853       0.018246            116           1151           9196
           0.0022        17.8741      0.0179127             98           1128           9028
           0.0022        17.5918      0.0171074            162           1095           8759
           0.0022        19.2433      0.0181573            138           1126           9006
           0.0022        18.7966      0.0186937            116           1121           8973
           0.0022        18.0216      0.0177687            189           1067           8529
           0.0022         18.411      0.0181455            117           1107           8855
           0.0022        17.9519      0.0172109             88           1103           8812
           0.0022        17.5716      0.0171621            107           1097           8787
           0.0022        17.9824      0.0177559            105           1137           9091
           0.0022        17.2074      0.0172598             79           1104           8837
           0.0022        17.8083      0.0187812            122           1127           9015
           0.0022        19.3653      0.0185282            154           1147           9190
           0.0022        18.2326      0.0174863            129           1118           8953
           0.0022        17.4018      0.0183125            156           1135           9083
           0.0022        17.2411      0.0174325             92           1099           8786
           0.0022        19.4887      0.0193246            105           1199           9585
           0.0022        19.3005      0.0187958            153           1128           9022
           0.0023        19.3857      0.0197137            132           1221           9778
           0.0023        19.4361       0.018381            120           1158           9264
           0.0023        17.6602      0.0178988             94           1130           9021
           0.0023        17.9825      0.0193508             89           1199           9598
           0.0023        18.1209      0.0181071            108           1141           9126
           0.0023        19.6507       0.018625            119           1171           9387
           0.0023        18.2546      0.0188313            102           1186           9491
           0.0023        17.7236      0.0177401             98           1118           8941
           0.0023        17.0335      0.0181373             91           1106           8851
           0.0023        18.1503      0.0178926            124           1144           9161
           0.0023        17.6377      0.0188095             86           1184           9480
           0.0023        20.8287      0.0195287            150           1191           9530
           0.0023         20.028      0.0195685            143           1214           9706
           0.0023        19.3052      0.0181593            140           1127           9007
           0.0023        17.2657      0.0184819             91           1144           9167
           0.0023        19.6611      0.0188301            137           1207           9641
           0.0023        18.9504      0.0191992            133           1230           9830
           0.0023        18.4767      0.0177441            195           1135           9085
           0.0023         18.234      0.0183848            135           1175           9413
           0.0023         18.602      0.0184221            183           1123           8990
           0.0024        20.4791      0.0204637            145           1269          10150
           0.0024        20.3835      0.0204316            150           1309          10461
           0.0024        20.9384      0.0190156            216           1217           9736
           0.0024        21.2063      0.0193457            205           1236           9905
           0.0024         20.763      0.0198373            187           1249           9998
           0.0024        18.7872      0.0190996            126           1222           9779
           0.0024        18.7573      0.0190933            187           1203           9623
           0.0024         20.581      0.0198535            170           1272          10165
           0.0024        18.5738      0.0184722            111           1166           9310
           0.0024        20.8776      0.0187656            259           1201           9608
           0.0024        19.0276      0.0189782            110           1196           9565
           0.0024        21.5726      0.0205397            149           1294          10352
           0.0024        20.0043      0.0186875            135           1157           9269
           0.0024        19.5897      0.0196548            110           1238           9906
           0.0024        18.9894      0.0191348            150           1226           9797
           0.0024        19.5872      0.0196607            154           1238           9909
           0.0024             20      0.0211127            138           1288          10303
           0.0024        20.8299      0.0199414            166           1276          10210
           0.0024        19.3598       0.019293            120           1234           9878
           0.0024             20      0.0191602            106           1227           9810
           0.0025        20.0943      0.0205352            163           1315          10514
           0.0025        20.4384      0.0202262            138           1275          10194
           0.0025         20.034      0.0193301            133           1236           9897
           0.0025        20.4331      0.0197227            154           1263          10098
           0.0025        19.3557      0.0204657            132           1268          10151
           0.0025        19.6971      0.0197129            117           1261          10093
           0.0025        20.5185      0.0201766            140           1271          10169
           0.0025        18.3947      0.0195774            110           1234           9867
           0.0025        17.6724      0.0199492            102           1276          10214
           0.0025        22.6724      0.0210536            255           1328          10611
           0.0025        19.9028      0.0204316            110           1307          10461
           0.0025        22.5433      0.0206935            149           1283          10264
           0.0025        19.5016      0.0200293            213           1282          10255
           0.0025        21.1716      0.0203926            171           1305          10441
           0.0025         19.308      0.0191048            119           1185           9476
           0.0025        20.3357      0.0200332            115           1281          10257
           0.0025        20.1246      0.0200684            158           1284          10275
           0.0025        22.4195      0.0203909            184           1285          10277
           0.0025        20.4992      0.0205377            131           1294          10351
           0.0025        19.2351      0.0202063            128           1272          10184
           0.0026        20.5393       0.021746            169           1348          10786
           0.0026        20.1585      0.0204206            118           1287          10292
           0.0026         19.583      0.0208105            112           1331          10655
           0.0026        24.8962      0.0222949            258           1426          11415
           0.0026        20.6621      0.0206667            185           1302          10416
           0.0026        22.0344      0.0215746            167           1338          10701
           0.0026        20.5978      0.0214385            119           1350          10805
           0.0026        22.1798      0.0204623            169           1290          10313
           0.0026        22.4431      0.0216895            164           1388          11105
           0.0026        21.5405      0.0219629            172           1406          11245
           0.0026        20.8012      0.0210774            108           1328          10623
           0.0026        22.0808      0.0212715            197           1361          10891
           0.0026        20.1627      0.0212157            143           1315          10523
           0.0026        20.4441      0.0213934            122           1306          10440
           0.0026        18.9785      0.0203359            126           1302          10412
           0.0026         22.765      0.0218066            127           1396          11165
           0.0026        26.0415      0.0210977            405           1350          10802
           0.0026        20.8063      0.0218574            186           1399          11191
           0.0026        19.8107      0.0208016            101           1310          10484
           0.0026        20.3512      0.0212937            131           1341          10732
           0.0027        23.7963      0.0220352            225           1409          11282
           0.0027        24.2243       0.021416            206           1373          10965
           0.0027         21.913      0.0212148            125           1356          10862
           0.0027        24.4393      0.0219722            295           1384          11074
           0.0027        24.8411      0.0218262            254           1397          11175
           0.0027        22.5727      0.0224274            144           1390          11124
           0.0027        26.3503      0.0229941            308           1470          11773
           0.0027        22.6773      0.0224766            132           1438          11508
           0.0027        21.2768      0.0207639            150           1308          10465
           0.0027        22.9559      0.0216191            199           1382          11069
           0.0027        20.6406      0.0217381            129           1369          10956
           0.0027        23.6889      0.0216094            154           1382          11064
           0.0027        21.5259      0.0216758            193           1388          11098
           0.0027        21.9957       0.021998            138           1408          11263
           0.0027        19.8905      0.0215992             98           1361          10886
           0.0027        20.1564      0.0222202            149           1400          11199
           0.0027        22.1989      0.0221465            141           1418          11339
           0.0027        21.8305      0.0218047            128           1398          11164
           0.0027        22.7466      0.0223347            188           1385          11078
           0.0027        22.6435      0.0224805            132           1439          11510
           0.0028        24.0879      0.0231488            155           1457          11667
           0.0028        24.1265      0.0228672            174           1463          11708
           0.0028        25.7339      0.0223926            177           1432          11465
           0.0028        23.1175      0.0220566            288           1413          11293
           0.0028        24.3943      0.0229023            216           1466          11726
           0.0028        22.1226      0.0223508            155           1387          11086
           0.0028        23.5734      0.0231094            195           1479          11832
           0.0028        24.3484      0.0228648            232           1395          11158
           0.0028        25.0586      0.0223867            153           1434          11462
           0.0028        23.7516      0.0225714            139           1421          11376
           0.0028        23.7012      0.0223379            155           1429          11437
           0.0028        22.8457      0.0215893            164           1361          10881
           0.0028        25.1041      0.0216094            214           1383          11064
           0.0028        24.9883      0.0235161            273           1457          11664
           0.0028        23.9214      0.0226738            131           1450          11609
           0.0028        23.1096      0.0222598            180           1424          11397
           0.0028        20.7123       0.022246            139           1401          11212
           0.0028        22.4996       0.021998            162           1407          11263
           0.0028        25.8687      0.0230859            371           1478          11820
           0.0028         22.739      0.0234727            149           1502          12018
           0.0029        23.7255      0.0214902            173           1377          11003
           0.0029        22.3371      0.0225813            187           1424          11381
           0.0029        24.0829      0.0235437            210           1483          11866
           0.0029        26.9372      0.0233535            179           1496          11957
           0.0029        26.8245       0.023869            247           1504          12030
           0.0029        24.9417      0.0233027            247           1492          11931
           0.0029        22.9879      0.0235397            119           1485          11864
           0.0029        25.6685      0.0230781            183           1478          11816
           0.0029        25.5966      0.0242341            155           1527          12214
           0.0029        23.5546      0.0233281            243           1493          11944
           0.0029        25.8343      0.0244127            217           1539          12304
           0.0029         25.209      0.0239206            181           1507          12056
           0.0029        25.7439      0.0239861            207           1511          12089
           0.0029         24.236       0.022582            212           1445          11562
           0.0029        24.7106      0.0233379            308           1493          11949
           0.0029        22.4887      0.0234453            153           1500          12004
           0.0029         26.095      0.0235098            292           1505          12037
           0.0029        26.1239      0.0233175            263           1469          11752
           0.0029        24.2556      0.0237168            192           1518          12143
           0.0029        25.8483      0.0242639            284           1529          12229
            0.003        23.4424      0.0227891            171           1458          11668
            0.003        26.6172      0.0237871            340           1523          12179
            0.003        26.9883      0.0241172            174           1542          12348
            0.003        28.8104      0.0243711            198           1561          12478
            0.003        26.1315      0.0243848            169           1559          12485
            0.003        23.9394      0.0238333            152           1502          12012
            0.003        24.4546      0.0244316            142           1564          12509
            0.003         26.908      0.0241445            180           1544          12362
            0.003        26.7928      0.0250469            216           1602          12824
            0.003        29.8945      0.0241445            241           1545          12362
            0.003        28.1957      0.0241797            200           1548          12380
            0.003        24.8841      0.0241523            227           1544          12366
            0.003        24.6602       0.024168            197           1548          12374
            0.003        25.9911      0.0246211            198           1577          12606
            0.003        30.9039       0.024621            378           1551          12409
            0.003        27.0681      0.0236406            187           1512          12104
            0.003        24.0345      0.0239902            201           1536          12283
            0.003        27.9457      0.0251786            256           1584          12690
            0.003          25.62      0.0237617            188           1521          12166
            0.003        24.1395      0.0239355            142           1484          11872
           0.0031        26.0082      0.0252341            225           1590          12718
           0.0031        32.6404      0.0251349            307           1585          12668
           0.0031        29.0983      0.0259375            156           1659          13280
           0.0031        24.9234      0.0242656            182           1553          12424
           0.0031        31.4397      0.0256387            308           1642          13127
           0.0031        27.7627      0.0260484            195           1614          12920
           0.0031        29.2794      0.0255195            185           1632          13066
           0.0031        25.6431      0.0249434            268           1597          12771
           0.0031        28.6313      0.0246289            227           1576          12610
           0.0031        29.4064      0.0243633            320           1560          12474
           0.0031        27.7247      0.0252871            170           1620          12947
           0.0031        30.3023      0.0255391            216           1634          13076
           0.0031        24.7455      0.0235195            233           1505          12042
           0.0031        28.3758      0.0247754            207           1586          12685
           0.0031        28.3089      0.0253535            214           1622          12981
           0.0031        29.9277      0.0257129            216           1646          13165
           0.0031        30.9381      0.0247363            255           1583          12665
           0.0031        25.3007      0.0247344            353           1583          12664
           0.0031        29.2724      0.0246016            240           1575          12596
           0.0031        24.0213      0.0235254            126           1505          12045
           0.0032        29.6238      0.0250645            270           1603          12833
           0.0032        43.6876      0.0268418            461           1719          13743
           0.0032         26.003      0.0259082            174           1660          13265
           0.0032         27.662       0.025709            193           1645          13163
           0.0032        43.6957      0.0258262            509           1653          13223
           0.0032        31.8471      0.0268591            334           1694          13537
           0.0032        26.3771       0.025248            237           1615          12927
           0.0032        30.0018      0.0256387            269           1641          13127
           0.0032        27.4149      0.0243398            332           1557          12462
           0.0032        27.6778       0.025207            229           1614          12906
           0.0032        28.9345      0.0259844            226           1664          13304
           0.0032        38.9666      0.0257024            603           1618          12954
           0.0032        26.5378      0.0262417            316           1573          12596
           0.0032        29.8363         0.0255            192           1631          13056
           0.0032        36.4235      0.0262344            384           1679          13432
           0.0032        27.2572       0.024916            224           1594          12757
           0.0032        32.5414      0.0256387            421           1642          13127
           0.0032        38.2771      0.0266758            468           1707          13658
           0.0032        25.5752      0.0251523            147           1610          12878
           0.0032         29.094      0.0263075            202           1659          13259
           0.0033        34.3935      0.0266562            333           1705          13648
           0.0033        41.3152      0.0267207            590           1710          13681
           0.0033        26.7082      0.0255742            260           1638          13094
           0.0033        31.2161      0.0268125            200           1717          13728
           0.0033        31.3934       0.026002            222           1665          13313
           0.0033        27.1675      0.0252715            231           1618          12939
           0.0033        31.1906      0.0268066            236           1716          13725
           0.0033        39.5248      0.0264551            385           1692          13545
           0.0033        36.1921      0.0265254            231           1697          13581
           0.0033         40.942      0.0283649            434           1758          14069
           0.0033        33.4413      0.0262024            281           1652          13206
           0.0033        29.6834      0.0257988            236           1652          13209
           0.0033        32.0381      0.0258672            289           1653          13244
           0.0033        30.3621      0.0273829            223           1726          13801
           0.0033        36.6027      0.0272852            494           1747          13970
           0.0033        48.1764      0.0275547            435           1763          14108
           0.0033        32.0652      0.0263437            300           1686          13488
           0.0033        38.8418      0.0274821            379           1732          13851
           0.0033        32.3209      0.0262695            410           1683          13450
           0.0033        42.6933      0.0279453            481           1790          14308
           0.0034        40.4296      0.0267324            462           1711          13687
           0.0034        33.5054      0.0260488            326           1666          13337
           0.0034        34.4934      0.0277976            303           1749          14010
           0.0034        45.6722      0.0289297            502           1852          14812
           0.0034          35.25      0.0271699            668           1740          13911
           0.0034        37.7132      0.0269629            311           1726          13805
           0.0034        59.1397      0.0257168           1158           1646          13167
           0.0034        38.1803      0.0274063            359           1753          14032
           0.0034        33.1241       0.027043            353           1733          13846
           0.0034        35.2558      0.0275918            325           1767          14127
           0.0034        31.6176      0.0270176            365           1731          13833
           0.0034        46.9177      0.0265859            756           1702          13612
           0.0034        36.3939      0.0269414            555           1724          13794
           0.0034        38.7194      0.0277383            393           1775          14202
           0.0034        33.4278      0.0275742            432           1765          14118
           0.0034        46.5174      0.0273945            445           1753          14026
           0.0034        30.3672      0.0264668            385           1694          13551
           0.0034         35.424      0.0270547            279           1731          13852
           0.0034        31.7531      0.0264941            256           1697          13565
           0.0034        35.0246      0.0260625            368           1668          13344
           0.0035        31.1443      0.0267109            208           1712          13676
           0.0035        38.2666      0.0276094            624           1767          14136
           0.0035        46.7143      0.0285117            971           1827          14598
           0.0035        44.9765      0.0279531            489           1788          14312
           0.0035        33.4629      0.0273571            270           1724          13788
           0.0035        35.1547       0.027752            253           1778          14209
           0.0035        31.4985      0.0262988            351           1683          13465
           0.0035        36.4926      0.0284414            373           1819          14562
           0.0035        34.3034      0.0269395            381           1724          13793
           0.0035        48.0299      0.0282461            604           1809          14462
           0.0035        31.1333      0.0275508            239           1763          14106
           0.0035        37.4994      0.0281191            499           1800          14397
           0.0035        34.0147      0.0281369            265           1772          14181
           0.0035         33.073      0.0267695            326           1713          13706
           0.0035        35.7926      0.0291855            242           1866          14943
           0.0035        47.6522      0.0289048            527           1820          14568
           0.0035        31.8525      0.0280703            252           1797          14372
           0.0035        44.2715      0.0283848            761           1816          14533
           0.0035         39.195      0.0285664            328           1831          14626
           0.0035        49.5725      0.0286621            785           1834          14675
           0.0036        45.4065      0.0285801            452           1828          14633
           0.0036        51.0571      0.0287227            494           1840          14706
           0.0036        54.2451      0.0292718            543           1844          14753
           0.0036        45.3169      0.0288711            445           1849          14782
           0.0036        47.4599      0.0286133            373           1831          14650
           0.0036        51.6981      0.0285156            497           1825          14600
           0.0036        46.3241        0.02825            486           1808          14464
           0.0036        39.6947      0.0281973            495           1805          14437
           0.0036        50.6995      0.0296593            540           1840          14711
           0.0036         38.669      0.0286074            505           1831          14647
           0.0036        64.8552      0.0292578            829           1871          14980
           0.0036        42.6307      0.0288164            266           1844          14754
           0.0036        45.4872      0.0290317            475           1829          14632
           0.0036        61.3396      0.0295595           1106           1864          14898
           0.0036         40.583      0.0279434            609           1789          14307
           0.0036        48.4232      0.0299355            476           1914          15327
           0.0036        43.9649      0.0294316            402           1883          15069
           0.0036        40.0218      0.0287441            523           1839          14717
           0.0036        54.8697      0.0290586            634           1857          14878
           0.0036        46.5407      0.0280527            403           1794          14363
           0.0037        54.1657      0.0289434            508           1853          14819
           0.0037        67.5841      0.0295664           1241           1890          15138
           0.0037         51.565       0.029457            728           1885          15082
           0.0037           62.8      0.0299355            644           1915          15327
           0.0037        100.175      0.0307441           1003           1966          15741
           0.0037        56.9411      0.0294297            587           1883          15068
           0.0037        71.6478      0.0294785            993           1888          15093
           0.0037        45.4752      0.0286348            649           1831          14661
           0.0037        51.1286      0.0296091            479           1866          14923
           0.0037        62.2085      0.0301211            474           1928          15422
           0.0037        40.8864      0.0287656            315           1840          14728
           0.0037        59.6042      0.0294841            749           1857          14860
           0.0037        52.7679      0.0306191            468           1960          15677
           0.0037        60.0351      0.0298164            573           1908          15266
           0.0037        72.7501      0.0309306            791           1949          15589
           0.0037        80.7042      0.0295039            835           1890          15106
           0.0037        62.0692      0.0295859            929           1893          15148
           0.0037         61.077        0.02925            526           1871          14976
           0.0037        44.5746      0.0294141            334           1883          15060
           0.0037        39.2151      0.0295723            282           1892          15141
           0.0038        149.737      0.0305762           1493           1957          15655
           0.0038        74.2255      0.0309531            980           1982          15848
           0.0038         60.554      0.0300937            672           1926          15408
           0.0038        45.2519      0.0302207            431           1933          15473
           0.0038        86.2465       0.031002           1111           1984          15873
           0.0038        84.7136       0.031041           1312           1987          15893
           0.0038        55.1469      0.0306406            615           1960          15688
           0.0038        54.0695      0.0301289            499           1927          15426
           0.0038        104.945      0.0307246            853           1967          15731
           0.0038        52.7141         0.0295            612           1889          15104
           0.0038        64.5797      0.0303145            975           1939          15521
           0.0038        68.0228      0.0305972            697           1927          15421
           0.0038        50.7079      0.0287813            751           1842          14736
           0.0038        71.6205      0.0309043           1144           1979          15823
           0.0038        56.4697      0.0296602            754           1899          15186
           0.0038        80.5756      0.0301719            745           1932          15448
           0.0038        49.0643       0.030381            478           1914          15312
           0.0038        167.798       0.031627           2492           2025          16193
           0.0038         79.611      0.0312817            814           1969          15766
           0.0038        63.1558      0.0308965            620           1977          15819
           0.0039        45.2949      0.0298496            345           1909          15283
           0.0039        65.9914      0.0308184            566           1972          15779
           0.0039         87.163      0.0313477            737           2006          16050
           0.0039        145.308      0.0318828           1672           2041          16324
           0.0039         77.164      0.0307852            998           1969          15762
           0.0039        121.339      0.0320079           1297           2014          16132
           0.0039        333.642      0.0314395           3977           2013          16097
           0.0039        63.8255      0.0303477            543           1943          15538
           0.0039        118.371      0.0307617           1796           1969          15750
           0.0039        246.587      0.0313535           3487           2006          16053
           0.0039        102.239      0.0317679           1045           2002          16011
           0.0039        124.723      0.0323496           1740           2068          16563
           0.0039         127.43      0.0292227           1920           1868          14962
           0.0039        97.1757       0.030666           1389           1964          15701
           0.0039        159.452      0.0320694           1891           2022          16163
           0.0039        88.3863      0.0324623           1372           2045          16361
           0.0039        71.1254      0.0314062            488           2010          16080
           0.0039        71.4965      0.0311191            725           1992          15933
           0.0039        71.8687      0.0321445            537           2057          16458
           0.0039        53.2336      0.0312734            409           2003          16012
            0.004        154.864      0.0318398           2101           2036          16302
            0.004        124.258      0.0311309           1632           1992          15939
            0.004        300.249      0.0304922           3420           1951          15612
            0.004         94.306      0.0321528           1223           2026          16205
            0.004        94.2355      0.0324824           1151           2081          16631
            0.004        179.433      0.0331406           2663           2123          16968
            0.004        74.2091      0.0314453            757           2013          16100
            0.004         162.17      0.0320371           2640           2050          16403
            0.004        86.9472      0.0308008            879           1971          15770
            0.004        142.607      0.0315645           2114           2022          16161
            0.004        184.741      0.0322817           1863           2033          16270
            0.004        131.755      0.0319375           1421           2043          16352
            0.004        188.889      0.0327402           2017           2095          16763
            0.004        149.097      0.0319043           2369           2044          16335
            0.004        78.2391      0.0321055            848           2058          16438
            0.004        277.499      0.0321875           3415           2060          16480
            0.004        326.565      0.0315273           3473           2017          16142
            0.004        179.416        0.03175           2061           2030          16256
            0.004        106.948      0.0323555           1140           2070          16566
            0.004        66.7006      0.0310635            910           1957          15656
];

rows = size(data, 1);
cols = size(data, 2);

data_delay = [];
for i = 1:rows/20,
   ifirst = (i - 1) * 20 + 1;
   ilast  = ifirst + 20 - 1;
   tmp = data(ifirst:ilast, cols-5+1);
   avg = mean(tmp);
   [h sig ci] = ttest(tmp, 0.1);
   ci = (ci(2)-ci(1))/2;
   data_delay = [data_delay; data(ifirst, 1:cols-5), avg ci];
end

figure(1);
hold on;
plot(data_delay(:,1), data_delay(:,2), symbol);

data_throughput = [];
for i = 1:rows/20,
   ifirst = (i - 1) * 20 + 1;
   ilast  = ifirst + 20 - 1;
   tmp = data(ifirst:ilast, cols-5+2);
   avg = mean(tmp);
   [h sig ci] = ttest(tmp, 0.1);
   ci = (ci(2)-ci(1))/2;
   data_throughput = [data_throughput; data(ifirst, 1:cols-5), avg ci];
end

figure(2);
hold on;
plot(data_throughput(:,1), data_throughput(:,2), symbol);

data_maxdelay = [];
for i = 1:rows/20,
   ifirst = (i - 1) * 20 + 1;
   ilast  = ifirst + 20 - 1;
   tmp = data(ifirst:ilast, cols-5+3);
   avg = mean(tmp);
   [h sig ci] = ttest(tmp, 0.1);
   ci = (ci(2)-ci(1))/2;
   data_maxdelay = [data_maxdelay; data(ifirst, 1:cols-5), avg ci];
end

figure(3);
hold on;
plot(data_maxdelay(:,1), data_maxdelay(:,2), symbol);


%-------- Saturation Analysis -----------
slope=[];
for i=2:size(data_throughput,1),
    slope(i-1) = (data_throughput(i,2)-data_throughput(i-1,2))/(data_throughput(i,1)-data_throughput(i-1,1));
end

for i=2:size(slope,2),
    if slope(i) < (0.95*mean(slope(1:i)))
        max_pir = data_throughput(i, 1);
        max_throughput = data_throughput(i, 2);
        min_delay = data_delay(i, 2);
        break;
    end
end
