@echo off

rem
rem dotfile�z�u�p�o�b�`�t�@�C��
rem

if exist "c:\vim" mklink "c:\vim\vimrc" ".vimrc"
if exist "c:\vim" mklink "c:\vim\gvimrc" ".gvimrc"

pause
exit
