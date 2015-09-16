@echo off
rem タスクスケジューラにタスクを登録するバッチファイル
rem バッチファイルの場所にlogin.xml, send.vbsが必要です
rem 作者 marshmallow-warriors/ryokun

set name=%USERNAME%
set current_dir=%CD%
set root_dir=%HOMEDRIVE%\marsh
set script_dir=%root_dir%
set script_name=send.vbs


echo タスクにスクリプトを登録します
echo パスワードの入力を2回求められる可能性があります
echo 注意:管理者権限で実行してください

pause

If NOT EXIST %current_dir%\login.xml (
	echo login.xmlが存在しません
	pause
	exit
)
If NOT EXIST %current_dir%\send.vbs (
	echo send.vbsが存在しません
	pause
	exit
)

If NOT EXIST %root_dir% mkdir %root_dir%

copy %current_dir%\%script_name% %script_dir%

schtasks /create /tn login_%name% /ru %name% /xml %current_dir%\login.xml
schtasks /change /tn login_%name% /tr %script_dir%\%script_name%

echo すべての作業が終了しました

pause