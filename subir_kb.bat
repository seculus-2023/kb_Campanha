@echo off
:: --- CONFIGURAÇÕES ---
:: Certifique-se de NÃO deixar espaços entre o = e a URL
set REPO_URL=https://github.com/seculus-2023/kb_Campanha.git
set MENSAGEM="Backup KB GeneXus - %date% %time%"

echo [1/5] Inicializando Git...
if not exist .git (
    git init
    git remote add origin %REPO_URL%
)

echo [2/5] Sincronizando com arquivos do GitHub (Pull)...
:: Isso resolve o erro "rejected" trazendo o que ja existe la
git pull origin main --rebase

echo [3/5] Adicionando arquivos locais...
git add .

echo [4/5] Criando commit...
git commit -m %MENSAGEM%

echo [5/5] Enviando para o GitHub...
git branch -M main
git push -u origin main

echo Processo concluido!
pause
