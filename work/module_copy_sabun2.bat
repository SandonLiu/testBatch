rem�@����������������������������������������������������������
rem�@���������@�`�s�n�l�r�ȈՃ��W���[���R�s�[�i�����j�@��������
rem�@����������������������������������������������������������
rem�@���������@�@�@�@�@�X�ܓW�J���Ԓ��Ή��p�@�@�@�@�@�@��������
rem�@����������������������������������������������������������

rem ������͂�������R�����g�A�E�g
rem xcopy Z:\d\ACES D:\ACES /S /E /D /Y /I
rem echo %date% %time% *** module copy ACES end *** >> D:\ATOMS\Log\module_copy.log

xcopy Z:\d\ATOMS\Tools D:\ATOMS\Tools /S /E /D /Y /I
echo %date% %time% *** module copy Tools end *** >> D:\ATOMS\Log\module_copy.log

xcopy Z:\d\ATOMS\Bin D:\ATOMS\Bin /S /E /D /Y /I
echo %date% %time% *** module copy Bin end *** >> D:\ATOMS\Log\module_copy.log

xcopy Z:\d\ATOMS\Config D:\ATOMS\Config /S /E /D /Y /I
echo %date% %time% *** module copy Config end *** >> D:\ATOMS\Log\module_copy.log

xcopy Z:\d\ATOMS\DAT D:\ATOMS\DAT /S /E /D /Y /I
echo %date% %time% *** module copy DAT end *** >> D:\ATOMS\Log\module_copy.log

xcopy Z:\d\ATOMS\EjbGW D:\ATOMS\EjbGW /S /E /D /Y /I
echo %date% %time% *** module copy EjbGW end *** >> D:\ATOMS\Log\module_copy.log

xcopy Z:\d\ATOMS\spoolernet D:\ATOMS\spoolernet /S /E /D /Y /I
echo %date% %time% *** module copy spoolernet end *** >> D:\ATOMS\Log\module_copy.log

xcopy Z:\d\ATOMS\SS_HOME\bin D:\ATOMS\SS_HOME\bin /S /E /D /Y /I
echo %date% %time% *** module copy SS_HOME end *** >> D:\ATOMS\Log\module_copy.log

rem ������͂�������R�����g�A�E�g
rem xcopy Z:\d\NECFLDG D:\NECFLDG /S /E /D /Y /I
rem echo %date% %time% *** module copy NECFLDG end *** >> D:\ATOMS\Log\module_copy.log

rem ��POS
xcopy Z:\d\POS D:\POS /S /E /D /Y /I
echo %date% %time% *** module copy POS end *** >> D:\ATOMS\Log\module_copy.log

rem ������͂�������R�����g�A�E�g
rem xcopy Z:\d\SAVE D:\SAVE /S /E /D /Y /I
rem echo %date% %time% *** module copy SAVE end *** >> D:\ATOMS\Log\module_copy.log

rem ������͂�������R�����g�A�E�g
rem xcopy Z:\c\SDE C:\SDE /S /E /D /Y /I
rem echo %date% %time% *** module copy SDE end *** >> D:\ATOMS\Log\module_copy.log

rem ������͂�������R�����g�A�E�g
rem copy Z:\c\hosts\hosts C:\WINDOWS\system32\drivers\etc\hosts
rem echo %date% %time% *** module copy hosts end *** >> D:\ATOMS\Log\module_copy.log

rem ##### PC TYPE judge #####
if /i not {%computername:~1,1%} == {s} GOTO STEP010

rem ##### ��\�[���̂ݎ��s JOB��` #####

rem del %MUS_ROOT%\etc\job_defs\*.jdf
rem ��JOB��`
xcopy Z:\c\job_defs %MUS_ROOT%\etc\job_defs /S /E /D /Y /I
echo %date% %time% *** module copy job_defs end *** >> D:\ATOMS\Log\module_copy.log

rem ��JOB��`
pm_jconv
pm_jschd_ctl -d
echo %date% %time% *** job_defs end *** >> D:\ATOMS\Log\module_copy.log

rem ##### ��\�[���̂ݎ��s JOB��` #####

:STEP010
type nul > Z:\uplog\%COMPUTERNAME%

