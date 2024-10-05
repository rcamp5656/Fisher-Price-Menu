@echo off
cls
echo Welcome to my batch file that has been created on Oct 5 2024 for creating the Fisher Price Music Box Record Player Plastic disks on a 3D printer.
echo This batch file has been carefully written for the novice that wants to create the STLs from any MIDI file whether it be a regular MIDI file
echo or a Music Box Manics Create MIDI file. Obviously you have to convert all of the files from Music Box Maniacs Create and copy all of them into
echo the MANIACS folder in this zip file. Then you would choose the maniacs folder when running the batch file.
echo You would also have to copy all downloaded regular MIDI files into the MIDI folder in this zip file.
echo This batch file has many features to it, when you select a file and tempo (If the tempo is unknown you would enter a 0 in the place of 
echo where the tempo would normally go) and you will get a graph like display of all of the notes. Here are some of the commands for that 
echo graph like screen.
echo ;
echo (s) or (S) -----   save to an fpr file.
echo (q) or (Q) -----   quit out of the graph program ..... The program will ask you if you want to redo the tempo... 
echo                    pick (Y) or (y) or (N) or (n) to redo the tempo.
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
echo ;
echo You now have the choice of two different folders for importing MIDI files.
echo ; 
set /p destination1=Midi Folder or Maniacs Folder [1] for Maniacs Folder  [2] for Midi Folder : 
echo ;  
if %destination1%==1 echo Switching to Maniacs Folder.  Tempos are ALL known.
if %destination1%==2 echo Switching to Midi Folder.     Tempos are NOT known.
echo ;
pause
echo ;
if %destination1%==1 goto maniacs
if %destination1%==2 goto midi
:maniacs
; 
set /p one=Do you want to select just two maniacs midi files [Y] or [N] : 
if %one%==Y goto twoonly
if %one%==y goto twoonly
if %one%==N goto alleight
if %one%==n goto alleight
:twoonly
echo ;
:fileone
cls
echo You now have a choice of only group of files ie: 0 would return all files starting with 0.
set /p selection1=Enter just one letter from 0 to Z :
dir %path%\maniacs\%selection1%*.mid /W
set /p UserInputFile1=Please enter the first filename  [Without Extender] 
:first3
set /p UserTempo1=Enter the Tempo For the 1st  MIDI File   : 
%path%\src\music_box_tracker.py --maniacs %path%\maniacs\%UserInputFile1%.mid --audio midi --bpm %UserTempo1% --low --title %UserInputFile1% --port 1
set /p YesNo1=Did that song work out and do you want to select a new file for %UserInputFile1%  [Y] [N] : 
if %YesNo1%==Y goto fileone
if %YesNo1%==y goto fileone
set /p YesNo2=Refine Tempo of %UserInputFile1% [Y/N] : 
if %YesNo2%==Y goto first3
if %YesNo2%==y goto first3
echo ;
:filetwo
echo You now have a choice of only group of files ie: 0 would return all files starting with 0.
set /p selection1=Enter just one letter from 0 to Z :
dir %path%\maniacs\%selection1%*.mid /W
set /p UserInputFile2=Please enter the second filename [Without Extender] 
:second3
set /p UserTempo2=Enter the Tempo For the 2nd  MIDI File   : 
%path%\src\music_box_tracker.py --maniacs %path%\maniacs\%UserInputFile2%.mid --audio midi --bpm %UserTempo2% --low --title %UserInputFile2% --port 1
set /p YesNo1=Did that song work out and do you want to select a new file for %UserInputFile2% [Y] or [N] : 
if %YesNo1%==Y goto filetwo
if %YesNo1%==y goto filetwo
set /p YesNo2=Refine Tempo of %UserInputFile2% [Y/N] :  
if %YesNo2%==Y goto second3
if %YesNo2%==y goto second3
;
copy %path%\maniacs\%UserInputFile1%.fpr %path%\fpr\%UserInputFile1%.fpr
copy %path%\maniacs\%UserInputFile2%.fpr %path%\fpr\%UserInputFile2%.fpr
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
dir %path%\maniacs\%selection1%*.mid /W
set /p UserInputFile1=Please enter the first   filename [Without Extender] : 
:first4
set /p UserTempo1=Enter the Tempo For the 1st  MIDI File [If unknown Enter 0] : 
if %UserTempo1%==0 goto notempo1b
:yestempo1b
%path%\src\music_box_tracker.py --maniacs %path%\maniacs\%UserInputFile1%.mid --audio midi --bpm %UserTempo1% --title %UserInputFile1% --port 1
set /p YesNo1=Did that song work out and do you want to select a new file for Slot 1 [Y] or [N] : 
if %YesNo1%==Y goto fileone_b
if %YesNo1%==y goto fileone_b 
set /p YesNo2=Refine Tempo of %UserInputFile1% [Y/N] : 
if %YesNo2%==Y goto first4
if %YesNo2%==y goto first4
goto next2a
:notempo1b
%path%\src\music_box_tracker.py --maniacs %path%\maniacs\%UserInputFile1%.mid --audio midi --title %UserInputFile1% --port 1
set /p YesNo1=Did that song work out and do you want to select a new file for Slot 2 [Y] or [N] : 
if %YesNo1%==Y goto fileone_a
if %YesNo1%==y goto fileone_a
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
set /p selection1=Enter just one letter from 0 to Z :
dir %path%\maniacs\%selection1%*.mid /W
set /p UserInputFile2=Please enter the second filename [Without Extender] 
:second3a
set /p UserTempo2=Enter the Tempo For the 2nd  MIDI File   : 

%path%\src\music_box_tracker.py --maniacs %path%\maniacs\%UserInputFile2%.mid --audio midi --bpm %UserTempo2% --low --title %UserInputFile2% --port 1
set /p YesNo1=Did that song work out and do you want to select a new file for Slot 2 [Y] or [N] : 
if %YesNo1%==Y goto filetwo_a
if %YesNo1%==y goto filetwo_a
set /p YesNo2=Refine Tempo of %UserInputFile2% [Y/N] : 
if %YesNo2%==Y goto second3a
if %YesNo2%==y goto second3a
;
:filethree_a
echo You now have a choice of only group of files ie: 0 would return all files starting with 0.
echo                                                  Z would return all files starting with Z.
echo                                                  * would return all files.
set /p selection1=Enter just one letter from 0 to Z :
dir %path%\maniacs\%selection1%*.mid /W
set /p UserInputFile3=Please enter the third   filename [Without Extender] 
:third3a
set /p UserTempo3=Enter the Tempo for the 3rd  MIDI File   : 
%path%\src\music_box_tracker.py --maniacs %path%\maniacs\%UserInputFile3%.mid --audio midi --bpm %UserTempo3% --low --title %UserInputFile3% --port 1
set /p YesNo1=Did that song work out and do you want to select a new file for Slot 3 [Y] or [N] : 
if %YesNo1%==Y goto filethree_a
if %YesNo1%==y goto filethree_a
set /p YesNo2=Refine tempo of %UserInputFile3% [Y/N] : 
if %YesNo2%==Y goto third3a
if %YesNo2%==y goto third3a
;
echo You now have a choice of only group of files ie: 0 would return all files starting with 0.
echo                                                  Z would return all files starting with Z.
echo                                                  * would return all files.
set /p selection1=Enter just one letter from 0 to Z :
dir %path%\maniacs\%selection1%*.mid /W
:filefour_a
set /p UserInputFile4=Please enter the fourth  filename [Without Extender] 
:fourth3a
set /p UserTempo4=Enter the Tempo for the 4th  MIDI File   : 
%path%\src\music_box_tracker.py --maniacs %path%\maniacs\%UserInputFile4%.mid --audio midi --bpm %UserTempo4% --low --title %UserInputFile4% --port 1
set /p YesNo1=Did that song work out and do you want to select a new file for Slot 4 [Y] or [N] : 
if %YesNo1%==Y goto filefour_a
if %YesNo1%==y goto filefour_a
set /p YesNo2=Refine tempo of %UserInputFile4% [Y/N] : 
if %YesNo2%==Y goto fourth3a
if %YesNo2%==y goto fourth3a
:filefive_a
echo You now have a choice of only group of files ie: 0 would return all files starting with 0.
echo                                                  Z would return all files starting with Z.
echo                                                  * would return all files.
set /p selection1=Enter just one letter from 0 to Z :
dir %path%\maniacs\%selection1%*.mid /W
set /p UserInputFile5=Please enter the fifth   filename [Without Extender] 
:fifth3a
set /p UserTempo5=Enter the Tempo for the 5th  MIDI File   : 
%path%\src\music_box_tracker.py --maniacs %path%\maniacs\%UserInputFile5%.mid --audio midi --bpm %UserTempo5% --low --title %UserInputFile5% --port 1
set /p YesNo1=Did that song work out and do you want to select a new file for Slot 5 [Y] or [N] : 
if %YesNo1%==Y goto filefive_a
if %YesNo1%==y goto filefive_a
set /p YesNo2=Refine tempo of %UserInputFile5% [Y/N] : 
if %YesNo2%==Y goto fifth3a
if %YesNo2%==y goto fifth3a
:filesix_a
echo You now have a choice of only group of files ie: 0 would return all files starting with 0.
echo                                                  Z would return all files starting with Z.
echo                                                  * would return all files.
set /p selection1=Enter just one letter from 0 to Z :
dir %path%\maniacs\%selection1%*.mid /W
set /p UserInputFile6=Please enter the sixth   filename [Without Extender] 
:sixth
set /p UserTempo6=Enter the Tempo for the 6th  MIDI File   : 
%path%\src\music_box_tracker.py --maniacs %path%\maniacs\%UserInputFile6%.mid --audio midi --bpm %UserTempo6% --low --title %UserInputFile6% --port 1
set /p YesNo1=Did that song work out and do you want to select a new file for Slot 6 [Y] or [N] : 
if %YesNo1%==Y goto filesix_a
if %YesNo1%==y goto filesix_a 
set /p YesNo2=Refine tempo of %UserInputFile6% [Y/N] : 
if %YesNo2%==Y goto sixth3a
if %YesNo2%==y goto sixth3a
:fileseven_a
echo You now have a choice of only group of files ie: 0 would return all files starting with 0.
echo                                                  Z would return all files starting with Z.
echo                                                  * would return all files.
set /p selection1=Enter just one letter from 0 to Z :
dir %path%\maniacs\%selection1%*.mid /W
set /p UserInputFile7=Please enter the seventh filename [Without Extender] 
:seventh
set /p UserTempo7=Enter the Tempo for the 7th  MIDI File : 
%path%\src\music_box_tracker.py --maniacs %path%\maniacs\%UserInputFile7%.mid --audio midi --bpm %UserTempo7% --low --title %UserInputFile7% --port 1
set /p YesNo1=Did that song work out and do you want to select a new file for Slot 7 [Y] or [N] : 
if %YesNo1%==Y goto fileseven_a
if %YesNo1%==y goto fileseven_a 
set /p YesNo2=Refine tempo of %UserInputFile7% [Y/N] : 
if %YesNo2%==Y goto seventh
if %YesNo2%==y goto seventh
:fileeight_a
echo You now have a choice of only group of files ie: 0 would return all files starting with 0.
echo                                                  Z would return all files starting with Z.
echo                                                  * would return all files.
set /p selection1=Enter just one letter from 0 to Z :
dir %path%\maniacs\%selection1%*.mid /W
set /p UserInputFile8=Please enter the eighth  filename [Without Extender] 
:eighth
set /p UserTempo8=Enter The Tempo for the 8th  MIDI File   : 
%path%\src\music_box_tracker.py --maniacs %path%\maniacs\%UserInputFile8%.mid --audio midi --bpm %UserTempo8% --low --title %UserInputFile8% --port 1
set /p YesNo1=Did that song work out and do you want to select a new file for Slot 8 [Y] or [N] : 
if %YesNo1%==Y goto fileeight_a
if %YesNo1%==y goto fileeight_a 
set /p YesNo2=Refine tempo of %UserInputFile8% [Y/N] : 
if %YesNo2%==Y goto eighth
if %YesNo2%==y goto eighth
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
goto fprselect
:midi
;
echo You now have a choice of only group of files ie: 0 would return all files starting with 0.
echo                                                  Z would return all files starting with Z.
echo                                                  * would return all files.
set /p selection2=Enter just one letter from 0 to Z : 
echo ;
dir %path%\midi\%selection2%*.mid /W
echo ;
set /p one=Do You Want To Select Just Two Regular Midi Files [Y] or [N] : 
echo ;
if %one%==Y goto twoonly2
if %one%==y goto twoonly2
if %one%==N goto alleight2
if %one%==n goto alleight2
:twoonly2
:fileone_ba
set /p UserInputFile1=Please enter the first   filename [Without Extender] : 
echo You now have a choice of only group of files ie: 0 would return all files starting with 0.
echo                                                  Z would return all files starting with Z.
echo                                                  * would return all files.
:first4ba
set /p UserTempo1=Enter the Tempo For the 1st  MIDI File [If unknown Enter 0] : 
if %UserTempo1%==0 goto notempo1ba
:yestempo1ba
%path%\src\music_box_tracker.py --mid %path%\midi\%UserInputFile1%.mid --audio midi --bpm %UserTempo1% --title %UserInputFile1% --port 1
set /p YesNo1=Did that song work out and do you want to select a new file for Slot 1 [Y] or [N] : 
if %YesNo1%==Y goto fileone_ba
if %YesNo1%==y goto fileone_ba 
set /p YesNo2=Refine Tempo of %UserInputFile1% [Y/N] : 
if %YesNo2%==Y goto first4a
if %YesNo2%==y goto first4a
:notempo1ba
%path%\src\music_box_tracker.py --mid %path%\midi\%UserInputFile1%.mid --audio midi --title %UserInputFile1% --port 1
set /p YesNo1=Did that song work out and do you want to select a new file for Slot 1 [Y] or [N] : 
if %YesNo1%==Y goto fileone_ba
if %YesNo1%==y goto fileone_ba
set /p YesNo2=Refine Tempo of %UserInputFile1% [Y/N] : 
if %YesNo2%==Y goto first4ba
if %YesNo2%==y goto first4ba
goto next2
:next2
:filetwo_ba
echo ;
echo You now have a choice of only group of files ie: 0 would return all files starting with 0.
echo                                                  Z would return all files starting with Z.
echo                                                  * would return all files.
set /p UserInputFile2=Please enter the second filename [Without Extender] :  
:second4ba
set /p UserTempo2=Enter the Tempo For the 2nd  MIDI File [If unknown Enter 0]  : 
if %UserTempo2%==0 goto notempo2ba
:yestempo2ba
%path%\src\music_box_tracker.py --mid %path%\midi\%UserInputFile2%.mid --audio midi --bpm %UserTempo2% --title %UserInputFile2% --port 1
set /p YesNo1=Did that song work out and do you want to select a new file for Slot 2 [Y] or [N] : 
if %YesNo1%==Y goto filetwo_ba
if %YesNo1%==y goto filetwo_ba
set /p YesNo2=Refine Tempo of %UserInputFile2% [Y/N] : 
if %YesNo2%==Y goto second4ba
if %YesNo2%==y goto second4ba
:notempo2
%path%\src\music_box_tracker.py --mid %path%\midi\%UserInputFile2%.mid --audio midi --title %UserInputFile2% --port 1
set /p YesNo1=Did that song work out and do you want to select a new file for Slot 2 [Y] or [N] : 
if %YesNo1%==Y goto filetwo_ba
if %YesNo1%==y goto filetwo_ba
set /p YesNo2=Refine Tempo of %UserInputFile2% [Y/N] : 
if %YesNo2%==Y goto second4ba
if %YesNo2%==y goto second4ba
goto next3
:next3
copy %path%\midi\%UserInputFile1%.fpr %path%\fpr\%UserInputFile1%.fpr
copy %path%\midi\%UserInputFile2%.fpr %path%\fpr\%UserInputFile2%.fpr
echo ;
set /p choice=Single or Double Sided Disks [S] [D] : 
if %choice%==D goto double3
if %choice%==d goto double3
if %choice%==S goto single3
if %choice%==s goto single3
:single3
%path%\src\fpr_to_scad.py --fpr %path%\fpr\%UserInputFile1%.fpr --scad %path%\scad\%UserInputFile1%.scad --thickness 3
%path%\src\fpr_to_scad.py --fpr %path%\fpr\%UserInputFile2%.fpr --scad %path%\scad\%UserInputFile2%.scad --thickness 3
goto eraseit
:double3
%path%\src\fpr_to_scad.py --fpr %path%\fpr\%UserInputFile1%.fpr --fprverso %path%\fpr\%UserInputFile2%.fpr --scad %path%\scad\%UserInputFile1%_And_%UserInputFile2%.scad --thickness 5
goto eraseit
:
:alleight2
; 
:fileonebab
echo You now have a choice of only group of files ie: 0 would return all files starting with 0.
echo                                                  Z would return all files starting with Z.
echo                                                  * would return all files.
set /p UserInputFile1=Please enter the first   filename [Without Extender] : 
:first1a
set /p UserTempo1=Enter the Tempo For the 1st  MIDI File [If unknown Enter 0] : 
if %UserTempo1%==0 goto notempo1
:yestempo1
%path%\src\music_box_tracker.py --mid %path%\midi\%UserInputFile1%.mid --audio midi --bpm %UserTempo1% --low --title %UserInputFile1% --port 1
set /p YesNo1=Did that song work out and do you want to select a new file for Slot 2 [Y] or [N] : 
if %YesNo1%==Y goto fileone_bab
if %YesNo1%==y goto fileone_bab
set /p YesNo2=Refine Tempo of %UserInputFile1% [Y/N] : 
if %YesNo2%==Y goto first1a
if %YesNo2%==y goto first1a
goto next1
:notempo1
%path%\src\music_box_tracker.py --mid %path%\midi\%UserInputFile1%.mid --audio midi --title %UserInputFile1% --port 1
set /p YesNo1=Did that song work out and do you want to select a new file for Slot 2 [Y] or [N] : 
if %YesNo1%==Y goto filetwo_bab
if %YesNo1%==y goto filetwo_bab
echo ;
set /p YesNo1=Refine Tempo of %UserInputFile1% [Y/N] : 
if %YesNo1%==Y goto first1a
if %YesNo1%==y goto first1a
goto next1
:next1
echo You now have a choice of only group of files ie: 0 would return all files starting with 0.
echo                                                  Z would return all files starting with Z.
echo                                                  * would return all files.
set /p UserInputFile1=Please enter the second filename [Without Extender] :  
:second2a
set /p UserTempo2=Enter the Tempo For the 2nd  MIDI File [If unknown Enter 0]  :  
if %UserTempo2%==0 goto notempo2
:yestempo2
%path%\src\music_box_tracker.py --mid %path%\midi\%UserInputFile2%.mid --audio midi --bpm %UserTempo2% --low --title %UserInputFile2% --port 1
set /p YesNo1=Did that song work out and do you want to select a new file for Slot 2 [Y] or [N] : 
if %YesNo1%==Y goto filetwo_ba
if %YesNo1%==y goto filetwo_ba
set /p YesNo=Refine Tempo of %UserInputFile2% [Y/N] : 
if %YesNo%==Y goto second2a
if %YesNo%==y goto second2a
goto next2
:notempo2
%path%\src\music_box_tracker.py --mid %path%\midi\%UserInputFile2%.mid --audio midi --title %UserInputFile2% --port 1
set /p YesNo1=Did that song work out and do you want to select a new file for Slot 2 [Y] or [N] : 
if %YesNo1%==Y goto filetwo_ba
if %YesNo1%==y goto filetwo_ba
set /p YesNo2=Refine Tempo of %UserInputFile2% [Y/N] : 
if %YesNo2%==Y goto second2a
if %YesNo2%==y goto second2a
goto next2
:next2
echo You now have a choice of only group of files ie: 0 would return all files starting with 0.
echo                                                  Z would return all files starting with Z.
echo                                                  * would return all files.
:filethree_ba
set /p UserInputFile3=Please enter the third   filename [Without Extender] 
:third2a
set /p UserTempo3=Enter the Tempo for the 3rd  MIDI File  [If Unknown Enter 0] : 
if %UserTempo3%==0 goto notempo3
%path%\src\music_box_tracker.py --mid %path%\midi\%UserInputFile3%.mid --audio midi --bpm %UserTempo3% --low --title %UserInputFile3% --port 1
set /p YesNo1=Did that song work out and do you want to select a new file for Slot 3 [Y] or [N] : 
if %YesNo1%==Y goto filethree_ba
if %YesNo1%==y goto filethree_ba
set /p YesNo1=Refine tempo of %UserInputFile3% [Y/N] : 
if %YesNo1%==Y goto third2a
if %YesNo1%==y goto third2a
goto next3
:notempo3
%path%\src\music_box_tracker.py --mid %path%\midi\%UserInputFile3%.mid --audio midi --title %UserInputFile3% --port 1
set /p YesNo1=Did that song work out and do you want to select a new file for Slot 3 [Y] or [N] : 
if %YesNo1%==Y goto filethree_ba
if %YesNo1%==y goto filethree_ba
echo You now have a choice of only group of files ie: 0 would return all files starting with 0.
echo                                                  Z would return all files starting with Z.
echo                                                  * would return all files.
set /p YesNo2=Refine Tempo of %UserInputFile3% [Y/N] : 
if %YesNo2%==Y goto third2a
if %YesNo2%==y goto third2a
goto next3
:next3
:filefour_ba
set /p UserInputFile4=Please enter the fourth filename  [Without Extender] : 
:fourth4a
set /p UserTempo4=Enter the Tempo For the 4th  MIDI File [If unknown Enter 0] : 
if %UserTempo4%==0 goto notempo4
:yestempo4
%path%\src\music_box_tracker.py --mid %path%\midi\%UserInputFile4%.mid --audio midi --bpm %UserTempo4% --low --title %UserInputFile4% --port 1
set /p YesNo1=Did that song work out and do you want to select a new file for Slot 4 [Y] or [N] : 
if %YesNo1%==Y goto filefour_ba
if %YesNo1%==y goto filefour_ba
set /p YesNo2=Refine Tempo of %UserInputFile4% [Y/N] : 
if %YesNo2%==Y goto fourth4a
if %YesNo2%==y goto fourth4a
goto next4
:notempo4
%path%\src\music_box_tracker.py --mid %path%\midi\%UserInputFile4.mid --audio midi --title %UserInputFile4% --port 1
set /p YesNo1=Did that song work out and do you want to select a new file for Slot 4 [Y] or [N] : 
if %YesNo1%==Y goto filefour_ba
if %YesNo1%==y goto filefour_ba
set /p YesNo2=Refine Tempo of %UserInputFile4% [Y/N] : 
if %YesNo2%==Y goto fourth4a
if %YesNo2%==y goto fourth4a
goto next4
:next4

:filefive_ba
echo ;
echo You now have a choice of only group of files ie: 0 would return all files starting with 0.
echo                                                  Z would return all files starting with Z.
echo                                                  * would return all files.
set /p UserInputFile5=Please enter the fifth filename [Without Extender] : 
:fifth4a
set /p UserTempo5=Enter the Tempo For the 5th  MIDI File [If unknown Enter 0]  : 
if %UserTempo5%==0 goto notempo5
:yestempo2
%path%\src\music_box_tracker.py --mid %path%\midi\%UserInputFile5%.mid --audio midi --bpm %UserTempo5% --low --title %UserInputFile5% --port 1
set /p YesNo1=Did that song work out and do you want to select a new file for Slot 5 [Y] or [N] : 
if %YesNo1%==Y goto filefive_ba
if %YesNo1%==y goto filefive_ba
set /p YesNo2=Refine Tempo of %UserInputFile5% [Y/N] : 
if %YesNo2%==Y goto fifth4a
if %YesNo2%==y goto fifth4a
goto next5
:notempo5
%path%\src\music_box_tracker.py --mid %path%\midi\%UserInputFile5%.mid --audio midi --title %UserInputFile5% --port 1
set /p YesNo1=Did that song work out and do you want to select a new file for Slot 5 [Y] or [N] : 
if %YesNo1%==Y goto filefive_ba
if %YesNo1%==y goto filefive_ba
set /p YesNo2=Refine Tempo of %UserInputFile5% [Y/N] : 
if %YesNo2%==Y goto fifth4a
if %YesNo2%==y goto fifth4a
goto next5

:next5
:filesix_ba
echo You now have a choice of only group of files ie: 0 would return all files starting with 0.
echo                                                  Z would return all files starting with Z.
echo                                                  * would return all files.
set /p UserInputFile6=Please enter the sixth   filename [Without Extender] 
:sixth4a
set /p UserTempo6=Enter the Tempo for the 6th  MIDI File   : 
if %UserTempo6%==0 goto notempo6
%path%\src\music_box_tracker.py --mid %path%\midi\%UserInputFile6%.mid --audio midi --bpm %UserTempo6% --low --title %UserInputFile6% --port 1
set /p YesNo1=Did that song work out and do you want to select a new file for Slot 6 [Y] or [N] : 
if %YesNo1%==Y goto filesix_ba
if %YesNo1%==y goto filesix_ba
set /p YesNo=Refine tempo of %UserInputFile6% [Y/N] : 
if %YesNo%==Y goto sixth4a
if %YesNo%==y goto sixth4a
goto next6
:notempo6
%path%\src\music_box_tracker.py --mid %path%\midi\%UserInputFile6%.mid --audio midi --title %UserInputFile6% --port 1
set /p YesNo1=Did that song work out and do you want to select a new file for Slot 6 [Y] or [N] : 
if %YesNo1%==Y goto filesix_ba
if %YesNo1%==y goto filesix_ba
set /p YesNo2=Refine Tempo of %UserInputFile6% [Y/N] : 
if %YesNo2%==Y goto sixth4a
if %YesNo2%==y goto sixth4a
goto next6

:next6
:fileseven_ba
echo You now have a choice of only group of files ie: 0 would return all files starting with 0.
echo                                                  Z would return all files starting with Z.
echo                                                  * would return all files.
set /p UserInputFile7=Please enter the seventh filename [Without Extender]  
:seventh4a
set /p UserTempo7=Enter the Tempo for the 7th  MIDI File   : 
if %UserTempo7%==0 goto notempo7
%path%\src\music_box_tracker.py --mid %path%\midi\%UserInputFile7%.mid --audio midi --bpm %UserTempo7% --low --title %UserInputFile7% --port 1
set /p YesNo1=Did that song work out and do you want to select a new file for Slot 7 [Y] or [N] : 
if %YesNo1%==Y goto fileseven_ba
if %YesNo1%==y goto fileseven_ba
set /p YesNo=Refine tempo of %UserInputFile7% [Y/N] : 
if %YesNo%==Y goto seventh4a
if %YesNo%==y goto seventh4a
goto next7
:notempo7
%path%\src\music_box_tracker.py --mid %path%\midi\%UserInputFile7%.mid --audio midi --title %UserInputFile7% --port 1
set /p YesNo1=Did that song work out and do you want to select a new file for Slot 8 [Y] or [N] : 
if %YesNo1%==Y goto fileseven_ba
if %YesNo1%==y goto fileseven_ba
set /p YesNo2=Refine tempo of %UserInputFile8% [Y/N] : 
if %YesNo2%==Y goto seventh4a
if %YesNo2%==y goto seventh4a
goto next7
:next7
:fileeight_ba
echo You now have a choice of only group of files ie: 0 would return all files starting with 0.
echo                                                  Z would return all files starting with Z.
echo                                                  * would return all files.
set /p UserInputFile8=Please enter the eighth  filename [Without Extender] 
:eighth4a
set /p UserTempo8=Enter the Tempo for the 8th  MIDI File   : 
if %UserTempo8%==0 goto notempo8
%path%\src\music_box_tracker.py --mid %path%\midi\%UserInputFile8%.mid --audio midi --bpm %UserTempo8% --low --title %UserInputFile8% --port 1
set /p YesNo1=Did that song work out and do you want to select a new file for Slot 8 [Y] or [N] : 
if %YesNo1%==Y goto fileeight_ba
if %YesNo1%==y goto fileeight_ba
set /p YesNo=Refine tempo of %UserInputFile8% [Y/N] : 
if %YesNo%==Y goto eighth4a
if %YesNo%==y goto eighth4a
goto next8
:notempo8
%path%\src\music_box_tracker.py --mid %path%\midi\%UserInputFile8%.mid --audio midi --title %UserInputFile8% --port 1
set /p YesNo1=Did that song work out and do you want to select a new file for Slot 8 [Y] or [N] : 
if %YesNo1%==Y goto fileeight_ba
if %YesNo1%==y goto fileeight_ba
set /p UserTempo6=Enter the Tempo for the 8th  MIDI File   : 
set /p YesNo=Refine tempo of %UserInputFile8% [Y/N] : 
if %YesNo%==Y goto eighth4a
if %YesNo%==y goto eighth4a
goto next8

:next8
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

echo ;
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
if %destination1%==1 erase %path%\maniacs\*.fpr
if %destination1%==2 erase %path%\midi\*.fpr
echo ;
dir %path%\scad\*.scad /W
echo Done
;
pause
