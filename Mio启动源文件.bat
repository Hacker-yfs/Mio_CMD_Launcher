@shift /0
@echo off
::Eulaͬ��
echo ��ѡ���Ƿ�ͬ��MoJang��Minecraft Eula?
echo ����ϸ�Ķ���������ҳ
echo �����ͬ��MoJang��Minecraft Eula��ϵͳ���Զ�ɾ�����صĝζ�MioԴ�ļ���
start https://www.minecraft.net/zh-hans/eula
timeout /t 10
::�ж�����
set /p eula=����������(ͬ��=y����ͬ��=n)��
if %eula% equ y goto  yeseula
if %eula% equ n goto noeula
::��ͬ��Eula
:noeula
echo ���ڲ�ͬ��MoJang��Minecraft Eula���ζ�Mio����ִ���������١���
echo -------------------------
timeout /t 3
del /f /s /q .\Mio
echo -------------------------
echo �ζ�MioԴ�ļ���ȫ�����١���л����ʹ�ã�
pause
exit
::ͬ��Eula
:yeseula
title �ζ�Mio���ϰ�-1.2
echo -------------------------
echo ��ӭʹ�Ýζ�Mio���ϰ�
echo ��ǰ���ϰ��汾��1.2
echo ��ǰBDS�汾��1.18.2
echo �����汾����ʽ��
echo -------------------------
echo ���ڼ��������ͨ��......
echo -------------------------
::�������
:check
ping -n 2 minebbs.com > nul
IF ERRORLEVEL 1 goto stop
IF ERRORLEVEL 0 goto start
pause > nul
::���粻��ͨ
:stop
echo ���粻ͨ�������Զ��ر�Mio
pause
::������ͨ
:start
echo ����ͨ����10����Զ������ζ�Mio....
timeout /t 10
cd ./Mio
start bedrock_server_mod.exe
