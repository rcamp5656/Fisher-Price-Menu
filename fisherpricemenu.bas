$Debug
Dim sources As String
Dim choices As String
Dim SIDES As Integer
Dim destination1 As String
Dim destination2 As String
Dim destination3 As String
Dim destination4 As String
Dim destination5 As String
Dim destination6 As String
Dim temp1 As String
Dim temp2 As String
Dim UserInputFile1a As String
Dim UserInputFile2a As String
Dim UserInputFile3a As String
Dim UserInputFile1b As String
Dim UserInputfile2b As String
Dim UserInputFile3b As String
Dim UserInputFile4b As String
Dim UserInputFile5b As String
Dim UserInputFile6b As String
Dim runit As String
Dim runit1a As String
Dim runit1ba As String
Dim runit1bb As String
Dim runit2a As String
Dim runit3a As String
Dim runit4a As String
Dim runit1b As String
Dim runit2b As String
Dim runit3b As String
Dim runit4b As String
Dim runit5b As String
Dim runit6b As String
Dim sounding As String
Dim tempo1 As String
Dim tempo2 As String
Dim tempo3 As String
Dim tempo1a As Integer
Dim tempo2a As Integer
Dim tempo3a As Integer
Dim offset1 As String
Dim offset2 As String
Dim offset3 As String
Dim offset1a As Integer
Dim offset2a As Integer
Dim offset3a As Integer
Dim loopit1 As Integer
Dim loopit2 As Integer
Dim TwoSided As String
Rem Program written by Russ Campbell
Rem parts of program taken from
Rem Pete at qb64.org



'files/directories list using Steve library (u.s. chars only)
'CHDIR "x:" tested on network drive, ok work correctly
ReDim Drives(0) As String
Declare CustomType Library "c:\Fisher-Price-Menu\direntry"
    Function load_dir& (s As String)
    Function has_next_entry& ()
    Sub close_dir ()
    Sub get_next_entry (s As String, flags As Long, file_size As Long)
End Declare
begin3:
GoTo choosedrive
begin2:
Screen _NewImage(400, 320, 32)
Drives$ = LoadDrives$(Drives()) 'windows only in current version
ReDim DirNew(0) As String
ReDim FileNew(0) As String

start:


ReDim Dir(0) As String, File(0) As String


GetFileList _CWD$, Dir(), File()
ReDim All(UBound(Dir) - 1 + UBound(file)) As String

i = 0


For AllLoader = LBound(Dir) + 2 To UBound(Dir) '                     i need not "." in list
    If Len(Dir(AllLoader)) Then All(i) = Dir(AllLoader): i = i + 1
Next
For AllLoader = LBound(File) To UBound(File)
    If Len(File(AllLoader)) Then All(i) = File(AllLoader): i = i + 1
Next

If UBound(All) <= 0 Then ChDir (Left$(_CWD$, 3)): GoTo start

DIRcount = UBound(Dir) - 1
FILEcount = UBound(File)
If DIRcount < 0 Then DIRcount = 0
If InStr(1, _OS$, "WINDOWS") Then OS = 0
If InStr(1, _OS$, "LINUX") Then OS = 1

Do
    Cls

    runit = ""
    runit = Browse$(All(), 20, 15, 40, 9, DIRcount, Drives$, 1) 'array  contains files/directories names, this list X start coordinate, this list Y start coordinate, This list lenght (300 pixel lenght), 30 records in this list to view), return file/folder/"..", "." name which is selected. Last parameter is for DRIVE characters (names) STRING
    '    PRINT runit$: SLEEP 2
    Rem On Error Goto handler

    Select Case OS
        Case 0
            invalid = InStr(1, runit, "\\")
        Case 1
            invalid = InStr(1, runit, "//")
    End Select
    If invalid Then runit = Left$(runit, invalid) + Right$(runit, Len(runit) - invalid - 1)


    If Right$(runit, 1) = "." And OS = 1 Then Beep: ChDir "/": _Delay .1: GoTo start



    If runit = "---E" Then GoTo finish
    If runit = "" Then ChDir Left$(_CWD$, 3): _Delay .1: GoTo start

    If Len(runit) And _FileExists(runit) And SIDES = 1 Then
        TwoSided = "N"
        runit1a = Mid$(runit, 27, Len(runit))
        runit2a = Mid$(runit1a, 1, Len(runit1a) - 4)
        runit3a = Mid$(runit1a, 1, Len(runit1a) - 4)
        runit4a = Mid$(runit1a, 1, Len(runit1a) - 4)
        loopit1 = 1
        GoSub writefile_1
    End If

    If Len(runit) And _FileExists(runit) And SIDES = 2 Then
        TwoSided = "Y"
        loopit2 = loopit2 + 1
        If loopit2 = 1 Then
            runit1ba = runit
            runit1ba = Mid$(runit1ba, 27, Len(runit1ba) - 4)
            runit1b = Mid$(runit1ba, 1, Len(runit1ba) - 4)
            runit2b = Mid$(runit1ba, 1, Len(runit1ba) - 4)
        End If
        If loopit2 = 2 Then
            runit1bb = runit
            runit1bb = Mid$(runit1bb, 27, Len(runit1bb) - 4)
            runit2b = Mid$(runit1bb, 1, Len(runit1bb) - 4)
            runit4b = Mid$(runit1ba, 1, Len(runit1ba) - 4)
        End If
        Print ">>>====>>> "; UserInputFile1a
        GoSub cont1
    End If
    cont1:
    If loopit1 = 1 Then GoTo endingloop
    If loopit2 = 2 Then GoTo endingloop

    If Right$(runit, 2) = ".." And _DirExists("..") Then ChDir "..": _Delay .1: GoTo start
    If Right$(runit, 5) = ".DIR." Then
        runit = Left$(runit, Len(runit) - 5)
        ChDir runit
        _Delay .1
        GoTo start
    End If
Loop
endingloop:
If TwoSided = "N" Then GoSub choose_OPtions_One_Sided
If TwoSided = "Y" Then GoSub choose_Options_Two_Sided
GoTo choosedrive
GoTo finish
End
choose_OPtions_One_Sided:
destination1 = "c:\Fisher-Price-Menu\FPR"
destination2 = "c:\Fisher-Price-Menu\MIDI\"
destination3 = "c:\Fisher-Price-Menu\SCAD\"
destination4 = "c:\Fisher-Price-Menu\SRC\"
destination5 = "c:\Fisher-Price-Menu\TEMP\"

UserInputFile1a = runit2a + ".mid"
UserInputFile2a = runit2a + ".fpr"
UserInputFile3a = runit2a + ".scad"
Cls

Print
Print "This selection is for entering values"
Print "for the One Sided FP disks."
Print
Print
Print "Names of the Files that you"
Print "have Chosen for Side One"
Print
Print "[S1] >>>====>>> "; UserInputFile1a

Print
Return
GoTo choosedrive
choose_Options_Two_Sided:
Cls
Print
Print "This selection is for entering values"
Print "for the Two Sided FP disks."

destination1 = "c:\Fisher-Price-Menu\FPR"
destination2 = "c:\Fisher-Price-Menu\MIDI\"
destination3 = "c:\Fisher-Price-Menu\SCAD\"
destination4 = "c:\Fisher-Price-Menu\SRC\"
destination5 = "c:\Fisher-Price-Menu\TEMP\"

UserInputFile1b = runit1b + ".mid"
UserInputfile2b = runit2b + ".mid"
UserInputFile3b = runit3b + ".fpr"
UserInputFile4b = runit4b + ".fpr"
UserInputFile5b = runit3b + "_And_" + runit4b + ".scad"
Print
Print
Print "Names of Files that you"
Print "have Chosen for Sides One & Two"
Print
Print "[S1] >>>====>>> "; UserInputFile1b
Print "[S2] >>>====>>> "; UserInputfile2b

Print
GoSub check_it_out_two_sided
Return
check_it_out_One_Sided:
GoSub checkitout
Cls
Print
Print "These are the options that you"
Print "have chosen for your replica FP Disc."
Print
Print "Names of the Files that you"
Print "have Chosen for Side One"
Print
Print ">>>====>>> "; UserInputFile1a
Print
Print
Print "Is this all Correct [Y] or [N] "
choices = Input$(1)
choices = UCase$(choices)
Print choices: Print
If choices = "Y" Then GoSub writefile_1: GoSub playfile
GoSub cont1

If choices = "N" Then GoSub choose_OPtions_One_Sided
If choices = "Q" Then GoTo choosedrive
Return

check_it_out_two_sided:
GoSub checkitout
Cls
Print
Print "This is the options that you have"
Print "chosen for your replica FP Disc."
Print
Print "Names of the Files that you"
Print "have Chosen for Sides One & Two"
Print
Print ">>>====>>> "; UserInputFile1b
Print ">>>====>>> "; UserInputfile2b
Print
Print "Is this all Correct [Y] or [N] "
choices = Input$(1)
choices = UCase$(choices)
Print choices: Print
If choices = "Y" Then GoSub writefile_2: GoSub playfile
If choices = "N" Then GoSub choose_Options_Two_Sided
If choices = "Q" Then GoTo choosedrive
GoTo check_it_out_two_sided
Return
checkitout:
loopit2 = 0
If Len(runit) And _FileExists(runit) And SIDES = 1 Then
    runit1a = Mid$(runit, 27, Len(runit))
    runit2a = Mid$(runit1a, 1, Len(runit1a) - 4)
    runit3a = Mid$(runit1a, 1, Len(runit1a) - 4)
End If

If Len(runit) And _FileExists(runit) And SIDES = 2 Then
    TwoSided = "Y"
    loopit2 = loopit2 + 1
    If loopit2 = 1 Then
        runit1ba = runit
        runit1ba = Mid$(runit1ba, 27, Len(runit1ba) - 4)
        runit1b = Mid$(runit1ba, 1, Len(runit1ba) - 4)
        runit3b = Mid$(runit1ba, 1, Len(runit1ba) - 4)
    End If
    If loopit2 = 2 Then
        runit1bb = runit
        runit1bb = Mid$(runit1bb, 27, Len(runit1bb) - 4)
        runit2b = Mid$(runit1bb, 1, Len(runit1bb) - 4)
        runit4b = Mid$(runit1ba, 1, Len(runit1ba) - 4)
    End If
End If
destination1 = "c:\Fisher-Price-Menu\FPR"
destination2 = "c:\Fisher-Price-Menu\MIDI\"
destination3 = "c:\Fisher-Price-Menu\SCAD\"
destination4 = "c:\Fisher-Price-Menu\SRC\"
destination5 = "c:\Fisher-Price-Menu\TEMP\"


Return

writefile_1:
_FullScreen
sounding = "midi"
UserInputFile1a = runit2a + ".fpr"
UserInputFile2a = runit2a + ".mid"
UserInputFile3a = runit2a + ".scad"
destination1 = "c:\Fisher-Price-Menu\FPR\"
destination2 = "c:\Fisher-Price-Menu\MIDI\"
destination3 = "c:\Fisher-Price-Menu\SCAD\"
destination4 = "c:\Fisher-Price-Menu\SRC\"
destination5 = "c:\Fisher-Price-Menu\TEMP\"
Cls
Print
Print UserInputFile2a
Print
Print "Press ay ky to continue"
Do While InKey$ = ""
Loop
Shell _Hide Chr$(34) + "scide.exe" + Chr$(34)
shell _Hide chr$(34) + "(;"+chr$(34)
'// Test that your MIDI file can be transposed and listen to the result
shell _hide chr$(34)+ "f = FisherPriceRecords.openMIDI("
~/Berlo1.mid".standardizePath, "Bolero");"
f.success.if({
    f.p.play;
})
//Note that the durations in the pattern are from the MIDI file.
//When you create the disk, the notes will be scaled to cover one rotation
// of the disk.
//The rotational speed of the disk depends on how tightly the spring is wound.
?
)
(
f.realise(2); // This is a short loop, so repeat it
f.write("~/bolero2.scad".standardizePath);
)

Print "Done"
Return
GoTo choosedrive
writefile_2:
_FullScreen
destination1 = "c:\Fisher-Price-Menu\FPR"
destination2 = "c:\Fisher-Price-Menu\MIDI\"
destination3 = "c:\Fisher-Price-Menu\SCAD\"
destination4 = "c:\Fisher-Price-Menu\SRC\"
destination5 = "c:\Fisher-Price-Menu\TEMP\"

UserInputFile1b = runit1b + ".mid"
UserInputfile2b = runit2b + ".mid"



Print "......"
Print "Done"
Print
GoTo choosedrive
Return
playfile:
If TwoSided = "N" Then
    Shell _Hide Chr$(34) + "f.p.play" + "(\" + runit2a + ")"
End If
If TwoSided = "Y" Then
    Shell _Hide Chr$(34) + "f.p.play" + "(\" + runit2a + ")"
End If
Return
choosedrive:
_FullScreen
Screen 12
Cls
Color 4, 2
Cls
Print
Print "                Fisher-Price Music Box Custom Plastic Disc Creator      "
Print
Print "            Program written by Russ Campbell - Copyright (c) July 2024  "
Print
Print "                    This program will create the Fisher Price"
Print "                   Music Box Disk Scad 3D printer files for you."
Print "                   ---------------------------------------------"
Print
Print "         Please Choose whether or not you want [1] side or [2] sides for "
Print "         creating your replica Fisher Price Disk. Once you have picked"
Print "         Either One or Two sides, when you get a drawing with colored dots"
Print "         you would press 's' to save the file, 'p' to play back the "
Print "         sound that would come from the plastic records, or 'q' to quit"
Print "         the table with the sound symbols on it, also you can use the four"
Print "         arrow keys to move around or change any note in the program."
Print
Print "         Once this is done either once or twice, the Python scripts will"
Print "         create the SCAD files for your 3D printing , you need to have"
Print "         the latest version of Python and issue all of the following "
Print "         commands to update this program so that it will work."
Print
Print "         pip install wheel, pip install playsound, pip install mido. "
Print "         pip install python-rtmidi for MIDI playback. If you intend"
Print "         to use a real musical keyboard to hear what your disk will"
Print "         sound like then you need to install packages for that."
Print
Print "         Lastly you will need OpenSCAD to render SCAD files to STL files."
Print
Print "         [1] side  [2] sides  [Q]  Quit  :  >==========>>>>>>  ";


choices = Input$(1)
choices = UCase$(choices)
Print choices: Print
If choices = "1" Then SIDES = 1: TwoSided = "N": GoTo begin2
If choices = "2" Then SIDES = 2: TwoSided = "Y": GoTo begin2
If choices = "Q" Then GoTo finish
GoTo choosedrive
handler:

Print "error handler RUN!!!!": Sleep 2
Select Case Err
    Case 76: ChDir Left$(_CWD$, 3) + ":": GoTo start: Resume Next 'path not found ugrade / add + ":" and goto start
End Select
finish:
End
Function Browse$ (arr() As String, X, Y, lenght, height, numDirs, Drives As String, UseWheel)
    ' X and Y are coordinates for left upper corner, lenght is window lenght in CHARACTERS, height is window height in records + 2, numDirs = how nmuch
    ' records from begin in array arr() are DIRECTORIES, Drives is string contains valid disk names in Windows, in Linux it is empty string

    ListColor& = _RGB32(166, 244, 244)
    InPosColor& = _RGB32(67, 72, 238)
    DirColor& = _RGB32(238, 22, 28)
    'create string with drives names (i see this first by Eoredson)
    For Driv = 1 To Len(Drives)
        OnScreenDrives$ = OnScreenDrives$ + "[" + Mid$(Drives$, Driv, 1) + ":] "
    Next Driv
    If Len(OnScreenDrives$) > lenght Then OnScreenDrives$ = Left$(OnScreenDrives$, lenght - 3) + LTrim$("...")

    If Lb = 0 And le = 0 Then
        Lb = 1
        le = 20
    End If

    If InStr(1, _OS$, "WINDOWS") Then sel$ = Chr$(92)
    If InStr(1, _OS$, "LINUX") Then sel$ = "/"
    first = 1



    Do
        K& = _KeyHit
        iink$ = UCase$(InKey$)
        If Len(iink$) Then
            If InStr(1, Drives$, iink$) Then
                newdrive$ = iink$ + ":": ChDir newdrive$: Exit Function
            End If
            iink$ = ""
        End If
        oldposx = posx
        If first Then oldposx = -1: first = 0


        'mouse support ---

        While _MouseInput
            MoX = _MouseX: MoY = _MouseY
            If MoX > X And MoX < X + ((lenght + 4) * 8) And MoY > Y And MoY < Y + (height * 20) + 40 Then 'podle LINE

                poloha = _Ceil((MoY - Y - 20) / 20) 'pro mys


                If UseWheel Then ' in function last parameter: 0 = use wheel, 1 = not use wheel
                    Select Case Sgn(_MouseWheel)
                        Case -1: K& = 18432
                        Case 1: K& = 20480
                    End Select

                Else


                    If poloha < posx - Lb Then K& = 18432
                    If poloha > posx - Lb Then K& = 20480
                End If



                If _MouseButton(1) And poloha >= Lb And poloha <= le Then
                    If MoX < (8 * lenght) + X Then K& = 13: _Delay .1

                End If



                If _MouseButton(1) And MoX > (8 * lenght) + X And MoY < Y + 16 Then 'mouse / up arrow
                    K& = 18432
                End If


                If _MouseButton(1) And MoX > (8 * lenght) + X And MoY > Y + (height * 20) + 24 Then 'mouse / down arrow
                    K& = 20480
                End If
            End If

            'podpora prepnuti disku mysi: drive select mouse support (alfa - not full tested)

            If MoX >= X + 10 And MoX < X + 10 + (8 * Len(OnScreenDrives$)) - 8 And MoY >= (Y + 20 * height) + 50 And MoY < (Y + 20 * height) + 66 Then
                If _MouseButton(1) Then
                    DiskSel = _Ceil(((MoX - X + 10) / 8) / 6)
                    If DiskSel > Len(Drives$) Then DiskSel = Len(DiskSel)
                    iink$ = Mid$(Drives$, DiskSel, 1)
                    newdrive$ = iink$ + ":": ChDir newdrive$: Exit Function
                End If
            End If

        Wend
        '------------------


        ' --- keyboard inputs
        Select Case K&
            Case 18432: posx = posx - 1: GU = 1: GD = 0 'marks: Go down disabled, go up enbabled
            Case 20480: posx = posx + 1: GU = 0: GD = 1 'marks: Go down enabled, go up disabled
            Case 13: Browse$ = _CWD$ + sel$ + arr(posx) + dd$: Exit Function 'or if your choice is array record number then return PosX and erase $ in func name 'directory move is solved in my loop
            Case 27: Browse$ = "---E": Exit Function
            Case 32:
        End Select
        ' -------------------

        'if is link selected (not dir):
        If UBound(arr) < 0 Then Exit Function 'Browse$ = LEFT$(_CWD$, 3): EXIT FUNCTION
        'end of bug repair

        If posx <= 0 Then posx = 0: Lb = 0: le = Lb + height
        If posx > UBound(arr) - 1 Then posx = UBound(arr) - 1
        If oldposx <> posx Then
            If posx > le And GD Then Lb = Lb + 1: le = le + 1
            If GU And posx < Lb Then Lb = Lb - 1: le = le - 1
            textpos = 0
            If le > UBound(arr) Then le = UBound(arr)
            If le - Lb > height Then le = Lb + height
            If Lb > le Then Exit Function


            For V = Lb To le 'List Begin to List End
                textpos = textpos + 20 'row is 20 pixel height
                If V = posx Then
                    Color InPosColor&, ListColor&
                Else
                    If V > numDirs - 1 Then Color ListColor& Else Color DirColor&
                    If posx <= numDirs - 1 Then dd$ = ".DIR." Else dd$ = ""
                End If
                text$ = arr(V)
                If Len(text$) > lenght - 2 Then text$ = Left$(text$, lenght - 4) + LTrim$("...") Else text$ = text$ + Space$(lenght - Len(text$) - 1)
                _PrintString (X + 10, Y + textpos), text$
                Color ListColor&, _RGB32(0, 0, 0)


                possss = posx + 1


                Posuvnik_V_Procentech! = (possss / UBound(arr))

                '----------------------------------------------------------------------- dodelat
                WindowHeight = (23 + height * 20) - 40
                OldGC = GC
                GC = Y + WindowHeight * Posuvnik_V_Procentech!

                Color _RGB32(0, 0, 0)
                _PrintString (X + 5 + lenght * _FontWidth, OldGC + 22), Chr$(222)
                Color _RGB32(127, 127, 127)
                _PrintString (X + 5 + lenght * _FontWidth, GC + 22), Chr$(222)

                _PrintString (X + 5 + lenght * _FontWidth, Y + 7), Chr$(24)
                _PrintString (X + 5 + lenght * _FontWidth, 3 + Y + 20 + height * 20), Chr$(25)
                '---------------------------------------------------------------------------

            Next V

            diskar:
            Color _RGB32(255, 255, 0)
            _PrintString (X + 10, (Y + 20 * height) + 50), OnScreenDrives$
            Color _RGB32(255, 205, 249)
            CWD$ = _CWD$
            If Len(CWD$) > lenght Then CWD$ = Left$(CWD$, lenght - 3) + LTrim$("...")
            _PrintString (X + 10, (Y + 20 * height) + 70), CWD$
        End If

        Line (X + 1, Y + 1)-(X + 3 + (8 * lenght) + 16, Y + 3 + (20 * height) + 90), , B
        Line (X + 4, Y + 4)-(X + (8 * lenght) + 16, Y + (20 * height) + 90), , B
        Line (X + 4, Y + (height * 20) + 40)-(X + (8 * lenght) + 16, Y + (height * 20) + 40), , B



        _Limit 80
    Loop
End Function


Function LoadDrives$ (drives() As String)
    If InStr(_OS$, "[WINDOWS]") Then
        Shell _Hide Chr$(34) + "wmic logicaldisk get name" + Chr$(34) + ">TempDirList.txt"
        ReDim drives(0) As String

        Open "TempDirList.txt" For Input As #1
        Line Input #1, junk$ 'First line is  name
        counter = 0
        Do Until EOF(1)
            counter = counter + 1
            Input #1, junk$ 'drive name
            ReDim _Preserve drives(counter) As String
            If Len(junk$) > 1 Then junk$ = Mid$(junk$, 2, 1) + ":" Else junk$ = "": counter = counter - 1
            If junk$ <> "" Then
                drives(counter) = junk$
            End If
        Loop
        Close #1
        Kill "TempDirList.txt"

        For manual = 1 To counter
            LoadDrives$ = drives() + Left$(drives(manual), 1)
        Next
    End If
End Function

Sub GetFileList (SearchDirectory As String, DirList() As String, FileList() As String)
    Const IS_DIR = 1
    Const IS_FILE = 2
    Dim flags As Long, file_size As Long

    ReDim _Preserve DirList(100), FileList(100)
    DirCount = 0: FileCount = 0

    If load_dir(SearchDirectory) Then
        Do
            length = has_next_entry
            If length > -1 Then
                nam$ = Space$(length)
                get_next_entry nam$, flags, file_size
                If flags And IS_DIR Then
                    DirCount = DirCount + 1
                    If DirCount > UBound(DirList) Then ReDim _Preserve DirList(UBound(DirList) + 100)
                    DirList(DirCount) = nam$
                ElseIf flags And IS_FILE Then
                    FileCount = FileCount + 1
                    If FileCount > UBound(FileList) Then ReDim _Preserve FileList(UBound(FileList) + 100)
                    FileList(FileCount) = nam$
                End If
            End If
        Loop Until length = -1
        close_dir
    Else
    End If
    ReDim _Preserve DirList(DirCount)
    ReDim _Preserve FileList(FileCount)
End Sub

