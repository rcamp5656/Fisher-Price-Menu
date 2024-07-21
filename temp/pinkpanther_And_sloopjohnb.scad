/* This file has been generated by "music box tune tracker" v1.0 on 05 Jul 2024 04:14
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
		pin(27.95,29.15,21.11657369363604,0);
		pin(27.95,29.15,25.302620205263946,0);
		pin(27.95,29.15,29.488666716891856,0);
		pin(27.95,29.15,33.674713228519764,0);
		pin(27.95,29.15,37.86075974014767,0);
		pin(27.95,29.15,42.046806251775585,0);
		pin(27.95,29.15,46.23285276340348,0);
		pin(27.95,29.15,50.41889927503139,0);
		pin(27.95,29.15,54.6049457866593,0);
		pin(27.95,29.15,58.790992298287215,0);
		pin(27.95,29.15,62.97703880991511,0);
		pin(27.95,29.15,67.16308532154302,0);
		pin(27.95,29.15,71.34913183317093,0);
		pin(27.95,29.15,75.53517834479882,0);
		pin(27.95,29.15,79.72122485642674,0);
		pin(27.95,29.15,83.90727136805465,0);
		pin(27.95,29.15,88.09331787968256,0);
		pin(27.95,29.15,92.27936439131047,0);
		pin(27.95,29.15,96.46541090293837,0);
		pin(27.95,29.15,100.6514574145663,0);
		pin(27.95,29.15,104.83750392619419,0);
		pin(27.95,29.15,109.0235504378221,0);
		pin(27.95,29.15,113.20959694945,0);
		pin(27.95,29.15,117.39564346107791,0);
		pin(27.95,29.15,121.58168997270585,0);
		pin(27.95,29.15,125.76773648433372,0);
		pin(27.95,29.15,129.95378299596163,0);
		pin(27.95,29.15,134.13982950758952,0);
		pin(27.95,29.15,138.32587601921745,0);
		pin(27.95,29.15,142.51192253084537,0);
		pin(27.95,29.15,146.69796904247323,0);
		pin(27.95,29.15,150.88401555410118,0);
		pin(27.95,29.15,155.07006206572905,0);
		pin(27.95,29.15,159.256108577357,0);
		pin(27.95,29.15,163.44215508898492,0);
		pin(27.95,29.15,167.62820160061278,0);
		pin(27.95,29.15,171.8142481122407,0);
		pin(27.95,29.15,176.0002946238686,0);
		pin(27.95,29.15,180.1863411354965,0);
		pin(27.95,29.15,184.37238764712444,0);
		pin(27.95,29.15,188.55843415875233,0);
		pin(27.95,29.15,192.74448067038026,0);
		pin(27.95,29.15,196.93052718200812,0);
		pin(27.95,29.15,201.11657369363604,0);
		pin(27.95,29.15,205.302620205264,0);
		pin(27.95,29.15,209.48866671689183,0);
		pin(27.95,29.15,213.67471322851978,0);
		pin(27.95,29.15,217.8607597401477,0);
		pin(27.95,29.15,222.04680625177556,0);
		pin(27.95,29.15,226.23285276340349,0);
		pin(27.95,29.15,230.41889927503138,0);
		pin(27.95,29.15,234.60494578665933,0);
		pin(27.95,29.15,238.7909922982872,0);
		pin(27.95,29.15,242.97703880991511,0);
		pin(27.95,29.15,247.16308532154304,0);
		pin(27.95,29.15,251.3491318331709,0);
		pin(27.95,29.15,255.53517834479885,0);
		pin(27.95,29.15,259.7212248564267,0);
		pin(27.95,29.15,263.90727136805464,0);
		pin(27.95,29.15,268.09331787968256,0);
		pin(27.95,29.15,272.2793643913104,0);
		pin(27.95,29.15,276.4654109029384,0);
		pin(27.95,29.15,280.65145741456627,0);
		pin(27.95,29.15,284.8375039261942,0);
		pin(27.95,29.15,289.0235504378221,0);
		pin(27.95,29.15,293.20959694945,0);
		pin(27.95,29.15,297.3956434610779,0);
		pin(27.95,29.15,301.58168997270576,0);
		pin(27.95,29.15,305.76773648433374,0);
		pin(27.95,29.15,309.95378299596166,0);
		pin(27.95,29.15,314.1398295075895,0);
		pin(27.95,29.15,318.32587601921745,0);
		pin(27.95,29.15,322.51192253084537,0);
		pin(27.95,29.15,326.69796904247323,0);
		pin(27.95,29.15,330.88401555410115,0);
		pin(27.95,29.15,343.44215508898486,0);
		pin(27.95,29.15,347.6282016006128,0);
		pin(29.15,30.349999999999998,50.55379658957207,0);
		pin(29.15,30.349999999999998,84.04216868259535,0);
		pin(29.15,30.349999999999998,117.53054077561858,0);
		pin(29.15,30.349999999999998,130.0886803105023,0);
		pin(29.15,30.349999999999998,134.27472682213022,0);
		pin(29.15,30.349999999999998,142.64681984538603,0);
		pin(29.15,30.349999999999998,146.83286635701393,0);
		pin(29.15,30.349999999999998,151.01891286864185,0);
		pin(29.15,30.349999999999998,155.20495938026974,0);
		pin(29.15,30.349999999999998,159.39100589189766,0);
		pin(29.15,30.349999999999998,171.94914542678137,0);
		pin(29.15,30.349999999999998,184.5072849616651,0);
		pin(29.15,30.349999999999998,188.693331473293,0);
		pin(29.15,30.349999999999998,197.06542449654881,0);
		pin(29.15,30.349999999999998,201.25147100817674,0);
		pin(29.15,30.349999999999998,213.80961054306044,0);
		pin(29.15,30.349999999999998,222.1817035663163,0);
		pin(29.15,30.349999999999998,255.67007565933955,0);
		pin(29.15,30.349999999999998,268.2282151942233,0);
		pin(29.15,30.349999999999998,272.4142617058512,0);
		pin(29.15,30.349999999999998,280.78635472910696,0);
		pin(29.15,30.349999999999998,284.9724012407349,0);
		pin(29.15,30.349999999999998,289.15844775236286,0);
		pin(29.15,30.349999999999998,293.3444942639907,0);
		pin(29.15,30.349999999999998,305.90263379887443,0);
		pin(29.15,30.349999999999998,310.08868031050235,0);
		pin(29.15,30.349999999999998,322.64681984538606,0);
		pin(29.15,30.349999999999998,326.832866357014,0);
		pin(29.15,30.349999999999998,343.5770524035256,0);
		pin(30.69,31.89,50.76802933972079,0);
		pin(30.69,31.89,54.954075851348684,0);
		pin(30.69,31.89,84.25640143274404,0);
		pin(30.69,31.89,88.44244794437196,0);
		pin(30.69,31.89,117.74477352576729,0);
		pin(30.69,31.89,121.93082003739522,0);
		pin(30.69,31.89,151.23314561879056,0);
		pin(30.69,31.89,155.41919213041845,0);
		pin(30.69,31.89,167.9773316653022,0);
		pin(30.69,31.89,172.16337817693008,0);
		pin(30.69,31.89,188.90756422344174,0);
		pin(30.69,31.89,193.0936107350696,0);
		pin(30.69,31.89,218.2098898048371,0);
		pin(30.69,31.89,222.39593631646497,0);
		pin(30.69,31.89,255.88430840948826,0);
		pin(30.69,31.89,260.0703549211161,0);
		pin(30.69,31.89,289.3726805025115,0);
		pin(30.69,31.89,293.55872701413944,0);
		pin(30.69,31.89,306.11686654902314,0);
		pin(30.69,31.89,310.30291306065106,0);
		pin(30.69,31.89,327.04709910716264,0);
		pin(30.69,31.89,331.23314561879056,0);
		pin(30.69,31.89,339.6052386420464,0);
		pin(30.69,31.89,343.7912851536743,0);
		pin(30.69,31.89,347.97733166530224,0);
		pin(30.69,31.89,352.16337817693017,0);
		pin(31.89,33.09,50.880736203303435,0);
		pin(31.89,33.09,55.06678271493134,0);
		pin(31.89,33.09,80.18306178469878,0);
		pin(31.89,33.09,84.36910829632667,0);
		pin(31.89,33.09,88.5551548079546,0);
		pin(31.89,33.09,113.67143387772202,0);
		pin(31.89,33.09,117.85748038934994,0);
		pin(31.89,33.09,122.04352690097788,0);
		pin(31.89,33.09,147.1598059707453,0);
		pin(31.89,33.09,151.34585248237323,0);
		pin(31.89,33.09,155.53189899400112,0);
		pin(31.89,33.09,184.8342245753965,0);
		pin(31.89,33.09,189.02027108702435,0);
		pin(31.89,33.09,193.20631759865228,0);
		pin(31.89,33.09,218.32259666841972,0);
		pin(31.89,33.09,222.50864318004764,0);
		pin(31.89,33.09,226.69468969167556,0);
		pin(31.89,33.09,251.81096876144298,0);
		pin(31.89,33.09,255.9970152730709,0);
		pin(31.89,33.09,260.1830617846988,0);
		pin(31.89,33.09,285.29934085446627,0);
		pin(31.89,33.09,289.4853873660942,0);
		pin(31.89,33.09,293.67143387772205,0);
		pin(31.89,33.09,322.97375945911745,0);
		pin(31.89,33.09,327.1598059707453,0);
		pin(31.89,33.09,331.34585248237323,0);
		pin(31.89,33.09,339.717945505629,0);
		pin(33.51,34.71,51.068953700383354,0);
		pin(33.51,34.71,55.25500021201126,0);
		pin(33.51,34.71,84.5573257934066,0);
		pin(33.51,34.71,88.74337230503453,0);
		pin(33.51,34.71,118.04569788642986,0);
		pin(33.51,34.71,122.2317443980578,0);
		pin(33.51,34.71,151.53406997945314,0);
		pin(33.51,34.71,155.72011649108103,0);
		pin(33.51,34.71,189.20848858410432,0);
		pin(33.51,34.71,193.39453509573218,0);
		pin(33.51,34.71,222.69686067712755,0);
		pin(33.51,34.71,226.8829071887555,0);
		pin(33.51,34.71,256.18523277015083,0);
		pin(33.51,34.71,260.3712792817787,0);
		pin(33.51,34.71,289.6736048631741,0);
		pin(33.51,34.71,293.85965137480196,0);
		pin(33.51,34.71,327.3480234678252,0);
		pin(33.51,34.71,331.5340699794532,0);
		pin(33.51,34.71,335.72011649108106,0);
		pin(33.51,34.71,339.9061630027089,0);
		pin(34.71,35.910000000000004,55.35013372381982,0);
		pin(34.71,35.910000000000004,80.46641279358727,0);
		pin(34.71,35.910000000000004,88.83850581684307,0);
		pin(34.71,35.910000000000004,113.95478488661051,0);
		pin(34.71,35.910000000000004,122.32687790986635,0);
		pin(34.71,35.910000000000004,151.6292034912617,0);
		pin(34.71,35.910000000000004,193.48966860754078,0);
		pin(34.71,35.910000000000004,218.60594767730822,0);
		pin(34.71,35.910000000000004,222.79199418893612,0);
		pin(34.71,35.910000000000004,226.97804070056407,0);
		pin(34.71,35.910000000000004,252.09431977033148,0);
		pin(34.71,35.910000000000004,260.46641279358727,0);
		pin(34.71,35.910000000000004,285.58269186335474,0);
		pin(34.71,35.910000000000004,331.6292034912617,0);
		pin(34.71,35.910000000000004,335.8152500028896,0);
		pin(55.699999999999996,56.9,23.084513838807073,0);
		pin(55.699999999999996,56.9,27.270560350434984,0);
		pin(55.699999999999996,56.9,31.45660686206289,0);
		pin(55.699999999999996,56.9,35.6426533736908,0);
		pin(55.699999999999996,56.9,39.828699885318706,0);
		pin(55.699999999999996,56.9,44.01474639694661,0);
		pin(55.699999999999996,56.9,48.20079290857451,0);
		pin(55.699999999999996,56.9,52.38683942020243,0);
		pin(55.699999999999996,56.9,56.572885931830335,0);
		pin(55.699999999999996,56.9,60.75893244345825,0);
		pin(55.699999999999996,56.9,64.94497895508616,0);
		pin(55.699999999999996,56.9,69.13102546671406,0);
		pin(55.699999999999996,56.9,73.31707197834197,0);
		pin(55.699999999999996,56.9,77.50311848996986,0);
		pin(55.699999999999996,56.9,81.6891650015978,0);
		pin(55.699999999999996,56.9,85.8752115132257,0);
		pin(55.699999999999996,56.9,90.0612580248536,0);
		pin(55.699999999999996,56.9,94.24730453648151,0);
		pin(55.699999999999996,56.9,98.4333510481094,0);
		pin(55.699999999999996,56.9,102.61939755973731,0);
		pin(55.699999999999996,56.9,106.80544407136523,0);
		pin(55.699999999999996,56.9,110.99149058299314,0);
		pin(55.699999999999996,56.9,115.17753709462104,0);
		pin(55.699999999999996,56.9,119.36358360624894,0);
		pin(55.699999999999996,56.9,123.54963011787687,0);
		pin(55.699999999999996,56.9,127.73567662950477,0);
		pin(55.699999999999996,56.9,131.92172314113267,0);
		pin(55.699999999999996,56.9,136.10776965276057,0);
		pin(55.699999999999996,56.9,140.29381616438846,0);
		pin(55.699999999999996,56.9,144.4798626760164,0);
		pin(55.699999999999996,56.9,148.6659091876443,0);
		pin(55.699999999999996,56.9,152.8519556992722,0);
		pin(55.699999999999996,56.9,157.03800221090012,0);
		pin(55.699999999999996,56.9,161.22404872252804,0);
		pin(55.699999999999996,56.9,165.41009523415593,0);
		pin(55.699999999999996,56.9,169.59614174578383,0);
		pin(55.699999999999996,56.9,173.78218825741175,0);
		pin(55.699999999999996,56.9,177.96823476903964,0);
		pin(55.699999999999996,56.9,182.15428128066756,0);
		pin(55.699999999999996,56.9,186.34032779229548,0);
		pin(55.699999999999996,56.9,190.52637430392335,0);
		pin(55.699999999999996,56.9,194.71242081555127,0);
		pin(55.699999999999996,56.9,198.8984673271792,0);
		pin(55.699999999999996,56.9,203.0845138388071,0);
		pin(55.699999999999996,56.9,207.270560350435,0);
		pin(55.699999999999996,56.9,211.4566068620629,0);
		pin(55.699999999999996,56.9,215.64265337369082,0);
		pin(55.699999999999996,56.9,219.8286998853187,0);
		pin(55.699999999999996,56.9,224.01474639694663,0);
		pin(55.699999999999996,56.9,228.20079290857456,0);
		pin(55.699999999999996,56.9,232.3868394202024,0);
		pin(55.699999999999996,56.9,236.57288593183034,0);
		pin(55.699999999999996,56.9,240.75893244345824,0);
		pin(55.699999999999996,56.9,244.94497895508613,0);
		pin(55.699999999999996,56.9,249.13102546671405,0);
		pin(55.699999999999996,56.9,253.31707197834194,0);
		pin(55.699999999999996,56.9,257.5031184899699,0);
		pin(55.699999999999996,56.9,261.68916500159776,0);
		pin(55.699999999999996,56.9,265.8752115132257,0);
		pin(55.699999999999996,56.9,270.0612580248536,0);
		pin(55.699999999999996,56.9,274.24730453648147,0);
		pin(55.699999999999996,56.9,278.43335104810944,0);
		pin(55.699999999999996,56.9,282.61939755973725,0);
		pin(55.699999999999996,56.9,286.80544407136523,0);
		pin(55.699999999999996,56.9,290.99149058299315,0);
		pin(55.699999999999996,56.9,295.177537094621,0);
		pin(55.699999999999996,56.9,299.36358360624894,0);
		pin(55.699999999999996,56.9,303.5496301178768,0);
		pin(55.699999999999996,56.9,307.7356766295047,0);
		pin(55.699999999999996,56.9,311.92172314113265,0);
		pin(55.699999999999996,56.9,316.10776965276057,0);
		pin(55.699999999999996,56.9,320.29381616438843,0);
		pin(55.699999999999996,56.9,324.4798626760164,0);
		pin(55.699999999999996,56.9,328.6659091876443,0);
		pin(56.9,58.1,23.119910445618235,0);
		pin(56.9,58.1,48.23618951538567,0);

		title("pinkpanther",0);

		pin(36.224999999999994,37.425,346.35917371045963,1);
		pin(36.224999999999994,37.425,342.17312719883176,1);
		pin(36.224999999999994,37.425,337.98708068720384,1);
		pin(36.224999999999994,37.425,333.8010341755759,1);
		pin(36.224999999999994,37.425,329.61498766394806,1);
		pin(36.224999999999994,37.425,325.42894115232014,1);
		pin(36.224999999999994,37.425,321.2428946406922,1);
		pin(36.224999999999994,37.425,317.0568481290643,1);
		pin(36.224999999999994,37.425,312.8708016174364,1);
		pin(36.224999999999994,37.425,308.6847551058085,1);
		pin(36.224999999999994,37.425,304.4987085941806,1);
		pin(36.224999999999994,37.425,300.31266208255266,1);
		pin(36.224999999999994,37.425,296.12661557092474,1);
		pin(36.224999999999994,37.425,291.9405690592969,1);
		pin(36.224999999999994,37.425,287.75452254766896,1);
		pin(36.224999999999994,37.425,283.56847603604103,1);
		pin(36.224999999999994,37.425,279.38242952441317,1);
		pin(36.224999999999994,37.425,275.19638301278525,1);
		pin(36.224999999999994,37.425,271.0103365011573,1);
		pin(36.224999999999994,37.425,266.8242899895294,1);
		pin(36.224999999999994,37.425,262.63824347790154,1);
		pin(36.224999999999994,37.425,258.4521969662736,1);
		pin(36.224999999999994,37.425,254.2661504546457,1);
		pin(36.224999999999994,37.425,250.08010394301778,1);
		pin(36.224999999999994,37.425,245.89405743138988,1);
		pin(36.224999999999994,37.425,241.708010919762,1);
		pin(36.224999999999994,37.425,237.52196440813407,1);
		pin(36.224999999999994,37.425,233.33591789650615,1);
		pin(36.224999999999994,37.425,229.14987138487825,1);
		pin(36.224999999999994,37.425,224.96382487325036,1);
		pin(36.224999999999994,37.425,220.77777836162247,1);
		pin(36.224999999999994,37.425,216.59173184999452,1);
		pin(36.224999999999994,37.425,212.40568533836662,1);
		pin(36.224999999999994,37.425,208.21963882673873,1);
		pin(36.224999999999994,37.425,204.0335923151108,1);
		pin(36.224999999999994,37.425,199.8475458034829,1);
		pin(36.224999999999994,37.425,195.661499291855,1);
		pin(36.224999999999994,37.425,191.4754527802271,1);
		pin(36.224999999999994,37.425,187.28940626859918,1);
		pin(36.224999999999994,37.425,183.1033597569713,1);
		pin(36.224999999999994,37.425,178.91731324534337,1);
		pin(36.224999999999994,37.425,174.73126673371544,1);
		pin(36.224999999999994,37.425,170.54522022208758,1);
		pin(36.224999999999994,37.425,166.35917371045966,1);
		pin(36.224999999999994,37.425,162.17312719883174,1);
		pin(36.224999999999994,37.425,157.98708068720381,1);
		pin(36.224999999999994,37.425,153.80103417557592,1);
		pin(36.224999999999994,37.425,149.61498766394803,1);
		pin(36.224999999999994,37.425,145.4289411523201,1);
		pin(36.224999999999994,37.425,141.2428946406922,1);
		pin(36.224999999999994,37.425,137.0568481290643,1);
		pin(36.224999999999994,37.425,132.87080161743637,1);
		pin(36.224999999999994,37.425,128.6847551058085,1);
		pin(36.224999999999994,37.425,124.49870859418058,1);
		pin(36.224999999999994,37.425,120.31266208255269,1);
		pin(36.224999999999994,37.425,116.12661557092474,1);
		pin(36.224999999999994,37.425,111.94056905929685,1);
		pin(36.224999999999994,37.425,107.75452254766896,1);
		pin(36.224999999999994,37.425,103.56847603604103,1);
		pin(36.224999999999994,37.425,99.38242952441317,1);
		pin(36.224999999999994,37.425,95.19638301278519,1);
		pin(36.224999999999994,37.425,91.01033650115727,1);
		pin(36.224999999999994,37.425,86.8242899895294,1);
		pin(36.224999999999994,37.425,82.63824347790148,1);
		pin(36.224999999999994,37.425,78.45219696627362,1);
		pin(36.224999999999994,37.425,74.2661504546457,1);
		pin(36.224999999999994,37.425,70.08010394301778,1);
		pin(36.224999999999994,37.425,65.89405743138985,1);
		pin(36.224999999999994,37.425,61.70801091976199,1);
		pin(36.224999999999994,37.425,57.52196440813407,1);
		pin(36.224999999999994,37.425,53.335917896506146,1);
		pin(36.224999999999994,37.425,49.149871384878224,1);
		pin(36.224999999999994,37.425,44.96382487325036,1);
		pin(36.224999999999994,37.425,40.77777836162244,1);
		pin(36.224999999999994,37.425,36.59173184999452,1);
		pin(36.224999999999994,37.425,32.405685338366595,1);
		pin(36.224999999999994,37.425,28.219638826738674,1);
		pin(36.224999999999994,37.425,24.033592315110866,1);
		pin(36.224999999999994,37.425,19.84754580348283,1);
		pin(36.224999999999994,37.425,15.661499291854966,1);
		pin(36.224999999999994,37.425,11.475452780227101,1);
		pin(36.224999999999994,37.425,7.28940626859918,1);
		pin(43.0,44.2,333.3319631318498,1);
		pin(43.0,44.2,324.959870108594,1);
		pin(43.0,44.2,316.5877770853382,1);
		pin(43.0,44.2,304.0296375504545,1);
		pin(43.0,44.2,295.65754452719864,1);
		pin(43.0,44.2,283.09940499231493,1);
		pin(43.0,44.2,274.7273119690591,1);
		pin(43.0,44.2,262.1691724341754,1);
		pin(43.0,44.2,207.7505677830126,1);
		pin(43.0,44.2,199.37847475975676,1);
		pin(43.0,44.2,182.63428871324516,1);
		pin(43.0,44.2,174.2621956899893,1);
		pin(43.0,44.2,140.77382359696608,1);
		pin(43.0,44.2,119.84359103882656,1);
		pin(43.0,44.2,111.47149801557075,1);
		pin(43.0,44.2,94.72731196905914,1);
		pin(43.0,44.2,86.3552189458033,1);
		pin(43.0,44.2,73.7970794109196,1);
		pin(43.0,44.2,65.42498638766381,1);
		pin(43.0,44.2,57.05289336440802,1);
		pin(43.0,44.2,48.68080034115212,1);
		pin(44.625,45.825,329.039847631768,1);
		pin(44.625,45.825,320.6677546085122,1);
		pin(44.625,45.825,308.1096150736285,1);
		pin(44.625,45.825,299.73752205037266,1);
		pin(44.625,45.825,291.3654290271169,1);
		pin(44.625,45.825,278.80728949223317,1);
		pin(44.625,45.825,270.4351964689773,1);
		pin(44.625,45.825,257.8770569340936,1);
		pin(44.625,45.825,203.4584522829308,1);
		pin(44.625,45.825,190.90031274804704,1);
		pin(44.625,45.825,178.34217321316333,1);
		pin(44.625,45.825,169.97008018990755,1);
		pin(44.625,45.825,123.92356856200053,1);
		pin(44.625,45.825,115.55147553874474,1);
		pin(44.625,45.825,98.80728949223317,1);
		pin(44.625,45.825,90.43519646897727,1);
		pin(44.625,45.825,82.06310344572148,1);
		pin(44.625,45.825,69.50496391083772,1);
		pin(44.625,45.825,61.13287088758193,1);
		pin(44.625,45.825,52.760777864326144,1);
		pin(44.625,45.825,10.9003127480471,1);
		pin(48.555,49.755,270.24295796987485,1);
		pin(48.555,49.755,261.870864946619,1);
		pin(48.555,49.755,240.94063238847951,1);
		pin(48.555,49.755,165.5917951791772,1);
		pin(48.555,49.755,140.4755161094097,1);
		pin(48.555,49.755,60.94063238847946,1);
		pin(48.555,49.755,52.56853936522367,1);
		pin(48.555,49.755,35.82435331871204,1);
		pin(48.555,49.755,23.266213783828334,1);
		pin(50.114999999999995,51.315,265.9760037153125,1);
		pin(50.114999999999995,51.315,257.60391069205673,1);
		pin(50.114999999999995,51.315,228.30158511066136,1);
		pin(50.114999999999995,51.315,152.95274790135903,1);
		pin(50.114999999999995,51.315,123.65042231996367,1);
		pin(50.114999999999995,51.315,56.673678133917235,1);
		pin(50.114999999999995,51.315,48.301585110661335,1);
		pin(50.114999999999995,51.315,27.37135255252184,1);
		pin(51.315,52.515,182.21155184842544,1);
		pin(52.91,54.11,177.9514569210556,1);

		title("sloopjohnb",1);


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
