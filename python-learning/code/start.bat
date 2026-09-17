@echo off
chcp 936 >nul
cd /d "%~dp0"
title Python 学习 - 代码运行器

where python >nul 2>nul
if errorlevel 1 (
    echo.
    echo   [错误] 没有找到 Python
    echo.
    echo   请先安装 Python，然后重新双击这个文件。
    echo   下载地址：https://www.python.org/downloads/
    echo.
    echo   安装时一定要勾选 "Add Python to PATH" 这个选项，
    echo   否则双击运行不了。装完要重新打开这个窗口。
    echo.
    pause
    exit /b 1
)

:menu
cls
echo ============================================================
echo               Python 学习代码运行器
echo ============================================================
echo.
echo     1.   第 1 次课  -  个人名片生成器
echo     2.   第 2 次课  -  猜数字小游戏
echo     3.   第 3 次课  -  英文文章词频统计
echo     4.   第 4 次课  -  中文文本分析小工具
echo.
echo     0.   退出
echo.
echo ------------------------------------------------------------
echo   提示：第 4 次课需要先装 jieba。如果报错说找不到 jieba，
echo         请按下面的方法装一次：
echo           1. 在这个文件夹里按住 Shift + 右键
echo           2. 选择「在此处打开 PowerShell 窗口」或「终端」
echo           3. 输入   pip install jieba   然后回车
echo ------------------------------------------------------------
echo.
set /p choice=请输入序号然后按回车：

if "%choice%"=="1" goto lesson1
if "%choice%"=="2" goto lesson2
if "%choice%"=="3" goto lesson3
if "%choice%"=="4" goto lesson4
if "%choice%"=="0" exit /b 0
goto menu

:lesson1
echo.
python lesson01_card.py
echo.
echo ------------------------------------------------------------
pause
goto menu

:lesson2
echo.
python lesson02_guess.py
echo.
echo ------------------------------------------------------------
pause
goto menu

:lesson3
echo.
python lesson03_wordcount.py
echo.
echo ------------------------------------------------------------
pause
goto menu

:lesson4
echo.
python lesson04_cn_analyzer.py
echo.
echo ------------------------------------------------------------
pause
goto menu
