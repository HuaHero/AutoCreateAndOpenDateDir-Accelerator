rem echo off
rem 根据执行命令的时间，在D:\2 资料\ECS维优组\目录下创建以日期-时间命名的文件，并打开

set dest_dir="F:\2 资料\ECS"
rem 进入dest_dir文件夹
cd /d %dest_dir%

rem 获取日期
rem 注意，本脚本所在执行机的日是期期格式须为YYYY/MM/DD格式，如果不是，要么调整执行机系统上的日期格式，要么就调整下面这句delims分割条件
for /F "tokens=1-3 delims=/ " %%a in ('date /T') do (set var_d="%%a-%%b-%%c")

rem 获取时间
for /F "tokens=1-2 delims=: " %%e in ('time /T') do (set var_t=%var_d%-"%%e-%%f")

rem 创建以日期-时间命名的文件，并打开
md %var_t%

explorer .\%var_t%

