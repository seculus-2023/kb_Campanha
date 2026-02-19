@echo off
:: --- CONFIGURAÇÕES ---
set REPO_URL=https://github.com/seculus-2023/kb_Campanha.git

https://github.com

set MENSAGEM="Backup KB GeneXus - %date% %time%"

:: --- EXECUÇÃO ---
echo [1/4] Inicializando Git (se necessario)...
if not exist .git (
    git init
    git remote add origin %REPO_URL%
)

echo [2/4] Adicionando arquivos...
git add .

echo [3/4] Criando commit...
git commit -m %MENSAGEM%

echo [4/4] Enviando para o GitHub (Main)...
git branch -M main
git push -u origin main

echo Processo concluido!
pause
