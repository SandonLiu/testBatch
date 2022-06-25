@echo off

set dir=%~dp0
set branch=develop
cd %dir%
for /d %%i in (%dir%\*) do (
cd %%i
git fetch
git diff master develop --stat > %%i.txt
echo %%i is finished
)
pause