@echo off
rem タスクスケジューラからタスクを削除するバッチファイル
rem なんらかの理由によりスケジューラから該当ユーザのスクリプトを削除する際に使用します。
rem 作者 marshmallow-warriors/ryokun

set name=%USERNAME%


echo タスクからスクリプトを削除します
echo 注意:管理者権限で実行してください

pause

schtasks /delete /tn login_%name%

echo すべての作業が終了しました

pause
