@echo off


::Initial Setting
SET batFileName=%~n0
SET object=%batFileName:~-7,7%
SET pathFrom=C:\javaSource\basenet\%object%\%object%\bin\Release\
SET pathToD=D:\ATOMS\Bin\
SET pathToR=D:\ABS\R-Disk\Atoms\bin\


::Create Path for Backup
SET ymd=%date:~0,4%%date:~5,2%%date:~8,2%
SET hms=%time:~0,2%%time:~3,2%%time:~6,2%%time:~9,2%
SET bakFile=%ymd%%hms%
SET pathBackUpD=%pathToD%\bak\%bakFile%\
SET pathBackUpR=%pathToR%\bak\%bakFile%\
if not exist %pathBackUpD% (mkdir %pathBackUpD%)
if not exist %pathBackUpR% (mkdir %pathBackUpR%)


::Create FileName
SET file_pdb=%object%.pdb
SET file_exe=%object%.exe
SET file_exeConfig=%object%.exe.config
SET file_entityPdb=%object%Entity.pdb
SET file_entityDll=%object%Entity.dll
SET file_logicPdb=%object%Logic.pdb
SET file_logicDll=%object%Logic.dll
SET file_accessDefinition=%object%AccessDefinition.xml
SET file_screenTransition=%object%ScreenTransition.xml


::Backup All Files
REM "------------Backup D-disk Files Start------------"
copy %pathToD%%file_pdb% %pathBackupD%
copy %pathToD%%file_exe% %pathBackupD%
copy %pathToD%%file_entityDll% %pathBackupD%
copy %pathToD%%file_entityPdb% %pathBackupD%
copy %pathToD%%file_accessDefinition% %pathBackupD%
copy %pathToD%%file_exeConfig% %pathBackupD%
copy %pathToD%%file_screenTransition% %pathBackupD%
copy %pathToD%%file_logicDll% %pathBackupD%
copy %pathToD%%file_logicPdb% %pathBackupD%
REM "------------Backup D-disk Files End------------"

REM "------------Backup R-disk Files Start------------"
copy %pathToR%%file_pdb% %pathBackupR%
copy %pathToR%%file_exe% %pathBackupR%
copy %pathToR%%file_entityDll% %pathBackupR%
copy %pathToR%%file_entityPdb% %pathBackupR%
copy %pathToR%%file_accessDefinition% %pathBackupR%
copy %pathToR%%file_exeConfig% %pathBackupR%
copy %pathToR%%file_screenTransition% %pathBackupR%
copy %pathToR%%file_logicDll% %pathBackupR%
copy %pathToR%%file_logicPdb% %pathBackupR%
REM "------------Backup R-disk Files End------------"


@echo on


::Force to Build All Files
REM "------------Build D-disk Files Start------------"
	::copy %pathFrom%%file_pdb% %pathToD%
copy %pathFrom%%file_exe% %pathToD%
copy %pathFrom%%file_entityDll% %pathToD%
	::copy %pathFrom%%file_entityPdb% %pathToD%
copy %pathFrom%%file_accessDefinition% %pathToD%
copy %pathFrom%%file_exeConfig% %pathToD%
	::copy %pathFrom%%file_screenTransition% %pathToD%
REM "------------Build D-disk Files End------------"

REM "------------Build R-disk Files Start------------"
	::copy %pathFrom%%file_pdb% %pathToR%
	::copy %pathFrom%%file_exe% %pathToR%
copy %pathFrom%%file_entityDll% %pathToR%
	::copy %pathFrom%%file_entityPdb% %pathToR%
	::copy %pathFrom%%file_accessDefinition% %pathToR%
	::copy %pathFrom%%file_exeConfig% %pathToR%
	::copy %pathFrom%%file_screenTransition% %pathToR%
REM "------------Build R-disk Files End------------"


pause