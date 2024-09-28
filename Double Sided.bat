echo off
cls
echo Batch File Preperation file for Fisher Price Records written By Russ Campbell Batch file Update on September 25 2024 at 12 Noon
echo This batch file will create the OpenScad Files needed for the Fisher Price Records, please note that these records are two sided.
echo ;
echo All you have to do is type in the names of the MIDI files without the .MID Extender. From there you just load the SCAD files into
echo Open Scad then export either an STL or any other 3D printer file.
echo ;
echo This batch file will ask you for 8 different MIDI files to import Music Box Mania. Without using the website Music Box Mania and setting the 
echo exported files to kikkimen 15 you will get gibberish on your Fisher Price Music Box Record Player disks.
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

;
dir %path%\maniacs\*.mid /W
; 
set /p UserInputFile1=Please enter the first   filename [Without Extender] 
set /p UserInputFile2=Please enter the second  filename [Without Extender] 
set /p UserInputFile3=Please enter the third   filename [Without Extender] 
set /p UserInputFile4=Please enter the fouth   filename [Without Extender] 
set /p UserInputFile5=Please enter the fifth   filename [Without Extender] 
set /p UserInputFile6=Please enter the sixth   filename [Without Extender] 
set /p UserInputFile7=Please enter the seventh filename [Without Extender] 
set /p UserInputFile8=Please enter the eighth  filename [Without Extender] 
echo ;
set /p UserTempo1=Enter the Tempo For the 1st  MIDI File   : 
set /p UserTempo2=Enter the Tempo for the 2nd  MIDI File   : 
set /p UserTempo3=Enter the Tempo for the 3rd  MIDI File   : 
set /p UserTempo4=Enter the Tempo for the 4th  MIDI File   : 
set /p UserTempo5=Enter the Tempo for the 5th  MIDI File   : 
set /p UserTempo6=Enter the Tempo for the 6th  MIDI File   : 
set /p UserTempo7=Enter the Tempo for the 7th  MIDI File   : 
set /p UserTempo8=Enter The Tempo for the 8th  MIDI File   : 
echo ;
echo Creating FPR Files ...
echo ;
echo In this section you can enter up to 100 percent more in the adjustment for all of
echo the tempo of the midi songs that you have entered , with a little bit of trial and error
echo you can get a fairly good sounding Fisher Price Music Box Record. So basically you are
echo adjusting from 1 percent to 100 percent. Keep it whole numbers please.
echo ;
set /p percent=Enter The percentage adjustment for the tempo for all of the midi songs : 
echo ;
set /a "offset1=UserTempo1*(percent %%% 101)/100"
set /a "offset2=UserTempo2*(percent %%% 101)/100"
set /a "offset3=UserTempo3*(percent %%% 101)/100"
set /a "offset4=UserTempo4*(percent %%% 101)/100"
set /a "offset5=UserTempo5*(percent %%% 101)/100"
set /a "offset6=UserTempo6*(percent %%% 101)/100"
set /a "offset7=UserTempo7*(percent %%% 101)/100"
set /a "offset8=UserTempo8*(percent %%% 101)/100"
echo ;
echo Offset1=%offset1%
echo Offset2=%offset2%
echo Offset3=%offset3%
echo Offset4=%offset4%
echo Offset5=%offset5%
echo Offset6=%offset6%
echo Offset7=%offset7%
echo Offset8=%offset8%
echo ;
set /a UserTempo1=UserTempo1+offset1
set /a UserTempo2=UserTempo2+offset2
set /a UserTempo3=UserTempo3+offset3
set /a UserTempo4=UserTempo4+offset4
set /a UserTempo5=UserTempo5+offset5
set /a UserTempo6=UserTempo6+offset6
set /a UserTempo7=UserTempo7+offset7
set /a UserTempo8=UserTempo8+offset8
echo ;
echo UserTempo1=%UserTempo1%
echo UserTempo2=%UserTempo2%
echo UserTempo3=%UserTempo3%
echo UserTempo4=%UserTempo4%
echo UserTempo5=%UserTempo5%
echo UserTempo6=%UserTempo6%
echo UserTempo7=%UserTempo7%
echo UserTempo8=%UserTempo8%
echo ;
echo ;
pause
echo ;
echo Creating FPR Files ...

echo ;
%path%\src\music_box_tracker.py --maniacs %path%\maniacs\%UserInputFile1%.mid --audio midi --bpm %UserTempo1% --low --title %UserInputFile1% --port 1
%path%\src\music_box_tracker.py --maniacs %path%\maniacs\%UserInputFile2%.mid --audio midi --bpm %UserTempo2% --low --title %UserInputFile2% --port 1
%path%\src\music_box_tracker.py --maniacs %path%\maniacs\%UserInputFile3%.mid --audio midi --bpm %UserTempo3% --low --title %UserInputFile3% --port 1
%path%\src\music_box_tracker.py --maniacs %path%\maniacs\%UserInputFile4%.mid --audio midi --bpm %UserTempo4% --low --title %UserInputFile4% --port 1
%path%\src\music_box_tracker.py --maniacs %path%\maniacs\%UserInputFile5%.mid --audio midi --bpm %UserTempo5% --low --title %UserInputFile5% --port 1
%path%\src\music_box_tracker.py --maniacs %path%\maniacs\%UserInputFile6%.mid --audio midi --bpm %UserTempo6% --low --title %UserInputFile6% --port 1
%path%\src\music_box_tracker.py --maniacs %path%\maniacs\%UserInputFile7%.mid --audio midi --bpm %UserTempo7% --low --title %UserInputFile7% --port 1
%path%\src\music_box_tracker.py --maniacs %path%\maniacs\%UserInputFile8%.mid --audio midi --bpm %UserTempo8% --low --title %UserInputFile8% --port 1
echo ;
Echo Copying FPR files to FPR Folder ....
echo ;
copy %path%\maniacs\%UserInputFile1%.fpr %path%\fpr\%UserInputFile1%.fpr
copy %path%\maniacs\%UserInputFile2%.fpr %path%\fpr\%UserInputFile2%.fpr
copy %path%\maniacs\%UserInputFile3%.fpr %path%\fpr\%UserInputFile3%.fpr
copy %path%\maniacs\%UserInputFile4%.fpr %path%\fpr\%UserInputFile4%.fpr
copy %path%\maniacs\%UserInputFile5%.fpr %path%\fpr\%UserInputFile5%.fpr
copy %path%\maniacs\%UserInputFile6%.fpr %path%\fpr\%UserInputFile6%.fpr
copy %path%\maniacs\%UserInputFile7%.fpr %path%\fpr\%UserInputFile7%.fpr
copy %path%\maniacs\%UserInputFile8%.fpr %path%\fpr\%UserInputFile8%.fpr
echo ;
echo creating Scad Files...
echo ;
%path%\src\fpr_to_scad.py --fpr %path%\fpr\%UserInputFile1%.fpr --fprverso %path%\fpr\%UserInputFile2%.fpr --scad %path%\scad\%UserInputFile1%_And_%UserInputFile2%.scad --thickness 5
%path%\src\fpr_to_scad.py --fpr %path%\fpr\%UserInputFile3%.fpr --fprverso %path%\fpr\%UserInputFile4%.fpr --scad %path%\scad\%UserInputFile3%_And_%UserInputFile4%.scad --thickness 5
%path%\src\fpr_to_scad.py --fpr %path%\fpr\%UserInputFile5%.fpr --fprverso %path%\fpr\%UserInputFile6%.fpr --scad %path%\scad\%UserInputFile5%_And_%UserInputFile6%.scad --thickness 5
%path%\src\fpr_to_scad.py --fpr %path%\fpr\%UserInputFile7%.fpr --fprverso %path%\fpr\%UserInputFile8%.fpr --scad %path%\scad\%UserInputFile7%_And_%UserInputFile8%.scad --thickness 5
echo ;
echo ;
erase %path%\maniacs\*.fpr
echo ;
dir %path%\scad\*.scad /W
echo Done
;
pause
