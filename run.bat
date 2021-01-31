REM Delete eval folder with licence key and options.xml which contains a reference to it
for %%I in ("WebStorm", "IntelliJ", "CLion", "Rider", "GoLand", "PhpStorm", "Resharper", "PyCharm") do (
for /d %%a in ("%APPDATA%\JetBrains\%%I*") do (
rd /s /q "%%a\eval"
findstr /v /i "evlsprt" %%a\options\other.xml > %%a\options\other1.xml
del /q "%%a\options\other.xml"
ren %%a\options\other1.xml other.xml
)
)

REM Delete registry key and jetbrains folder (not sure if needet but however)
reg delete "HKEY_CURRENT_USER\Software\JavaSoft" /f

PAUSE
