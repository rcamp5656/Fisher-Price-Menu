/* This file has been generated by Fred's Fisher Price record creator v2.1.0.0 on 05 Jan 2020 19:50
 * http://www.instructables.com/id/3D-printing-records-for-a-Fisher-Price-toy-record-/
 *
 * Press F6 to view your model in OpenSCAD
 * Then you cn export as STL for printing
 */

// Configuration
$fn = 100;
hStock = 5;
rStock = 60.58;
oDrive = 21.8;
rDrive = 1.55;
hInset = 1;
rInset = 25.6;
hGroove = 1.2;
overlap = 0.2;

hasSecondSide = 1;

// Some very useful code by HarlanDMii
// http://www.thingiverse.com/thing:16193
// Disabled as some people had problems with it
// use <write.scad>

// Create disc
module createDisc() {
	union() {

		createBlank();

		// Add the notes for the song. This part is dynamically generated.
		// Autogenerated pins for music tracks
		pin(30.69,31.89,-3.65057531144201,0);
		pin(30.69,31.89,4.72151771181381,0);
		pin(30.69,31.89,13.0936107350696,0);
		pin(30.69,31.89,21.4657037583254,0);
		pin(30.69,31.89,29.8377967815813,0);
		pin(30.69,31.89,38.2098898048371,0);
		pin(30.69,31.89,46.5819828280929,0);
		pin(30.69,31.89,54.9540758513487,0);
		pin(30.69,31.89,63.3261688746045,0);
		pin(30.69,31.89,71.6982618978603,0);
		pin(30.69,31.89,80.0703549211161,0);
		pin(30.69,31.89,88.442447944372,0);
		pin(30.69,31.89,96.8145409676278,0);
		pin(30.69,31.89,105.186633990884,0);
		pin(30.69,31.89,113.558727014139,0);
		pin(30.69,31.89,121.930820037395,0);
		pin(30.69,31.89,130.302913060651,0);
		pin(30.69,31.89,138.675006083907,0);
		pin(30.69,31.89,147.047099107163,0);
		pin(30.69,31.89,155.419192130418,0);
		pin(30.69,31.89,163.791285153674,0);
		pin(30.69,31.89,172.16337817693,0);
		pin(30.69,31.89,180.535471200186,0);
		pin(30.69,31.89,188.907564223442,0);
		pin(30.69,31.89,197.279657246698,0);
		pin(30.69,31.89,205.651750269953,0);
		pin(30.69,31.89,214.023843293209,0);
		pin(30.69,31.89,222.395936316465,0);
		pin(30.69,31.89,230.768029339721,0);
		pin(30.69,31.89,239.140122362977,0);
		pin(30.69,31.89,247.512215386232,0);
		pin(30.69,31.89,255.884308409488,0);
		pin(30.69,31.89,264.256401432744,0);
		pin(30.69,31.89,272.628494456,0);
		pin(30.69,31.89,281.000587479256,0);
		pin(30.69,31.89,289.372680502512,0);
		pin(30.69,31.89,297.744773525767,0);
		pin(30.69,31.89,306.116866549023,0);
		pin(30.69,31.89,314.488959572279,0);
		pin(30.69,31.89,322.861052595535,0);
		pin(30.69,31.89,331.233145618791,0);
		pin(30.69,31.89,339.605238642046,0);
		pin(30.69,31.89,347.977331665302,0);

		title("TEST",0);

		// Autogenerated pins for music tracks
		pin(27.95,29.15,363.999705376131,1);
		pin(27.95,29.15,238.418310027294,1);
		pin(27.95,29.15,112.836914678457,1);
		pin(29.15,30.35,359.678761549963,1);
		pin(29.15,30.35,242.469459224381,1);
		pin(29.15,30.35,234.097366201126,1);
		pin(29.15,30.35,116.888063875544,1);
		pin(29.15,30.35,108.515970852288,1);
		pin(30.69,31.89,355.278482288186,1);
		pin(30.69,31.89,246.441272985861,1);
		pin(30.69,31.89,229.697086939349,1);
		pin(30.69,31.89,120.859877637023,1);
		pin(30.69,31.89,104.115691590512,1);
		pin(31.89,33.09,350.979728912976,1);
		pin(31.89,33.09,250.514612633906,1);
		pin(31.89,33.09,225.398333564138,1);
		pin(31.89,33.09,124.933217285069,1);
		pin(31.89,33.09,99.8169382153012,1);
		pin(33.51,34.71,346.605464904268,1);
		pin(33.51,34.71,254.512441648454,1);
		pin(33.51,34.71,221.024069555431,1);
		pin(33.51,34.71,128.931046299617,1);
		pin(33.51,34.71,95.4426742065934,1);
		pin(34.71,35.91,342.324284880831,1);
		pin(34.71,35.91,258.603354648273,1);
		pin(34.71,35.91,216.742889531994,1);
		pin(34.71,35.91,133.021959299436,1);
		pin(34.71,35.91,91.1614941831569,1);
		pin(34.71,35.91,7.44056395059874,1);
		pin(36.225,37.425,337.987080687204,1);
		pin(36.225,37.425,262.638243477902,1);
		pin(36.225,37.425,212.405685338367,1);
		pin(36.225,37.425,137.056848129064,1);
		pin(36.225,37.425,86.8242899895294,1);
		pin(36.225,37.425,11.4754527802271,1);
		pin(37.425,38.625,333.719205309209,1);
		pin(37.425,38.625,208.137809960372,1);
		pin(37.425,38.625,82.5564146115344,1);
		pin(39.025,40.225,266.605550975822,1);
		pin(39.025,40.225,141.024155626985,1);
		pin(39.025,40.225,15.4427602781477,1);
		pin(40.225,41.425,329.325416956115,1);
		pin(40.225,41.425,203.744021607278,1);
		pin(40.225,41.425,78.1626262584408,1);
		pin(41.8,43,270.603248721272,1);
		pin(41.8,43,145.021853372435,1);
		pin(41.8,43,19.4404580235978,1);
		pin(43,44.2,324.959870108594,1);
		pin(43,44.2,199.378474759757,1);
		pin(43,44.2,73.7970794109196,1);
		pin(44.625,45.825,274.621242980605,1);
		pin(44.625,45.825,149.039847631768,1);
		pin(44.625,45.825,23.4584522829308,1);
		pin(45.825,47.025,320.613178899396,1);
		pin(45.825,47.025,195.031783550559,1);
		pin(45.825,47.025,69.4503882017219,1);
		pin(47.355,48.555,278.663661569048,1);
		pin(47.355,48.555,153.08226622021,1);
		pin(47.355,48.555,27.5008708713732,1);
		pin(48.555,49.755,316.289469597782,1);
		pin(48.555,49.755,190.708074248945,1);
		pin(48.555,49.755,65.1266789001074,1);
		pin(50.115,51.315,282.720189761824,1);
		pin(50.115,51.315,157.138794412987,1);
		pin(50.115,51.315,31.5573990641498,1);
		pin(51.315,52.515,311.978993708891,1);
		pin(51.315,52.515,186.397598360053,1);
		pin(51.315,52.515,60.8162030112161,1);
		pin(52.91,54.11,286.788666223381,1);
		pin(52.91,54.11,161.207270874544,1);
		pin(52.91,54.11,35.6258755257067,1);
		pin(54.11,55.31,307.679757535729,1);
		pin(54.11,55.31,290.935571489217,1);
		pin(54.11,55.31,182.098362186892,1);
		pin(54.11,55.31,165.35417614038,1);
		pin(54.11,55.31,56.5169668380547,1);
		pin(54.11,55.31,39.772780791543,1);
		pin(55.7,56.9,303.42711406817,1);
		pin(55.7,56.9,295.055021044914,1);
		pin(55.7,56.9,177.845718719332,1);
		pin(55.7,56.9,169.473625696077,1);
		pin(55.7,56.9,52.2643233704953,1);
		pin(55.7,56.9,43.8922303472394,1);
		pin(56.9,58.1,299.205670949731,1);
		pin(56.9,58.1,173.624275600893,1);
		pin(56.9,58.1,48.0428802520561,1);

		title("TEST2",1);


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

// Add text
module title(text, onSecondSide)
{
// Disabled as some people had trouble with it
//	if (onSecondSide>0)
//		writecylinder(text, [0,0,-hInset], radius=20, height=hStock-hInset, h=3, t=hInset, face="bottom");
//	else
//		writecylinder(text, [0,0,0], radius=20, height=hStock-hInset, h=3, t=hInset, face="top");
}

// Do the work
createDisc();
