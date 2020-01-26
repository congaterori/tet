@echo off
title tet
color a
cls
color 6e
type C:\Users\%Username%\Desktop\tet\money\logo.txt
echo.
timeout 10 > nul
color a
type C:\Users\%Username%\Desktop\tet\luckeymoney.txt
echo.
pause
cls
goto li_xi
:li_xi
cls
color c
type C:\Users\%Username%\Desktop\tet\li_xi.txt
timeout 1 > nul
cls
type C:\Users\%Username%\Desktop\tet\li_xi_2.txt
timeout 2 > nul
cls
type C:\Users\%Username%\Desktop\tet\li_xi.txt
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)

call :ColorText a "Choose a button"
echo.
endlocal
echo.
cmdMenuSel f870 "Open" "Get another" "Exit"
if %ERRORLEVEL% == 1 goto open
if %ERRORLEVEL% == 2 goto li_xi
if %ERRORLEVEL% == 3 goto exit
:open
cls
color c
type C:\Users\%Username%\Desktop\tet\li_xi_open.txt
echo.
echo loading...
timeout 5 > nul
cls
color a
FOR /l %%i IN (1,1,7) DO CALL :showme
GOTO :eof

:showme
color a
cls
SET /A select=%RANDOM% * 8 / 32768 + 1
echo Congratulations you got:
echo.
if %select% == 1 goto 1
rem type 1bigdola.txt
if %select% == 2 goto 2
rem type 1dola.txt
if %select% == 3 goto 3
rem type 1dola_old.txt
if %select% == 5 goto 4
rem type 50dola.txt
if %select% == 6 goto 5
rem type 100dola.txt
if %select% == 7 goto 6
rem type combo100dola.txt
if %select% == 8 goto 7
rem type fivedola_gold.txt
goto showme
:1
type C:\Users\%Username%\Desktop\tet\money\1bigdola.txt
goto next
:2
goto type C:\Users\%Username%\Desktop\tet\money\1dola.txt
goto next
:3
type C:\Users\%Username%\Desktop\tet\money\1dola_old.txt
goto next
:4
type C:\Users\%Username%\Desktop\tet\money\50dola.txt
goto next
:5
type C:\Users\%Username%\Desktop\tet\money\100dola.txt
goto next
:6
type C:\Users\%Username%\Desktop\tet\money\combo100dola.txt
goto next
:7
type C:\Users\User\Desktop\more\tet\money\fivedola_gold.txt
goto next
:next
color a
echo.
pause > nul
cls
goto li_xi
:ColorText
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1
goto :eof
:exit
exit
