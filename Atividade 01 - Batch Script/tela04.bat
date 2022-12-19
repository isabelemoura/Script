@echo off
rem comentario
title ATIVIDADE 01 - SI
mode 60,80
color 01
:inicio
cls
echo.
echo =====================================
echo         APLICATIVOS DO WINDOWS
echo =====================================
echo [C] Calculadora
echo [T] Teclado Virtual 
echo [W] Windows Explorer
echo [P] Paint
echo [B] Bloco de Notas
echo [R] Retornar ao Menu
echo ======================================
echo.
set /p op=Digite a opcao desejada:
if %op% == c (goto:calculadora)
if %op% == t (goto:teclado)
if %op% == w (goto:web)
if %op% == p (goto:paint)
if %op% == b (goto:bloco)
if /i %op% == r (call tela01.bat) else (
   echo.
   echo -----------------------------------
   echo      OPCAO INVALIDA !!!
   echo -----------------------------------
   pause > nul
   goto inicio)

:teclado
start osk.exe
goto inicio

:paint
start mspaint.exe
goto inicio

:calculadora
start calc.exe
goto inicio

:web
echo.
set /p site=Digite o endereco da pagina web:
start %site%
goto inicio

:bloco
start notepad.exe
goto inicio