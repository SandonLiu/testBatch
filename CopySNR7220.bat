@echo off

::Initial Setting
SET batFile=%~n0
SET object=%batFile:~-7,7%
SET Path=G:\test\testBatch
SET pathFrom=%Path%\From\
SET pathTo=%Path%\To\

::Create Path for Backup
SET ymd=%date:~0,4%%date:~5,2%%date:~8,2%
SET hms=%time:~0,2%%time:~3,2%_%time:~6,2%%time:~9,2%
SET bakFile=%ymd%_%hms%
SET pathToBackUp=%pathTo%bak\%bakFile%
IF NOT EXIST %pathToBackUp% (mkdir %pathToBackUp%)

::Create FileName
SET file_exeConfig=%object%.exe.config
SET file_logicTxt=%object%Logic.txt

@echo on

::Backup All Files
REM "-----------------------Backup PathTo Files Start-----------------------"
COPY %pathTo%%file_exeConfig% %pathToBackUp%
COPY %pathTo%%file_logicTxt% %pathToBackUp%
REM "-----------------------Backup PathTo Files End------------------------"

::Force to Copy All Files
REM "-----------------------Copy Files Start-----------------------"
COPY %pathFrom%%file_exeConfig% %pathTo%
COPY %pathFrom%%file_logicTxt% %pathTo%
REM "-----------------------Copy Files End------------------------"

pause