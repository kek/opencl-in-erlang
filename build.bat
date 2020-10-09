call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvars64.bat"

"C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.27.29110\bin\Hostx64\x64\cl.exe" -I include\erlang -I lightOCLSDK\include  -LD -MD -Fe complex6_nif.c complex6.c lightOCLSDK\lib\x86_64\OpenCL.lib
