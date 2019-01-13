@ECHO OFF
mode con cols=80 lines=52
TITLE Sharp shv39 9.0 adb批量操作工具v1.0--by 翻车猫
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
CALL %adb% uninstall jp.auone.wallet
CALL %adb% uninstall web.wm.auone.jp
CALL %adb% uninstall com.kddi.ux.station
CALL %adb% uninstall com.kddi.android.smartpass
CALL %adb% uninstall com.instagram.android
CALL %adb% uninstall com.facebook.orca
CALL %adb% uninstall com.kddi.ar.satch.satchviewer
CALL %adb% uninstall com.twitter.android
CALL %adb% uninstall com.kddi.android.UtaPass
CALL %adb% uninstall com.kddi.android.videopass
CALL %adb% uninstall jp.co.sharp.android.shmediaplayer
CALL %adb% uninstall com.kddi.android.auworldservice
CALL %adb% uninstall com.kddi.auoneshopping
CALL %adb% uninstall jp.gamegift
CALL %adb% uninstall com.kddi.pass.launcher
CALL %adb% uninstall com.undotsushin
CALL %adb% uninstall com.kddi.datacharge
CALL %adb% uninstall com.navitime.local.naviwalk
CALL %adb% uninstall com.kddi.android.newspass
CALL %adb% uninstall com.kddi.android.lismobookstore
CALL %adb% uninstall com.mobileselect.somcprein
CALL %adb% shell pm disable-user com.kddi.android.antijaywalk
CALL %adb% shell pm disable-user com.google.android.apps.maps
CALL %adb% shell pm disable-user com.android.email
CALL %adb% shell pm disable-user jp.co.sharp.android.LockWeatherWidget
CALL %adb% shell pm disable-user jp.co.sharp.android.picturemanager
CALL %adb% shell pm disable-user jp.co.optim.oru
CALL %adb% shell pm disable-user com.google.android.apps.cloudprint
CALL %adb% shell pm disable-user com.google.android.apps.docs
CALL %adb% shell pm disable-user com.kddi.android.klop
CALL %adb% shell pm disable-user com.kddi.android.checker_android
CALL %adb% shell pm disable-user com.kddi.android.auhomelauncher
CALL %adb% shell pm disable-user com.kddi.disasterapp
CALL %adb% shell pm disable-user com.kddi.android.easysettingwizard
CALL %adb% shell pm disable-user com.kddi.android.auoneidsetting
CALL %adb% shell pm disable-user com.kddi.market
CALL %adb% shell pm disable-user com.kddi.android.au_setting_menu
CALL %adb% shell pm disable-user com.kddi.android.au_wifi_connect2
CALL %adb% shell pm disable-user com.kddi.android.ausharelink
CALL %adb% shell pm disable-user com.uievolution.gguide.android
CALL %adb% shell pm disable-user jp.co.sharp.android.shinstructionmanualshv39
CALL %adb% shell pm disable-user jp.co.sharp.android.calendarselector
CALL %adb% shell pm disable-user jp.co.sharp.exapps
CALL %adb% shell pm disable-user jp.co.sharp.android.copyhistorysh
CALL %adb% shell pm disable-user jp.co.sharp.android.restoreguide
CALL %adb% shell pm disable-user com.google.android.apps.tachyon
CALL %adb% shell pm disable-user com.kddi.android.email
CALL %adb% shell pm disable-user com.android.exchange
CALL %adb% shell pm disable-user com.facebook.katana
CALL %adb% shell pm disable-user com.kddi.android.repairreceipt
CALL %adb% shell pm disable-user com.google.android.calendar
CALL %adb% shell pm disable-user jp.co.sharp.android.downloadfont
CALL %adb% shell pm disable-user com.google.android.gm
CALL %adb% shell pm disable-user com.google.android.music
CALL %adb% shell pm disable-user com.google.android.videos
CALL %adb% shell pm disable-user com.lookout
CALL %adb% shell pm disable-user com.felicanetworks.mfc
CALL %adb% shell pm disable-user com.kddi.cs.app001
CALL %adb% shell pm disable-user jp.co.sharp.android.obex
CALL %adb% shell pm disable-user com.mobisystems.office
CALL %adb% shell pm disable-user com.felicanetworks.mfm.main
CALL %adb% shell pm disable-user com.felicanetworks.mfm
CALL %adb% shell pm disable-user jp.co.sharp.android.felicalockapp
CALL %adb% shell pm disable-user jp.co.sharp.android.iwnnime.ml
CALL %adb% shell pm disable-user jp.co.sharp.android.cm
CALL %adb% shell pm disable-user jp.co.sharp.android.iwnndictionarydata
CALL %adb% shell pm disable-user sharp.jp.android.makersiteappli
CALL %adb% shell pm disable-user jp.co.sharp.android.startuptutorial
CALL %adb% shell pm disable-user jp.pixela.stationtv.localtuner.full.app
CALL %adb% shell pm disable-user com.google.android.youtube
CALL %adb% shell pm disable-user jp.netstar.familysmile
CALL %adb% shell pm disable-user com.kddi.android.btdun
CALL %adb% shell pm disable-user com.kddi.android.mamoru
CALL %adb% shell pm disable-user jp.co.disney.apps.base.disneymarketapp
CALL %adb% install wdj.apk
CALL %adb% install sougou.Smartisan.apk
CALL %adb% install IceBox395G.apk
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


