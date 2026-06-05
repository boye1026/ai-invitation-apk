@if "" == "" @echo off
setlocal
set DIRNAME=D:\应用\app生成\项目\
if "" == "" set DIRNAME=.
set APP_BASE_NAME=full_project_setup
set APP_HOME=
set DEFAULT_JVM_OPTS="-Xmx64m" "-Xms64m"

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome
set JAVA_EXE=java.exe
 -version >NUL 2>
if "9009" == "0" goto execute

echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
goto fail

:findJavaFromJavaHome
set JAVA_HOME="=
set JAVA_EXE=/bin/java.exe
if exist "" goto execute

echo ERROR: JAVA_HOME is set to an invalid directory: 
goto fail

:execute
set CLASSPATH=\gradle\wrapper\gradle-wrapper.jar
""    "-Dorg.gradle.appname=" -classpath "" org.gradle.wrapper.GradleWrapperMain 

:end
if "9009"=="0" goto mainEnd
:fail
exit /b 1
:mainEnd
endlocal
