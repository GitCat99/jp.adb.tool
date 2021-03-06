@ECHO OFF
mode con cols=80 lines=52
TITLE Sharp 701sh 8.0 adb批量操作工具v1.0--by 翻车猫
color 8f
:STARTMENU
ECHO. =======================================================
ECHO.手机屏幕上勾选允许usb调试并按任意键继续
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
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.account
ECHO.
CALL %adb% uninstall jp.co.sharp.exapps
CALL %adb% uninstall jp.co.sharp.android.readercamera
CALL %adb% uninstall com.ipg.gguide.sbm_app.android
CALL %adb% uninstall com.felicanetworks.mfm.main
CALL %adb% uninstall com.felicanetworks.mfw.a.main
ECHO.
CALL %adb% shell pm disable-user jp.softbank.mb.cbrl
CALL %adb% shell pm disable-user jp.co.optim.orushrp00
CALL %adb% shell pm disable-user jp.softbank.mb.ichinaviclt
CALL %adb% shell pm disable-user jp.co.sharp.android.karadamate
CALL %adb% shell pm disable-user jp.co.sharp.android.picturemanager
CALL %adb% shell pm disable-user com.mobiroo.xgen
CALL %adb% shell pm disable-user jp.co.sharp.android.feelsimplehome
CALL %adb% shell pm disable-user com.qualcomm.qti.loadcarrier
CALL %adb% shell pm disable-user com.android.carrierdefaultapp
CALL %adb% shell pm disable-user jp.co.sharp.android.carrierprofilemanager
CALL %adb% shell pm disable-user jp.softbank.carrierprofilesetting
CALL %adb% shell pm disable-user jp.co.sharp.android.restoreguide
CALL %adb% shell pm disable-user jp.softbank.mb.dmb
CALL %adb% shell pm disable-user jp.co.disney.apps.dm.disneyinstaller
CALL %adb% shell pm disable-user com.google.android.apps.docs
CALL %adb% shell pm disable-user com.google.android.apps.tachyon
CALL %adb% shell pm disable-user com.android.email
CALL %adb% shell pm disable-user com.android.exchange
CALL %adb% shell pm disable-user com.google.android.gm
CALL %adb% shell pm disable-user com.google.android.videos
CALL %adb% shell pm disable-user com.google.android.music
CALL %adb% shell pm disable-user jp.softbank.mb.mail
CALL %adb% shell pm disable-user com.google.android.apps.maps
CALL %adb% shell pm disable-user com.felicanetworks.mfc
CALL %adb% shell pm disable-user com.sprint.ce.updater
CALL %adb% shell pm disable-user jp.softbank.mb.dtm
CALL %adb% shell pm disable-user com.mobisystems.office
CALL %adb% shell pm disable-user com.felicanetworks.mfm
CALL %adb% shell pm disable-user com.amazon.avod.thirdpartyclient
CALL %adb% shell pm disable-user jp.co.sharp.android.cm
CALL %adb% shell pm disable-user jp.co.sharp.android.iwnndictionarydata
CALL %adb% shell pm disable-user sharp.jp.android.makersiteappli
CALL %adb% shell pm disable-user jp.softbank.mobileid.installer
CALL %adb% shell pm disable-user jp.softbank.mb.bhssimple
CALL %adb% shell pm disable-user jp.pixela.stationtv.localtuner.full.app
CALL %adb% shell pm disable-user jp.co.softbank.wispr.froyo
CALL %adb% shell pm disable-user com.google.android.youtube
CALL %adb% shell pm disable-user jp.co.softbank.mb.pim
CALL %adb% shell pm disable-user jp.softbank.mb.parentalcontrols
CALL %adb% shell pm disable-user jp.softbank.beginnerguide
CALL %adb% shell pm disable-user jp.co.disney.apps.base.disneymarketapp
ECHO.
CALL %adb% install qyzw.apk
CALL %adb% install Messages_v2.5.apk
CALL %adb% install wdj.apk
CALL %adb% install sougou.Smartisan.apk
CALL %adb% install IceBox395G.apk
CALL %adb% shell pm grant jp.co.c_lis.ccl.morelocale android.permission.CHANGE_CONFIGURATION
CALL %adb% shell dpm set-device-owner com.catchingnow.icebox/.receiver.DPMReceiver
CALL %adb% shell ime enable com.sohu.inputmethod.sogou/.SogouIME
CALL %adb% shell ime set com.sohu.inputmethod.sogou/.SogouIME
ECHO.    
ECHO. 执行完毕，请检查机器程序列表
ECHO. 少了很多软件多了几个软件为成功
ECHO. 区域软件需要手动打开morelocale2选择你需要的地区
ECHO. 如需要撤销本操作，请恢复出厂
ECHO.
ECHO.**************************************************************************
ECHO.
ECHO.   按任意键返回主菜单或x掉窗口退出
ECHO.
ECHO.**************************************************************************        
pause>nul
goto STARTMENU





