@echo off 
mode con cols=18 lines=12
set m=0
color a
:a
set /a m=m+1
if %m% == 1 set "c=  "
if %m% == 2 set "c=―"
if %m% == 3 set "c=  "& set m=1
cls
echo=
set X=%time:~0,8%
ECHO      %X%
title %X%
echo=
echo  ――――――――
echo  ―%c%%c%――%c%%c%―
echo  ―    ――    ―
echo  ―――    ―――
echo  ――        ――
echo  ――        ――
echo  ――  ――  ――
echo  ――――――――
timeout /t 1 /nobreak >nul
goto a