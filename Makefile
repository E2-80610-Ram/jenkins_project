@echo off

set CC=gcc
set CFLAGS=-I.

if "%1" == "clean" goto clean

%CC% -c main.c %CFLAGS%
%CC% -o main main.o
goto end

:clean
del *.o main.exe

:end
