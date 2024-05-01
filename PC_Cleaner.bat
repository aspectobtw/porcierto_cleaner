@echo off
echo Bu bot, Aspect tarafindan hazirlanmistir.
timeout /t 2 >nul
echo Temizlik basliyor...
echo.

:: Temp Dosyaları Temizleme
echo Geçici dosyalar temizleniyor...
del /q "%temp%\*.*" 2>nul
echo Gecici dosyalar temizlendi.
echo.

:: Prefetch Dosyalarini Temizleme
echo Prefetch dosyalari temizleniyor...
del /q "%systemroot%\Prefetch\*.*" 2>nul
echo Prefetch dosyalari temizlendi.
echo.

echo Temizlik tamamlandi.
echo.

:: Tarayici Cache'ini Temizleme (Varsa)
echo Tarayici cache'i temizleniyor...
:: Chrome için
del /q "%LocalAppData%\Google\Chrome\User Data\Default\Cache\*.*" 2>nul
:: Firefox için
del /q "%AppData%\Mozilla\Firefox\Profiles\*\cache2\entries\*.*" 2>nul
echo Tarayici cache'i temizlendi.
echo.

echo Temizlik islemi tamamlandi. Tarayiciyi yeniden baslatmayi unutmayin.
timeout /t 3 >nul

:: youtube.com/@aspectobtw adresine yönlendirme veya kapatma
choice /c YN /m "Aspect'in YouTube kanalina goz atmak ister misiniz? (Y/N)"
if errorlevel 2 goto close
if errorlevel 1 start "" "https://www.youtube.com/@aspectobtw"

:close
exit
