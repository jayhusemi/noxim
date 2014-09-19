% fname: routing_oddeven__sel_nop__topology_8x8__.m
% ./noxim -routing oddeven -sel nop -dimx 8 -dimy 8  -sim 10000 -warmup 2000 -size 8 8 -buffer 2 

function [max_pir, max_throughput, min_delay] = routing_oddeven__sel_nop__topology_8x8__(symbol)

data = [
%             pir      avg_delay     throughput      max_delay       rpackets         rflits
            0.007        18.6003      0.0577266             95           3695          29556
            0.007        18.0598      0.0561562             76           3596          28752
            0.007        18.0592      0.0562598             93           3601          28805
            0.007        18.5593      0.0572891             72           3667          29332
            0.007         18.731      0.0558633            140           3573          28602
            0.007        18.0181      0.0545039             98           3487          27906
            0.007        18.0566      0.0552422             94           3535          28284
            0.007        18.0487      0.0561758             88           3596          28762
            0.007        18.8011      0.0559023             86           3579          28622
            0.007        18.0195      0.0553027             90           3540          28315
            0.007        18.7222      0.0571016            101           3654          29236
            0.007        18.3891      0.0573027             99           3667          29339
            0.007        18.1907      0.0570391            104           3649          29204
            0.007        18.4095      0.0566289            125           3626          28994
            0.007        17.9388      0.0553984             80           3545          28364
            0.007        18.3235       0.055752             74           3570          28545
            0.007        18.3693       0.054877             93           3512          28097
            0.007        18.1733      0.0546816             80           3502          27997
            0.007        18.4786      0.0566328             98           3625          28996
            0.007        18.4927       0.055916             82           3582          28629
            0.008        19.4414      0.0637617             88           4080          32646
            0.008        19.3368      0.0631016            109           4038          32308
            0.008        19.5608      0.0643438            107           4119          32944
            0.008        19.5317        0.06475             80           4143          33152
            0.008          19.58       0.063709            108           4079          32619
            0.008        19.4951      0.0643535             94           4116          32949
            0.008        20.6857      0.0650098            158           4159          33285
            0.008        19.3496      0.0639727            110           4093          32754
            0.008        19.7772      0.0636484             99           4075          32588
            0.008        19.2788      0.0631289             91           4043          32322
            0.008        19.5985       0.064002            126           4095          32769
            0.008         20.067      0.0652598            109           4178          33413
            0.008         19.147      0.0636582             88           4074          32593
            0.008        19.7382      0.0647266             95           4145          33140
            0.008         19.745      0.0641758            146           4110          32858
            0.008         19.955      0.0639707            113           4092          32753
            0.008        20.3233      0.0645918            137           4138          33071
            0.008        19.5745      0.0641465            115           4106          32843
            0.008        19.7612      0.0629492            137           4029          32230
            0.008         19.864      0.0655801            113           4198          33577
            0.009        21.0246      0.0718242            117           4596          36774
            0.009        21.0814       0.070709            138           4521          36203
            0.009        20.8776      0.0723789            116           4632          37058
            0.009        20.7903      0.0708926            118           4540          36297
            0.009        21.3792      0.0721426            106           4618          36937
            0.009        20.6649      0.0704961            146           4512          36094
            0.009        21.3246      0.0715957            154           4581          36657
            0.009        21.2113      0.0730078            112           4671          37380
            0.009        21.0442      0.0718223            128           4596          36773
            0.009        21.9897      0.0726133            108           4647          37178
            0.009        20.8373      0.0714277            135           4572          36571
            0.009        21.3135      0.0724121            121           4632          37075
            0.009        21.6107      0.0719063            120           4601          36816
            0.009        21.1043         0.0715            122           4575          36608
            0.009        21.3049      0.0715234            160           4575          36620
            0.009        21.9169       0.072416            137           4635          37077
            0.009        21.7145      0.0731172            127           4680          37436
            0.009        21.9808      0.0741895            133           4750          37985
            0.009        22.0322      0.0748555            153           4787          38326
            0.009        21.1292      0.0726563            150           4652          37200
             0.01        23.5124      0.0804199            210           5148          41175
             0.01        24.6947         0.0795            227           5090          40704
             0.01        23.6908      0.0803984            170           5146          41164
             0.01        23.9326      0.0807031            150           5165          41320
             0.01        24.1772      0.0796016            237           5096          40756
             0.01        24.3066      0.0828437            142           5300          42416
             0.01        23.2494      0.0781289            176           4999          40002
             0.01        25.6469      0.0834473            158           5342          42725
             0.01        24.0836      0.0822813            189           5265          42128
             0.01        23.2027      0.0805625            143           5155          41248
             0.01        24.6198      0.0812129            184           5197          41581
             0.01        22.7727      0.0780996            118           4997          39987
             0.01          24.09      0.0814473            169           5214          41701
             0.01        22.9671      0.0793984            152           5081          40652
             0.01        23.9959      0.0803203            148           5142          41124
             0.01        23.1509      0.0801406            153           5130          41032
             0.01        23.8912      0.0800762            134           5120          40999
             0.01        23.2383      0.0787324            131           5039          40311
             0.01        24.2549      0.0796387            149           5097          40775
             0.01        22.9638      0.0789414            130           5053          40418
            0.011        27.3585      0.0880039            195           5634          45058
            0.011        27.1518      0.0878867            242           5626          44998
            0.011        28.2925      0.0883398            168           5652          45230
            0.011        28.1359      0.0897988            225           5746          45977
            0.011        27.3919      0.0899629            175           5757          46061
            0.011        27.0593       0.087957            229           5631          45034
            0.011        28.7268      0.0889199            232           5692          45527
            0.011        26.9725      0.0898652            161           5748          46011
            0.011        26.5593      0.0896504            189           5736          45901
            0.011        26.3905       0.088334            183           5655          45227
            0.011        27.2672      0.0894375            213           5726          45792
            0.011        26.8128      0.0877578            194           5615          44932
            0.011        26.0605      0.0897891            172           5752          45972
            0.011        31.8383      0.0888789            495           5690          45506
            0.011        25.6811      0.0870859            154           5572          44588
            0.011        26.3901      0.0878203            246           5621          44964
            0.011        26.6598      0.0875664            213           5602          44834
            0.011        28.2468      0.0878262            344           5621          44967
            0.011        26.3024      0.0856582            221           5482          43857
            0.011        26.1686      0.0896621            155           5737          45907
            0.012        32.3969      0.0968105            327           6193          49567
            0.012        33.4817      0.0968125            331           6199          49568
            0.012        33.9358      0.0975449            315           6244          49943
            0.012         36.163      0.0975918            335           6244          49967
            0.012        31.9329      0.0952012            233           6094          48743
            0.012        33.3502      0.0970117            336           6210          49670
            0.012         39.081      0.0950625            311           6084          48672
            0.012        31.2422      0.0935703            235           5988          47908
            0.012        43.2325      0.0975625            747           6242          49952
            0.012         31.033      0.0965547            196           6176          49436
            0.012        34.5512      0.0969531            217           6203          49640
            0.012        34.7118      0.0974023            253           6232          49870
            0.012         42.049       0.096375            587           6169          49344
            0.012        31.1524      0.0941426            238           6022          48201
            0.012        31.9143      0.0970391            250           6208          49684
            0.012        33.6473       0.095498            361           6112          48895
            0.012         30.095      0.0964453            178           6171          49380
            0.012         31.387      0.0969453            250           6202          49636
            0.012         28.948      0.0940332            253           6017          48145
            0.012        29.5934      0.0940664            298           6018          48162
            0.013        37.2521       0.102039            397           6534          52244
            0.013        48.0934       0.101736            814           6507          52089
            0.013        278.002       0.099332           3937           6355          50858
            0.013        137.071      0.0976055           2458           6250          49974
            0.013         232.47        0.10176           2752           6513          52101
            0.013        47.9306       0.104801            606           6704          53658
            0.013         56.309       0.103357            805           6614          52919
            0.013        217.243       0.100102           3321           6409          51252
            0.013        80.4007       0.103898            748           6649          53196
            0.013         50.734       0.103754            658           6640          53122
            0.013        92.1612        0.10442           1226           6688          53463
            0.013        49.6357       0.104156            447           6664          53328
            0.013        35.0245       0.102705            274           6572          52585
            0.013        100.742       0.101748           1376           6510          52095
            0.013        50.6085        0.10223            549           6541          52342
            0.013        276.547      0.0991387           3365           6345          50759
            0.013        50.4467       0.100711            859           6448          51564
            0.013          141.2       0.100986           1977           6464          51705
            0.013         56.719       0.102676            655           6569          52570
            0.013        43.0259       0.102648            339           6572          52556
            0.014        712.201      0.0944102           6211           6045          48338
            0.014        473.636      0.0994277           6485           6363          50907
            0.014         298.95      0.0984492           5478           6300          50406
            0.014        504.424      0.0999453           5900           6396          51172
            0.014        363.975       0.103414           4326           6615          52948
            0.014        338.209       0.100281           4914           6420          51344
            0.014        594.811      0.0912891           7146           5845          46740
            0.014        508.823      0.0962812           6414           6160          49296
            0.014        434.973       0.108203           4899           6929          55400
            0.014        386.116      0.0965234           6691           6176          49420
            0.014        512.512      0.0951758           6133           6091          48730
            0.014        551.037        0.08675           6841           5554          44416
            0.014        199.702       0.101809           3239           6515          52126
            0.014        323.338      0.0974922           5591           6240          49916
            0.014        651.771       0.103105           5950           6605          52790
            0.014        176.662       0.107359           2041           6871          54968
            0.014        620.446       0.092041           6503           5893          47125
            0.014        495.867      0.0909473           6001           5819          46565
            0.014        467.682      0.0994902           5740           6364          50939
            0.014        232.627       0.102777           3565           6574          52622
            0.015        906.484      0.0887324           7775           5680          45431
            0.015            718      0.0853379           7542           5462          43693
            0.015        607.171      0.0885527           7817           5663          45339
            0.015        761.566      0.0796055           7687           5091          40758
            0.015        592.248      0.0952637           6956           6092          48775
            0.015         790.18      0.0914277           8147           5852          46811
            0.015        700.361      0.0815566           8539           5220          41757
            0.015        836.918      0.0850879           7690           5447          43565
            0.015        667.291      0.0903086           7495           5779          46238
            0.015        819.566      0.0850215           8313           5441          43531
            0.015        577.575      0.0892617           7149           5711          45702
            0.015        575.223      0.0967227           6902           6191          49522
            0.015        731.489      0.0951426           7063           6090          48713
            0.015        582.366      0.0881641           6625           5640          45140
            0.015        495.461      0.0932422           8176           5969          47740
            0.015         784.06       0.085543           7694           5473          43798
            0.015        598.577       0.105803           6542           6773          54171
            0.015        589.538       0.088293           7908           5653          45206
            0.015        859.721       0.088752           8111           5679          45441
            0.015        679.265      0.0922324           7279           5902          47223
            0.016        1126.34      0.0818145           9041           5236          41889
            0.016        727.504       0.086793           7733           5555          44438
            0.016        931.778      0.0827187           8613           5295          42352
            0.016        1064.19      0.0811562           8793           5196          41552
            0.016        780.517       0.090877           8665           5819          46529
            0.016        1020.35      0.0849551           8632           5437          43497
            0.016        1098.26      0.0826719           8004           5295          42328
            0.016         1098.3      0.0833418           7923           5331          42671
            0.016        731.326       0.083832           8021           5364          42922
            0.016        894.941      0.0851855           8594           5449          43615
            0.016        855.767      0.0852832           7775           5457          43665
            0.016        1042.46      0.0841289           8053           5385          43074
            0.016        1106.08      0.0855918           8899           5478          43823
            0.016        981.307      0.0801172           8844           5124          41020
            0.016        968.665      0.0866094           8527           5543          44344
            0.016        999.898       0.081668           9102           5223          41814
            0.016        1012.93      0.0847695           8455           5424          43402
            0.016        1017.21      0.0854219           9007           5465          43736
            0.016        920.351      0.0844687           8065           5403          43248
            0.016        1000.93       0.079998           9079           5121          40959
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