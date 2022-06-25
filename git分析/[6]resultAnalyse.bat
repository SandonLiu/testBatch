echo off

set dir=%~dp0
cd %dir%

echo ----START---- > result2.log

for %%i in (%dir%\*.txt) do (
echo %%i >> result2.log
findstr /R [\s\S]* %%i | find " -" | find /V " ->">> result2.log
)

echo ----END---- >> result2.log
pause