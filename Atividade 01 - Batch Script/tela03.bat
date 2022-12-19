@echo off
rem comentario
title ATIVIDADE 01 - SI
mode 60,80
color 01
:inicio
cls
echo.
echo =====================================
echo           SERVICO DE REDES
echo =====================================
echo [N] Navegar na Web
echo [T] Testar Conexao de Rede
echo [O] Obter o IP da Maquina
echo [R] Retornar ao Menu
echo ======================================
echo.
set /p op=Digite a opcao desejada:
if %op% == n (goto:web)
if %op% == t (goto:teste)
if %op% == o (goto:ip)
if /i %op% == r (call tela01.bat) else (
   echo.
   echo -----------------------------------
   echo      OPCAO INVALIDA !!!
   echo -----------------------------------
   pause > nul
   goto inicio)

:web
echo.
set /p site=Digite o endereco da pagina web:
start %site%
goto inicio

:ip
echo.
ipconfig %verificar% 
pause > nul 
goto inicio

:teste
echo.
set /p testar=Digite o endereco web ou IP da maquina:
ping %testar% -t
goto inicio