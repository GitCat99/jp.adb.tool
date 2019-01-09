@ECHO OFF
mode con cols=80 lines=52
TITLE Sharp shv343537 adb批量操作工具v2.0--by 翻车猫
color 8f
:STARTMENU
ECHO. =======================================================
ECHO.手机屏幕上勾选允许usb调试并按任意键继续，只安装区域和拨号
SET adb=adb.exe
adb wait-for-device 
pause
ECHO.------运行中------
for /F %%i in ('adb get-serialno') do ( set deviceinfo=%%i)
ECHO.============================================================================
    echo.
    echo. 已连接设备: %deviceinfo%
    echo.
ECHO.============================================================================
CALL %adb% shell settings put system screen_off_timeout 300000
CALL %adb% install qyzw.apk
CALL %adb% install candy1016.apk
CALL %adb% shell pm uninstall -k --user 0 com.android.dialer
CALL %adb% shell settings put secure dialer_default_application com.candykk.android.dialer
CALL %adb% shell pm grant jp.co.c_lis.ccl.morelocale android.permission.CHANGE_CONFIGURATION
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.feeluxhome
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.auhomelauncher
ECHO.            
ECHO. 执行完毕，请检查机器程序列表
ECHO. 区域软件需要手动打开morelocale2选择你需要的地区
ECHO. 如需要撤销本操作或升级系统，请恢复出厂
ECHO.
ECHO.**************************************************************************
ECHO.
ECHO.   按任意键返回主菜单或x掉窗口退出
ECHO.
ECHO.**************************************************************************
pause>nul
goto STARTMENU  
