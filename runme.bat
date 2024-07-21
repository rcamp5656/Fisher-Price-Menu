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
%path%\src\music_box_tracker.py --mid %path%\midi\%UserInputFile1%.mid --audio midi --bpm 56 --offset 32
%path%\src\music_box_tracker.py --mid %path%\midi\%UserInputFile2%.mid --audio midi --bpm 56 --offset 32
;
echo Writing scad file ....
copy %path%\midi\%UserInputFile1%.fpr %path%\fpr\%UserInputFile1%.fpr
copy %path%\midi\%UserInputFile2%.fpr %path%\fpr\%UserInputFile2%.fpr
erase %path%\midi\%UserInputFile1%.fpr
erase %path%\midi\%UserInputFile2%.fpr

;
%path%\src\fpr_to_scad.py --fpr %path%\midi\%UserInputFile1%.fpr --fprverso %path%\midi\%UserInputFile2%.fpr --scad %path%\midi\%UserInputFile1%_And_%UserInputFile2%.scad --thickness 5
;
%path%\src\fpr_to_scad.py --fpr %path%\midi\%UserInputFile1%.fpr --scad %path%\scad\%UserInputFile1%.scad --thickness 3
;
%path%\src\fpr_to_scad.py --fpr %path%\midi\%UserInputFile2%.fpr --scad %path%\scad\%UserInputFile2%.scad --thickness 3
;
copy %path%\midi\%UserInputFile1%_And_%UserInputFile2%.scad %path%\midi\%UserInputFile1%_And_%UserInputFile2%.scad
;
copy %path%\midi\%UserInputFile1%.scad %path%\scad\%UserInputFile1%.scad
;
copy %path%\midi\%UserInputFile2%.scad %path%\scad\%UserInputFile2%.scad

erase %path%\midi\%UserInputFile1%.fpr
erase %path%\midi\%UserInputFile2%.fpr
erase %path%\midi\%UserInputFile1%.scad
erase %path%\midi\%UserInputFile2%.scad
;
;
dir %path%\scad\*.scad /W
echo Done
;
pause
