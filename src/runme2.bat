echo off
cls
echo Batch File Preperation file for Fisher Price Records written By Russ Campbell
echo Batch file Update on June 21 2024 at 12 Noon
echo This batch file will create the OpenScad File needed for the Fisher Price Records
;
echo All you have to do is type in the name of one of the MIDI files without
echo the .MID Extender. From there you just load the SCAD file into Open Scad
echo then export either an STL or any other 3D printer file.
;
set path=c:\Fisher-Price-Menu
dir %path%\midi\*.mid /W
;  
set /p UserInputFile1=Please enter the first  filename [Without Extender] : 
set /p UserInputFile2=Please enter the second filename [Without Extender] : 
set /p UserInputFile3=Please enter the BPM of the first Midi File          : 
set /p UserInputFile4=Please enter the BPM of the second Midi File         : 
%path%\src\music_box_tracker.py --mid %path%\midi\%UserInputFile1%.mid --audio midi --port 0 --bpm %UserInputFile3%
%path%\src\music_box_tracker.py --mid %path%\midi\%UserInputFile2%.mid --audio midi --port 0 --bpm %UserInputFile4%
;
echo Writing scad file ....
copy %path%\midi\%UserInputFile1%.fpr %path%\fpr\%UserInputFile1%.fpr
copy %path%\midi\%UserInputFile2%.fpr %path%\fpr\%UserInputFile2%.fpr
erase %path%\midi\%UserInputFile1%.fpr
erase %path%\midi\%UserInputFile2%.fpr
%path%\src\fpr_to_scad.py --fpr %path%\fpr\%UserInputFile1%.fpr --fprverso %path%\fpr\%UserInputFile2%.fpr --scad %path%\scad\%UserInputFile1%_And_%UserInputFile2%.scad --thickness 5
;
dir %path%\scad\*.scad /W
echo Done
;
pause
