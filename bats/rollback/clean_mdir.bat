@echo off
rem スクリプトフォルダを削除するスクリプト
rem 作者 marshmallow-warriors/ryokun


set root_dir=%HOMEDRIVE%\marsh
set delete_dir=%root_dir%



echo スクリプトフォルダを削除します
echo バッチの実行により作成されたすべてのユーザのスクリプトが削除されます。
echo 削除されるフォルダは%delete_dir%です。
pause

rmdir /s %delete_dir%

echo すべての作業が終了しました

pause
