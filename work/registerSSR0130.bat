@echo off

::Initial Setting
SET batFileName=%~n0
SET object=%batFileName:~-7,7%

::Input your own filepath
SET pathFrom=C:\javaSource\basenetJava\%object%\OPF\%object%\package\if\
SET pathTo=D:\ATOMS\EjbGW\


::Create FileName
SET file_gc1=EJBGW%object%LogicHome.gc1
SET file_if=EJBGW%object%LogicHome.if
SET file_tlb=EJBGW%object%LogicHome.tlb

@echo on

::Force to Copy Register Files
REM "------------Copy Register Files Start------------"
copy %pathFrom%%file_gc1% %pathTo%
copy %pathFrom%%file_if% %pathTo%
copy %pathFrom%%file_tlb% %pathTo%
REM "------------Copy Register Files End--------------"

call woifgen.bat %pathTo%%file_if%

pause