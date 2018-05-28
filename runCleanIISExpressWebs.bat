@echo off
pushd "%PROGRAMFILES%\IIS Express"
for /F %%i in ('appcmd list sites /text:NAME') do (
	echo %%i
	appcmd delete site %%i
)
popd