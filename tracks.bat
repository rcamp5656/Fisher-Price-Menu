cls
echo 
echo off
echo This file is the start of something really good. What I propose to do is write Multi-track STLs within
echo the parameters of the Fisher Price Music Box. Work is being done as we speak to get higher resolution
echo 3D prints of each record.
;
echo Work is being done to see if a multi-track recording will even work.
;
echo Here is what you have to do for now to get this to work, or at least get the fpr files , whether 
echo or not te program will overdub is another question.
;
echo Batch file written by Russ Campbell.
;
Set path=c:\Fisher-Price-Menu
;
%path%\src\music_box_tracker.py --mid %path%\Tracks\Track1.mid --audio midi --bpm 150 --offset 16
;
echo all Done.....\
