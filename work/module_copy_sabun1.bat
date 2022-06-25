rem　＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊
rem　＊＊＊＊　ＡＴＯＭＳ簡易モジュール同期開始（差分）　＊＊＊＊
rem　＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊
rem　＊＊＊＊　　　　　Atoms3結合　環境用　　　　　　　　＊＊＊＊
rem　＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊
rem  ＊＊＊＊＊ 2022/06/14 セブン東大阪を参照元に変更

set SERVER=\\172.16.3.152\reltool

@echo off
echo %date% %time% *** 簡易モジュール同期（差分）開始 *** >> d:\atoms\log\module_copy.log
echo %date% %time% **** EDAGAWA KETSUGO  ******** >> d:\atoms\log\module_copy.log

cd /d d:\
net use z: /delete /yes
rem @echo on
echo %date% %time% *** module copy start *** >> d:\atoms\log\module_copy.log

net use z: %SERVER% Autobacs7 /user:Autobacs_Atoms
echo %date% %time% *** net use end *** >> d:\atoms\log\module_copy.log

copy Z:\module_copy_sabun2.bat d:\ATOMS\Tools\module_copy_sabun2.bat
echo %date% %time% *** Download batch copy end *** >> d:\atoms\log\module_copy.log

echo %date% %time% *** Download batch start *** >> d:\atoms\log\module_copy.log
call d:\ATOMS\Tools\module_copy_sabun2.bat
echo %date% %time% *** Download batch end *** >> d:\atoms\log\module_copy.log

:STEP010 
rem ##### parameter judge #####
if /i "%1" == "T" GOTO STEP020

REM I/Fファイル格納ディレクトリの指定
SET WorkDir=D:\ATOMS\EjbGW
REM woifgen.batの場所
SET woifgen_bat=D:\ATOMS\Tools\woifgen\woifgen.bat

echo %date% %time% *** woifgen start *** >> d:\atoms\log\module_copy.log

cd /d z:\d\atoms\ejbgw\
for %%i in ( *.if ) do call %woifgen_bat% d:\atoms\ejbgw\%%i

echo %date% %time% *** woifgen end *** >> d:\atoms\log\module_copy.log

:STEP020 
cd /d d:\
net use z: /delete
echo %date% %time% *** net use delete end *** >> d:\atoms\log\module_copy.log

echo %date% %time% *** module copy end *** >> d:\atoms\log\module_copy.log

rem ★StartUsr2が適用されない場合用
echo ##### EJBGW REG Check #####
echo この処理には2～3分程度かかる場合があります
echo 不要なレジストリをクリア中...
REM D:\ATOMS\Bin\SLEEP 6000
REM TimeOut 600 /NoBreak > Nul
cd /d D:\ATOMS\EjbGW
C:\SDE\ejbgw\woifgen.exe /c /s

echo %date% %time% *** 簡易モジュール同期（差分）完了 *** >> d:\atoms\log\module_copy.log
echo. >> d:\atoms\log\module_copy.log

echo %date% %time%　＊＊＊＊　簡易モジュール同期（差分）　完了　＊＊＊＊

rem pause

exit