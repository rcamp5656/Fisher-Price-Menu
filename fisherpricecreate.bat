@echo off
cls
echo Batch File Preperation file for Fisher Price Records written By Russ Campbell Batch file Update on September 30th 2024 at 00:01 AM
echo This batch file will create the OpenScad Files needed for the Fisher Price Records
echo ;
echo All you have to do is type in the names of the MIDI files without the .MID Extender. From there you just load the SCAD files into
echo Open Scad then export either an STL or any other 3D printer file.
echo ;
echo This batch file will ask you for 8 different MIDI files to import Music Box Mania. Without using the website Music Box Mania and setting the 
echo exported files to kikkimen 15 you will get gibberish on your Fisher Price Music Box Record Player disks.
echo;
echo There is a new feature that allows you to refine the tempo of the MIDI song before you put in on the disk, this feature is quite handy.
echo Now the batch file will do both single sided or double sided disks , no more need to have two batch files.
echo ;
pause
echo ;
set path=c:\Fisher-Price-Menu

CLS
echo ;
echo Have you imported the MIDI files into Music Maniacs yet ? Regular echo MIDI files will not work. If you have not done this and are importing regular echo MIDI files then echo hit CNTRL-C and do this first, export them as Kikkerland 15 files then save them with the following in the end of the
echo file: _-_T_ , that specified the Tempo of the file a good suggestion as its hard to remember all of the file temps for example 'Stand By Me' 
echo could have a Tempo of 89 BPM so put in the Artist-_-Name_Of_Song_-_T_89 the .mid, .fpr, and .scad extenders will automatically be added 
echo in both the exported files and this batch file.
pause

;
dir %path%\maniacs\*.mid /W
; 
set /p UserInputFile1=Please enter the first   filename [Without Extender] 
:first
set /p UserTempo1=Enter the Tempo For the 1st  MIDI File   : 
%path%\src\music_box_tracker.py --maniacs %path%\maniacs\%UserInputFile1%.mid --audio midi --bpm %UserTempo1% --low --title %UserInputFile1% --port 1
set /p YesNo=Refine Tempo of %UserInputFile1% [Y/N] : 
if %YesNo%==Y goto first
if %YesNo%==y goto first

set /p UserInputFile2=Please enter the second  filename [Without Extender] 
:second
set /p UserTempo2=Enter the Tempo for the 2nd  MIDI File   : 
%path%\src\music_box_tracker.py --maniacs %path%\maniacs\%UserInputFile2%.mid --audio midi --bpm %UserTempo2% --low --title %UserInputFile2% --port 1
set /p YesNo=Refine tempo of %UserInputFile2% [Y/N] : 
if %YesNo%==Y goto second
if %YesNo%==y goto second

set /p UserInputFile3=Please enter the third   filename [Without Extender] 
:third
set /p UserTempo3=Enter the Tempo for the 3rd  MIDI File   : 
%path%\src\music_box_tracker.py --maniacs %path%\maniacs\%UserInputFile3%.mid --audio midi --bpm %UserTempo3% --low --title %UserInputFile3% --port 1
set /p YesNo=Refine tempo of %UserInputFile3% [Y/N] : 
if %YesNo%==Y goto third
if %YesNo%==y goto third

set /p UserInputFile4=Please enter the fourth  filename [Without Extender] 
:fourth
set /p UserTempo4=Enter the Tempo for the 4th  MIDI File   : 
%path%\src\music_box_tracker.py --maniacs %path%\maniacs\%UserInputFile4%.mid --audio midi --bpm %UserTempo4% --low --title %UserInputFile4% --port 1
set /p YesNo=Refine tempo of %UserInputFile4% [Y/N] : 
if %YesNo%==Y goto fourth
if %YesNo%==y goto fourth

set /p UserInputFile5=Please enter the fifth   filename [Without Extender] 
:fifth
set /p UserTempo5=Enter the Tempo for the 5th  MIDI File   : 
%path%\src\music_box_tracker.py --maniacs %path%\maniacs\%UserInputFile5%.mid --audio midi --bpm %UserTempo5% --low --title %UserInputFile5% --port 1
set /p YesNo=Refine tempo of %UserInputFile5% [Y/N] : 
if %YesNo%==Y goto fifth
if %YesNo%==y goto fifth

set /p UserInputFile6=Please enter the sixth   filename [Without Extender] 
:sixth
set /p UserTempo6=Enter the Tempo for the 6th  MIDI File   : 
%path%\src\music_box_tracker.py --maniacs %path%\maniacs\%UserInputFile6%.mid --audio midi --bpm %UserTempo6% --low --title %UserInputFile6% --port 1
set /p YesNo=Refine tempo of %UserInputFile6% [Y/N] : 
if %YesNo%==Y goto sixth
if %YesNo%==y goto sixth

set /p UserInputFile7=Please enter the seventh filename [Without Extender] 
:seventh
set /p UserTempo7=Enter the Tempo for the 7th  MIDI File   : 
%path%\src\music_box_tracker.py --maniacs %path%\maniacs\%UserInputFile7%.mid --audio midi --bpm %UserTempo7% --low --title %UserInputFile7% --port 1
set /p YesNo=Refine tempo of %UserInputFile7% [Y/N] : 
if %YesNo%==Y goto seventh
if %YesNo%==y goto seventh
set /p UserInputFile8=Please enter the eighth  filename [Without Extender] 
:eighth
set /p UserTempo8=Enter The Tempo for the 8th  MIDI File   : 
%path%\src\music_box_tracker.py --maniacs %path%\maniacs\%UserInputFile8%.mid --audio midi --bpm %UserTempo8% --low --title %UserInputFile8% --port 1
set /p YesNo=Refine tempo of %UserInputFile8% [Y/N] : 
if %YesNo%==Y goto eighth
if %YesNo%==y goto eighth
echo ;
cls
echo ;
echo Creating FPR Files ...
pause

copy %path%\maniacs\%UserInputFile1%.fpr %path%\fpr\%UserInputFile1%.fpr
copy %path%\maniacs\%UserInputFile2%.fpr %path%\fpr\%UserInputFile2%.fpr
copy %path%\maniacs\%UserInputFile3%.fpr %path%\fpr\%UserInputFile3%.fpr
copy %path%\maniacs\%UserInputFile4%.fpr %path%\fpr\%UserInputFile4%.fpr
copy %path%\maniacs\%UserInputFile5%.fpr %path%\fpr\%UserInputFile5%.fpr
copy %path%\maniacs\%UserInputFile6%.fpr %path%\fpr\%UserInputFile6%.fpr
copy %path%\maniacs\%UserInputFile7%.fpr %path%\fpr\%UserInputFile7%.fpr
copy %path%\maniacs\%UserInputFile8%.fpr %path%\fpr\%UserInputFile8%.fpr



echo ;

set /p choice=Single or Double Sided Disks [S] [D] : 
if %choice%==D goto double
if %choice%==d goto double
if %choice%==S goto single
if %choice%==s goto single
;
:single
echo creating Single Sided Scad Files...
echo ;
%path%\src\fpr_to_scad.py --fpr %path%\fpr\%UserInputFile1%.fpr --scad %path%\scad\%UserInputFile1%.scad --thickness 3
%path%\src\fpr_to_scad.py --fpr %path%\fpr\%UserInputFile2%.fpr --scad %path%\scad\%UserInputFile2%.scad --thickness 3
%path%\src\fpr_to_scad.py --fpr %path%\fpr\%UserInputFile3%.fpr --scad %path%\scad\%UserInputFile3%.scad --thickness 3
%path%\src\fpr_to_scad.py --fpr %path%\fpr\%UserInputFile4%.fpr --scad %path%\scad\%UserInputFile4%.scad --thickness 3
%path%\src\fpr_to_scad.py --fpr %path%\fpr\%UserInputFile5%.fpr --scad %path%\scad\%UserInputFile5%.scad --thickness 3
%path%\src\fpr_to_scad.py --fpr %path%\fpr\%UserInputFile6%.fpr --scad %path%\scad\%UserInputFile6%.scad --thickness 3
%path%\src\fpr_to_scad.py --fpr %path%\fpr\%UserInputFile7%.fpr --scad %path%\scad\%UserInputFile7%.scad --thickness 3
%path%\src\fpr_to_scad.py --fpr %path%\fpr\%UserInputFile8%.fpr --scad %path%\scad\%UserInputFile8%.scad --thickness 3
echo ;
goto eraseit
echo creating Double Sided Scad Files...
:double
echo ;
%path%\src\fpr_to_scad.py --fpr %path%\fpr\%UserInputFile1%.fpr --fprverso %path%\fpr\%UserInputFile2%.fpr --scad %path%\scad\%UserInputFile1%_And_%UserInputFile2%.scad --thickness 5
%path%\src\fpr_to_scad.py --fpr %path%\fpr\%UserInputFile3%.fpr --fprverso %path%\fpr\%UserInputFile4%.fpr --scad %path%\scad\%UserInputFile3%_And_%UserInputFile4%.scad --thickness 5
%path%\src\fpr_to_scad.py --fpr %path%\fpr\%UserInputFile5%.fpr --fprverso %path%\fpr\%UserInputFile6%.fpr --scad %path%\scad\%UserInputFile5%_And_%UserInputFile6%.scad --thickness 5
%path%\src\fpr_to_scad.py --fpr %path%\fpr\%UserInputFile7%.fpr --fprverso %path%\fpr\%UserInputFile8%.fpr --scad %path%\scad\%UserInputFile7%_And_%UserInputFile8%.scad --thickness 5
goto eraseit
echo ;
echo ;
:eraseit
erase %path%\maniacs\*.fpr
echo ;
dir %path%\scad\*.scad /W
echo Done
;
pause
