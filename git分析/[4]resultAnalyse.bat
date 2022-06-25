echo off

set dir=%~dp0
cd %dir%

echo ----START---- > result.log

for %%i in (%dir%\*.txt) do (
echo %%i >> result.log
findstr /R [\s\S]*[.][j][a][v][a] %%i | find "-" >> result.log
)

echo ----END---- >> result.log
pause