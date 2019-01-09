@ECHO OFF
mode con cols=80 lines=52
TITLE Sharp SH-04H adb批量操作工具v1.0--by 翻车猫
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

CALL %adb% uninstall jp.dmapnavi.navi02
CALL %adb% uninstall com.rsupport.rs.activity.ntt
CALL %adb% uninstall com.amazon.kindle
CALL %adb% uninstall com.amazon.mShop.android.shopping
CALL %adb% uninstall com.mcafee.vsm_android_dcm
CALL %adb% uninstall jp.co.sharp.android.readercamera
CALL %adb% uninstall jp.co.nttdocomo.dbook
CALL %adb% uninstall com.nttdocomo.android.dpoint
CALL %adb% uninstall com.epson.mobilephone.android.epsonprintserviceplugin
CALL %adb% uninstall com.facebook.katana
CALL %adb% uninstall com.nttdocomo.android.voicetranslation
CALL %adb% uninstall com.nttdocomo.android.ictrw
CALL %adb% uninstall jp.id_credit_sp.android
CALL %adb% uninstall com.instagram.android
CALL %adb% uninstall jp.co.lawson.activity
CALL %adb% uninstall com.facebook.orca
CALL %adb% uninstall com.mobileselect.somcprein
CALL %adb% uninstall com.felicanetworks.mfm.main
CALL %adb% uninstall com.felicanetworks.mfw.a.main
CALL %adb% uninstall com.nttdocomo.android.toruca
CALL %adb% uninstall com.twitter.android
CALL %adb% uninstall jp.co.sharp.android.shmediaplayer
CALL %adb% uninstall com.nttdocomo.android.cloudstorageservice
CALL %adb% uninstall com.nttdocomo.android.photocollection
CALL %adb% uninstall jp.co.mcdonalds.android
CALL %adb% uninstall com.nttdocomo.android.moneyrecord

CALL %adb% shell pm uninstall -k --user 0 com.google.android.launcher
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.LockWeatherWidget
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.picturemanager
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.feelsimplehome
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.areamail
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.smartfamilink
CALL %adb% shell pm uninstall -k --user 0 jp.co.canon.android.printservice.plugin
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.scshoviewer
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.scshocapture
CALL %adb% shell pm uninstall -k --user 0 com.google.android.apps.cloudprint
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.cm
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.restoreguide
CALL %adb% shell pm uninstall -k --user 0 jp.co.omronsoft.android.decoemojimanager_docomo
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.xmdfDict
CALL %adb% shell pm uninstall -k --user 0 jp.co.nttdocomo.saigaiban
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.store
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.applicationmanager
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.accountauthenticator
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.sdcardbackup
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.initialization
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.dhome
CALL %adb% shell pm uninstall -k --user 0 com.nextbit.app
CALL %adb% shell pm uninstall -k --user 0 jp.co.nttdocomo.carriermail
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.docomoset
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.docomosimplehome
CALL %adb% shell pm uninstall -k --user 0 com.google.android.apps.docs
CALL %adb% shell pm uninstall -k --user 0 com.google.android.apps.tachyon
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.idmanager
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.dmenu2
CALL %adb% shell pm uninstall -k --user 0 com.android.email
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.epsmodecontrol
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.epshome
CALL %adb% shell pm uninstall -k --user 0 com.android.exchange
CALL %adb% shell pm uninstall -k --user 0 com.digion.dixim.android.player.sharp
CALL %adb% shell pm uninstall -k --user 0 com.digion.dixim.android.securedownloader.sharp
CALL %adb% shell pm uninstall -k --user 0 com.google.android.gm
CALL %adb% shell pm uninstall -k --user 0 com.google.android.launcher
CALL %adb% shell pm uninstall -k --user 0 com.google.android.videos
CALL %adb% shell pm uninstall -k --user 0 com.google.android.music
CALL %adb% shell pm uninstall -k --user 0 com.ipg.gguide.dcm_app.android
CALL %adb% shell pm uninstall -k --user 0 com.google.android.talk
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.shinstructionmanual04hb
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.shinstructionmanual04hc
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.iconcier
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.iconcier_contents
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.organizerpen
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.karadamate
CALL %adb% shell pm uninstall -k --user 0 com.google.android.apps.maps
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.mediaplayer
CALL %adb% shell pm uninstall -k --user 0 com.felicanetworks.mfc
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.voiceeditor
CALL %adb% shell pm uninstall -k --user 0 com.android.musicfx
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.netdictionary
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.obex
CALL %adb% shell pm uninstall -k --user 0 com.mobisystems.office
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.remotelock
CALL %adb% shell pm uninstall -k --user 0 com.felicanetworks.mfm
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.osaifu.tsmproxy
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.devicehelp
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.iwnnime.ml
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.schedulememo
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.shselfcheck
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.iwnndictionarydata
CALL %adb% shell pm uninstall -k --user 0 sharp.jp.android.makersiteappli
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.lifekit
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.osv
CALL %adb% shell pm uninstall -k --user 0 jp.pixela.stationtv.localtuner.full.app
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.startuptutorial
CALL %adb% shell pm uninstall -k --user 0 com.google.android.youtube
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.emopar
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.emopar.internalcontent
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.emopar.internalcontent2
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.mascot
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.databackup
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.dcmvoicerecognition
CALL %adb% install IceBox395G.apk
CALL %adb% install qyzw.apk
CALL %adb% install wdj.apk
CALL %adb% install sougou.Smartisan.apk
CALL %adb% shell pm grant jp.co.c_lis.ccl.morelocale android.permission.CHANGE_CONFIGURATION
CALL %adb% shell dpm set-device-owner com.catchingnow.icebox/.receiver.DPMReceiver
CALL %adb% shell ime enable com.sohu.inputmethod.sogou/.SogouIME
CALL %adb% shell ime set com.sohu.inputmethod.sogou/.SogouIME
ECHO.            
ECHO. 执行完毕，请检查机器程序列表
ECHO. 少了很多软件多了几个软件为成功
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





