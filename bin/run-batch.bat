@echo off

rem ###��������ȊO�̏ꍇ�̓G���[���o���Ē�~����B###
if "%2"==""  (
    echo requestPath��diConfig����͂��Ă��������B
    exit /b 1
)

if not "%3"=="" (
    echo requestPath��diConfig����͂��Ă��������B
    exit /b 1
)


rem ### ���s�I�v�V������ݒ肷��B ###
set NAB_OPT=-classpath ./*;./lib/*

rem ### JAVA_HOME��ݒ� ###
set JAVA_HOME_PATH=%JAVA_HOME%

rem ### Main�N���X���S�C���� ###
set MAIN=nablarch.fw.launcher.Main

rem ### Main�N���X������ݒ� ###
set MAIN_ARGS=-requestPath %1 -diConfig %2 -userId 105

rem ### �o�b�`���s ###
"%JAVA_HOME_PATH%/bin/java" %NAB_OPT% %MAIN% %MAIN_ARGS%

exit /b %ERRORLEVEL%