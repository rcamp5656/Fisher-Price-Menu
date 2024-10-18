@echo off
cls
echo Welcome to my batch file that has been created on Oct 15 2024 for creating the Fisher Price Music Box Record Player Plastic disks on a 3D printer.
echo This batch file has been carefully written for the novice that wants to create the STLs from any MIDI file.
echo This batch file has many features to it, when you select a file and tempo
echo where the tempo would normally go) and you will get a graph like display of all of the notes. Here are some of the commands for that 
echo graph like screen.
echo ;
echo (s) or (S) -----   save to an fpr file.
echo (q) or (Q) -----   quit out of the graph program ..... 
echo                    
echo (o) or (O) -----   Start the save process at any spot where your cursor is on the graph program.
echo Arrow keys move the curser on the graph to whatever column of notes that you want, (s) and (q) to save and exit the graph.
echo Exiting the graph will ask you two things (1) Did the MIDI file work properly for a Music Box Tune and do you want to select another MIDI tune ?
echo                                           (2) Did the tempo for that MIDI tune work as good as it can ie: is it too slow or too fast?
echo Pressing (Y) or (y) at Prompt (1) [File] will take you back one level and ask you to select a new MIDI file to replace the old one.
echo Pressing (N) or (n) at Prompt (1) [File] will take you to the tempo selection at prompt (2).
echo Pressing (Y) or (y) at Prompt (2) [tempo] will take you back one level and ask you to select a new Tempo to replace the old one.
echo Pressing (N) or (n) at Prompt (2) [Tempo] will take you to the next MIDI song.
echo ;
echo When you have completed any one of the MIDI files regardless of whether its a Regular MIDI file or a Maniacs MIDI file
echo you have the same choices as above when choosing the next MIDI file(s).
echo ;
echo Another feature is Single Sided and Double sided SCAD files.  The program will ask you at the right moment whether or not you want
echo to 3D print single or double sided disks, unless you have a resin printer select single sided disks and glue the two of your 
echo created 3D printed disks together. Select Double sided disks if you have a resin printer as on an FDM printer you would need support
echo and a raft to print out a Double Sided disk, taking the raft and support off also takes off the 3D printed dots that make the
echo music on your Fisher Price Music Box Record Player Disk. 
echo ;
echo Oh do scroll back to find the rest of this text and all of the files that are displayed on this screen. 
echo This includes all file lists, you can copy and paste a filename to the file slot selection no problem.
echo ;
pause
cls
set path=c:\Fisher-Price-Menu
;
;
:midi
; 
set /p one=Do you want to select just two midi files [Y] or [N] : 
if %one%==Y goto twoonly
if %one%==y goto twoonly
if %one%==N goto alleight
if %one%==n goto alleight
:twoonly
echo ;
:fileone
cls
echo You now have a choice of only group of files ie: 0 would return all files starting with 0.
echo                                                  Z would return all files starting with Z.
echo                                                  * would return all files in the midi directory.
echo ;
set /p selection1=Enter just one letter from [0 to Z  or *] : 
dir %path%\midi\%selection1%*.mid /W
set /p UserInputFile1=Please enter the first filename  [Without Extender] 
:first3
copy %path%\midi\%UserInputFile1%.mid %path%\src\input.mid
cd %path%\src
convert_midi.py
set /p YesNo=Do You Wish to Play the original MIDI file ?  [Y] / [N] : 
if %YesNo%==Y play_midi_input.py
if %YesNo%==y play_midi_input.py
set /p YesNo=Do You Wish to Play the converted MIDI file ? [Y] / [N] : 
if %YesNo%==Y play_midi_output.py
if %YesNo%==y play_midi_output.py

copy output.mid %path%\temp\%UserInputFile1%.mid
cd %path%
set UserTempo1=140
%path%\src\music_box_tracker.py --mid %path%\temp\%UserInputFile1%.mid --audio midi --bpm %UserTempo1% --title %UserInputFile1% --port 1
set /p YesNo1=Did that song work out and do you want to select a new file for %UserInputFile1%  [Y] [N] : 
if %YesNo1%==Y goto fileone
if %YesNo1%==y goto fileone
echo ;
:filetwo
cls
echo You now have a choice of only group of files ie: 0 would return all files starting with 0.
echo                                                  Z would return all files starting with Z.
echo                                                  * would return all files in the midi directory.
echo ;
set /p selection1=Enter just one letter from [0 to Z  or *] : 
dir %path%\midi\%selection1%*.mid /W
set /p UserInputFile2=Please enter the second filename [Without Extender] 
:second3
copy %path%\midi\%UserInputFile2%.mid %path%\src\input.mid
cd %path%\src
convert_midi.py
set /p YesNo=Do You Wish to Play the original MIDI file ?  [Y] / [N] : 
if %YesNo%==Y play_midi_input.py
if %YesNo%==y play_midi_input.py
set /p YesNo=Do You Wish to Play the converted MIDI file ? [Y] / [N] : 
if %YesNo%==Y play_midi_output.py
if %YesNo%==y play_midi_output.py
copy output.mid %path%\temp\%UserInputFile2%.mid
cd %path%
set UserTempo2=140
%path%\src\musicbox_tracker.py --mid %path%\temp\%UserInputFile2%.mid --audio midi --bpm %UserTempo2% --title %UserInputFile2% --port 1
set /p YesNo1=Did that song work out and do you want to select a new file for %UserInputFile2% [Y] or [N] : 
if %YesNo1%==Y goto filetwo
if %YesNo1%==y goto filetwo
;
copy %path%\temp\%UserInputFile1%.fpr %path%\fpr\%UserInputFile1%.fpr
copy %path%\temp\%UserInputFile2%.fpr %path%\fpr\%UserInputFile2%.fpr
echo ;
set /p choice=You can create Single or Double Sided Disks [S] [D] : 
if %choice%==D goto double2
if %choice%==d goto double2
if %choice%==S goto single2
if %choice%==s goto single2
:single2
%path%\src\fpr_to_scad.py --fpr %path%\fpr\%UserInputFile1%.fpr --scad %path%\scad\%UserInputFile1%.scad --thickness 3
%path%\src\fpr_to_scad.py --fpr %path%\fpr\%UserInputFile2%.fpr --scad %path%\scad\%UserInputFile2%.scad --thickness 3
goto eraseit
:double2
%path%\src\fpr_to_scad.py --fpr %path%\fpr\%UserInputFile1%.fpr --fprverso %path%\fpr\%UserInputFile2%.fpr --scad %path%\scad\%UserInputFile1%_And_%UserInputFile2%.scad --thickness 5
goto eraseit
:alleight
:fileone_a
echo You now have a choice of only group of files ie: 0 would return all files starting with 0.
echo                                                  Z would return all files starting with Z.
echo                                                  * would return all files.
set /p selection1=Enter just one letter from 0 to Z :
dir %path%\midi\%selection1%*.mid /W
set /p UserInputFile1=Please enter the first   filename [Without Extender] : 
:first4
copy %path%\midi\%UserInputFile1%.mid %path%\src\input.mid
cd %path%\src
convert_midi.py
copy output.mid %path%\temp\%UserInputFile1%.mid
cd %path%
set UserTempo1=60
:yestempo1b
%path%\src\music_box_tracker.py --mid %path%\midi\%UserInputFile1%.mid --audio midi --bpm %UserTempo1% --title %UserInputFile1% --port 1
set /p YesNo1=Did that song work out and do you want to select a new file for Slot 1 [Y] or [N] : 
if %YesNo1%==Y goto fileone_b
if %YesNo1%==y goto fileone_b 
set /p YesNo2=Refine Tempo of %UserInputFile1% [Y/N] : 
if %YesNo2%==Y goto first4
if %YesNo2%==y goto first4
goto next2a
:next2a
:filetwo_a
echo ;
echo You now have a choice of only group of files ie: 0 would return all files starting with 0.
echo                                                  Z would return all files starting with Z.
echo                                                  * would return all files.
set /p selection2=Enter just one letter from 0 to Z :
dir %path%\midi\%selection2%*.mid /W
set /p UserInputFile2=Please enter the second filename [Without Extender] 
:second3a'
copy %path%\midi\%UserInputFile2%.mid %path%\src\input.mid
cd %path%\src
convert_midi.py
copy output.mid %path%\temp\%UserInputFile2%.mid
cd %path%
set UserTempo2=60
%path%\src\music_box_tracker.py --mid %path%\midi\%UserInputFile2%.mid --audio midi --bpm %UserTempo2% --low --title %UserInputFile2% --port 1
set /p YesNo1=Did that song work out and do you want to select a new file for Slot 2 [Y] or [N] : 
if %YesNo1%==Y goto filetwo_a
if %YesNo1%==y goto filetwo_a
;
:filethree_a
echo You now have a choice of only group of files ie: 0 would return all files starting with 0.
echo                                                  Z would return all files starting with Z.
echo                                                  * would return all files.
set /p selection1=Enter just one letter from 0 to Z :
dir %path%\midi\%selection1%*.mid /W
set /p UserInputFile3=Please enter the third   filename [Without Extender] 
:third3a
copy %path%\midi\%UserInputFile3%.mid %path%\src\input.mid
cd %path%\src
convert_midi.py
copy output.mid %path%\temp\%UserInputFile3%.mid
cd %path%
set UserTempo3=60
%path%\src\music_box_tracker.py --mid %path%\midi\%UserInputFile3%.mid --audio midi --bpm %UserTempo3% --low --title %UserInputFile3% --port 1
set /p YesNo1=Did that song work out and do you want to select a new file for Slot 3 [Y] or [N] : 
if %YesNo1%==Y goto filethree_a
if %YesNo1%==y goto filethree_a
;
echo You now have a choice of only group of files ie: 0 would return all files starting with 0.
echo                                                  Z would return all files starting with Z.
echo                                                  * would return all files.
set /p selection1=Enter just one letter from 0 to Z :
dir %path%\midi\%selection1%*.mid /W
:filefour_a
set /p UserInputFile4=Please enter the fourth  filename [Without Extender] 
:fourth3a
copy %path%\midi\%UserInputFile4%.mid %path%\src\input.mid
cd %path%\src
convert_midi.py
copy output.mid %path%\temp\%UserInputFile4%.mid
cd %path%
set UserTempo4=60
%path%\src\music_box_tracker.py --mid %path%\midi\%UserInputFile4%.mid --audio midi --bpm %UserTempo4% --low --title %UserInputFile4% --port 1
set /p YesNo1=Did that song work out and do you want to select a new file for Slot 4 [Y] or [N] : 
if %YesNo1%==Y goto filefour_a
if %YesNo1%==y goto filefour_a
:filefive_a
echo You now have a choice of only group of files ie: 0 would return all files starting with 0.
echo                                                  Z would return all files starting with Z.
echo                                                  * would return all files.
set /p selection1=Enter just one letter from 0 to Z :
dir %path%\midi\%selection1%*.mid /W
set /p UserInputFile5=Please enter the fifth   filename [Without Extender] 
:fifth3a
copy %path%\midi\%UserInputFile5%.mid %path%\src\input.mid
cd %path%\src
convert_midi.py
copy output.mid %path%\temp\%UserInputFile5%.mid
cd %path%
set UserTempo5=60
%path%\src\music_box_tracker.py --mid %path%\midi\%UserInputFile5%.mid --audio midi --bpm %UserTempo5% --low --title %UserInputFile5% --port 1
set /p YesNo1=Did that song work out and do you want to select a new file for Slot 5 [Y] or [N] : 
if %YesNo1%==Y goto filefive_a
if %YesNo1%==y goto filefive_a
:filesix_a
echo You now have a choice of only group of files ie: 0 would return all files starting with 0.
echo                                                  Z would return all files starting with Z.
echo                                                  * would return all files.
set /p selection1=Enter just one letter from 0 to Z :
dir %path%\midi\%selection1%*.mid /W
set /p UserInputFile6=Please enter the sixth   filename [Without Extender] 
:sixth
copy %path%\midi\%UserInputFile6%.mid %path%\src\input.mid
cd %path%\src
convert_midi.py
copy output.mid %path%\temp\%UserInputFile6%.mid
cd %path%
set UserTempo6=60 
%path%\src\music_box_tracker.py --mid %path%\midi\%UserInputFile6%.mid --audio midi --bpm %UserTempo6% --low --title %UserInputFile6% --port 1
set /p YesNo1=Did that song work out and do you want to select a new file for Slot 6 [Y] or [N] : 
if %YesNo1%==Y goto filesix_a
if %YesNo1%==y goto filesix_a 
:fileseven_a
echo You now have a choice of only group of files ie: 0 would return all files starting with 0.
echo                                                  Z would return all files starting with Z.
echo                                                  * would return all files.
set /p selection1=Enter just one letter from 0 to Z :
dir %path%\midi\%selection1%*.mid /W
set /p UserInputFile7=Please enter the seventh filename [Without Extender] 
:seventh
copy %path%\midi\%UserInputFile7%.mid %path%\src\input.mid
cd %path%\src
convert_midi.py
copy output.mid %path%\temp\%UserInputFile7%.mid
cd %path%
set UserTempo7=60
%path%\src\music_box_tracker.py --mid %path%\midi\%UserInputFile7%.mid --audio midi --bpm %UserTempo7% --low --title %UserInputFile7% --port 1
set /p YesNo1=Did that song work out and do you want to select a new file for Slot 7 [Y] or [N] : 
if %YesNo1%==Y goto fileseven_a
if %YesNo1%==y goto fileseven_a 
:fileeight_a
echo You now have a choice of only group of files ie: 0 would return all files starting with 0.
echo                                                  Z would return all files starting with Z.
echo                                                  * would return all files.
set /p selection1=Enter just one letter from 0 to Z :
dir %path%\midi\%selection1%*.mid /W
set /p UserInputFile8=Please enter the eighth  filename [Without Extender] 
:eighth
copy %path%\midi\%UserInputFile8%.mid %path%\src\input.mid
cd %path%\src
convert_midi.py
copy output.mid %path%\temp\%UserInputFile8%.mid
cd %path%
set UserTempo8=60

%path%\src\music_box_tracker.py --mid %path%\midi\%UserInputFile8%.mid --audio midi --bpm %UserTempo8% --low --title %UserInputFile8% --port 1
set /p YesNo1=Did that song work out and do you want to select a new file for Slot 8 [Y] or [N] : 
if %YesNo1%==Y goto fileeight_a
if %YesNo1%==y goto fileeight_a 
echo ;
cls
echo ;
echo Creating FPR Files ...
pause

copy %path%\midi\%UserInputFile1%.fpr %path%\fpr\%UserInputFile1%.fpr
copy %path%\midi\%UserInputFile2%.fpr %path%\fpr\%UserInputFile2%.fpr
copy %path%\midi\%UserInputFile3%.fpr %path%\fpr\%UserInputFile3%.fpr
copy %path%\midi\%UserInputFile4%.fpr %path%\fpr\%UserInputFile4%.fpr
copy %path%\midi\%UserInputFile5%.fpr %path%\fpr\%UserInputFile5%.fpr
copy %path%\midi\%UserInputFile6%.fpr %path%\fpr\%UserInputFile6%.fpr
copy %path%\midi\%UserInputFile7%.fpr %path%\fpr\%UserInputFile7%.fpr
copy %path%\midi\%UserInputFile8%.fpr %path%\fpr\%UserInputFile8%.fpr
goto fprselect
:fprselect
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
erase %path%\midi\*.fpr
erase %path%\temp\*.*
echo ;
dir %path%\scad\*.scad /W
echo Done
;
pause
