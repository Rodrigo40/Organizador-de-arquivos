@echo off
title Organizador de arquivos 0.1 by Rodrigo40
setlocal enabledelayedexpansion

:: Caminho da pasta que contém os arquivos
set "C:\Users\%username%\Downloads\"

cd /d "%PASTA%"

for %%F in (*.*) do (
    if not "%%~xF"=="" (
        set "NOME=%%~nF"
        mkdir "!NOME!" 2>nul
        move "%%F" "!NOME!\"
    )
)

echo Concluído.
pause
