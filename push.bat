@echo off
title 🚀 Auto Push ke GitHub - Davclar ERP
color 0A
echo.
echo  ========================================
echo   DAVCLAR ERP - AUTO PUSH KE GITHUB
echo  ========================================
echo.

cd /d "d:\Imam\1. Proyek Bisnis Digital\Aplikasi\ERP - Davclar"

echo  [1/4] Cek status perubahan file...
git status
echo.

echo  [2/4] Menambahkan semua perubahan...
git add .
echo.

echo  [3/4] Membuat commit...
set /p MSG= Tulis pesan update (contoh: fix bug ios sync): 
if "%MSG%"=="" set MSG=update %date% %time%
git commit -m "%MSG%"
echo.

echo  [4/4] Push ke GitHub...
git push
echo.

if %ERRORLEVEL%==0 (
    echo  ========================================
    echo   SUKSES! Netlify akan auto-deploy ~30 detik
    echo  ========================================
) else (
    echo  ========================================
    echo   ADA ERROR! Cek pesan di atas.
    echo  ========================================
)

echo.
pause
