rem�@������������������������������������������������������������
rem�@���������@�`�s�n�l�r�ȈՃ��W���[�������J�n�i�����j�@��������
rem�@������������������������������������������������������������
rem�@���������@�@�@�@�@Atoms3�����@���p�@�@�@�@�@�@�@�@��������
rem�@������������������������������������������������������������
rem  ���������� 2022/06/14 �Z�u���������Q�ƌ��ɕύX

set SERVER=\\172.16.3.152\reltool

@echo off
echo %date% %time% *** �ȈՃ��W���[�������i�����j�J�n *** >> d:\atoms\log\module_copy.log
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

REM I/F�t�@�C���i�[�f�B���N�g���̎w��
SET WorkDir=D:\ATOMS\EjbGW
REM woifgen.bat�̏ꏊ
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

rem ��StartUsr2���K�p����Ȃ��ꍇ�p
echo ##### EJBGW REG Check #####
echo ���̏����ɂ�2�`3�����x������ꍇ������܂�
echo �s�v�ȃ��W�X�g�����N���A��...
REM D:\ATOMS\Bin\SLEEP 6000
REM TimeOut 600 /NoBreak > Nul
cd /d D:\ATOMS\EjbGW
C:\SDE\ejbgw\woifgen.exe /c /s

echo %date% %time% *** �ȈՃ��W���[�������i�����j���� *** >> d:\atoms\log\module_copy.log
echo. >> d:\atoms\log\module_copy.log

echo %date% %time%�@���������@�ȈՃ��W���[�������i�����j�@�����@��������

rem pause

exit