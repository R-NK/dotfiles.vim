@echo off

openfiles > NUL 2>&1
if NOT %ERRORLEVEL% EQU 0 goto NotAdmin
echo 管理者権限で実行中 処理を続行します
goto Continue

:NotAdmin
echo 一般権限で実行中 管理者で実行してください
pause
exit /B

:Continue
cd /d %~dp0

git submodule init
git submodule update

set target_vim="\dotfiles.vim\.vim"
set link_vim="\.vim"
set target_vimrc="\dotfiles.vim\.vimrc"
set link_vimrc="\.vimrc"
mklink /D "%USERPROFILE%%link_vim%" "%USERPROFILE%%target_vim%"
mklink "%USERPROFILE%%link_vimrc%" "%USERPROFILE%%target_vimrc%"
pause