@echo off
rem comentario
title ATIVIDADE 01 - SI
mode 60,80
color 01
:inicio
cls
echo.
echo ==============================================
echo                    LOGIN
echo ==============================================
echo.
set /p usuario=Digite o seu usuario:
set /p senha=Digite a sua senha:

if %usuario% == fatec (goto:validar_senha) else (
   echo.
   echo -------------------------------------------
   echo      USUARIO e SENHA INVALIDOS !!!
   echo -------------------------------------------
   pause > nul
   goto inicio)
   
:validar_senha
if %senha% == 123 (call tela01.bat) else (
   echo.
   echo -------------------------------------------
   echo      USUARIO e SENHA INVALIDOS !!!
   echo -------------------------------------------
   pause > nul
   goto inicio)