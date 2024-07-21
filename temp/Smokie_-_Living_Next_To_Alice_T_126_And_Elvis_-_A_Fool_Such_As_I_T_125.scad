/* This file has been generated by "music box tune tracker" v1.0 on 14 Jul 2024 00:35
 * https://github.com/odrevet/music-box-tune-tracker
 * using "Fred's Fisher Price record creator" .scad template file
 * http://www.instructables.com/id/3D-printing-records-for-a-Fisher-Price-toy-record-/
 */

// writing functions by HarlanDMii
// http://www.thingiverse.com/thing:16193
use <Write.scad>

// Configuration
$fn = 100;
hStock = 5.0;
rStock = 60.58;
oDrive = 21.8;
rDrive = 1.55;
hInset = 1;
rInset = 25.6;
hGroove = 1.2;
overlap = 0.2;

hasSecondSide = 1;

// Create disc
module createDisc() {
	union() {

		createBlank();

		// Add the notes for the song. This part is dynamically generated.
		pin(30.69,31.89,318.67500608390685,0);
		pin(30.69,31.89,322.86105259553483,0);
		pin(30.69,31.89,327.04709910716264,0);
		pin(30.69,31.89,331.23314561879056,0);
		pin(30.69,31.89,339.6052386420464,0);
		pin(30.69,31.89,347.97733166530224,0);
		pin(30.69,31.89,352.16337817693017,0);
		pin(31.89,33.09,322.97375945911745,0);
		pin(31.89,33.09,327.1598059707453,0);
		pin(31.89,33.09,335.5318989940011,0);
		pin(31.89,33.09,343.90399201725694,0);
		pin(31.89,33.09,348.09003852888486,0);
		pin(31.89,33.09,352.2760850405128,0);
		pin(33.51,34.71,134.7898839329415,0);
		pin(33.51,34.71,147.34802346782524,0);
		pin(33.51,34.71,180.83639556084847,0);
		pin(33.51,34.71,197.5805816073601,0);
		pin(33.51,34.71,256.18523277015083,0);
		pin(33.51,34.71,268.74337230503454,0);
		pin(33.51,34.71,302.2317443980578,0);
		pin(33.51,34.71,318.9759304445694,0);
		pin(33.51,34.71,323.16197695619735,0);
		pin(33.51,34.71,327.3480234678252,0);
		pin(33.51,34.71,331.5340699794532,0);
		pin(33.51,34.71,339.9061630027089,0);
		pin(33.51,34.71,344.09220951433684,0);
		pin(33.51,34.71,348.27825602596477,0);
		pin(34.71,35.910000000000004,319.071063956378,0);
		pin(34.71,35.910000000000004,323.2571104680059,0);
		pin(34.71,35.910000000000004,327.4431569796338,0);
		pin(34.71,35.910000000000004,331.6292034912617,0);
		pin(34.71,35.910000000000004,335.8152500028896,0);
		pin(34.71,35.910000000000004,340.00129651451755,0);
		pin(34.71,35.910000000000004,344.18734302614547,0);
		pin(34.71,35.910000000000004,348.3733895377733,0);
		pin(34.71,35.910000000000004,352.55943604940126,0);
		pin(36.224999999999994,37.425,13.640826289540344,0);
		pin(36.224999999999994,37.425,26.198965824424068,0);
		pin(36.224999999999994,37.425,30.385012336051968,0);
		pin(36.224999999999994,37.425,42.943151870935694,0);
		pin(36.224999999999994,37.425,59.68733791744733,0);
		pin(36.224999999999994,37.425,76.43152396395894,0);
		pin(36.224999999999994,37.425,88.98966349884267,0);
		pin(36.224999999999994,37.425,105.7338495453543,0);
		pin(36.224999999999994,37.425,164.338500708145,0);
		pin(36.224999999999994,37.425,181.08268675465663,0);
		pin(36.224999999999994,37.425,197.82687280116826,0);
		pin(36.224999999999994,37.425,210.38501233605197,0);
		pin(36.224999999999994,37.425,227.12919838256363,0);
		pin(36.224999999999994,37.425,285.7338495453543,0);
		pin(36.224999999999994,37.425,302.47803559186593,0);
		pin(36.224999999999994,37.425,319.22222163837756,0);
		pin(36.224999999999994,37.425,323.4082681500055,0);
		pin(36.224999999999994,37.425,327.5943146616334,0);
		pin(36.224999999999994,37.425,331.7803611732613,0);
		pin(36.224999999999994,37.425,335.96640768488913,0);
		pin(36.224999999999994,37.425,340.15245419651717,0);
		pin(36.224999999999994,37.425,344.33850070814503,0);
		pin(36.224999999999994,37.425,348.5245472197729,0);
		pin(36.224999999999994,37.425,352.7105937314008,0);
		pin(40.225,41.425000000000004,135.32574583458245,0);
		pin(40.225,41.425000000000004,256.7210946717918,0);
		pin(41.8,43.0,139.6293094182626,0);
		pin(41.8,43.0,261.02465825547193,0);
		pin(43.0,44.2,106.20292058908042,0);
		pin(43.0,44.2,122.94710663559208,0);
		pin(43.0,44.2,160.62152524024324,0);
		pin(43.0,44.2,181.55175779838277,0);
		pin(43.0,44.2,240.15640896117344,0);
		pin(43.0,44.2,256.90059500768507,0);
		pin(43.0,44.2,302.947106635592,0);
		pin(44.625,45.825,118.86712911241804,0);
		pin(44.625,45.825,135.61131515892967,0);
		pin(44.625,45.825,164.91364074032504,0);
		pin(44.625,45.825,227.70433841474363,0);
		pin(44.625,45.825,244.44852446125526,0);
		pin(44.625,45.825,286.30898957753436,0);
		pin(44.625,45.825,349.0996872519529,0);
		pin(48.555,49.755,14.408204820822817,0);
		pin(48.555,49.755,31.152390867334447,0);
		pin(48.555,49.755,52.082623425473976,0);
		pin(48.555,49.755,68.82680947198561,0);
		pin(48.555,49.755,77.19890249524143,0);
		pin(48.555,49.755,89.75704203012515,0);
		pin(48.555,49.755,102.31518156500887,0);
		pin(48.555,49.755,152.54773970454374,0);
		pin(48.555,49.755,165.10587923942748,0);
		pin(48.555,49.755,181.85006528593908,0);
		pin(48.555,49.755,202.78029784407863,0);
		pin(48.555,49.755,219.5244838905903,0);
		pin(48.555,49.755,227.8965769138461,0);
		pin(48.555,49.755,282.31518156500886,0);
		pin(48.555,49.755,294.87332109989256,0);
		pin(48.555,49.755,319.98960016966004,0);
		pin(48.555,49.755,328.3616931929158,0);
		pin(48.555,49.755,336.73378621617167,0);
		pin(48.555,49.755,345.10587923942745,0);
		pin(50.114999999999995,51.315,22.861205587013043,0);
		pin(50.114999999999995,51.315,43.79143814515258,0);
		pin(50.114999999999995,51.315,60.53562419166422,0);
		pin(50.114999999999995,51.315,73.09376372654793,0);
		pin(50.114999999999995,51.315,81.46585674980375,0);
		pin(50.114999999999995,51.315,98.21004279631536,0);
		pin(50.114999999999995,51.315,106.58213581957119,0);
		pin(50.114999999999995,51.315,161.00074047073397,0);
		pin(50.114999999999995,51.315,173.55888000561768,0);
		pin(50.114999999999995,51.315,198.67515907538512,0);
		pin(50.114999999999995,51.315,211.23329861026883,0);
		pin(50.114999999999995,51.315,223.7914381451526,0);
		pin(50.114999999999995,51.315,274.0239962846875,0);
		pin(50.114999999999995,51.315,286.5821358195712,0);
		pin(50.114999999999995,51.315,303.32632186608276,0);
		pin(50.114999999999995,51.315,324.2565544242224,0);
		pin(50.114999999999995,51.315,332.62864744747816,0);
		pin(50.114999999999995,51.315,341.000740470734,0);
		pin(50.114999999999995,51.315,349.3728334939898,0);
		pin(51.315,52.515,102.43961094227222,0);
		pin(51.315,52.515,114.99775047715596,0);
		pin(51.315,52.515,127.55589001203968,0);
		pin(51.315,52.515,156.85821559343503,0);
		pin(51.315,52.515,165.23030861669085,0);
		pin(51.315,52.515,228.0210062911095,0);
		pin(51.315,52.515,244.76519233762107,0);
		pin(51.315,52.515,257.3233318725048,0);
		pin(51.315,52.515,282.4396109422722,0);
		pin(51.315,52.515,349.41635512831874,0);
		pin(52.91,54.11,106.69970586964203,0);
		pin(52.91,54.11,123.44389191615369,0);
		pin(52.91,54.11,136.0020314510374,0);
		pin(52.91,54.11,161.11831052080484,0);
		pin(52.91,54.11,223.90900819522346,0);
		pin(52.91,54.11,236.4671477301072,0);
		pin(52.91,54.11,249.02528726499094,0);
		pin(52.91,54.11,278.3276128463863,0);
		pin(52.91,54.11,286.69970586964206,0);
		pin(52.91,54.11,353.67645005568863,0);
		pin(54.11,55.31,14.645823859619766,0);
		pin(54.11,55.31,18.831870371247675,0);
		pin(54.11,55.31,23.01791688287558,0);
		pin(54.11,55.31,27.203963394503486,0);
		pin(54.11,55.31,31.390009906131393,0);
		pin(54.11,55.31,39.76210292938721,0);
		pin(54.11,55.31,43.94814944101511,0);
		pin(54.11,55.31,48.13419595264302,0);
		pin(54.11,55.31,52.320242464270926,0);
		pin(54.11,55.31,56.50628897589884,0);
		pin(54.11,55.31,60.692335487526755,0);
		pin(54.11,55.31,69.06442851078256,0);
		pin(54.11,55.31,77.43652153403836,0);
		pin(54.11,55.31,85.80861455729419,0);
		pin(54.11,55.31,89.99466106892208,0);
		pin(54.11,55.31,94.18070758055,0);
		pin(54.11,55.31,98.3667540921779,0);
		pin(54.11,55.31,102.55280060380584,0);
		pin(54.11,55.31,106.73884711543373,0);
		pin(54.11,55.31,115.11094013868954,0);
		pin(54.11,55.31,119.29698665031744,0);
		pin(54.11,55.31,123.48303316194537,0);
		pin(54.11,55.31,127.66907967357326,0);
		pin(54.11,55.31,131.85512618520116,0);
		pin(54.11,55.31,136.04117269682905,0);
		pin(54.11,55.31,144.4132657200849,0);
		pin(54.11,55.31,148.5993122317128,0);
		pin(54.11,55.31,156.9714052549686,0);
		pin(54.11,55.31,161.15745176659652,0);
		pin(54.11,55.31,165.34349827822444,0);
		pin(54.11,55.31,169.5295447898523,0);
		pin(54.11,55.31,173.71559130148023,0);
		pin(54.11,55.31,177.90163781310815,0);
		pin(54.11,55.31,182.08768432473607,0);
		pin(54.11,55.31,190.45977734799186,0);
		pin(54.11,55.31,198.83187037124765,0);
		pin(54.11,55.31,207.2039633945035,0);
		pin(54.11,55.31,211.39000990613138,0);
		pin(54.11,55.31,215.5760564177593,0);
		pin(54.11,55.31,219.76210292938723,0);
		pin(54.11,55.31,223.94814944101515,0);
		pin(54.11,55.31,228.13419595264304,0);
		pin(54.11,55.31,236.50628897589888,0);
		pin(54.11,55.31,240.69233548752675,0);
		pin(54.11,55.31,244.87838199915467,0);
		pin(54.11,55.31,249.06442851078262,0);
		pin(54.11,55.31,253.2504750224105,0);
		pin(54.11,55.31,257.43652153403843,0);
		pin(54.11,55.31,265.8086145572942,0);
		pin(54.11,55.31,269.99466106892214,0);
		pin(54.11,55.31,278.3667540921779,0);
		pin(54.11,55.31,282.55280060380585,0);
		pin(54.11,55.31,286.73884711543377,0);
		pin(54.11,55.31,290.92489362706164,0);
		pin(54.11,55.31,295.11094013868956,0);
		pin(54.11,55.31,299.2969866503175,0);
		pin(54.11,55.31,303.48303316194534,0);
		pin(54.11,55.31,311.8551261852012,0);
		pin(54.11,55.31,320.22721920845703,0);
		pin(54.11,55.31,324.41326572008495,0);
		pin(54.11,55.31,328.59931223171276,0);
		pin(54.11,55.31,332.7853587433408,0);
		pin(54.11,55.31,336.9714052549686,0);
		pin(54.11,55.31,341.1574517665965,0);
		pin(54.11,55.31,345.34349827822444,0);
		pin(54.11,55.31,349.52954478985237,0);
		pin(54.11,55.31,353.7155913014803,0);
		pin(56.9,58.1,14.74781742236242,0);
		pin(56.9,58.1,18.933863933990327,0);
		pin(56.9,58.1,23.119910445618235,0);
		pin(56.9,58.1,27.30595695724614,0);
		pin(56.9,58.1,35.67804998050195,0);
		pin(56.9,58.1,39.86409649212986,0);
		pin(56.9,58.1,44.05014300375777,0);
		pin(56.9,58.1,48.23618951538567,0);
		pin(56.9,58.1,52.42223602701358,0);
		pin(56.9,58.1,56.60828253864149,0);
		pin(56.9,58.1,60.79432905026941,0);
		pin(56.9,58.1,64.9803755618973,0);
		pin(56.9,58.1,69.16642207352521,0);
		pin(56.9,58.1,73.35246858515313,0);
		pin(56.9,58.1,77.53851509678103,0);
		pin(56.9,58.1,81.72456160840893,0);
		pin(56.9,58.1,85.91060812003684,0);
		pin(56.9,58.1,90.09665463166475,0);
		pin(56.9,58.1,94.28270114329267,0);
		pin(56.9,58.1,98.46874765492056,0);
		pin(56.9,58.1,102.65479416654847,0);
		pin(56.9,58.1,106.84084067817638,0);
		pin(56.9,58.1,111.02688718980428,0);
		pin(56.9,58.1,115.21293370143218,0);
		pin(56.9,58.1,119.39898021306009,0);
		pin(56.9,58.1,123.58502672468802,0);
		pin(56.9,58.1,127.77107323631591,0);
		pin(56.9,58.1,131.9571197479438,0);
		pin(56.9,58.1,136.14316625957173,0);
		pin(56.9,58.1,140.32921277119962,0);
		pin(56.9,58.1,144.51525928282754,0);
		pin(56.9,58.1,148.70130579445544,0);
		pin(56.9,58.1,152.88735230608336,0);
		pin(56.9,58.1,157.07339881771125,0);
		pin(56.9,58.1,161.25944532933917,0);
		pin(56.9,58.1,165.4454918409671,0);
		pin(56.9,58.1,169.63153835259496,0);
		pin(56.9,58.1,173.81758486422288,0);
		pin(56.9,58.1,178.0036313758508,0);
		pin(56.9,58.1,182.18967788747872,0);
		pin(56.9,58.1,186.37572439910662,0);
		pin(56.9,58.1,190.5617709107345,0);
		pin(56.9,58.1,194.74781742236243,0);
		pin(56.9,58.1,198.9338639339903,0);
		pin(56.9,58.1,203.11991044561825,0);
		pin(56.9,58.1,207.30595695724614,0);
		pin(56.9,58.1,211.49200346887403,0);
		pin(56.9,58.1,215.67804998050195,0);
		pin(56.9,58.1,219.86409649212987,0);
		pin(56.9,58.1,224.0501430037578,0);
		pin(56.9,58.1,228.2361895153857,0);
		pin(56.9,58.1,232.42223602701358,0);
		pin(56.9,58.1,236.6082825386415,0);
		pin(56.9,58.1,240.79432905026937,0);
		pin(56.9,58.1,244.98037556189732,0);
		pin(56.9,58.1,249.16642207352524,0);
		pin(56.9,58.1,253.3524685851531,0);
		pin(56.9,58.1,257.53851509678105,0);
		pin(56.9,58.1,261.7245616084089,0);
		pin(56.9,58.1,265.91060812003684,0);
		pin(56.9,58.1,270.09665463166476,0);
		pin(56.9,58.1,274.2827011432926,0);
		pin(56.9,58.1,278.46874765492055,0);
		pin(56.9,58.1,282.65479416654847,0);
		pin(56.9,58.1,286.84084067817633,0);
		pin(56.9,58.1,291.0268871898043,0);
		pin(56.9,58.1,295.2129337014322,0);
		pin(56.9,58.1,299.3989802130601,0);
		pin(56.9,58.1,303.58502672468796,0);
		pin(56.9,58.1,307.7710732363159,0);
		pin(56.9,58.1,311.95711974794386,0);
		pin(56.9,58.1,316.14316625957173,0);
		pin(56.9,58.1,320.32921277119965,0);
		pin(56.9,58.1,324.51525928282757,0);
		pin(56.9,58.1,328.70130579445544,0);
		pin(56.9,58.1,332.88735230608336,0);
		pin(56.9,58.1,337.0733988177113,0);
		pin(56.9,58.1,341.2594453293392,0);
		pin(56.9,58.1,345.44549184096707,0);
		pin(56.9,58.1,349.631538352595,0);
		pin(56.9,58.1,353.8175848642229,0);

		title("Smokie_-_Living_Next_To_Alice_T_126",0);

		pin(27.95,29.15,33.30203095752677,1);
		pin(27.95,29.15,29.115984445898846,1);
		pin(29.15,30.349999999999998,322.00434294531163,1);
		pin(29.15,30.349999999999998,317.8182964336837,1);
		pin(29.15,30.349999999999998,292.7020173639163,1);
		pin(29.15,30.349999999999998,284.32992434066045,1);
		pin(29.15,30.349999999999998,200.60899410810234,1);
		pin(29.15,30.349999999999998,192.23690108484655,1);
		pin(29.15,30.349999999999998,167.12062201507908,1);
		pin(29.15,30.349999999999998,162.93457550345119,1);
		pin(29.15,30.349999999999998,154.56248248019534,1);
		pin(29.15,30.349999999999998,146.19038945693956,1);
		pin(29.15,30.349999999999998,137.8182964336837,1);
		pin(29.15,30.349999999999998,133.63224992205582,1);
		pin(29.15,30.349999999999998,129.4462034104279,1);
		pin(29.15,30.349999999999998,70.84155224763714,1);
		pin(29.15,30.349999999999998,66.65550573600927,1);
		pin(29.15,30.349999999999998,62.46945922438135,1);
		pin(29.15,30.349999999999998,58.28341271275349,1);
		pin(29.15,30.349999999999998,54.09736620112557,1);
		pin(29.15,30.349999999999998,49.911319689497645,1);
		pin(29.15,30.349999999999998,28.981087131358095,1);
		pin(29.15,30.349999999999998,24.79504061973023,1);
		pin(30.69,31.89,330.16220321841877,1);
		pin(30.69,31.89,321.7901101951629,1);
		pin(30.69,31.89,313.41801717190714,1);
		pin(30.69,31.89,309.2319706602792,1);
		pin(30.69,31.89,305.0459241486513,1);
		pin(30.69,31.89,300.8598776370234,1);
		pin(30.69,31.89,292.4877846137676,1);
		pin(30.69,31.89,284.1156915905118,1);
		pin(30.69,31.89,275.74359856725596,1);
		pin(30.69,31.89,267.3715055440001,1);
		pin(30.69,31.89,263.18545903237225,1);
		pin(30.69,31.89,258.99941252074433,1);
		pin(30.69,31.89,254.81336600911644,1);
		pin(30.69,31.89,246.44127298586062,1);
		pin(30.69,31.89,238.06917996260478,1);
		pin(30.69,31.89,229.697086939349,1);
		pin(30.69,31.89,221.32499391609318,1);
		pin(30.69,31.89,212.95290089283733,1);
		pin(30.69,31.89,208.76685438120944,1);
		pin(30.69,31.89,204.58080786958155,1);
		pin(30.69,31.89,200.39476135795363,1);
		pin(30.69,31.89,192.0226683346978,1);
		pin(30.69,31.89,183.65057531144203,1);
		pin(30.69,31.89,175.27848228818618,1);
		pin(30.69,31.89,166.9063892649304,1);
		pin(30.69,31.89,162.72034275330248,1);
		pin(30.69,31.89,158.53429624167455,1);
		pin(30.69,31.89,154.34824973004666,1);
		pin(30.69,31.89,145.97615670679085,1);
		pin(30.69,31.89,137.60406368353503,1);
		pin(30.69,31.89,129.2319706602792,1);
		pin(30.69,31.89,120.8598776370234,1);
		pin(30.69,31.89,116.67383112539545,1);
		pin(30.69,31.89,112.48778461376753,1);
		pin(30.69,31.89,108.30173810213967,1);
		pin(30.69,31.89,104.11569159051174,1);
		pin(30.69,31.89,99.92964507888388,1);
		pin(30.69,31.89,91.55755205562798,1);
		pin(30.69,31.89,83.1854590323722,1);
		pin(30.69,31.89,74.81336600911635,1);
		pin(30.69,31.89,66.44127298586056,1);
		pin(30.69,31.89,62.25522647423264,1);
		pin(30.69,31.89,58.06917996260478,1);
		pin(30.69,31.89,53.88313345097686,1);
		pin(30.69,31.89,45.51104042772107,1);
		pin(30.69,31.89,37.13894740446517,1);
		pin(30.69,31.89,28.76685438120944,1);
		pin(30.69,31.89,20.3947613579536,1);
		pin(30.69,31.89,16.208714846325677,1);
		pin(30.69,31.89,12.022668334697755,1);
		pin(30.69,31.89,7.836621823069834,1);
		pin(31.89,33.09,363.53786844785935,1);
		pin(31.89,33.09,359.35182193623143,1);
		pin(31.89,33.09,355.16577542460357,1);
		pin(31.89,33.09,350.97972891297565,1);
		pin(31.89,33.09,346.7936824013477,1);
		pin(31.89,33.09,342.6076358897198,1);
		pin(31.89,33.09,338.42158937809194,1);
		pin(31.89,33.09,334.235542866464,1);
		pin(31.89,33.09,330.0494963548361,1);
		pin(31.89,33.09,325.8634498432082,1);
		pin(31.89,33.09,317.4913568199524,1);
		pin(31.89,33.09,313.30531030832447,1);
		pin(31.89,33.09,309.11926379669654,1);
		pin(31.89,33.09,304.9332172850687,1);
		pin(31.89,33.09,300.74717077344076,1);
		pin(31.89,33.09,296.56112426181284,1);
		pin(31.89,33.09,292.3750777501849,1);
		pin(31.89,33.09,288.18903123855705,1);
		pin(31.89,33.09,284.0029847269291,1);
		pin(31.89,33.09,279.8169382153012,1);
		pin(31.89,33.09,275.63089170367334,1);
		pin(31.89,33.09,271.4448451920454,1);
		pin(31.89,33.09,267.2587986804175,1);
		pin(31.89,33.09,263.0727521687896,1);
		pin(31.89,33.09,258.88670565716166,1);
		pin(31.89,33.09,254.7006591455338,1);
		pin(31.89,33.09,250.51461263390587,1);
		pin(31.89,33.09,246.32856612227798,1);
		pin(31.89,33.09,242.14251961065006,1);
		pin(31.89,33.09,237.9564730990221,1);
		pin(31.89,33.09,233.77042658739424,1);
		pin(31.89,33.09,225.39833356413843,1);
		pin(31.89,33.09,217.02624054088258,1);
		pin(31.89,33.09,212.8401940292547,1);
		pin(31.89,33.09,208.65414751762677,1);
		pin(31.89,33.09,204.46810100599888,1);
		pin(31.89,33.09,200.28205449437095,1);
		pin(31.89,33.09,196.09600798274306,1);
		pin(31.89,33.09,191.90996147111514,1);
		pin(31.89,33.09,187.72391495948725,1);
		pin(31.89,33.09,183.53786844785935,1);
		pin(31.89,33.09,179.35182193623143,1);
		pin(31.89,33.09,175.1657754246035,1);
		pin(31.89,33.09,170.97972891297565,1);
		pin(31.89,33.09,162.6076358897198,1);
		pin(31.89,33.09,158.42158937809188,1);
		pin(31.89,33.09,154.235542866464,1);
		pin(31.89,33.09,150.0494963548361,1);
		pin(31.89,33.09,141.67740333158028,1);
		pin(31.89,33.09,133.30531030832444,1);
		pin(31.89,33.09,129.11926379669657,1);
		pin(31.89,33.09,124.93321728506862,1);
		pin(31.89,33.09,120.74717077344073,1);
		pin(31.89,33.09,116.56112426181281,1);
		pin(31.89,33.09,112.37507775018491,1);
		pin(31.89,33.09,108.18903123855702,1);
		pin(31.89,33.09,104.0029847269291,1);
		pin(31.89,33.09,99.8169382153012,1);
		pin(31.89,33.09,95.63089170367329,1);
		pin(31.89,33.09,87.2587986804175,1);
		pin(31.89,33.09,83.07275216878958,1);
		pin(31.89,33.09,78.88670565716171,1);
		pin(31.89,33.09,70.51461263390581,1);
		pin(31.89,33.09,66.32856612227795,1);
		pin(31.89,33.09,62.14251961065003,1);
		pin(31.89,33.09,57.95647309902216,1);
		pin(31.89,33.09,49.58438007576632,1);
		pin(31.89,33.09,45.3983335641384,1);
		pin(31.89,33.09,41.212287052510476,1);
		pin(31.89,33.09,37.026240540882554,1);
		pin(31.89,33.09,32.84019402925469,1);
		pin(31.89,33.09,28.654147517626768,1);
		pin(31.89,33.09,24.468101005998903,1);
		pin(31.89,33.09,20.282054494370982,1);
		pin(31.89,33.09,16.09600798274306,1);
		pin(31.89,33.09,11.909961471115139,1);
		pin(31.89,33.09,7.723914959487217,1);
		pin(33.51,34.71,45.21011606705849,1);
		pin(33.51,34.71,41.02406955543057,1);
		pin(34.71,35.910000000000004,329.7661453459476,1);
		pin(34.71,35.910000000000004,325.5800988343197,1);
		pin(34.71,35.910000000000004,321.3940523226918,1);
		pin(34.71,35.910000000000004,317.2080058110639,1);
		pin(34.71,35.910000000000004,313.021959299436,1);
		pin(34.71,35.910000000000004,308.83591278780807,1);
		pin(34.71,35.910000000000004,304.6498662761802,1);
		pin(34.71,35.910000000000004,300.4638197645523,1);
		pin(34.71,35.910000000000004,296.27777325292436,1);
		pin(34.71,35.910000000000004,292.0917267412965,1);
		pin(34.71,35.910000000000004,287.9056802296685,1);
		pin(34.71,35.910000000000004,283.71963371804065,1);
		pin(34.71,35.910000000000004,279.53358720641273,1);
		pin(34.71,35.910000000000004,275.3475406947848,1);
		pin(34.71,35.910000000000004,271.16149418315695,1);
		pin(34.71,35.910000000000004,258.6033546482732,1);
		pin(34.71,35.910000000000004,237.67312209013363,1);
		pin(34.71,35.910000000000004,233.48707557850577,1);
		pin(34.71,35.910000000000004,229.30102906687785,1);
		pin(34.71,35.910000000000004,220.92893604362203,1);
		pin(34.71,35.910000000000004,216.7428895319941,1);
		pin(34.71,35.910000000000004,208.3707965087383,1);
		pin(34.71,35.910000000000004,204.1847499971104,1);
		pin(34.71,35.910000000000004,199.99870348548248,1);
		pin(34.71,35.910000000000004,195.8126569738546,1);
		pin(34.71,35.910000000000004,191.62661046222667,1);
		pin(34.71,35.910000000000004,187.44056395059877,1);
		pin(34.71,35.910000000000004,183.25451743897088,1);
		pin(34.71,35.910000000000004,179.06847092734293,1);
		pin(34.71,35.910000000000004,174.88242441571506,1);
		pin(34.71,35.910000000000004,170.69637790408714,1);
		pin(34.71,35.910000000000004,166.51033139245922,1);
		pin(34.71,35.910000000000004,162.32428488083136,1);
		pin(34.71,35.910000000000004,158.1382383692034,1);
		pin(34.71,35.910000000000004,153.9521918575755,1);
		pin(34.71,35.910000000000004,149.7661453459476,1);
		pin(34.71,35.910000000000004,145.58009883431973,1);
		pin(34.71,35.910000000000004,141.39405232269178,1);
		pin(34.71,35.910000000000004,137.20800581106388,1);
		pin(34.71,35.910000000000004,133.02195929943593,1);
		pin(34.71,35.910000000000004,128.83591278780807,1);
		pin(34.71,35.910000000000004,124.64986627618015,1);
		pin(34.71,35.910000000000004,120.46381976455228,1);
		pin(34.71,35.910000000000004,116.27777325292436,1);
		pin(34.71,35.910000000000004,112.09172674129641,1);
		pin(34.71,35.910000000000004,107.90568022966852,1);
		pin(34.71,35.910000000000004,103.7196337180406,1);
		pin(34.71,35.910000000000004,99.53358720641273,1);
		pin(34.71,35.910000000000004,95.34754069478481,1);
		pin(34.71,35.910000000000004,91.16149418315689,1);
		pin(34.71,35.910000000000004,86.97544767152897,1);
		pin(34.71,35.910000000000004,82.78940115990105,1);
		pin(34.71,35.910000000000004,78.60335464827318,1);
		pin(34.71,35.910000000000004,74.41730813664526,1);
		pin(34.71,35.910000000000004,19.99870348548245,1);
		pin(34.71,35.910000000000004,15.81265697385453,1);
		pin(34.71,35.910000000000004,11.626610462226722,1);
		pin(34.71,35.910000000000004,7.440563950598744,1);
		pin(36.224999999999994,37.425,258.4521969662736,1);
		pin(36.224999999999994,37.425,254.2661504546457,1);
		pin(36.224999999999994,37.425,116.12661557092474,1);
		pin(36.224999999999994,37.425,74.2661504546457,1);
		pin(36.224999999999994,37.425,70.08010394301778,1);
		pin(36.224999999999994,37.425,7.28940626859918,1);
		pin(37.425,38.625,229.06804251851116,1);
		pin(39.025,40.225,224.7450858595431,1);
		pin(40.225,41.425000000000004,216.3021611421617,1);
		pin(41.8,43.0,31.99859755848155,1);
		pin(43.0,44.2,224.49475382952423,1);
		pin(43.0,44.2,211.9366142946405,1);
		pin(43.0,44.2,186.82033522487305,1);
		pin(43.0,44.2,140.77382359696608,1);
		pin(43.0,44.2,132.40173057371024,1);
		pin(43.0,44.2,36.12266080626836,1);
		pin(43.0,44.2,19.378474759756784,1);
		pin(44.625,45.825,220.20263832944244,1);
		pin(44.625,45.825,207.6444987945587,1);
		pin(44.625,45.825,182.52821972479126,1);
		pin(44.625,45.825,136.48170809688426,1);
		pin(44.625,45.825,52.760777864326144,1);
		pin(44.625,45.825,23.458452282930807,1);
		pin(44.625,45.825,15.086359259674907,1);
		pin(45.825,47.025000000000006,266.19457424823355,1);
		pin(45.825,47.025000000000006,257.82248122497776,1);
		pin(45.825,47.025000000000006,249.45038820172195,1);
		pin(45.825,47.025000000000006,241.07829517846613,1);
		pin(45.825,47.025000000000006,232.7062021552103,1);
		pin(45.825,47.025000000000006,224.3341091319545,1);
		pin(45.825,47.025000000000006,215.96201610869866,1);
		pin(45.825,47.025000000000006,207.58992308544288,1);
		pin(45.825,47.025000000000006,77.82248122497782,1);
		pin(45.825,47.025000000000006,69.45038820172192,1);
		pin(45.825,47.025000000000006,61.078295178466135,1);
		pin(45.825,47.025000000000006,52.70620215521029,1);
		pin(45.825,47.025000000000006,44.334109131954506,1);
		pin(45.825,47.025000000000006,35.96201610869866,1);
		pin(45.825,47.025000000000006,27.589923085442877,1);
		pin(47.355,48.555,261.919475522536,1);
		pin(47.355,48.555,253.5473824992802,1);
		pin(47.355,48.555,245.17528947602437,1);
		pin(47.355,48.555,236.80319645276853,1);
		pin(47.355,48.555,228.43110342951272,1);
		pin(47.355,48.555,220.0590104062569,1);
		pin(47.355,48.555,211.6869173830011,1);
		pin(47.355,48.555,81.91947552253595,1);
		pin(47.355,48.555,73.54738249928016,1);
		pin(47.355,48.555,65.17528947602437,1);
		pin(47.355,48.555,56.80319645276853,1);
		pin(47.355,48.555,48.43110342951269,1);
		pin(47.355,48.555,40.0590104062569,1);
		pin(47.355,48.555,31.686917383001116,1);
		pin(47.355,48.555,23.314824359745273,1);
		pin(48.555,49.755,190.70807424894463,1);
		pin(48.555,49.755,182.3359812256888,1);
		pin(48.555,49.755,153.03365564429345,1);
		pin(48.555,49.755,127.917376574526,1);
		pin(48.555,49.755,44.196446341967885,1);
		pin(48.555,49.755,19.080167272200413,1);
		pin(50.114999999999995,51.315,186.44111999438232,1);
		pin(50.114999999999995,51.315,157.13879441298695,1);
		pin(50.114999999999995,51.315,144.58065487810325,1);
		pin(50.114999999999995,51.315,52.48763162228926,1);
		pin(50.114999999999995,51.315,35.74344557577763,1);
		pin(51.315,52.515,324.5371332437743,1);
		pin(51.315,52.515,311.9789937088906,1);
		pin(51.315,52.515,303.60690068563474,1);
		pin(51.315,52.515,224.07201696470452,1);
		pin(51.315,52.515,207.3278309181929,1);
		pin(51.315,52.515,169.6534123135417,1);
		pin(51.315,52.515,157.095272778658,1);
		pin(51.315,52.515,148.72317975540219,1);
		pin(51.315,52.515,140.35108673214634,1);
		pin(51.315,52.515,131.9789937088905,1);
		pin(51.315,52.515,111.04876115075098,1);
		pin(51.315,52.515,94.3045751042394,1);
		pin(51.315,52.515,85.93248208098362,1);
		pin(51.315,52.515,52.4441099879603,1);
		pin(51.315,52.515,39.885970453076595,1);
		pin(51.315,52.515,18.955737894937045,1);
		pin(51.315,52.515,10.583644871681258,1);
		pin(52.91,54.11,316.09099180477654,1);
		pin(52.91,54.11,307.71889878152075,1);
		pin(52.91,54.11,232.37006157221842,1);
		pin(52.91,54.11,215.62587552570676,1);
		pin(52.91,54.11,203.06773599082308,1);
		pin(52.91,54.11,161.20727087454404,1);
		pin(52.91,54.11,152.8351778512882,1);
		pin(52.91,54.11,144.46308482803238,1);
		pin(52.91,54.11,136.09099180477654,1);
		pin(52.91,54.11,127.71889878152072,1);
		pin(52.91,54.11,98.41657320012536,1);
		pin(52.91,54.11,90.04448017686951,1);
		pin(52.91,54.11,81.67238715361373,1);
		pin(52.91,54.11,43.997968548962604,1);
		pin(52.91,54.11,35.625875525706704,1);
		pin(52.91,54.11,14.69564296756721,1);
		pin(52.91,54.11,6.323549944311367,1);
		pin(54.11,55.31,295.12161800084533,1);
		pin(54.11,55.31,290.9355714892174,1);
		pin(54.11,55.31,286.74952497758954,1);
		pin(54.11,55.31,282.5634784659616,1);
		pin(54.11,55.31,278.3774319543337,1);
		pin(54.11,55.31,270.0053389310779,1);
		pin(54.11,55.31,265.81929241945,1);
		pin(54.11,55.31,253.2611528845663,1);
		pin(54.11,55.31,249.07510637293836,1);
		pin(54.11,55.31,244.88905986131044,1);
		pin(54.11,55.31,240.70301334968258,1);
		pin(54.11,55.31,236.51696683805463,1);
		pin(54.11,55.31,203.0285947450314,1);
		pin(54.11,55.31,198.84254823340348,1);
		pin(54.11,55.31,194.65650172177556,1);
		pin(54.11,55.31,190.4704552101477,1);
		pin(54.11,55.31,186.28440869851977,1);
		pin(54.11,55.31,182.09836218689185,1);
		pin(54.11,55.31,177.91231567526393,1);
		pin(54.11,55.31,173.72626916363603,1);
		pin(54.11,55.31,169.54022265200814,1);
		pin(54.11,55.31,165.35417614038022,1);
		pin(54.11,55.31,161.16812962875235,1);
		pin(54.11,55.31,156.9820831171244,1);
		pin(54.11,55.31,152.7960366054965,1);
		pin(54.11,55.31,144.4239435822407,1);
		pin(54.11,55.31,131.86580404735696,1);
		pin(54.11,55.31,127.67975753572904,1);
		pin(54.11,55.31,123.49371102410112,1);
		pin(54.11,55.31,115.12161800084533,1);
		pin(54.11,55.31,98.3774319543337,1);
		pin(54.11,55.31,94.19138544270578,1);
		pin(54.11,55.31,77.44719939619415,1);
		pin(54.11,55.31,64.88905986131044,1);
		pin(54.11,55.31,52.330920326426735,1);
		pin(54.11,55.31,48.144873814798814,1);
		pin(54.11,55.31,43.95882730317095,1);
		pin(54.11,55.31,35.58673427991505,1);
		pin(54.11,55.31,31.40068776828724,1);
		pin(54.11,55.31,27.214641256659206,1);
		pin(54.11,55.31,23.0285947450314,1);
		pin(54.11,55.31,18.842548233403477,1);
		pin(54.11,55.31,14.656501721775555,1);
		pin(54.11,55.31,6.284408698519712,1);
		pin(55.699999999999996,56.9,232.26432337049522,1);
		pin(55.699999999999996,56.9,223.89223034723943,1);
		pin(55.699999999999996,56.9,110.86897453328595,1);
		pin(55.699999999999996,56.9,106.68292802165806,1);
		pin(55.699999999999996,56.9,102.49688151003011,1);
		pin(55.699999999999996,56.9,98.31083499840224,1);
		pin(55.699999999999996,56.9,48.078276858867355,1);
		pin(56.9,58.1,328.50799653112597,1);
		pin(56.9,58.1,324.32195001949805,1);
		pin(56.9,58.1,315.94985699624226,1);
		pin(56.9,58.1,311.76381048461434,1);
		pin(56.9,58.1,307.5777639729864,1);
		pin(56.9,58.1,303.3917174613585,1);
		pin(56.9,58.1,299.2056709497306,1);
		pin(56.9,58.1,295.0196244381027,1);
		pin(56.9,58.1,290.8335779264748,1);
		pin(56.9,58.1,286.64753141484687,1);
		pin(56.9,58.1,282.461484903219,1);
		pin(56.9,58.1,278.2754383915911,1);
		pin(56.9,58.1,274.08939187996316,1);
		pin(56.9,58.1,269.90334536833524,1);
		pin(56.9,58.1,265.7172988567073,1);
		pin(56.9,58.1,261.53125234507945,1);
		pin(56.9,58.1,257.34520583345153,1);
		pin(56.9,58.1,253.1591593218236,1);
		pin(56.9,58.1,248.97311281019572,1);
		pin(56.9,58.1,244.78706629856782,1);
		pin(56.9,58.1,240.6010197869399,1);
		pin(56.9,58.1,236.41497327531198,1);
		pin(56.9,58.1,232.2289267636841,1);
		pin(56.9,58.1,228.0428802520562,1);
		pin(56.9,58.1,223.85683374042827,1);
		pin(56.9,58.1,219.67078722880038,1);
		pin(56.9,58.1,215.48474071717246,1);
		pin(56.9,58.1,211.29869420554456,1);
		pin(56.9,58.1,207.11264769391664,1);
		pin(56.9,58.1,202.92660118228875,1);
		pin(56.9,58.1,198.74055467066083,1);
		pin(56.9,58.1,194.5545081590329,1);
		pin(56.9,58.1,190.36846164740504,1);
		pin(56.9,58.1,186.18241513577712,1);
		pin(56.9,58.1,181.9963686241492,1);
		pin(56.9,58.1,177.81032211252128,1);
		pin(56.9,58.1,173.62427560089338,1);
		pin(56.9,58.1,169.4382290892655,1);
		pin(56.9,58.1,165.25218257763757,1);
		pin(56.9,58.1,161.0661360660097,1);
		pin(56.9,58.1,156.88008955438175,1);
		pin(56.9,58.1,152.69404304275386,1);
		pin(56.9,58.1,148.50799653112597,1);
		pin(56.9,58.1,144.32195001949805,1);
		pin(56.9,58.1,140.13590350787013,1);
		pin(56.9,58.1,135.9498569962422,1);
		pin(56.9,58.1,131.7638104846143,1);
		pin(56.9,58.1,127.57776397298642,1);
		pin(56.9,58.1,123.3917174613585,1);
		pin(56.9,58.1,119.20567094973063,1);
		pin(56.9,58.1,115.01962443810268,1);
		pin(56.9,58.1,110.83357792647476,1);
		pin(56.9,58.1,106.6475314148469,1);
		pin(56.9,58.1,102.46148490321895,1);
		pin(56.9,58.1,98.27543839159108,1);
		pin(56.9,58.1,94.08939187996316,1);
		pin(56.9,58.1,89.90334536833524,1);
		pin(56.9,58.1,85.71729885670737,1);
		pin(56.9,58.1,81.53125234507945,1);
		pin(56.9,58.1,77.34520583345153,1);
		pin(56.9,58.1,73.15915932182367,1);
		pin(56.9,58.1,68.97311281019569,1);
		pin(56.9,58.1,64.78706629856782,1);
		pin(56.9,58.1,60.6010197869399,1);
		pin(56.9,58.1,56.414973275312036,1);
		pin(56.9,58.1,52.228926763684115,1);
		pin(56.9,58.1,48.042880252056136,1);
		pin(56.9,58.1,43.85683374042827,1);
		pin(56.9,58.1,39.67078722880035,1);
		pin(56.9,58.1,35.48474071717243,1);
		pin(56.9,58.1,31.298694205544564,1);
		pin(56.9,58.1,27.112647693916642,1);
		pin(56.9,58.1,22.92660118228872,1);
		pin(56.9,58.1,18.7405546706608,1);
		pin(56.9,58.1,14.554508159032935,1);
		pin(56.9,58.1,10.368461647405013,1);
		pin(56.9,58.1,6.182415135777092,1);

		title("Elvis_-_A_Fool_Such_As_I_T_125",1);


	}
}

// Create the blank, ready for dynamically added pins
module createBlank() {

	difference() {

		// stock
		cylinder(h=hStock, r=rStock);

		// top cutout
		translate(v = [0,0,hStock-hInset+overlap]) {
			cylinder(h=hInset + overlap, r=rInset);
		}

		// Bottom cutout lets the disc sit flatter, but some printers my struggle with the overhang
		translate(v = [0,0,-overlap]) {
			cylinder(h=hInset + overlap, r=rInset);
		}

		// Centre hole
		cylinder(h=hStock, r=3.22);

		// Drive holes
		translate(v = [0,oDrive,0]) { cylinder(h=hStock, r=rDrive); }
		translate(v = [0,-oDrive,0]) { cylinder(h=hStock, r=rDrive); }
		translate(v = [oDrive,0,0]) { cylinder(h=hStock, r=rDrive); }
		translate(v = [-oDrive,0,0]) { cylinder(h=hStock, r=rDrive); }

		// Tracks - each one for two notes
		track(28.15, 0);
		track(30.89, 0);
		track(33.71, 0);
		track(36.425, 0);
		track(39.225, 0);
		track(42, 0);
		track(44.825, 0);
		track(47.555, 0);
		track(50.315, 0);
		track(53.11, 0);
		track(55.9, 0);

		if (hasSecondSide > 0) {
			track(28.15, 1);
			track(30.89, 1);
			track(33.71, 1);
			track(36.425, 1);
			track(39.225, 1);
			track(42, 1);
			track(44.825, 1);
			track(47.555, 1);
			track(50.315, 1);
			track(53.11, 1);
			track(55.9, 1);
		}
	}
}

// Negative for a double track
module track(inner, onSecondSide) {
	if (onSecondSide > 0) {
		translate(v = [0,0,-overlap]) {
			difference() {
				cylinder(h=hGroove+overlap, r=inner+2);
				cylinder(h=hGroove+overlap, r=inner);
			}
		}
	}
	else {
		translate(v = [0,0,hStock-hGroove]) {
			difference() {
				cylinder(h=hGroove+overlap, r=inner+2);
				cylinder(h=hGroove+overlap, r=inner);
			}
		}
	}

}

// Create a pin at a certain angle
module pin(inner, outer, angle, onSecondSide)
{
	rotate(a=angle) {
		if (onSecondSide > 0) {
			translate(v=[inner, -0.5, - overlap]) {
				# cube (size=[outer-inner, 1 ,hGroove + overlap], center=false);
			}
		} else {
			translate(v=[inner, -0.5, hStock - hGroove - overlap]) {
				# cube (size=[outer-inner, 1 ,hGroove + overlap], center=false);
			}
		}
	}
}

module title(text, onSecondSide)
{
	if (onSecondSide>0)
		writecylinder(text, [0,0,-hInset], radius=20, height=hStock-hInset, h=3, t=hInset, face="bottom");
	else
		writecylinder(text, [0,0,0], radius=20, height=hStock-hInset, h=3, t=hInset, face="top");
}



// Do the work
createDisc();
