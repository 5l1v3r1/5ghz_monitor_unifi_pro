@echo off

title Unifi Pro Monitor Mode By Dean O'Neill

color a

FOR /F "usebackq" %%i IN (`hostname`) DO SET HOST=%%i
cls 

echo.
echo Wellcome %USERNAME%
echo This tool is for Unifi pro
echo to set the monitor mode
echo on the Router
echo.
echo You Need Putty In Your Downloads Folder
echo.
pause 
cls


:Menu1
cls
echo Choose a Option 
echo.
echo --------------------------------------------------
echo 0 - Connect Via SSH to the Router Using Putty
echo 1 - Set monitor Mode on Both Antenas
echo 2 - Set Channel Number Antena 1
echo 3 - Set Channel Number Antena 2
echo 4 - Dump Output to WireShark
echo 5 - View in Current Session
echo 6 - EXIT
echo --------------------------------------------------
echo.


SET /P A=Type Pick a Number then press ENTER:
IF %A%== 0 GOTO :SSH
IF %A%== 1 GOTO :MonMode
IF %A%== 2 GOTO :Menu2
IF %A%== 3 GOTO :Menu3
IF %A%== 4 GOTO :Menu4
IF %A%== 5 GOTO :dumpsesh
IF %A%== 6 EXIT




:SSH 
cls
echo.
echo Will Now Atempt to SSH to the UNIFI Router
echo.
Pause
start C:\Users\%USERNAME%\Downloads\unifi\putty.exe -ssh 192.168.1.20 -l "ubnt" -pw "ubnt"
start Unifi_Mon_Mode.bat
cls
goto: Menu1


:MonMode
echo.
echo will not attemp to set monitor mode 
echo. 
pause
cls
putty.exe -m C:\Users\%USERNAME%\Downloads\unifi\monmode.txt
cls
goto: Menu1




:Menu2
echo Choose a Option 
echo.
echo --------------------------------------------------
echo you are in Antena 1 Channel Selector
echo only works after setting monitor mode
echo choose a number between 1 - 14 
echo 0 - Main Menu
echo --------------------------------------------------
echo.


SET /P B=Type Pick a Number then press ENTER:
IF %B%== 0 GOTO :Menu1
IF %B%== 1 GOTO :mon0ch1
IF %B%== 2 GOTO :mon0ch2
IF %B%== 3 GOTO :mon0ch3
IF %B%== 4 GOTO :mon0ch4
IF %B%== 5 GOTO :mon0ch5
IF %B%== 6 GOTO :mon0ch6
IF %B%== 7 GOTO :mon0ch7
IF %B%== 8 GOTO :mon0ch8
IF %B%== 9 GOTO :mon0ch9
IF %B%== 10 GOTO :mon0ch10
IF %B%== 11 GOTO :mon0ch11
IF %B%== 12 GOTO :mon0ch12
IF %B%== 13 GOTO :mon0ch13
IF %B%== 14 GOTO :mon0ch14


:Menu3
echo Choose a Option 
echo.
echo --------------------------------------------------
echo you are in Antena 1 Channel Selector
echo only works after setting monitor mode
echo choose a number between 1 - 14 
echo 0 - Main Menu
echo --------------------------------------------------
echo.


SET /P C=Type Pick a Number then press ENTER:
IF %C%== 0 GOTO :Menu1
IF %C%== 1 GOTO :mon1ch1
IF %C%== 2 GOTO :mon1ch2
IF %C%== 3 GOTO :mon1ch3
IF %C%== 4 GOTO :mon1ch4
IF %C%== 5 GOTO :mon1ch5
IF %C%== 6 GOTO :mon1ch6
IF %C%== 7 GOTO :mon1ch7
IF %C%== 8 GOTO :mon1ch8
IF %C%== 9 GOTO :mon1ch9
IF %C%== 10 GOTO :mon1ch10
IF %C%== 11 GOTO :mon1ch11
IF %C%== 12 GOTO :mon1ch12
IF %C%== 13 GOTO :mon1ch13
IF %C%== 14 GOTO :mon1ch14




:mon0ch1
putty.exe -m Iwconfig mon0 Channel 1
cls
GOTO :Menu2

:mon0ch2
putty.exe -m Iwconfig mon0 Channel 2
cls
GOTO :Menu2

:mon0ch3
putty.exe -m Iwconfig mon0 Channel 3
cls
GOTO :Menu2

:mon0ch4
putty.exe -m Iwconfig mon0 Channel 4
cls
GOTO :Menu2

:mon0ch5
putty.exe -m Iwconfig mon0 Channel 5
cls
GOTO :Menu2

:mon0ch6
putty.exe -m Iwconfig mon0 Channel 6
cls
GOTO :Menu2

:mon0ch7
putty.exe -m Iwconfig mon0 Channel 7
cls
GOTO :Menu2

:mon0ch8
putty.exe -m Iwconfig mon0 Channel 8
cls
GOTO :Menu2

:mon0ch9
putty.exe -m Iwconfig mon0 Channel 9
cls
GOTO :Menu2

:mon0ch10
putty.exe -m Iwconfig mon0 Channel 10
cls
GOTO :Menu2

:mon0ch11
putty.exe -m Iwconfig mon0 Channel 11
cls
GOTO :Menu2

:mon0ch12
putty.exe -m Iwconfig mon0 Channel 12
cls
GOTO :Menu2

:mon0ch13
putty.exe -m Iwconfig mon0 Channel 13
cls
GOTO :Menu2

:mon0ch14
putty.exe -m Iwconfig mon0 Channel 14
cls
GOTO :Menu2


:mon1ch1
putty.exe -m Iwconfig mon1 Channel 1
cls
GOTO :Menu3

:mon1ch2
putty.exe -m Iwconfig mon1 Channel 2
cls
GOTO :Menu3

:mon1ch3
putty.exe -m Iwconfig mon1 Channel 3
cls
GOTO :Menu3

:mon1ch4
putty.exe -m Iwconfig mon1 Channel 4
cls
GOTO :Menu3

:mon1ch5
putty.exe -m Iwconfig mon1 Channel 5
cls
GOTO :Menu3

:mon1ch6
putty.exe -m Iwconfig mon1 Channel 6
cls
GOTO :Menu3

:mon1ch7
putty.exe -m Iwconfig mon1 Channel 7
cls
GOTO :Menu3

:mon1ch8
putty.exe -m Iwconfig mon1 Channel 8
cls
GOTO :Menu3

:mon1ch9
putty.exe -m Iwconfig mon1 Channel 9
cls
GOTO :Menu3

:mon1ch10
putty.exe -m Iwconfig mon1 Channel 10
cls
GOTO :Menu3

:mon1ch11
putty.exe -m Iwconfig mon1 Channel 11
cls
GOTO :Menu3

:mon1ch12
putty.exe -m Iwconfig mon1 Channel 12
cls
GOTO :Menu3

:mon1ch13
putty.exe -m Iwconfig mon1 Channel 13
cls
GOTO :Menu3

:mon1ch14
putty.exe -m Iwconfig mon1 Channel 14
cls
GOTO :Menu3

:Menu4
echo Choose a Option 
echo.
echo --------------------------------------------------
echo you are in the dump menu
echo 0 - Main Menu
echo 1 - Dump Antena 1
echo 2 - Dump Antena 2
echo 3 - Dump Both Antenas 
echo --------------------------------------------------
echo.


SET /P D=Type Pick a Number then press ENTER:
IF %D%== 0 GOTO :Menu1
IF %D%== 1 GOTO :dumpmon0
IF %D%== 2 GOTO :dumpmon1
IF %D%== 2 GOTO :dumpmonall

:dumpmon0
cls
putty.exe -m tcpdump -i mon0 -U -s0 -w - | wireshark -k -i - 
cls 
GOTO: Menu4

:dumpmon1
cls
putty.exe -m tcpdump -i mon1 -U -s0 -w - | wireshark -k -i - 
cls 
GOTO: Menu4

:dumpmonall
cls
putty.exe -m tcpdump -i mon0 -U -s0 -w - | wireshark -k -i - && tcpdump -i mon1 -U -s0 -w - | wireshark -k -i -
cls 
GOTO: Menu4



:dumpsesh
echo Choose a Option 
echo.
echo --------------------------------------------------
echo Session Dump into Current Console
echo 0 - Main Menu
echo 1 - Dump Antena 1
echo 2 - Dump Antena 2
echo 3 - Dump Both Antenas
echo --------------------------------------------------
echo.


SET /P F=Type Pick a Number then press ENTER:
IF %F%== 0 GOTO :Menu1
IF %F%== 0 GOTO :dumat1
IF %F%== 0 GOTO :dumat0
IF %F%== 0 GOTO :dumat10

:dumat1
cls
putty.exe -m tcpdump -i mon0 -vvv 
cls 
GOTO: :dumpsesh

:dumat0
cls
putty.exe -m tcpdump -i mon1 -vvv
cls 
GOTO: :dumpsesh

:dumat10
cls
putty.exe -m tcpdump -i mon0 -vvv && tcpdump -i mon1 -vvv 
cls 
GOTO: :dumpsesh
