@echo off
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > out.txt 2>&1
net config server /srvcomment:"Windows Server By Arimonox" > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
net user Arimonox Ari@202022 /add >nul
net localgroup administrators Arimonox /add >nul
net user LittleFox /active:yes >nul
net user installer /delete
diskperf -Y >nul
sc config Audiosrv start= auto >nul
sc start audiosrv >nul
ICACLS C:\Windows\Temp /grant Arimonox:F >nul
ICACLS C:\Windows\installer /grant Arimonox:F >nul
echo Successfully installed! If RDP is dead, rebuild again.
echo IP:
tailscale.exe up
tailscale.exe web
echo Username: Arimonox
echo Password: Ari@202022
echo You can login now!
ping -n 10 127.0.0.1 >nul
