rem echo off
rem ����ִ�������ʱ�䣬��D:\2 ����\ECSά����\Ŀ¼�´���������-ʱ���������ļ�������

set dest_dir="F:\2 ����\ECS"
rem ����dest_dir�ļ���
cd /d %dest_dir%

rem ��ȡ����
for /F "tokens=1-3 delims=/ " %%a in ('date /T') do (set var_d="%%a-%%b-%%c")

rem ��ȡʱ��
for /F "tokens=1-2 delims=: " %%e in ('time /T') do (set var_t=%var_d%-"%%e-%%f")

rem ����������-ʱ���������ļ�������
md %var_t%

explorer .\%var_t%

