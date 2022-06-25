@echo off

echo start git clone
pause

for /f %%i in (list.log) do git clone -b master http://172.16.3.222:3000/basenetJava/%%i.git %%i

echo 'git clone finish!'

pause