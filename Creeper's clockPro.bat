@echo off 
mode con cols=20 lines=18
set m=0
color a
set X2=%time:~9,10%
:a
set X1=%time:~9,10%
set /a m=m+1
if %m% == 1 set "c=  "
if %m% == 2 set "c=―"
if %m% == 3 set "c=  "& set m=1
cls
echo=
set X=%time:~0,8%
ECHO      %X%
title %X%
set X4=%time:~9,10%
set /a t3=%x2%-%x4%+100
set X2=%time:~9,10%
echo=
echo  ――――――――
echo  ―%c%%c%――%c%%c%―
echo  ―    ――    ―
echo  ―――    ―――
echo  ――        ――
echo  ――        ――
echo  ――  ――  ――
echo  ――――――――
set X3=%time:~9,10%
echo  %x1% %x2% %x3%
set /a t1=%x2%-%x1%
set /a t2=%x3%-%x2%
ECHO  TimeCPU : %t1%0 ms
ECHO  TimeSHOW: %t2%0 ms
ECHO  Spacing : %t3%0 ms
if %t3% lss 100 (
set fps=2
)else set fps=1
echo  FPS: %fps%
timeout /t 1 /nobreak >nul
goto a