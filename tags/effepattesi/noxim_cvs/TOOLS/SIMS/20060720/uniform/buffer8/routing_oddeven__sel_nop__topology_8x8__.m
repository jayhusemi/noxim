% fname: routing_oddeven__sel_nop__topology_8x8__.m
% ./noxim -routing oddeven -sel nop -dimx 8 -dimy 8  -sim 10000 -warmup 2000 -size 8 8 -buffer 8 

function [max_pir, max_throughput, min_delay] = routing_oddeven__sel_nop__topology_8x8__(symbol)

data = [
%             pir      avg_delay     throughput      max_delay       rpackets         rflits
             0.01        21.5604      0.0802676            125           5139          41097
             0.01         21.632       0.078793            121           5043          40342
             0.01        22.0758      0.0806133            128           5159          41274
             0.01        21.5788      0.0786816            152           5033          40285
             0.01        21.5352      0.0800254            125           5123          40973
             0.01         21.401      0.0796406            102           5100          40776
             0.01        21.1597      0.0789277            108           5052          40411
             0.01        21.5273      0.0807852            116           5172          41362
             0.01        21.4241      0.0790352            142           5056          40466
             0.01        21.6568      0.0803652            109           5143          41147
             0.01        22.2088      0.0808457            114           5178          41393
             0.01        21.6462      0.0805605            138           5158          41247
             0.01        21.4476      0.0808613            101           5174          41401
             0.01         21.722      0.0807441             96           5165          41341
             0.01        21.5149      0.0804824            103           5152          41207
             0.01        21.4276      0.0797812            109           5103          40848
             0.01        22.2464      0.0808398            113           5175          41390
             0.01        21.4052      0.0800703            110           5123          40996
             0.01        21.4197      0.0785898            117           5034          40238
             0.01         21.148      0.0798555             94           5109          40886
            0.011        22.9078      0.0878125            111           5620          44960
            0.011        23.0516      0.0895898            113           5732          45870
            0.011        23.7227      0.0887676            119           5684          45449
            0.011        23.0728      0.0888086            238           5684          45470
            0.011        22.9519      0.0879277            127           5630          45019
            0.011        22.7878       0.088418            111           5656          45270
            0.011        23.1387      0.0872969            142           5587          44696
            0.011        22.4924      0.0878652            110           5623          44987
            0.011        23.2759      0.0887813            127           5683          45456
            0.011         23.301      0.0888965            108           5688          45515
            0.011        22.9755       0.086791            159           5556          44437
            0.011        22.9383      0.0874082            107           5593          44753
            0.011        23.3515      0.0895664            122           5732          45858
            0.011        23.6794      0.0910332            126           5826          46609
            0.011         23.178      0.0853281            123           5461          43688
            0.011        23.3243      0.0876641            169           5609          44884
            0.011        22.8155      0.0876309            117           5611          44867
            0.011        23.1877      0.0875898            121           5604          44846
            0.011        24.0981      0.0898652            150           5752          46011
            0.011        23.7551      0.0898184            151           5745          45987
            0.012        24.8252      0.0959785            126           6143          49141
            0.012        24.3803      0.0945898            133           6053          48430
            0.012        25.0515      0.0978359            121           6257          50092
            0.012        25.1069       0.097707            151           6250          50026
            0.012        25.0985      0.0956699            144           6124          48983
            0.012        24.9492      0.0952871            119           6101          48787
            0.012        24.9257      0.0964902            122           6174          49403
            0.012        24.8448      0.0958906            144           6139          49096
            0.012        25.2718      0.0965879            136           6182          49453
            0.012        24.7206      0.0969629            131           6202          49645
            0.012        25.0373       0.094748            140           6066          48511
            0.012        25.4812      0.0971641            163           6220          49748
            0.012        25.3577      0.0951641            174           6091          48724
            0.012        25.8548      0.0962148            139           6159          49262
            0.012         24.477      0.0938379            170           6008          48045
            0.012        24.7683      0.0943379            129           6037          48301
            0.012        24.8809      0.0955898            121           6119          48942
            0.012        25.1256      0.0962871            122           6162          49299
            0.012        24.8972      0.0961152            115           6147          49211
            0.012        25.1415      0.0965176            168           6178          49417
            0.013        27.4078       0.102576            159           6564          52519
            0.013         26.693       0.104006            139           6657          53251
            0.013         26.408        0.10468            141           6696          53596
            0.013         26.984       0.103629            132           6632          53058
            0.013        28.0096       0.106006            166           6787          54275
            0.013        27.3242       0.104828            180           6706          53672
            0.013        27.9887       0.104078            140           6660          53288
            0.013        27.8717       0.104482            157           6688          53495
            0.013        27.2087       0.103998            126           6657          53247
            0.013        27.6919       0.104754            162           6703          53634
            0.013        27.2894       0.104047            171           6656          53272
            0.013        26.7904       0.103256            138           6608          52867
            0.013        27.3748         0.1039            154           6651          53197
            0.013        27.2198       0.103836            171           6646          53164
            0.013        27.2086       0.102842            207           6583          52655
            0.013        26.0909       0.101297            130           6482          51864
            0.013        27.1363       0.103746            137           6641          53118
            0.013        26.3223       0.102063            143           6532          52256
            0.013        27.8418       0.104947            214           6712          53733
            0.013         26.619       0.104459            129           6687          53483
            0.014        29.4978       0.112008            183           7174          57348
            0.014        30.5112       0.114025            200           7297          58381
            0.014        29.4368       0.112787            188           7219          57747
            0.014        30.1907       0.114137            201           7301          58438
            0.014         29.036       0.110303            160           7060          56475
            0.014          29.51       0.110721            165           7090          56689
            0.014        29.3817       0.111162            172           7118          56915
            0.014        29.3802        0.11135            170           7128          57011
            0.014         30.434       0.110516            222           7073          56584
            0.014        29.7811       0.113146            181           7242          57931
            0.014        30.5244       0.113805            298           7288          58268
            0.014        29.5508       0.111465            165           7133          57070
            0.014        29.9306       0.112414            151           7194          57556
            0.014        28.1463       0.111195            206           7122          56932
            0.014        28.4998       0.109221            177           6989          55921
            0.014        30.7535       0.111102            265           7115          56884
            0.014        29.9564       0.112582            174           7205          57642
            0.014        30.1396        0.11292            220           7228          57815
            0.014        30.9769       0.113152            204           7240          57934
            0.014        30.4123        0.11366            147           7277          58194
            0.015        32.6925       0.121197            229           7756          62053
            0.015        33.0569       0.121055            209           7750          61980
            0.015        33.2582       0.120057            190           7684          61469
            0.015        33.0306       0.119777            177           7670          61326
            0.015        36.1242       0.121922            385           7802          62424
            0.015        33.5328       0.120619            281           7717          61757
            0.015        34.5912       0.118516            296           7583          60680
            0.015        32.8688       0.120807            223           7736          61853
            0.015        33.0798       0.119305            197           7635          61084
            0.015         32.844       0.119939            216           7679          61409
            0.015         31.968       0.119615            195           7652          61243
            0.015        32.8632       0.118404            277           7580          60623
            0.015        31.4176       0.118576            189           7587          60711
            0.015        33.5027       0.119953            194           7676          61416
            0.015        33.0463       0.120887            164           7737          61894
            0.015        32.2325       0.120193            169           7693          61539
            0.015        32.1825       0.119072            150           7620          60965
            0.015        33.6898       0.120859            191           7737          61880
            0.015        32.7158       0.120445            181           7706          61668
            0.015        33.2022       0.118422            174           7581          60632
            0.016        36.4858       0.127248            222           8142          65151
            0.016        40.8081       0.126041            366           8065          64533
            0.016        37.2788       0.127463            237           8160          65261
            0.016        37.0453       0.127691            258           8170          65378
            0.016        38.9707       0.127119            317           8131          65085
            0.016        40.3241       0.129055            407           8259          66076
            0.016         37.344       0.129584            210           8291          66347
            0.016        37.7655       0.126691            290           8106          64866
            0.016         38.516       0.128607            237           8232          65847
            0.016        37.9298       0.127658            275           8168          65361
            0.016        37.1709       0.128504            212           8226          65794
            0.016        36.5286       0.128902            237           8254          65998
            0.016        43.2384       0.130389            436           8348          66759
            0.016        39.3003       0.128436            213           8218          65759
            0.016        37.0228       0.128242            276           8206          65660
            0.016        37.6901       0.127754            238           8178          65410
            0.016        34.9002       0.127072            240           8134          65061
            0.016        41.0171       0.127996            384           8192          65534
            0.016        37.0559       0.125477            252           8031          64244
            0.016        35.6441       0.124971            311           8002          63985
            0.017        43.9414       0.136904            281           8760          70095
            0.017        49.4918        0.13735            402           8792          70323
            0.017        43.3505        0.13574            315           8690          69499
            0.017        47.1983       0.136979            308           8765          70133
            0.017        82.8087       0.133469           1229           8541          68336
            0.017        141.562       0.127189           2404           8138          65121
            0.017        49.9636        0.13683            573           8752          70057
            0.017        44.0087       0.134855            270           8635          69046
            0.017        51.1225       0.136189            407           8717          69729
            0.017        50.1607       0.136824            489           8756          70054
            0.017        47.6114       0.136615            415           8742          69947
            0.017        49.7402       0.137555            401           8802          70428
            0.017        46.4575       0.136051            317           8706          69658
            0.017        46.0612       0.135516            306           8670          69384
            0.017        48.7279       0.132961            764           8516          68076
            0.017        43.9728       0.138334            232           8850          70827
            0.017        45.7756        0.13482            372           8630          69028
            0.017        44.2523       0.135684            299           8680          69470
            0.017        81.5743       0.136205           1052           8719          69737
            0.017        60.4309       0.136264            626           8718          69767
            0.018        278.742       0.128242           3471           8202          65660
            0.018        140.814       0.138354           1516           8857          70837
            0.018        266.995        0.13927           3393           8910          71306
            0.018        68.0678       0.141904            749           9082          72655
            0.018        104.587       0.137773           1634           8816          70540
            0.018        305.171       0.136021           3622           8698          69643
            0.018        99.4687       0.139174           1733           8910          71257
            0.018        164.327       0.135906           2177           8697          69584
            0.018        245.893       0.142287           2598           9105          72851
            0.018        369.873       0.125688           4691           8041          64352
            0.018        62.6859       0.144148            584           9227          73804
            0.018        140.459       0.143826           1347           9205          73639
            0.018        127.748       0.136479           1992           8732          69877
            0.018        175.538       0.136928           2328           8760          70107
            0.018        443.419       0.118355           5492           7569          60598
            0.018        298.932          0.131           3687           8379          67072
            0.018        63.5431       0.140678            747           9005          72027
            0.018        515.573       0.134453           5418           8604          68840
            0.018         290.68       0.123322           4193           7893          63141
            0.018         440.63       0.123082           5215           7881          63018
            0.019        842.401       0.112146           7241           7175          57419
            0.019        531.848       0.117498           6179           7517          60159
            0.019         442.13        0.12874           4986           8241          65915
            0.019         534.55       0.123152           5852           7881          63054
            0.019        682.364       0.114803           7153           7347          58779
            0.019        799.762       0.112041           7702           7172          57365
            0.019        753.097       0.106709           7186           6829          54635
            0.019         403.47       0.125467           4814           8026          64239
            0.019        311.083       0.130881           4804           8372          67011
            0.019        711.774       0.122713           7183           7856          62829
            0.019        466.289       0.124334           6347           7955          63659
            0.019        578.681       0.118602           5496           7583          60724
            0.019        518.236       0.124361           6282           7958          63673
            0.019         839.96       0.123154           7045           7879          63055
            0.019        563.097       0.121525           5597           7771          62221
            0.019        631.163       0.125277           5778           8020          64142
            0.019        459.504       0.125562           5201           8034          64288
            0.019        610.731       0.120971           6988           7746          61937
            0.019        428.597       0.124975           4750           8003          63987
            0.019        469.226       0.125025           5643           7997          64013
             0.02        1005.68       0.109209           8007           6990          55915
             0.02          391.5       0.122209           5101           7819          62571
             0.02        998.255       0.109426           7624           7003          56026
             0.02        1001.58       0.107467           7525           6872          55023
             0.02        724.037       0.119959           7131           7676          61419
             0.02        1260.62       0.101693           8126           6511          52067
             0.02        942.389       0.108449           7982           6944          55526
             0.02        758.574       0.113984           7508           7292          58360
             0.02        723.609       0.116301           7850           7440          59546
             0.02        935.461       0.111311           7393           7123          56991
             0.02        695.395       0.115566           6469           7398          59170
             0.02         1048.6       0.105982           7923           6782          54263
             0.02        845.467       0.110818           7284           7095          56739
             0.02        1102.84       0.103176           7605           6604          52826
             0.02        983.848       0.102805           8416           6580          52636
             0.02        1008.43       0.106939           7994           6844          54753
             0.02        895.338       0.112187           8001           7183          57440
             0.02        927.266       0.104508           8183           6692          53508
             0.02        1235.19       0.105525           8455           6754          54029
             0.02        1052.06       0.108398           8170           6934          55500
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
