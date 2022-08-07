@echo off
title batcalc
:main
mode con:cols=45 lines=3
echo 1 - Select color
echo 2 - Start batcalc
set/p sym=select function:
if "%sym%"=="1" (goto color)
if "%sym%"=="2" (goto batcalc)
goto main


:color
mode con:cols=24 lines=11
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo x - back to main
echo 1 - Lime Theme
echo 2 - Sky Theme
echo 3 - Blood In Water
echo 4 - Ukraine Theme
echo 5 - Light Coffe
echo 6 - Default Blue
echo 7 - Default Green
echo 8 - nn theme
echo x - back to main
set/p sym=select theme:
if "%sym%"=="x" (goto main)
if "%sym%"=="1" (color ae)
if "%sym%"=="2" (color b3)
if "%sym%"=="3" (color bc)
if "%sym%"=="4" (color e9)
if "%sym%"=="5" (color e0)
if "%sym%"=="6" (color 03)
if "%sym%"=="7" (color 02)
if "%sym%"=="8" (color e2)
if "%sym%"=="x" (goto main)
goto color


:batcalc
mode con:cols=39 lines=10
set /p var="num1:"
cls
echo %var%
set /p var1="+/-:"
cls
echo %var%%var1%%num2%
set /p var2="num2:"
cls
set /a var3=%var%%var1%%var2%
echo %var%%var1%%var2%=%var3%
echo. result = %var3%
set/p sym= press X to back to main/press to enter:
if "%sym%"=="x" (goto main)
pause>nul
cls
goto batcalc
