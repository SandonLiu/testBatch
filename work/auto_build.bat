call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\Common7\Tools\VsDevCmd.bat"

cd %~dp0
for /R %%i in (*.sln) do (MSBuild "%%i" /t:clean;rebuild /p:Configuration=Release;Platform="x86")
if %ERRORLEVEL% neq 0 (
    echo ErrorLevel:%ERRORLEVEL%
    echo ビルド失敗
)

pause