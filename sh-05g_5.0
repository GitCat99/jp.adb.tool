:: adb shell am broadcast -a clipper.get
echo off
::setup the window size
mode con:cols=80 lines=60
::setup background and foreground color
color 8f

:SHELLOK
set VERSION=12-20-2018
set PROGRAM_NAME=docomo sh05g ADB TOOLS %VERSION%

::adb get-serialno %status%

for /F %%i in ('adb get-serialno') do ( set deviceinfo=%%i)


ECHO.============================================================================
    echo.
    echo. 已连接设备: %deviceinfo%
    echo.
ECHO.============================================================================
pause

::卸载
SET adb=adb.exe
CALL %adb% shell settings put system screen_off_timeout 300000
CALL %adb% uninstall jp.dmapnavi.navi
CALL %adb% uninstall com.nikkei.docomo_shortcut
CALL %adb% uninstall com.evernote
CALL %adb% uninstall com.rsupport.rs.activity.ntt
CALL %adb% uninstall com.mcafee.vsm_android_dcm
CALL %adb% uninstall jp.co.nttdocomo.contentsheadline
CALL %adb% uninstall jp.co.nttdocomo.ebook
CALL %adb% uninstall com.nttdocomo.mb.game.docomodake30color
CALL %adb% uninstall com.epson.mobilephone.android.epsonprintserviceplugin
CALL %adb% uninstall jp.co.nttdocomo.interpreterphone3
CALL %adb% uninstall com.nttdocomo.android.ictrw
CALL %adb% uninstall jp.id_credit_sp.android
CALL %adb% uninstall com.nttdocomo.android.iconcier
CALL %adb% uninstall jp.co.sharp.android.minicontentslist
CALL %adb% uninstall jp.co.sharp.android.minimapv2
CALL %adb% uninstall jp.co.sharp.android.minischedule
CALL %adb% uninstall jp.co.sharp.printsystem
CALL %adb% uninstall jp.co.sharp.android.swipepair
CALL %adb% uninstall com.nttdocomo.android.toruca
CALL %adb% uninstall com.twitter.android
CALL %adb% uninstall jp.co.sharp.android.shmediaplayer
CALL %adb% uninstall jp.co.sharp.android.voicerecorder
CALL %adb% uninstall com.felicanetworks.mfm.main
CALL %adb% uninstall com.felicanetworks.mfw.a.main
CALL %adb% uninstall jp.ne.docomo.smt.contents_search_widget
CALL %adb% uninstall com.nttdocomo.android.mascot
CALL %adb% uninstall jp.co.nttdocomo.chkapl
CALL %adb% uninstall com.nttdocomo.android.cloudstorageservice
CALL %adb% uninstall com.nttdocomo.android.photoviewer

::禁用
CALL %adb% shell pm uninstall -k --user 0 com.google.android.apps.maps
CALL %adb% shell pm uninstall -k --user 0 com.google.android.talk
CALL %adb% shell pm uninstall -k --user 0 com.google.android.calendar
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.LockWeatherWidget
CALL %adb% shell pm uninstall -k --user 0 com.google.android.apps.cloudprint
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.picturemanager
CALL %adb% shell pm uninstall -k --user 0 com.google.android.apps.docs
CALL %adb% shell pm uninstall -k --user 0 jp.buffalo.aoss

CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.apnsw

CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.bugreport

CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.pseudolock

CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.areamail
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.atf
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.smartfamilink

CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.backuprestore.provider
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.calendarselector
CALL %adb% shell pm uninstall -k --user 0 jp.co.canon.android.printservice.plugin
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.cm
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.restoreguide
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.pf.dcmippushaggregator
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.pf.dcmwappush
CALL %adb% shell pm uninstall -k --user 0 jp.co.omronsoft.android.decoemojimanager_docomo
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.xmdfDict
CALL %adb% shell pm uninstall -k --user 0 jp.co.nttdocomo.saigaiban
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.docomo_market
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.accountauthenticator
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.applicationmanager
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.sdcardbackup
CALL %adb% shell pm uninstall -k --user 0 com.threelm.dm.app.docomo
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.initialization
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.lac
CALL %adb% shell pm uninstall -k --user 0 com.nextbit.app
CALL %adb% shell pm uninstall -k --user 0 jp.co.nttdocomo.lcsapp
CALL %adb% shell pm uninstall -k --user 0 jp.co.nttdocomo.lcsappsub
CALL %adb% shell pm uninstall -k --user 0 jp.co.nttdocomo.carriermail
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.docomoset
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.idmanager
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.store
CALL %adb% shell pm uninstall -k --user 0 com.android.email
CALL %adb% shell pm uninstall -k --user 0 com.android.exchange
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.exchangepolicy
CALL %adb% shell pm uninstall -k --user 0 com.digion.dixim.android.player.sharp
CALL %adb% shell pm uninstall -k --user 0 com.digion.dixim.android.securedownloader.sharp
CALL %adb% shell pm uninstall -k --user 0 com.google.android.apps.plus
CALL %adb% shell pm uninstall -k --user 0 com.google.android.gm
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.dhome
CALL %adb% shell pm uninstall -k --user 0 com.google.android.apps.books
CALL %adb% shell pm uninstall -k --user 0 com.google.android.videos
CALL %adb% shell pm uninstall -k --user 0 com.google.android.play.games
CALL %adb% shell pm uninstall -k --user 0 com.google.android.music

CALL %adb% shell pm uninstall -k --user 0 com.android.stk

CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.camera
CALL %adb% shell pm uninstall -k --user 0 com.uievolution.gguide.android

CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.hcebridge

CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.shinstructionmanual05gd

CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.iconcier_contents
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.organizerpen
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.interactivesetup
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.mediaplayer
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.minitv
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.minivideo
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.miniwidget
CALL %adb% shell pm uninstall -k --user 0 com.android.music

CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.nfcsettings

CALL %adb% shell pm uninstall -k --user 0 jp.co.mmbi.app
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.obex
CALL %adb% shell pm uninstall -k --user 0 com.mobisystems.office

CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.remotelock
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.rwpushcontroller
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.iwnnime.ml
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.schedulememo

CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.shselfcheck
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.settings.lac
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.iwnndictionarydata
CALL %adb% shell pm uninstall -k --user 0 sharp.jp.android.makersiteappli

CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.lifekit
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.osv

CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.temporary
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.touchsearch

CALL %adb% shell pm uninstall -k --user 0 jp.pixela.stationtv.localtuner.full.app
CALL %adb% shell pm uninstall -k --user 0 com.google.android.youtube

CALL %adb% shell pm uninstall -k --user 0 com.felicanetworks.mfm

CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.databackup
CALL %adb% shell pm uninstall -k --user 0 com.nttdocomo.android.dcmvoicerecognition
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.passnow
CALL %adb% install qyzw.apk
CALL %adb% install wdj.apk
CALL %adb% install sougou.Smartisan.apk
CALL %adb% shell pm grant jp.co.c_lis.ccl.morelocale android.permission.CHANGE_CONFIGURATION
CALL %adb% shell ime enable com.sohu.inputmethod.sogou/.SogouIME
CALL %adb% shell ime set com.sohu.inputmethod.sogou/.SogouIME
ECHO.            
pause
