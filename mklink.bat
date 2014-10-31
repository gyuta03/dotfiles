@echo off

rem
rem dotfile配置用バッチファイル
rem

if exist "c:\vim" mklink "c:\vim\vimrc" ".vimrc"
if exist "c:\vim" mklink "c:\vim\gvimrc" ".gvimrc"

pause
exit
