@echo off
setlocal
cd /d "%~dp0"

set "VENV_PY=%~dp0..\.venv\Scripts\python.exe"

if not exist "%VENV_PY%" (
    echo Could not find virtual environment Python:
    echo %VENV_PY%
    echo.
    echo Please create/install the virtual environment from the addon root first.
    pause
    exit /b 1
)

"%VENV_PY%" logic_gui.py
pause
