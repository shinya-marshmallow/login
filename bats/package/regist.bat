@echo off
rem �^�X�N�X�P�W���[���Ƀ^�X�N��o�^����o�b�`�t�@�C��
rem �o�b�`�t�@�C���̏ꏊ��login.xml, send.vbs���K�v�ł�
rem ��� marshmallow-warriors/ryokun

set name=%USERNAME%
set current_dir=%CD%
set root_dir=%HOMEDRIVE%\marsh
set script_dir=%root_dir%
set script_name=send.vbs


echo �^�X�N�ɃX�N���v�g��o�^���܂�
echo �p�X���[�h�̓��͂�2�񋁂߂���\��������܂�
echo ����:�Ǘ��Ҍ����Ŏ��s���Ă�������

pause

If NOT EXIST %current_dir%\login.xml (
	echo login.xml�����݂��܂���
	pause
	exit
)
If NOT EXIST %current_dir%\send.vbs (
	echo send.vbs�����݂��܂���
	pause
	exit
)

If NOT EXIST %root_dir% mkdir %root_dir%

copy %current_dir%\%script_name% %script_dir%

schtasks /create /tn login_%name% /ru %name% /xml %current_dir%\login.xml
schtasks /change /tn login_%name% /tr %script_dir%\%script_name%

echo ���ׂĂ̍�Ƃ��I�����܂���

pause