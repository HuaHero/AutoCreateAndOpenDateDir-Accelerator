rem echo off
rem 根据执行命令的时间，在D:\2 资料\ECS维优组\目录下创建以日期-时间命名的文件，并打开

set dest_dir="F:\2 资料\ECS"
rem 进入dest_dir文件夹
cd /d %dest_dir%

rem 获取日期
for /F "tokens=1-3 delims=/ " %%a in ('date /T') do (set var_d="%%a-%%b-%%c")

rem 获取时间
for /F "tokens=1-2 delims=: " %%e in ('time /T') do (set var_t=%var_d%-"%%e-%%f")

rem 创建以日期-时间命名的文件，并打开
md %var_t%

explorer .\%var_t%

