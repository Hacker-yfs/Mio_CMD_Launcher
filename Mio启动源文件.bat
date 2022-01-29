@shift /0
@echo off
echo 请选择是否同意MoJang的Minecraft Eula?
echo 请仔细阅读弹出的网页
echo 如果不同意MoJang的Minecraft Eula，系统将自动删除本地的澪度Mio源文件。
start https://www.minecraft.net/zh-hans/eula
timeout /t 10
set /p eula=请输入内容(同意=y，不同意=n)：
if %eula% equ y goto  yeseula
if %eula% equ n goto noeula
:yeseula
title 澪度Mio整合包-1.2
echo 欢迎使用澪度Mio整合包
echo 当前整合包版本：1.2
echo 当前BDS版本：1.18.2
echo 所处版本：正式版
echo -------------------------
echo 正在检查网络连通性......
echo -------------------------
pause > nul
:check
ping -n 2 minebbs.com > nul
IF ERRORLEVEL 1 goto stop
IF ERRORLEVEL 0 goto start
pause > nul
:stop
echo 网络不通畅，已自动关闭Mio
pause
:start
echo 网络通畅，10秒后自动启动澪度Mio....
timeout /t 10
cd ./Mio
start bedrock_server_mod.exe
:noeula
echo 由于不同意MoJang的Minecraft Eula，澪度Mio正在执行自我销毁……
timeout /t 5
@del /f /s /q .\Mio
echo 澪度Mio源文件已全部销毁。感谢您的使用！
pause

