@echo off
rem comentario
title ATIVIDADE 01 - SI
mode 60,80
color 01
:inicio
cls
echo.
echo =====================================
echo             PACOTE OFFICE
echo =====================================
echo [W] Word
echo [E] Excel
echo [A] Acess
echo [R] Retornar ao Menu
echo ======================================
echo.
set /p op=Digite a opcao desejada:
if %op% == w (goto:texto)
if %op% == e (goto:planilha)
if %op% == a (goto:acess)
if /i %op% == r (call tela01.bat) else (
   echo.
   echo -----------------------------------
   echo      OPCAO INVALIDA !!!
   echo -----------------------------------
   pause > nul
   goto inicio)

:texto
start winword.exe
goto inicio

:planilha
start excel.exe
goto inicio

:acess
start msaccess.exe
goto inicio

