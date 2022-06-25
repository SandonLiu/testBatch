echo off

set dir=%~dp0
cd %dir%

echo ----START---- > result1.log

for %%i in (%dir%\*.txt) do (
echo %%i >> result1.log
findstr /R [\s\S]* %%i | find "+-" >> result1.log
)

echo ----END---- >> result1.log
pause