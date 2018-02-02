@echo off
set apkFilePath=%1

:: nx:包括扩展名 n:不包括扩展名 1:变量%
set apkFileName=%~n1

::call D:\android-Decompile\dex2jar-2.0\d2j-dex2jar.bat -f %apkFilePath%

call .\enjarify\enjarify.bat  %apkFilePath% -o %apkFileName%.jar

.\apktool_2.3.0.jar d %apkFilePath%

.\jd-gui-1.4.0.jar %apkFileName%*.jar

::pause
exit