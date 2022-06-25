@echo off

set dir=%~dp0
set branch=develop
cd %dir%
for /d %%i in (%dir%\*) do (
cd %%i
git fetch
git checkout -b %branch% remotes/origin/%branch%
git pull origin %branch%

)
pause