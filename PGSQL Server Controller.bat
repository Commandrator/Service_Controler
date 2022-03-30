@echo off
title Hizmet kontrol Araci
set "item[0]=postgresql-x64-14"
set "item[1]=pgagent-pg14"
set "item[2]=PEMHTTPD"
:Baslangic
echo 1-)Hizmetleri Baslat
echo 2-)Hizmetleri Duraklat
echo 3-)Hizmetleri Durdur
echo.
set /p deger=Girdi:
IF %deger%==1 set islem=Start &cls &goto Fonksiyon
IF %deger%==2 set islem=Pause &cls &goto Fonksiyon
IF %deger%==3 set islem=Stop  &cls &goto Fonksiyon
cls &goto Baslangic

:Fonksiyon
sc %islem% %item[0]%
sc %islem% %item[1]%
sc %islem% %item[2]%
ping localhost -n 3 >nul &cls
goto Baslangic
