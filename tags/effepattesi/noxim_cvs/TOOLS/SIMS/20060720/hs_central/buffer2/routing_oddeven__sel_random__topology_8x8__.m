% fname: routing_oddeven__sel_random__topology_8x8__.m
% ./noxim -routing oddeven -sel random -dimx 8 -dimy 8  -sim 10000 -warmup 2000 -size 8 8 -buffer 2 -hs 27 0.2 -hs 28 0.2 -hs 35 0.2 -hs 36 0.2 

function [max_pir, max_throughput, min_delay] = routing_oddeven__sel_random__topology_8x8__(symbol)

data = [
%             pir      avg_delay     throughput      max_delay       rpackets         rflits
           0.0018        16.7168      0.0152225            125            897           7185
           0.0018        17.5969      0.0142599            122            898           7187
           0.0018        16.5085       0.015373             84            936           7502
           0.0018        17.4751      0.0161496            105            985           7881
           0.0018        18.1201      0.0156272            114            891           7126
           0.0018        16.7124       0.014129             81            890           7121
           0.0018        18.2194      0.0142837            129            898           7199
           0.0018        17.6495      0.0156291             88            953           7627
           0.0018        17.1861      0.0145833            103            919           7350
           0.0018         17.489      0.0151208            117            908           7258
           0.0018        16.8474      0.0141673             94            878           7027
           0.0018        16.7781      0.0146169            147            906           7250
           0.0018        16.8051      0.0149542             72            898           7178
           0.0018        16.4316      0.0150595             77            950           7590
           0.0018        18.0466      0.0146468            157            922           7382
           0.0018        15.8288      0.0153854             77            923           7385
           0.0018        15.9956      0.0144524            152            910           7284
           0.0018        18.2646      0.0153521            115            922           7369
           0.0018        18.1019      0.0149643            120            942           7542
           0.0018        16.9777      0.0154303             99            943           7530
            0.002        20.2622      0.0168609            161           1045           8363
            0.002        17.5045      0.0162621            168           1009           8066
            0.002        20.1315      0.0172944            132           1072           8578
            0.002        17.7821      0.0169637            101           1051           8414
            0.002        19.6445      0.0161845            134           1021           8157
            0.002        19.1469      0.0176694            149           1096           8764
            0.002        18.5099      0.0162238            138           1006           8047
            0.002        19.9281      0.0159167            122           1002           8022
            0.002        17.9225      0.0171367            122           1097           8774
            0.002        20.5577       0.016371            175           1031           8251
            0.002         18.912      0.0175275            106           1034           8273
            0.002        17.4349      0.0163367             95           1014           8103
            0.002        19.7651      0.0176512            136           1094           8755
            0.002         19.096       0.016543             97           1010           8073
            0.002        18.3867      0.0160302            125            993           7951
            0.002        16.9008       0.015291             93            978           7829
            0.002        18.9796      0.0162738            174           1028           8202
            0.002        18.6081      0.0165123            225           1008           8058
            0.002        19.4165      0.0158906            150           1018           8136
            0.002        20.0995      0.0171086            138           1045           8349
           0.0022        22.2637        0.01825            214           1096           8760
           0.0022        23.6099      0.0195471            165           1192           9539
           0.0022        19.3342      0.0183563            108           1101           8811
           0.0022        19.4494       0.017256            101           1088           8697
           0.0022        19.7548      0.0170117            164           1089           8710
           0.0022        21.7065      0.0183333            245           1155           9240
           0.0022        20.3062      0.0183689            130           1120           8964
           0.0022        21.0125      0.0179819            144           1116           8919
           0.0022        20.5093      0.0183327            130           1135           9093
           0.0022        23.0837      0.0188848            273           1207           9669
           0.0022        19.5032      0.0176915            100           1097           8775
           0.0022        18.2527      0.0173413            115           1092           8740
           0.0022        19.7619      0.0183373            138           1155           9242
           0.0022         18.391      0.0175337            109           1105           8837
           0.0022        19.7126      0.0181621            141           1162           9299
           0.0022        21.1033      0.0175566            173           1123           8989
           0.0022        19.5651       0.017666            185           1129           9045
           0.0022        19.2077      0.0176468            108           1112           8894
           0.0022        19.5434       0.017625            119           1128           9024
           0.0022        20.2568      0.0177207            152           1133           9073
           0.0024        22.3347      0.0201492            163           1249           9994
           0.0024        22.3322      0.0190859            177           1222           9772
           0.0024        22.3726      0.0189453            141           1213           9700
           0.0024        23.2783      0.0198809            182           1272          10179
           0.0024        23.2377       0.018998            258           1178           9423
           0.0024        22.5461      0.0199242            157           1216           9723
           0.0024        22.8332      0.0201371            150           1247           9988
           0.0024        20.5216      0.0197316            168           1202           9629
           0.0024        24.6901      0.0202439            189           1236           9879
           0.0024        20.8052      0.0189067            155           1191           9529
           0.0024        22.5374      0.0189766            178           1215           9716
           0.0024        23.6946       0.019209            279           1231           9835
           0.0024        22.5083      0.0191825            139           1208           9668
           0.0024        20.9756      0.0191875            134           1229           9824
           0.0024        22.1817       0.018752            124           1200           9601
           0.0024        21.8928      0.0197077            145           1222           9775
           0.0024        24.6822      0.0204504            226           1290          10307
           0.0024        23.7293      0.0190371            183           1219           9747
           0.0024        24.6939      0.0203875            216           1225           9786
           0.0024        22.2573      0.0197439            164           1205           9635
           0.0026        24.9521      0.0208672            318           1335          10684
           0.0026        23.2494      0.0203613            149           1303          10425
           0.0026        23.6393       0.020881            317           1317          10524
           0.0026        26.0427      0.0216055            220           1383          11062
           0.0026        24.0008      0.0205703            247           1316          10532
           0.0026        26.0683      0.0206706            217           1304          10418
           0.0026        30.2489      0.0219727            534           1406          11250
           0.0026        26.0085      0.0208952            225           1295          10364
           0.0026        24.8243      0.0214778            215           1332          10653
           0.0026        26.1527      0.0202758            362           1277          10219
           0.0026        28.0475      0.0207402            338           1327          10619
           0.0026        25.9033      0.0208254            276           1313          10496
           0.0026        25.8668      0.0193555            187           1239           9910
           0.0026        25.2487      0.0206984            233           1303          10432
           0.0026        30.8437      0.0197969            520           1267          10136
           0.0026        26.8552      0.0202617            237           1298          10374
           0.0026        28.2871      0.0213948            297           1348          10783
           0.0026        26.1676      0.0209262            253           1277          10212
           0.0026        24.9646      0.0203438            183           1301          10416
           0.0026        30.1235      0.0208452            382           1312          10506
           0.0028        30.6973      0.0216309            311           1384          11075
           0.0028         27.931      0.0230357            190           1450          11610
           0.0028        27.5887      0.0221758            336           1420          11354
           0.0028         26.268      0.0217937            266           1373          10984
           0.0028        31.3889      0.0228552            287           1440          11519
           0.0028        29.7749      0.0230273            288           1475          11790
           0.0028        35.8835       0.022873            597           1442          11528
           0.0028        32.1183      0.0224727            316           1437          11506
           0.0028        28.9139       0.022494            250           1417          11337
           0.0028        35.0351      0.0235859            305           1509          12076
           0.0028        39.9519      0.0224883            388           1436          11514
           0.0028        35.9285       0.023748            469           1497          11969
           0.0028         34.546      0.0217559            646           1392          11139
           0.0028        30.2952      0.0236653            276           1467          11738
           0.0028        35.5423      0.0225371            426           1442          11539
           0.0028        30.5723      0.0234529            364           1431          11445
           0.0028        30.2435      0.0223379            270           1429          11437
           0.0028         31.349      0.0232852            261           1490          11922
           0.0028        26.5762      0.0215215            258           1378          11019
           0.0028        30.8284      0.0225544            417           1399          11187
            0.003        44.4009      0.0238203            580           1524          12196
            0.003        35.9396      0.0241766            350           1524          12185
            0.003        36.0215          0.024            400           1535          12288
            0.003        36.6884      0.0244551            343           1566          12521
            0.003        39.6237      0.0251371            710           1560          12468
            0.003        37.7329      0.0246836            383           1580          12638
            0.003        43.7058      0.0240723            509           1540          12325
            0.003        42.3288      0.0253197            722           1545          12356
            0.003        33.7632      0.0239861            348           1512          12089
            0.003        56.0073      0.0256738            525           1642          13145
            0.003        43.6941      0.0254722            527           1605          12838
            0.003        33.7168      0.0243262            254           1557          12455
            0.003        58.2194      0.0245254           1295           1568          12557
            0.003        34.4063      0.0231699            368           1484          11863
            0.003         55.093      0.0246602            753           1580          12626
            0.003        44.8085      0.0244153            412           1514          12110
            0.003        36.0572      0.0252421            247           1590          12722
            0.003        45.5051      0.0249444            390           1570          12572
            0.003        36.5228      0.0242969            336           1555          12440
            0.003        32.2449      0.0237266            351           1519          12148
           0.0032        74.5774      0.0265371           1405           1699          13587
           0.0032        38.9279      0.0253828            362           1623          12996
           0.0032        76.0795      0.0261406           1245           1673          13384
           0.0032        88.1653      0.0262559           2706           1682          13443
           0.0032        40.1221      0.0258555            467           1655          13238
           0.0032        85.2958      0.0267937           1763           1687          13504
           0.0032        42.0032      0.0250417            643           1576          12621
           0.0032        62.9008      0.0258457            820           1654          13233
           0.0032        46.3944      0.0265972            448           1676          13405
           0.0032        62.3684      0.0254199            608           1626          13015
           0.0032        73.1025      0.0257441           1224           1648          13181
           0.0032        41.4632      0.0250801            502           1604          12841
           0.0032        38.7303      0.0251113            646           1609          12857
           0.0032        50.4718      0.0261964            808           1651          13203
           0.0032        49.5934      0.0255723            664           1638          13093
           0.0032        70.9151      0.0261289           1225           1672          13378
           0.0032        46.6599      0.0253066            566           1620          12957
           0.0032        63.4048       0.025791            900           1650          13205
           0.0032        37.1408      0.0255234            701           1633          13068
           0.0032         60.292      0.0263203            784           1685          13476
           0.0034        95.5468      0.0275159           1359           1732          13868
           0.0034        128.545      0.0283203           2046           1812          14500
           0.0034        68.0545      0.0269473           1150           1726          13797
           0.0034        80.6229      0.0273926           1039           1753          14025
           0.0034        142.141      0.0278223           2094           1781          14245
           0.0034        74.9094      0.0271706            837           1710          13694
           0.0034        117.591      0.0271429           2178           1711          13680
           0.0034        65.2998      0.0273555           1135           1751          14006
           0.0034         154.52      0.0279453           2299           1788          14308
           0.0034        92.5763      0.0263105           1950           1685          13471
           0.0034        81.7998      0.0276895            950           1773          14177
           0.0034        107.005      0.0277695           1915           1776          14218
           0.0034        93.0208      0.0269902           1654           1727          13819
           0.0034        112.929      0.0276406           3274           1769          14152
           0.0034        49.2053      0.0271758            534           1739          13914
           0.0034        122.195      0.0264648           2016           1695          13550
           0.0034        65.0257      0.0261055            905           1670          13366
           0.0034        116.001      0.0277063           2385           1746          13964
           0.0034        63.9582      0.0277361            861           1745          13979
           0.0034        88.7929      0.0271816           1240           1738          13917
           0.0036         223.48      0.0288867           4224           1850          14790
           0.0036        107.544       0.027957           1412           1788          14314
           0.0036        104.529       0.028459           1289           1822          14571
           0.0036        165.075      0.0285801           2514           1831          14633
           0.0036        159.912      0.0295278           2380           1860          14882
           0.0036        196.784      0.0286465           2405           1834          14667
           0.0036        232.301      0.0288027           2737           1843          14747
           0.0036        90.2678      0.0285774           1361           1800          14403
           0.0036        106.196      0.0283274           1505           1784          14277
           0.0036        147.062      0.0282441           2903           1809          14461
           0.0036        158.984        0.02875           2791           1841          14720
           0.0036        203.204      0.0283926           3935           1817          14537
           0.0036        212.935      0.0287656           3157           1840          14728
           0.0036        200.073      0.0286016           4251           1831          14644
           0.0036        301.786      0.0290645           5049           1859          14881
           0.0036        177.945      0.0286484           2314           1833          14668
           0.0036        123.999      0.0286111           1518           1804          14420
           0.0036        136.961      0.0281406           1429           1799          14408
           0.0036        208.741      0.0277598           3320           1776          14213
           0.0036         129.37      0.0283555           2345           1817          14518
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
