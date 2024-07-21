/* This file has been generated by "music box tune tracker" v1.0 on 18 Jul 2024 13:15
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
		pin(27.95,29.15,213.67471322851978,0);
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
		pin(27.95,29.15,297.3956434610779,0);
		pin(27.95,29.15,301.58168997270576,0);
		pin(27.95,29.15,305.76773648433374,0);
		pin(27.95,29.15,309.95378299596166,0);
		pin(27.95,29.15,314.1398295075895,0);
		pin(27.95,29.15,318.32587601921745,0);
		pin(27.95,29.15,322.51192253084537,0);
		pin(27.95,29.15,326.69796904247323,0);
		pin(27.95,29.15,330.88401555410115,0);
		pin(27.95,29.15,335.0700620657291,0);
		pin(27.95,29.15,339.256108577357,0);
		pin(27.95,29.15,343.44215508898486,0);
		pin(27.95,29.15,347.6282016006128,0);
		pin(27.95,29.15,351.8142481122407,0);
		pin(29.15,30.349999999999998,50.55379658957207,0);
		pin(29.15,30.349999999999998,54.73984310119998,0);
		pin(29.15,30.349999999999998,58.9258896128279,0);
		pin(29.15,30.349999999999998,63.11193612445581,0);
		pin(29.15,30.349999999999998,67.2979826360837,0);
		pin(29.15,30.349999999999998,71.48402914771162,0);
		pin(29.15,30.349999999999998,88.22821519422327,0);
		pin(29.15,30.349999999999998,92.41426170585116,0);
		pin(29.15,30.349999999999998,96.60030821747905,0);
		pin(29.15,30.349999999999998,125.9026337988744,0);
		pin(29.15,30.349999999999998,130.0886803105023,0);
		pin(29.15,30.349999999999998,142.64681984538603,0);
		pin(29.15,30.349999999999998,167.76309891515345,0);
		pin(29.15,30.349999999999998,171.94914542678137,0);
		pin(29.15,30.349999999999998,197.06542449654881,0);
		pin(29.15,30.349999999999998,201.25147100817674,0);
		pin(29.15,30.349999999999998,205.43751751980466,0);
		pin(29.15,30.349999999999998,213.80961054306044,0);
		pin(29.15,30.349999999999998,238.9258896128279,0);
		pin(29.15,30.349999999999998,243.1119361244558,0);
		pin(29.15,30.349999999999998,247.29798263608376,0);
		pin(29.15,30.349999999999998,276.6003082174791,0);
		pin(29.15,30.349999999999998,280.78635472910696,0);
		pin(29.15,30.349999999999998,284.9724012407349,0);
		pin(29.15,30.349999999999998,289.15844775236286,0);
		pin(29.15,30.349999999999998,314.2747268221302,0);
		pin(29.15,30.349999999999998,318.4607733337582,0);
		pin(29.15,30.349999999999998,322.64681984538606,0);
		pin(31.89,33.09,75.99701527307087,0);
		pin(31.89,33.09,80.18306178469878,0);
		pin(31.89,33.09,84.36910829632667,0);
		pin(31.89,33.09,109.48538736609413,0);
		pin(31.89,33.09,130.41561992423368,0);
		pin(31.89,33.09,142.97375945911742,0);
		pin(31.89,33.09,151.34585248237323,0);
		pin(31.89,33.09,155.53189899400112,0);
		pin(31.89,33.09,159.71794550562905,0);
		pin(31.89,33.09,184.8342245753965,0);
		pin(31.89,33.09,189.02027108702435,0);
		pin(31.89,33.09,205.764457133536,0);
		pin(31.89,33.09,214.13655015679183,0);
		pin(31.89,33.09,226.69468969167556,0);
		pin(31.89,33.09,230.88073620330343,0);
		pin(31.89,33.09,235.06678271493138,0);
		pin(31.89,33.09,260.1830617846988,0);
		pin(31.89,33.09,264.3691082963267,0);
		pin(31.89,33.09,281.1132943428383,0);
		pin(31.89,33.09,285.29934085446627,0);
		pin(31.89,33.09,289.4853873660942,0);
		pin(31.89,33.09,302.04352690097784,0);
		pin(31.89,33.09,306.2295734126058,0);
		pin(31.89,33.09,310.4156199242337,0);
		pin(31.89,33.09,335.5318989940011,0);
		pin(33.51,34.71,51.068953700383354,0);
		pin(33.51,34.71,55.25500021201126,0);
		pin(33.51,34.71,59.441046723639175,0);
		pin(33.51,34.71,63.62709323526707,0);
		pin(33.51,34.71,67.81313974689498,0);
		pin(33.51,34.71,71.9991862585229,0);
		pin(33.51,34.71,76.18523277015079,0);
		pin(33.51,34.71,80.3712792817787,0);
		pin(33.51,34.71,84.5573257934066,0);
		pin(33.51,34.71,88.74337230503453,0);
		pin(33.51,34.71,92.92941881666242,0);
		pin(33.51,34.71,97.11546532829033,0);
		pin(33.51,34.71,101.30151183991825,0);
		pin(33.51,34.71,105.48755835154614,0);
		pin(33.51,34.71,109.67360486317406,0);
		pin(33.51,34.71,113.85965137480196,0);
		pin(33.51,34.71,122.2317443980578,0);
		pin(33.51,34.71,126.4177909096857,0);
		pin(33.51,34.71,130.60383742131359,0);
		pin(33.51,34.71,143.16197695619735,0);
		pin(33.51,34.71,147.34802346782524,0);
		pin(33.51,34.71,151.53406997945314,0);
		pin(33.51,34.71,155.72011649108103,0);
		pin(33.51,34.71,159.90616300270895,0);
		pin(33.51,34.71,164.09220951433687,0);
		pin(33.51,34.71,168.27825602596477,0);
		pin(33.51,34.71,172.46430253759266,0);
		pin(33.51,34.71,176.65034904922058,0);
		pin(33.51,34.71,180.83639556084847,0);
		pin(33.51,34.71,185.0224420724764,0);
		pin(33.51,34.71,189.20848858410432,0);
		pin(33.51,34.71,197.5805816073601,0);
		pin(33.51,34.71,201.76662811898802,0);
		pin(33.51,34.71,205.95267463061595,0);
		pin(33.51,34.71,214.32476765387173,0);
		pin(33.51,34.71,222.69686067712755,0);
		pin(33.51,34.71,226.8829071887555,0);
		pin(33.51,34.71,231.0689537003834,0);
		pin(33.51,34.71,235.2550002120113,0);
		pin(33.51,34.71,239.44104672363918,0);
		pin(33.51,34.71,243.6270932352671,0);
		pin(33.51,34.71,247.81313974689505,0);
		pin(33.51,34.71,251.99918625852288,0);
		pin(33.51,34.71,256.18523277015083,0);
		pin(33.51,34.71,260.3712792817787,0);
		pin(33.51,34.71,264.5573257934066,0);
		pin(33.51,34.71,268.74337230503454,0);
		pin(33.51,34.71,272.9294188166624,0);
		pin(33.51,34.71,277.1154653282904,0);
		pin(33.51,34.71,281.30151183991825,0);
		pin(33.51,34.71,285.48755835154617,0);
		pin(33.51,34.71,289.6736048631741,0);
		pin(33.51,34.71,298.04569788642993,0);
		pin(33.51,34.71,302.2317443980578,0);
		pin(33.51,34.71,306.4177909096857,0);
		pin(33.51,34.71,314.7898839329415,0);
		pin(33.51,34.71,318.9759304445694,0);
		pin(33.51,34.71,323.16197695619735,0);
		pin(33.51,34.71,327.3480234678252,0);
		pin(33.51,34.71,331.5340699794532,0);
		pin(33.51,34.71,335.72011649108106,0);
		pin(33.51,34.71,339.9061630027089,0);
		pin(33.51,34.71,348.27825602596477,0);
		pin(33.51,34.71,352.4643025375927,0);
		pin(34.71,35.910000000000004,118.14083139823842,0);
		pin(34.71,35.910000000000004,122.32687790986635,0);
		pin(34.71,35.910000000000004,193.48966860754078,0);
		pin(34.71,35.910000000000004,197.67571511916864,0);
		pin(34.71,35.910000000000004,268.8385058168431,0);
		pin(34.71,35.910000000000004,273.02455232847103,0);
		pin(34.71,35.910000000000004,344.18734302614547,0);
		pin(34.71,35.910000000000004,348.3733895377733,0);
		pin(36.224999999999994,37.425,51.3152448941915,0);
		pin(36.224999999999994,37.425,55.501291405819416,0);
		pin(36.224999999999994,37.425,59.68733791744733,0);
		pin(36.224999999999994,37.425,63.87338442907523,0);
		pin(36.224999999999994,37.425,68.05943094070314,0);
		pin(36.224999999999994,37.425,72.24547745233104,0);
		pin(36.224999999999994,37.425,76.43152396395894,0);
		pin(36.224999999999994,37.425,80.61757047558686,0);
		pin(36.224999999999994,37.425,84.80361698721477,0);
		pin(36.224999999999994,37.425,88.98966349884267,0);
		pin(36.224999999999994,37.425,93.17571001047058,0);
		pin(36.224999999999994,37.425,97.36175652209847,0);
		pin(36.224999999999994,37.425,101.54780303372638,0);
		pin(36.224999999999994,37.425,105.7338495453543,0);
		pin(36.224999999999994,37.425,109.91989605698221,0);
		pin(36.224999999999994,37.425,114.10594256861012,0);
		pin(36.224999999999994,37.425,118.29198908023801,0);
		pin(36.224999999999994,37.425,122.47803559186595,0);
		pin(36.224999999999994,37.425,126.66408210349384,0);
		pin(36.224999999999994,37.425,130.85012861512175,0);
		pin(36.224999999999994,37.425,151.78036117326127,0);
		pin(36.224999999999994,37.425,155.9664076848892,0);
		pin(36.224999999999994,37.425,160.1524541965171,0);
		pin(36.224999999999994,37.425,164.338500708145,0);
		pin(36.224999999999994,37.425,168.5245472197729,0);
		pin(36.224999999999994,37.425,172.71059373140082,0);
		pin(36.224999999999994,37.425,176.8966402430287,0);
		pin(36.224999999999994,37.425,181.08268675465663,0);
		pin(36.224999999999994,37.425,185.26873326628456,0);
		pin(36.224999999999994,37.425,189.45477977791242,0);
		pin(36.224999999999994,37.425,193.64082628954034,0);
		pin(36.224999999999994,37.425,197.82687280116826,0);
		pin(36.224999999999994,37.425,202.01291931279619,0);
		pin(36.224999999999994,37.425,206.19896582442408,0);
		pin(36.224999999999994,37.425,227.12919838256363,0);
		pin(36.224999999999994,37.425,231.3152448941915,0);
		pin(36.224999999999994,37.425,235.50129140581942,0);
		pin(36.224999999999994,37.425,239.6873379174473,0);
		pin(36.224999999999994,37.425,243.87338442907526,0);
		pin(36.224999999999994,37.425,248.05943094070315,0);
		pin(36.224999999999994,37.425,252.24547745233104,0);
		pin(36.224999999999994,37.425,256.43152396395897,0);
		pin(36.224999999999994,37.425,260.61757047558683,0);
		pin(36.224999999999994,37.425,264.8036169872148,0);
		pin(36.224999999999994,37.425,268.98966349884273,0);
		pin(36.224999999999994,37.425,273.1757100104706,0);
		pin(36.224999999999994,37.425,277.3617565220985,0);
		pin(36.224999999999994,37.425,281.5478030337264,0);
		pin(36.224999999999994,37.425,302.47803559186593,0);
		pin(36.224999999999994,37.425,306.66408210349385,0);
		pin(36.224999999999994,37.425,310.8501286151218,0);
		pin(36.224999999999994,37.425,315.03617512674964,0);
		pin(36.224999999999994,37.425,319.22222163837756,0);
		pin(36.224999999999994,37.425,323.4082681500055,0);
		pin(36.224999999999994,37.425,327.5943146616334,0);
		pin(36.224999999999994,37.425,331.7803611732613,0);
		pin(36.224999999999994,37.425,335.96640768488913,0);
		pin(36.224999999999994,37.425,340.15245419651717,0);
		pin(36.224999999999994,37.425,344.33850070814503,0);
		pin(36.224999999999994,37.425,348.5245472197729,0);
		pin(36.224999999999994,37.425,352.7105937314008,0);
		pin(37.425,38.625,-3.0215308906042098,0);
		pin(37.425,38.625,13.72265515590742,0);
		pin(37.425,38.625,26.280794690791144,0);
		pin(37.425,38.625,38.83893422567486,0);
		pin(37.425,38.625,47.21102724893067,0);
		pin(37.425,38.625,55.58312027218649,0);
		pin(37.425,38.625,68.14125980707021,0);
		pin(37.425,38.625,80.69939934195394,0);
		pin(37.425,38.625,89.07149236520975,0);
		pin(37.425,38.625,101.62963190009346,0);
		pin(37.425,38.625,114.1877714349772,0);
		pin(37.425,38.625,156.04823655125625,0);
		pin(37.425,38.625,164.4203295745121,0);
		pin(37.425,38.625,176.9784691093958,0);
		pin(37.425,38.625,193.72265515590743,0);
		pin(37.425,38.625,235.5831202721865,0);
		pin(37.425,38.625,248.1412598070702,0);
		pin(37.425,38.625,264.88544585358187,0);
		pin(37.425,38.625,302.559864458233,0);
		pin(37.425,38.625,310.93195748148884,0);
		pin(37.425,38.625,323.4900970163726,0);
		pin(37.425,38.625,336.0482365512562,0);
		pin(37.425,38.625,344.4203295745121,0);
		pin(39.025,40.225,5.487472279991758,0);
		pin(39.025,40.225,18.045611814875482,0);
		pin(39.025,40.225,30.6037513497592,0);
		pin(39.025,40.225,43.16189088464293,0);
		pin(39.025,40.225,51.53398390789873,0);
		pin(39.025,40.225,64.09212344278245,0);
		pin(39.025,40.225,76.65026297766619,0);
		pin(39.025,40.225,85.02235600092199,0);
		pin(39.025,40.225,97.58049553580572,0);
		pin(39.025,40.225,110.13863507068945,0);
		pin(39.025,40.225,118.51072809394526,0);
		pin(39.025,40.225,160.37119321022436,0);
		pin(39.025,40.225,172.92933274510807,0);
		pin(39.025,40.225,189.67351879161967,0);
		pin(39.025,40.225,231.53398390789874,0);
		pin(39.025,40.225,239.90607693115456,0);
		pin(39.025,40.225,252.4642164660383,0);
		pin(39.025,40.225,269.2084025125499,0);
		pin(39.025,40.225,306.88282111720105,0);
		pin(39.025,40.225,319.4409606520848,0);
		pin(39.025,40.225,327.8130536753406,0);
		pin(39.025,40.225,340.37119321022436,0);
		pin(40.225,41.425000000000004,106.0234202531871,0);
		pin(40.225,41.425000000000004,256.7210946717918,0);
		pin(41.8,43.0,181.4897745345417,0);
		pin(41.8,43.0,332.1874489531464,0);
		pin(43.0,44.2,81.08664151931298,0);
		pin(43.0,44.2,114.57501361233625,0);
		pin(43.0,44.2,160.62152524024324,0);
		pin(43.0,44.2,189.92385082163855,0);
		pin(43.0,44.2,240.15640896117344,0);
		pin(43.0,44.2,307.13315314721996,0);
		pin(43.0,44.2,315.50524617047574,0);
		pin(44.625,45.825,89.56480353102268,0);
		pin(44.625,45.825,156.5415477170692,0);
		pin(44.625,45.825,164.91364074032504,0);
		pin(44.625,45.825,231.89038492637152,0);
		pin(44.625,45.825,265.3787570193948,0);
		pin(44.625,45.825,311.4252686473018,0);
		pin(44.625,45.825,340.72759422869717,0);
		pin(45.825,47.025000000000006,18.4565885424641,0);
		pin(45.825,47.025000000000006,26.82868156571991,0);
		pin(45.825,47.025000000000006,43.57286761223154,0);
		pin(45.825,47.025000000000006,81.24728621688271,0);
		pin(45.825,47.025000000000006,89.61937924013854,0);
		pin(45.825,47.025000000000006,114.73565830990597,0);
		pin(45.825,47.025000000000006,160.78216993781297,0);
		pin(45.825,47.025000000000006,169.15426296106875,0);
		pin(45.825,47.025000000000006,185.8984490075804,0);
		pin(45.825,47.025000000000006,194.2705420308362,0);
		pin(45.825,47.025000000000006,236.13100714711527,0);
		pin(45.825,47.025000000000006,257.0612397052548,0);
		pin(45.825,47.025000000000006,265.4333327285106,0);
		pin(45.825,47.025000000000006,307.2937978447897,0);
		pin(45.825,47.025000000000006,315.6658908680455,0);
		pin(45.825,47.025000000000006,340.78216993781297,0);
		pin(47.355,48.555,22.731687268161686,0);
		pin(47.355,48.555,39.475873314673315,0);
		pin(47.355,48.555,77.15029191932447,0);
		pin(47.355,48.555,85.5223849425803,0);
		pin(47.355,48.555,106.45261750071981,0);
		pin(47.355,48.555,156.68517564025473,0);
		pin(47.355,48.555,165.05726866351054,0);
		pin(47.355,48.555,181.80145471002217,0);
		pin(47.355,48.555,190.173547733278,0);
		pin(47.355,48.555,232.03401284955703,0);
		pin(47.355,48.555,240.40610587281287,0);
		pin(47.355,48.555,261.3363384309524,0);
		pin(47.355,48.555,269.7084314542082,0);
		pin(47.355,48.555,311.5688965704873,0);
		pin(47.355,48.555,332.4991291286268,0);
		pin(48.555,49.755,1.8500652859390958,0);
		pin(48.555,49.755,10.22215830919491,0);
		pin(48.555,49.755,18.594251332450725,0);
		pin(48.555,49.755,31.152390867334447,0);
		pin(48.555,49.755,39.52448389059026,0);
		pin(48.555,49.755,47.89657691384607,0);
		pin(48.555,49.755,102.31518156500887,0);
		pin(48.555,49.755,110.68727458826469,0);
		pin(48.555,49.755,181.85006528593908,0);
		pin(48.555,49.755,215.33843737896234,0);
		pin(48.555,49.755,257.19890249524144,0);
		pin(48.555,49.755,328.3616931929158,0);
		pin(48.555,49.755,336.73378621617167,0);
		pin(50.114999999999995,51.315,6.117019540501418,0);
		pin(50.114999999999995,51.315,14.489112563757233,0);
		pin(50.114999999999995,51.315,27.047252098640953,0);
		pin(50.114999999999995,51.315,35.41934512189677,0);
		pin(50.114999999999995,51.315,43.79143814515258,0);
		pin(50.114999999999995,51.315,52.1635311684084,0);
		pin(50.114999999999995,51.315,106.58213581957119,0);
		pin(50.114999999999995,51.315,177.7449265172456,0);
		pin(50.114999999999995,51.315,186.11701954050142,0);
		pin(50.114999999999995,51.315,253.09376372654793,0);
		pin(50.114999999999995,51.315,261.4658567498037,0);
		pin(50.114999999999995,51.315,332.62864744747816,0);
		pin(51.315,52.515,148.48612257017922,0);
		pin(51.315,52.515,299.1837969887839,0);
		pin(52.91,54.11,223.90900819522346,0);
		pin(54.11,55.31,2.087684324736044,0);
		pin(54.11,55.31,6.273730836363951,0);
		pin(54.11,55.31,10.459777347991858,0);
		pin(54.11,55.31,14.645823859619766,0);
		pin(54.11,55.31,18.831870371247675,0);
		pin(54.11,55.31,31.390009906131393,0);
		pin(54.11,55.31,35.576056417759304,0);
		pin(54.11,55.31,48.13419595264302,0);
		pin(54.11,55.31,52.320242464270926,0);
		pin(54.11,55.31,123.48303316194537,0);
		pin(54.11,55.31,127.66907967357326,0);
		pin(54.11,55.31,131.85512618520116,0);
		pin(54.11,55.31,198.83187037124765,0);
		pin(54.11,55.31,203.0179168828756,0);
		pin(54.11,55.31,207.2039633945035,0);
		pin(54.11,55.31,215.5760564177593,0);
		pin(54.11,55.31,274.18070758055,0);
		pin(54.11,55.31,278.3667540921779,0);
		pin(54.11,55.31,282.55280060380585,0);
		pin(54.11,55.31,349.52954478985237,0);
		pin(54.11,55.31,353.7155913014803,0);
		pin(55.699999999999996,56.9,6.340327792295449,0);
		pin(55.699999999999996,56.9,10.526374303923355,0);
		pin(55.699999999999996,56.9,14.712420815551262,0);
		pin(55.699999999999996,56.9,18.89846732717917,0);
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
		pin(55.699999999999996,56.9,90.0612580248536,0);
		pin(55.699999999999996,56.9,94.24730453648151,0);
		pin(55.699999999999996,56.9,98.4333510481094,0);
		pin(55.699999999999996,56.9,102.61939755973731,0);
		pin(55.699999999999996,56.9,119.36358360624894,0);
		pin(55.699999999999996,56.9,123.54963011787687,0);
		pin(55.699999999999996,56.9,169.59614174578383,0);
		pin(55.699999999999996,56.9,173.78218825741175,0);
		pin(55.699999999999996,56.9,177.96823476903964,0);
		pin(55.699999999999996,56.9,194.71242081555127,0);
		pin(55.699999999999996,56.9,198.8984673271792,0);
		pin(55.699999999999996,56.9,207.270560350435,0);
		pin(55.699999999999996,56.9,215.64265337369082,0);
		pin(55.699999999999996,56.9,228.20079290857456,0);
		pin(55.699999999999996,56.9,240.75893244345824,0);
		pin(55.699999999999996,56.9,244.94497895508613,0);
		pin(55.699999999999996,56.9,249.13102546671405,0);
		pin(55.699999999999996,56.9,253.31707197834194,0);
		pin(55.699999999999996,56.9,270.0612580248536,0);
		pin(55.699999999999996,56.9,274.24730453648147,0);
		pin(55.699999999999996,56.9,282.61939755973725,0);
		pin(55.699999999999996,56.9,286.80544407136523,0);
		pin(55.699999999999996,56.9,290.99149058299315,0);
		pin(55.699999999999996,56.9,303.5496301178768,0);
		pin(55.699999999999996,56.9,316.10776965276057,0);
		pin(55.699999999999996,56.9,320.29381616438843,0);
		pin(55.699999999999996,56.9,324.4798626760164,0);
		pin(55.699999999999996,56.9,345.4100952341559,0);
		pin(55.699999999999996,56.9,349.5961417457838,0);
		pin(56.9,58.1,23.119910445618235,0);
		pin(56.9,58.1,27.30595695724614,0);
		pin(56.9,58.1,39.86409649212986,0);
		pin(56.9,58.1,44.05014300375777,0);
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

		title("Ray_Charles_-_What'd_I_Say",0);

		pin(27.95,29.15,234.23226351566626,1);
		pin(27.95,29.15,221.67412398078255,1);
		pin(27.95,29.15,213.30203095752677,1);
		pin(27.95,29.15,192.37179839938722,1);
		pin(27.95,29.15,183.9997053761314,1);
		pin(27.95,29.15,133.76714723659651,1);
		pin(27.95,29.15,121.2090077017128,1);
		pin(27.95,29.15,112.83691467845696,1);
		pin(27.95,29.15,104.46482165520115,1);
		pin(27.95,29.15,91.90668212031744,1);
		pin(27.95,29.15,24.929937934270924,1);
		pin(27.95,29.15,20.743891422643003,1);
		pin(27.95,29.15,16.557844911015138,1);
		pin(27.95,29.15,12.371798399387217,1);
		pin(27.95,29.15,8.185751887759295,1);
		pin(29.15,30.349999999999998,225.72527317786978,1);
		pin(29.15,30.349999999999998,217.35318015461397,1);
		pin(29.15,30.349999999999998,208.98108713135815,1);
		pin(29.15,30.349999999999998,188.05085457321863,1);
		pin(29.15,30.349999999999998,179.6787615499628,1);
		pin(29.15,30.349999999999998,129.4462034104279,1);
		pin(29.15,30.349999999999998,116.88806387554419,1);
		pin(29.15,30.349999999999998,108.51597085228835,1);
		pin(29.15,30.349999999999998,95.95783131740467,1);
		pin(29.15,30.349999999999998,87.58573829414883,1);
		pin(29.15,30.349999999999998,28.981087131358095,1);
		pin(29.15,30.349999999999998,20.60899410810231,1);
		pin(29.15,30.349999999999998,12.236901084846522,1);
		pin(30.69,31.89,242.2552264742327,1);
		pin(30.69,31.89,200.39476135795363,1);
		pin(30.69,31.89,171.09243577655826,1);
		pin(30.69,31.89,162.72034275330248,1);
		pin(30.69,31.89,154.34824973004666,1);
		pin(30.69,31.89,141.7901101951629,1);
		pin(31.89,33.09,363.53786844785935,1);
		pin(31.89,33.09,350.97972891297565,1);
		pin(31.89,33.09,342.6076358897198,1);
		pin(31.89,33.09,330.0494963548361,1);
		pin(31.89,33.09,321.6774033315803,1);
		pin(31.89,33.09,313.30531030832447,1);
		pin(31.89,33.09,300.74717077344076,1);
		pin(31.89,33.09,292.3750777501849,1);
		pin(31.89,33.09,279.8169382153012,1);
		pin(31.89,33.09,263.0727521687896,1);
		pin(31.89,33.09,250.51461263390587,1);
		pin(31.89,33.09,237.9564730990221,1);
		pin(31.89,33.09,229.58438007576632,1);
		pin(31.89,33.09,225.39833356413843,1);
		pin(31.89,33.09,221.21228705251053,1);
		pin(31.89,33.09,212.8401940292547,1);
		pin(31.89,33.09,208.65414751762677,1);
		pin(31.89,33.09,204.46810100599888,1);
		pin(31.89,33.09,196.09600798274306,1);
		pin(31.89,33.09,187.72391495948725,1);
		pin(31.89,33.09,183.53786844785935,1);
		pin(31.89,33.09,179.35182193623143,1);
		pin(31.89,33.09,175.1657754246035,1);
		pin(31.89,33.09,166.79368240134772,1);
		pin(31.89,33.09,158.42158937809188,1);
		pin(31.89,33.09,145.86344984320817,1);
		pin(31.89,33.09,137.49135681995236,1);
		pin(31.89,33.09,129.11926379669657,1);
		pin(31.89,33.09,124.93321728506862,1);
		pin(31.89,33.09,120.74717077344073,1);
		pin(31.89,33.09,116.56112426181281,1);
		pin(31.89,33.09,108.18903123855702,1);
		pin(31.89,33.09,104.0029847269291,1);
		pin(31.89,33.09,99.8169382153012,1);
		pin(31.89,33.09,95.63089170367329,1);
		pin(31.89,33.09,91.44484519204536,1);
		pin(31.89,33.09,83.07275216878958,1);
		pin(31.89,33.09,74.70065914553373,1);
		pin(31.89,33.09,66.32856612227795,1);
		pin(31.89,33.09,53.770426587394184,1);
		pin(31.89,33.09,45.3983335641384,1);
		pin(31.89,33.09,24.468101005998903,1);
		pin(31.89,33.09,16.09600798274306,1);
		pin(33.51,34.71,317.3031393228725,1);
		pin(33.51,34.71,304.7449997879887,1);
		pin(33.51,34.71,296.37290676473293,1);
		pin(33.51,34.71,288.0008137414771,1);
		pin(33.51,34.71,271.25662769496546,1);
		pin(33.51,34.71,78.69848816008175,1);
		pin(33.51,34.71,70.32639513682591,1);
		pin(33.51,34.71,20.093836997291078,1);
		pin(33.51,34.71,11.721743974035235,1);
		pin(34.71,35.910000000000004,354.8824244157151,1);
		pin(34.71,35.910000000000004,346.51033139245925,1);
		pin(34.71,35.910000000000004,338.13823836920346,1);
		pin(34.71,35.910000000000004,325.5800988343197,1);
		pin(34.71,35.910000000000004,275.3475406947848,1);
		pin(34.71,35.910000000000004,266.975447671529,1);
		pin(34.71,35.910000000000004,258.6033546482732,1);
		pin(34.71,35.910000000000004,246.04521511338947,1);
		pin(34.71,35.910000000000004,237.67312209013363,1);
		pin(34.71,35.910000000000004,233.48707557850577,1);
		pin(34.71,35.910000000000004,199.99870348548248,1);
		pin(34.71,35.910000000000004,195.8126569738546,1);
		pin(34.71,35.910000000000004,170.69637790408714,1);
		pin(34.71,35.910000000000004,166.51033139245922,1);
		pin(34.71,35.910000000000004,158.1382383692034,1);
		pin(34.71,35.910000000000004,153.9521918575755,1);
		pin(34.71,35.910000000000004,149.7661453459476,1);
		pin(34.71,35.910000000000004,145.58009883431973,1);
		pin(34.71,35.910000000000004,141.39405232269178,1);
		pin(34.71,35.910000000000004,133.02195929943593,1);
		pin(34.71,35.910000000000004,61.85916860176155,1);
		pin(34.71,35.910000000000004,49.301029066877845,1);
		pin(36.224999999999994,37.425,317.0568481290643,1);
		pin(36.224999999999994,37.425,312.8708016174364,1);
		pin(36.224999999999994,37.425,308.6847551058085,1);
		pin(36.224999999999994,37.425,304.4987085941806,1);
		pin(36.224999999999994,37.425,300.31266208255266,1);
		pin(36.224999999999994,37.425,291.9405690592969,1);
		pin(36.224999999999994,37.425,287.75452254766896,1);
		pin(36.224999999999994,37.425,283.56847603604103,1);
		pin(36.224999999999994,37.425,78.45219696627362,1);
		pin(36.224999999999994,37.425,74.2661504546457,1);
		pin(36.224999999999994,37.425,65.89405743138985,1);
		pin(36.224999999999994,37.425,24.033592315110866,1);
		pin(36.224999999999994,37.425,19.84754580348283,1);
		pin(36.224999999999994,37.425,15.661499291854966,1);
		pin(36.224999999999994,37.425,11.475452780227101,1);
		pin(36.224999999999994,37.425,7.28940626859918,1);
		pin(37.425,38.625,358.8354843789763,1);
		pin(37.425,38.625,350.4633913557205,1);
		pin(37.425,38.625,337.9052518208368,1);
		pin(37.425,38.625,329.53315879758094,1);
		pin(37.425,38.625,279.30060065804605,1);
		pin(37.425,38.625,270.92850763479026,1);
		pin(37.425,38.625,258.37036809990656,1);
		pin(37.425,38.625,249.9982750766507,1);
		pin(37.425,38.625,61.62618205339493,1);
		pin(37.425,38.625,53.254089030139085,1);
		pin(39.025,40.225,354.5125277200082,1);
		pin(39.025,40.225,341.9543881851245,1);
		pin(39.025,40.225,333.58229516186873,1);
		pin(39.025,40.225,321.02415562698496,1);
		pin(39.025,40.225,274.977643999078,1);
		pin(39.025,40.225,262.4195044641943,1);
		pin(39.025,40.225,254.0474114409385,1);
		pin(39.025,40.225,245.67531841768266,1);
		pin(39.025,40.225,57.30322539442682,1);
		pin(39.025,40.225,48.931132371170975,1);
		pin(43.0,44.2,299.84359103882656,1);
		pin(43.0,44.2,291.4714980155708,1);
		pin(44.625,45.825,295.55147553874474,1);
		pin(44.625,45.825,23.458452282930807,1);
		pin(45.825,47.025000000000006,337.357364945908,1);
		pin(45.825,47.025000000000006,61.078295178466135,1);
		pin(45.825,47.025000000000006,35.96201610869866,1);
		pin(45.825,47.025000000000006,27.589923085442877,1);
		pin(47.355,48.555,333.0822662202104,1);
		pin(47.355,48.555,40.0590104062569,1);
		pin(47.355,48.555,31.686917383001116,1);
		pin(47.355,48.555,23.314824359745273,1);
		pin(48.555,49.755,291.1731905280144,1);
		pin(48.555,49.755,65.12667890010744,1);
		pin(50.114999999999995,51.315,286.90623627345207,1);
		pin(50.114999999999995,51.315,23.18530604089392,1);
		pin(51.315,52.515,328.7231797554022,1);
		pin(51.315,52.515,257.5603890577278,1);
		pin(51.315,52.515,215.69992394144867,1);
		pin(51.315,52.515,173.83945882516963,1);
		pin(51.315,52.515,85.93248208098362,1);
		pin(51.315,52.515,65.00224952284407,1);
		pin(51.315,52.515,31.51387742982081,1);
		pin(52.91,54.11,278.4165732001254,1);
		pin(52.91,54.11,253.30029413035797,1);
		pin(52.91,54.11,211.43982901407887,1);
		pin(52.91,54.11,90.04448017686951,1);
		pin(52.91,54.11,81.67238715361373,1);
		pin(52.91,54.11,35.625875525706704,1);
		pin(52.91,54.11,27.253782502450917,1);
		pin(54.11,55.31,320.2378970706128,1);
		pin(54.11,55.31,286.74952497758954,1);
		pin(54.11,55.31,282.5634784659616,1);
		pin(54.11,55.31,23.0285947450314,1);
		pin(55.699999999999996,56.9,324.3573466263092,1);
		pin(55.699999999999996,56.9,249.00850941700685,1);
		pin(55.699999999999996,56.9,211.3340908123557,1);
		pin(55.699999999999996,56.9,207.1480443007278,1);
		pin(55.699999999999996,56.9,110.86897453328595,1);
		pin(55.699999999999996,56.9,27.14804430072786,1);
		pin(56.9,58.1,244.78706629856782,1);
		pin(56.9,58.1,240.6010197869399,1);
		pin(56.9,58.1,236.41497327531198,1);
		pin(56.9,58.1,232.2289267636841,1);
		pin(56.9,58.1,207.11264769391664,1);
		pin(56.9,58.1,202.92660118228875,1);
		pin(56.9,58.1,198.74055467066083,1);
		pin(56.9,58.1,194.5545081590329,1);
		pin(56.9,58.1,169.4382290892655,1);
		pin(56.9,58.1,156.88008955438175,1);
		pin(56.9,58.1,152.69404304275386,1);
		pin(56.9,58.1,148.50799653112597,1);
		pin(56.9,58.1,140.13590350787013,1);
		pin(56.9,58.1,131.7638104846143,1);
		pin(56.9,58.1,115.01962443810268,1);
		pin(56.9,58.1,81.53125234507945,1);

		title("Simon_and_Garfunkel_-_Sounds_of_Silence",1);


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
