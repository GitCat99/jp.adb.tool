@ECHO OFF
mode con cols=80 lines=52
TITLE Sharp sh-03k 9.0 adb批量操作工具v2.0--by 翻车猫
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
CALL %adb% shell settings put global captive_portal_detection_enabled 0
CALL %adb% uninstall com.nttdocomo.android.msg
CALL %adb% uninstall jp.dmapnavi.navi02
CALL %adb% uninstall com.rsupport.rs.activity.ntt
CALL %adb% uninstall com.amazon.kindle
CALL %adb% uninstall com.amazon.mShop.android.shopping
CALL %adb% uninstall com.mcafee.vsm_android_dcm
CALL %adb% uninstall com.nttdocomo.keitai.payment
CALL %adb% uninstall jp.co.nttdocomo.dbook
CALL %adb% uninstall com.nttdocomo.android.dhealthcare
CALL %adb% uninstall com.nttdocomo.android.photocollection
CALL %adb% uninstall com.nttdocomo.android.dpoint
CALL %adb% uninstall com.facebook.katana
CALL %adb% uninstall com.ipg.gguide.dcm_app.android
CALL %adb% uninstall com.nttdocomo.android.voicetranslation
CALL %adb% uninstall jp.id_credit_sp.android
CALL %adb% uninstall com.instagram.android
CALL %adb% uninstall com.nttdocomo.android.mydocomo
CALL %adb% uninstall com.nttdocomo.android.toruca
CALL %adb% uninstall com.twitter.android
CALL %adb% uninstall com.nttdocomo.android.cloudstorageservice
CALL %adb% uninstall jp.co.mcdonalds.android
CALL %adb% uninstall com.nttdocomo.android.moneyrecord
CALL %adb% uninstall com.mobileselect.somcprein
CALL %adb% uninstall jp.co.lawson.android
CALL %adb% uninstall com.facebook.orca

CALL %adb% shell pm disable-user com.google.android.apps.docs
CALL %adb% shell pm disable-user jp.co.nttdocomo.saigaiban
CALL %adb% shell pm disable-user com.nttdocomo.android.store
CALL %adb% shell pm disable-user com.nttdocomo.android.applicationmanager
CALL %adb% shell pm disable-user com.nttdocomo.android.accountauthenticator
CALL %adb% shell pm disable-user com.nttdocomo.android.sdcardbackup
CALL %adb% shell pm disable-user com.nttdocomo.android.initialization
CALL %adb% shell pm disable-user jp.co.nttdocomo.carriermail
CALL %adb% shell pm disable-user com.nttdocomo.android.docomoset
CALL %adb% shell pm disable-user com.google.android.apps.tachyon
CALL %adb% shell pm disable-user com.nttdocomo.android.idmanager
CALL %adb% shell pm disable-user com.nttdocomo.android.dmenu2
CALL %adb% shell pm disable-user com.google.android.gm
CALL %adb% shell pm disable-user com.google.android.videos
CALL %adb% shell pm disable-user com.google.android.music
CALL %adb% shell pm disable-user jp.co.sharp.android.shinstructionmanual03ka
CALL %adb% shell pm disable-user jp.co.sharp.android.shinstructionmanual03kb
CALL %adb% shell pm disable-user com.nttdocomo.android.iconcier
CALL %adb% shell pm disable-user com.nttdocomo.android.iconcier_contents
CALL %adb% shell pm disable-user com.felicanetworks.mfc
CALL %adb% shell pm disable-user com.nttdocomo.android.voiceeditor
CALL %adb% shell pm disable-user com.felicanetworks.mfm.main
CALL %adb% shell pm disable-user com.felicanetworks.mfm
CALL %adb% shell pm disable-user com.nttdocomo.osaifu.tsmproxy
CALL %adb% shell pm disable-user com.nttdocomo.android.devicehelp
CALL %adb% shell pm disable-user jp.co.sharp.android.iwnnime.ml
CALL %adb% shell pm disable-user com.nttdocomo.android.schedulememo
CALL %adb% shell pm disable-user jp.co.sharp.android.iwnndictionarydata
CALL %adb% shell pm disable-user sharp.jp.android.makersiteappli
CALL %adb% shell pm disable-user com.nttdocomo.android.phonemotion
CALL %adb% shell pm disable-user jp.co.sharp.android.startuptutorial
CALL %adb% shell pm disable-user jp.pixela.stationtv.localtuner.full.app
CALL %adb% shell pm disable-user jp.co.sharp.android.shmediaplayer
CALL %adb% shell pm disable-user com.google.android.youtube
CALL %adb% shell pm disable-user com.nttdocomo.android.mascot
CALL %adb% shell pm disable-user com.nttdocomo.android.databackup
CALL %adb% shell pm disable-user com.android.contacts
CALL %adb% shell pm disable-user com.android.email

CALL %adb% install Contacts_v3.2.5.apk
CALL %adb% install wdj.apk
CALL %adb% install sougou.Smartisan.apk
CALL %adb% install IceBox395G.apk
CALL %adb% shell dpm set-device-owner com.catchingnow.icebox/.receiver.DPMReceiver
CALL %adb% shell ime enable com.sohu.inputmethod.sogou/.SogouIME
CALL %adb% shell ime set com.sohu.inputmethod.sogou/.SogouIME
ECHO.    
ECHO. 执行完毕，请检查机器程序列表
ECHO. 少了很多软件多了几个软件为成功
ECHO. 如需要撤销本操作，请恢复出厂
ECHO.
ECHO.**************************************************************************
ECHO.
ECHO.   按任意键返回主菜单或x掉窗口退出
ECHO.
ECHO.**************************************************************************        
pause>nul
goto STARTMENU


