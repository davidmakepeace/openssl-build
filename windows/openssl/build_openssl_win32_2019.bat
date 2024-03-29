call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\BuildTools\Common7\Tools\VsDevCmd.bat" -arch=x86
call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Auxiliary\Build\vcvarsall.bat" x86
SET PATH=%PATH%;C:\Program Files\NASM

perl Configure -MT %OPENSSL_BUILD_FLAGS_WINDOWS% VC-WIN32
nmake
if %errorlevel% neq 0 exit /b %errorlevel%

mkdir ..\build
mkdir ..\build\bin
mkdir ..\build\lib
mkdir ..\build\lib\ossl-modules
mkdir ..\build\ssl
apps\openssl fipsinstall -out ..\build\ssl\fipsmodule.cnf -module providers\fips.dll
move apps\openssl.exe ..\build\bin\
move libcrypto.lib ..\build\lib\
move libssl.lib ..\build\lib\
move include ..\build\include
move providers\fips.dll ..\build\lib\ossl-modules\
