@echo off
rem comentario
title ATIVIDADE 01 - SI
mode 60,80
color 0a
:inicio
cls
echo.
echo =====================================
echo            MENU PRINCIPAL
echo =====================================
echo [P] PACOTE OFFICE
echo [S] SERVICO DE REDE
echo [A] APLICATIVO WINDOWS
echo [E] ENCERRAR SESSAO
echo [F] FINALIZAR O PROGRAMA
echo =====================================
echo.
set /p op=Digite a opcao desejada:

if /i %op% == p (call tela02.bat)
if /i %op% == s (call tela03.bat)
if /i %op% == a (call tela04.bat)
if %op% == e (goto:encerrar)
if %op% == f (goto:sair) else (
   echo.
   echo ----------------------------------
   echo      OPCAO INVALIDA !!!
   echo ----------------------------------
   pause > nul
   goto inicio)

:encerrar
echo.
set /p sessao=Deseja encerrar a sessao? [S/N]:
if /i %sessao% == S (call login.bat) else (goto:inicio)

:sair 
echo.
set /p resp=Deseja realmente sair? [S/N]:
if /i %resp% == S (exit) else (goto:inicio)