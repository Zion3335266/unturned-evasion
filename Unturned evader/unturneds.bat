@echo off
color 0C

set "source=C:\Program Files (x86)\Steam\steamapps\common\Unturned"
set "destination=C:\Program Files (x86)\Steam\steamapps\common\Mango"

echo Emptying "%source%"...

IF EXIST "%source%" (
    rd /S /Q "%source%"
)

echo Copying contents from "%destination%" to "%source%"...

IF EXIST "%destination%" (
    xcopy /E /I /H /Y "%destination%\*" "%source%\"
    if %errorlevel% equ 0 (
        echo Successfully replaced.
    ) else (
        echo Failed to replace.
    )
) else (
    echo Source directory "%destination%" not found.
)

echo Made by ChatGPT, you skid.
pause
