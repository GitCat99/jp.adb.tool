@ECHO OFF
mode con cols=80 lines=52
TITLE Sharp shv34/35/37 adb批量操作工具v3.0--by 翻车猫
color 8f


:STARTMENU
CLS
ECHO. 
ECHO.       **********
ECHO.       **   本工具必须放入adb工具包文件夹内运行
ECHO.       **      shv34/35/37 adb批量操作工具
ECHO.       **********       ****       **       **
ECHO.       **             **           ** *   * **
ECHO.       **             **           **  * *  **
ECHO.       **               ****       **   *   **
ECHO.============================================================================
ECHO. 
ECHO.    【工具说明】恢复出厂后直接下拉状态栏进设置使用。
ECHO.
ECHO.          a. 多次点击关于本机里build number打开开发者模式 ； 
ECHO. 
ECHO.          b. 打开usb debugging并连接电脑点允许usb debug；
ECHO.   
ECHO.          c. 禁用或卸载预装不常用app不会损坏系统；
ECHO.   
ECHO.          d. 支持6-8系统批量禁用绝大部分au预装app并卸载au账户；
ECHO.  
ECHO.          e. 使用candy拨号替换原拨号app解决67系统+86问题；
ECHO.  
ECHO.          f. 一键安装区域软件和冰箱并授予运行权限，自动打开未知源开关；
ECHO. 
ECHO.          g. 一键安装酷安市场，设默认为搜狗输入法，设5分钟锁屏；
ECHO. 
ECHO.          h. 部分项目出现失败请无视，如遇bug请恢复出厂；
ECHO.  
ECHO.          I. 部分6.0系统有概率不兼容出现大面积报错，请升级系统；
ECHO.  
ECHO.          J. 如需寻求帮助请前往翻车猫淘宝店买个机器后咨询。 
ECHO.  
ECHO.============================================================================
ECHO.                                                                           
ECHO.    【请根据情况选择】 如无大bug，本工具不再更新                                  
ECHO.                                                                           
ECHO.          1.8.0系统批量精简，区域+酷安+搜狗+冰箱
ECHO.  
ECHO.          2.8.0系统批量精简，区域软件 
ECHO.  
ECHO.          3.7.0系统批量精简，区域软件+candy拨号+酷安+搜狗+冰箱    
ECHO.  
ECHO.          4.7.0系统批量精简，区域软件+candy拨号
ECHO.  
ECHO.          5.6.0系统批量精简，区域软件+candy拨号+酷安+搜狗+冰箱     
ECHO.  
ECHO.          6.6.0系统批量精简，区域软件+candy拨号    
ECHO.  
ECHO.============================================================================
ECHO.
set choice=
set /p choice=请输入对应数字，按【Enter键确认】继续下一步：
if /i "%choice%"=="1" goto MENU1
if /i "%choice%"=="2" goto MENU2
if /i "%choice%"=="3" goto MENU3
if /i "%choice%"=="4" goto MENU4
if /i "%choice%"=="5" goto MENU5
if /i "%choice%"=="6" goto MENU6
ECHO.
ECHO.输入无效，请重新输入...
ping 127.0.0.1 -n 2 >NUL
ECHO.
goto STARTMENU

:MENU1
CLS
SET adb=adb.exe
ECHO.
ECHO.      shv34/35/37批量操作工具
ECHO. 
ECHO.=============================================================
ECHO.
ECHO.
ECHO.   8.0.0系统批量精简，区域+酷安+搜狗+冰箱
ECHO. 
ECHO. 
ECHO.=============================================================
ECHO ------运行中------
for /F %%i in ('adb get-serialno') do ( set deviceinfo=%%i)
ECHO.============================================================================
    echo.
    echo. 已连接设备: %deviceinfo%
    echo.
ECHO.============================================================================
CALL %adb% shell settings put system screen_off_timeout 300000
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.account
CALL %adb% shell settings put secure install_non_market_apps 1
CALL %adb% shell pm disable-user com.kddi.nfc.tag_reader
CALL %adb% shell pm disable-user ait.com.vn.main.plus.lte
CALL %adb% shell pm disable-user jp.co.sharp.android.LockWeatherWidget
CALL %adb% shell pm disable-user com.kddi.nfc.menu
CALL %adb% shell pm disable-user com.real.RealPlayerCloud
CALL %adb% shell pm disable-user jp.co.sharp.android.interactivesetup
CALL %adb% shell pm disable-user com.kddi.android.screenshotshare
CALL %adb% shell pm disable-user jp.co.sharp.android.picturemanager
CALL %adb% shell pm disable-user jp.co.sharp.android.cm
CALL %adb% shell pm disable-user com.google.android.launcher
CALL %adb% shell pm disable-user jp.co.sharp.android.scshoviewer
CALL %adb% shell pm disable-user jp.co.sharp.android.scshocapture
CALL %adb% shell pm disable-user jp.co.sharp.android.settingsaquosusefull
CALL %adb% shell pm disable-user com.google.android.calendar
CALL %adb% shell pm disable-user com.google.android.apps.maps
CALL %adb% shell pm disable-user jp.co.sharp.android.emopar
CALL %adb% shell pm disable-user jp.co.sharp.android.emopar.internalcontent
CALL %adb% shell pm disable-user jp.co.sharp.android.emopar.internalcontent2
CALL %adb% shell pm disable-user com.google.android.googlequicksearchbox
CALL %adb% shell pm disable-user com.kddi.ux.station
CALL %adb% shell pm disable-user com.kddi.android.auworldservice
CALL %adb% shell pm disable-user sharp.jp.android.makersiteappli
CALL %adb% shell pm disable-user com.kddi.android.newspass
CALL %adb% shell pm disable-user com.kddi.android.antijaywalk
CALL %adb% shell pm disable-user com.kddi.android.repairreceipt
CALL %adb% shell pm disable-user com.google.android.talk
CALL %adb% shell pm disable-user jp.co.optim.oru
CALL %adb% shell pm disable-user com.google.android.apps.cloudprint
CALL %adb% shell pm disable-user com.google.android.apps.docs
CALL %adb% shell pm disable-user com.kddi.android.AddressbookPlus
CALL %adb% shell pm disable-user com.kddi.android.klop
CALL %adb% shell pm disable-user com.kddi.android.checker_android
CALL %adb% shell pm disable-user com.kddi.disasterapp
CALL %adb% shell pm disable-user com.kddi.android.easysettingwizard
CALL %adb% shell pm disable-user com.kddi.android.auoneidsetting
CALL %adb% shell pm disable-user com.kddi.market
CALL %adb% shell pm disable-user com.kddi.android.au_setting_menu
CALL %adb% shell pm disable-user jp.auone.wallet
CALL %adb% shell pm disable-user web.wm.auone.jp
CALL %adb% shell pm disable-user com.kddi.android.au_wifi_connect2
CALL %adb% shell pm disable-user com.kddi.cs.app001
CALL %adb% shell pm disable-user com.kddi.android.ausharelink
CALL %adb% shell pm disable-user com.kddi.android.smartpass
CALL %adb% shell pm disable-user com.uievolution.gguide.android
CALL %adb% shell pm disable-user jp.co.sharp.android.smartfamilink
CALL %adb% shell pm disable-user jp.co.sharp.android.shinstructionmanualshv34
CALL %adb% shell pm disable-user jp.co.sharp.android.shinstructionmanualshv35
CALL %adb% shell pm disable-user jp.co.sharp.android.shinstructionmanualshv37
CALL %adb% shell pm disable-user jp.co.canon.android.printservice.plugin
CALL %adb% shell pm disable-user jp.co.sharp.android.scshocapture
CALL %adb% shell pm disable-user jp.co.sharp.exapps
CALL %adb% shell pm disable-user jp.co.sharp.android.xmdfDict
CALL %adb% shell pm disable-user com.google.android.apps.tachyon
CALL %adb% shell pm disable-user com.kddi.android.email
CALL %adb% shell pm disable-user com.kddi.android.emailprov
CALL %adb% shell pm disable-user com.facebook.katana
CALL %adb% shell pm disable-user com.digion.dixim.android.player.sharp
CALL %adb% shell pm disable-user com.google.android.gm
CALL %adb% shell pm disable-user com.google.android.music
CALL %adb% shell pm disable-user com.google.android.videos
CALL %adb% shell pm disable-user jp.co.sharp.android.karadamate
CALL %adb% shell pm disable-user com.lookout
CALL %adb% shell pm disable-user com.felicanetworks.mfc
CALL %adb% shell pm disable-user com.kddi.android.imp
CALL %adb% shell pm disable-user jp.co.sharp.android.netdictionary
CALL %adb% shell pm disable-user com.mobisystems.office
CALL %adb% shell pm disable-user com.android.email
CALL %adb% shell pm disable-user com.kddi.ar.satch.satchviewer
CALL %adb% shell pm disable-user jp.co.sharp.android.shselfcheck
CALL %adb% shell pm disable-user jp.pixela.stationtv.localtuner.full.app
CALL %adb% shell pm disable-user com.kddi.android.UtaPass
CALL %adb% shell pm disable-user com.kddi.auoneshopping
CALL %adb% shell pm disable-user com.google.android.youtube
CALL %adb% shell pm disable-user jp.netstar.familysmile
CALL %adb% shell pm disable-user com.kddi.android.btdun
CALL %adb% shell pm disable-user com.kddi.pass.launcher
CALL %adb% shell pm disable-user jp.kddilabs.smartnetwork.troubleshooting
CALL %adb% shell pm disable-user com.kddi.android.mamoru
CALL %adb% shell pm disable-user jp.co.disney.apps.base.disneymarketapp
CALL %adb% shell pm disable-user com.kddi.datacharge
CALL %adb% shell pm disable-user com.kddi.android.lismobookstore
CALL %adb% shell pm disable-user com.felicanetworks.mfm
CALL %adb% install qyzw.apk
CALL %adb% install IceBox395G.apk
CALL %adb% install wdj.apk
CALL %adb% install sougou.Smartisan.apk
CALL %adb% shell dpm set-device-owner com.catchingnow.icebox/.receiver.DPMReceiver
CALL %adb% shell pm grant jp.co.c_lis.ccl.morelocale android.permission.CHANGE_CONFIGURATION
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

:MENU2
CLS
SET adb=adb.exe
ECHO.
ECHO.      shv34/35/37批量操作工具
ECHO. 
ECHO.=============================================================
ECHO.
ECHO.
ECHO.   8.0.0系统批量精简，安装区域软件
ECHO. 
ECHO. 
ECHO.=============================================================
ECHO ------运行中------
for /F %%i in ('adb get-serialno') do ( set deviceinfo=%%i)
ECHO.============================================================================
    echo.
    echo. 已连接设备: %deviceinfo%
    echo.
ECHO.============================================================================
CALL %adb% shell settings put system screen_off_timeout 300000
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.account
CALL %adb% shell pm disable-user com.kddi.nfc.tag_reader
CALL %adb% shell pm disable-user ait.com.vn.main.plus.lte
CALL %adb% shell pm disable-user jp.co.sharp.android.LockWeatherWidget
CALL %adb% shell pm disable-user com.kddi.nfc.menu
CALL %adb% shell pm disable-user com.real.RealPlayerCloud
CALL %adb% shell pm disable-user jp.co.sharp.android.interactivesetup
CALL %adb% shell pm disable-user com.kddi.android.screenshotshare
CALL %adb% shell pm disable-user jp.co.sharp.android.picturemanager
CALL %adb% shell pm disable-user jp.co.sharp.android.cm
CALL %adb% shell pm disable-user com.google.android.launcher
CALL %adb% shell pm disable-user jp.co.sharp.android.scshoviewer
CALL %adb% shell pm disable-user jp.co.sharp.android.scshocapture
CALL %adb% shell pm disable-user jp.co.sharp.android.settingsaquosusefull
CALL %adb% shell pm disable-user com.google.android.calendar
CALL %adb% shell pm disable-user com.google.android.apps.maps
CALL %adb% shell pm disable-user jp.co.sharp.android.emopar
CALL %adb% shell pm disable-user jp.co.sharp.android.emopar.internalcontent
CALL %adb% shell pm disable-user jp.co.sharp.android.emopar.internalcontent2
CALL %adb% shell pm disable-user com.google.android.googlequicksearchbox
CALL %adb% shell pm disable-user com.kddi.ux.station
CALL %adb% shell pm disable-user com.kddi.android.auworldservice
CALL %adb% shell pm disable-user sharp.jp.android.makersiteappli
CALL %adb% shell pm disable-user com.kddi.android.newspass
CALL %adb% shell pm disable-user com.kddi.android.antijaywalk
CALL %adb% shell pm disable-user com.kddi.android.repairreceipt
CALL %adb% shell pm disable-user com.google.android.talk
CALL %adb% shell pm disable-user jp.co.optim.oru
CALL %adb% shell pm disable-user com.google.android.apps.cloudprint
CALL %adb% shell pm disable-user com.google.android.apps.docs
CALL %adb% shell pm disable-user com.kddi.android.AddressbookPlus
CALL %adb% shell pm disable-user com.kddi.android.klop
CALL %adb% shell pm disable-user com.kddi.android.checker_android
CALL %adb% shell pm disable-user com.kddi.disasterapp
CALL %adb% shell pm disable-user com.kddi.android.easysettingwizard
CALL %adb% shell pm disable-user com.kddi.android.auoneidsetting
CALL %adb% shell pm disable-user com.kddi.market
CALL %adb% shell pm disable-user com.kddi.android.au_setting_menu
CALL %adb% shell pm disable-user jp.auone.wallet
CALL %adb% shell pm disable-user web.wm.auone.jp
CALL %adb% shell pm disable-user com.kddi.android.au_wifi_connect2
CALL %adb% shell pm disable-user com.kddi.cs.app001
CALL %adb% shell pm disable-user com.kddi.android.ausharelink
CALL %adb% shell pm disable-user com.kddi.android.smartpass
CALL %adb% shell pm disable-user com.uievolution.gguide.android
CALL %adb% shell pm disable-user jp.co.sharp.android.smartfamilink
CALL %adb% shell pm disable-user jp.co.sharp.android.shinstructionmanualshv34
CALL %adb% shell pm disable-user jp.co.sharp.android.shinstructionmanualshv35
CALL %adb% shell pm disable-user jp.co.sharp.android.shinstructionmanualshv37
CALL %adb% shell pm disable-user jp.co.canon.android.printservice.plugin
CALL %adb% shell pm disable-user jp.co.sharp.android.scshocapture
CALL %adb% shell pm disable-user jp.co.sharp.exapps
CALL %adb% shell pm disable-user jp.co.sharp.android.xmdfDict
CALL %adb% shell pm disable-user com.google.android.apps.tachyon
CALL %adb% shell pm disable-user com.kddi.android.email
CALL %adb% shell pm disable-user com.kddi.android.emailprov
CALL %adb% shell pm disable-user com.facebook.katana
CALL %adb% shell pm disable-user com.digion.dixim.android.player.sharp
CALL %adb% shell pm disable-user com.google.android.gm
CALL %adb% shell pm disable-user com.google.android.music
CALL %adb% shell pm disable-user com.google.android.videos
CALL %adb% shell pm disable-user jp.co.sharp.android.karadamate
CALL %adb% shell pm disable-user com.lookout
CALL %adb% shell pm disable-user com.felicanetworks.mfc
CALL %adb% shell pm disable-user com.kddi.android.imp
CALL %adb% shell pm disable-user jp.co.sharp.android.netdictionary
CALL %adb% shell pm disable-user com.mobisystems.office
CALL %adb% shell pm disable-user com.android.email
CALL %adb% shell pm disable-user com.kddi.ar.satch.satchviewer
CALL %adb% shell pm disable-user jp.co.sharp.android.shselfcheck
CALL %adb% shell pm disable-user jp.pixela.stationtv.localtuner.full.app
CALL %adb% shell pm disable-user com.kddi.android.UtaPass
CALL %adb% shell pm disable-user com.kddi.auoneshopping
CALL %adb% shell pm disable-user com.google.android.youtube
CALL %adb% shell pm disable-user jp.netstar.familysmile
CALL %adb% shell pm disable-user com.kddi.android.btdun
CALL %adb% shell pm disable-user com.kddi.pass.launcher
CALL %adb% shell pm disable-user jp.kddilabs.smartnetwork.troubleshooting
CALL %adb% shell pm disable-user com.kddi.android.mamoru
CALL %adb% shell pm disable-user jp.co.disney.apps.base.disneymarketapp
CALL %adb% shell pm disable-user com.kddi.datacharge
CALL %adb% shell pm disable-user com.kddi.android.lismobookstore
CALL %adb% shell pm disable-user com.felicanetworks.mfm
CALL %adb% install qyzw.apk
CALL %adb% shell pm grant jp.co.c_lis.ccl.morelocale android.permission.CHANGE_CONFIGURATION
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

:MENU3
CLS
SET adb=adb.exe
ECHO.
ECHO.      shv34/35/37批量操作工具
ECHO. 
ECHO.=============================================================
ECHO.
ECHO.
ECHO.   7.0系统批量精简，区域软件+candy拨号+酷安+搜狗+冰箱
ECHO. 
ECHO. 
ECHO.=============================================================
ECHO ------运行中------
for /F %%i in ('adb get-serialno') do ( set deviceinfo=%%i)
ECHO.============================================================================
    echo.
    echo. 已连接设备: %deviceinfo%
    echo.
ECHO.============================================================================
CALL %adb% shell settings put system screen_off_timeout 300000
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.account
CALL %adb% shell settings put secure install_non_market_apps 1
CALL %adb% shell pm disable-user jp.co.sharp.android.LockWeatherWidget
CALL %adb% shell pm disable-user com.kddi.nfc.menu
CALL %adb% shell pm disable-user com.real.RealPlayerCloud
CALL %adb% shell pm disable-user jp.co.sharp.android.interactivesetup
CALL %adb% shell pm disable-user com.kddi.android.screenshotshare
CALL %adb% shell pm disable-user jp.co.sharp.android.picturemanager
CALL %adb% shell pm disable-user jp.co.sharp.android.cm
CALL %adb% shell pm disable-user jp.co.sharp.android.scshoviewer
CALL %adb% shell pm disable-user jp.co.sharp.android.scshocapture
CALL %adb% shell pm disable-user jp.co.sharp.android.settingsaquosusefull
CALL %adb% shell pm disable-user com.google.android.calendar
CALL %adb% shell pm disable-user com.google.android.apps.maps
CALL %adb% shell pm disable-user jp.co.sharp.android.emopar
CALL %adb% shell pm disable-user jp.co.sharp.android.emopar.internalcontent
CALL %adb% shell pm disable-user jp.co.sharp.android.emopar.internalcontent2
CALL %adb% shell pm disable-user com.kddi.ux.station
CALL %adb% shell pm disable-user com.kddi.android.auworldservice
CALL %adb% shell pm disable-user sharp.jp.android.makersiteappli
CALL %adb% shell pm disable-user com.kddi.android.newspass
CALL %adb% shell pm disable-user com.kddi.android.antijaywalk
CALL %adb% shell pm disable-user com.kddi.android.repairreceipt
CALL %adb% shell pm disable-user com.google.android.talk
CALL %adb% shell pm disable-user jp.co.optim.oru
CALL %adb% shell pm disable-user com.google.android.apps.cloudprint
CALL %adb% shell pm disable-user com.google.android.apps.docs
CALL %adb% shell pm disable-user com.kddi.android.AddressbookPlus
CALL %adb% shell pm disable-user com.kddi.android.klop
CALL %adb% shell pm disable-user com.kddi.android.checker_android
CALL %adb% shell pm disable-user com.kddi.disasterapp
CALL %adb% shell pm disable-user com.kddi.android.easysettingwizard
CALL %adb% shell pm disable-user com.kddi.android.auoneidsetting
CALL %adb% shell pm disable-user com.kddi.market
CALL %adb% shell pm disable-user com.kddi.android.au_setting_menu
CALL %adb% shell pm disable-user jp.auone.wallet
CALL %adb% shell pm disable-user web.wm.auone.jp
CALL %adb% shell pm disable-user com.kddi.android.au_wifi_connect2
CALL %adb% shell pm disable-user com.kddi.cs.app001
CALL %adb% shell pm disable-user com.kddi.android.ausharelink
CALL %adb% shell pm disable-user com.kddi.android.smartpass
CALL %adb% shell pm disable-user com.uievolution.gguide.android
CALL %adb% shell pm disable-user jp.co.sharp.android.smartfamilink
CALL %adb% shell pm disable-user jp.co.sharp.android.shinstructionmanualshv34
CALL %adb% shell pm disable-user jp.co.sharp.android.shinstructionmanualshv35
CALL %adb% shell pm disable-user jp.co.sharp.android.shinstructionmanualshv37
CALL %adb% shell pm disable-user jp.co.canon.android.printservice.plugin
CALL %adb% shell pm disable-user jp.co.sharp.android.scshocapture
CALL %adb% shell pm disable-user jp.co.sharp.exapps
CALL %adb% shell pm disable-user jp.co.sharp.android.xmdfDict
CALL %adb% shell pm disable-user com.google.android.apps.tachyon
CALL %adb% shell pm disable-user com.kddi.android.email
CALL %adb% shell pm disable-user com.kddi.android.emailprov
CALL %adb% shell pm disable-user com.facebook.katana
CALL %adb% shell pm disable-user com.digion.dixim.android.player.sharp
CALL %adb% shell pm disable-user com.google.android.gm
CALL %adb% shell pm disable-user com.google.android.music
CALL %adb% shell pm disable-user com.google.android.videos
CALL %adb% shell pm disable-user jp.co.sharp.android.karadamate
CALL %adb% shell pm disable-user com.lookout
CALL %adb% shell pm disable-user com.felicanetworks.mfc
CALL %adb% shell pm disable-user com.kddi.android.imp
CALL %adb% shell pm disable-user jp.co.sharp.android.netdictionary
CALL %adb% shell pm disable-user com.mobisystems.office
CALL %adb% shell pm disable-user com.android.email
CALL %adb% shell pm disable-user com.kddi.ar.satch.satchviewer
CALL %adb% shell pm disable-user jp.co.sharp.android.shselfcheck
CALL %adb% shell pm disable-user jp.pixela.stationtv.localtuner.full.app
CALL %adb% shell pm disable-user com.kddi.android.UtaPass
CALL %adb% shell pm disable-user com.kddi.auoneshopping
CALL %adb% shell pm disable-user com.google.android.youtube
CALL %adb% shell pm disable-user jp.netstar.familysmile
CALL %adb% shell pm disable-user com.kddi.android.btdun
CALL %adb% shell pm disable-user com.kddi.pass.launcher
CALL %adb% shell pm disable-user jp.kddilabs.smartnetwork.troubleshooting
CALL %adb% shell pm disable-user com.kddi.android.mamoru
CALL %adb% shell pm disable-user jp.co.disney.apps.base.disneymarketapp
CALL %adb% shell pm disable-user com.kddi.datacharge
CALL %adb% shell pm disable-user com.kddi.android.lismobookstore
CALL %adb% shell pm disable-user com.felicanetworks.mfm
CALL %adb% install qyzw.apk
CALL %adb% install IceBox395G.apk
CALL %adb% install wdj.apk
CALL %adb% install sougou.Smartisan.apk
CALL %adb% install candy1016.apk
CALL %adb% shell pm disable-user com.android.dialer
CALL %adb% shell settings put secure dialer_default_application com.candykk.android.dialer
CALL %adb% shell dpm set-device-owner com.catchingnow.icebox/.receiver.DPMReceiver
CALL %adb% shell pm grant jp.co.c_lis.ccl.morelocale android.permission.CHANGE_CONFIGURATION
CALL %adb% shell ime enable com.sohu.inputmethod.sogou/.SogouIME
CALL %adb% shell ime set com.sohu.inputmethod.sogou/.SogouIME
CALL %adb% shell pm disable-user jp.co.sharp.android.feeluxhome
CALL %adb% shell pm disable-user com.kddi.android.auhomelauncher
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

:MENU4
CLS
SET adb=adb.exe
ECHO.
ECHO.      shv34/35/37批量操作工具
ECHO. 
ECHO.=============================================================
ECHO.
ECHO.
ECHO.   7.0系统批量精简，安装区域软件+candy拨号
ECHO. 
ECHO. 
ECHO.=============================================================
ECHO ------运行中------
for /F %%i in ('adb get-serialno') do ( set deviceinfo=%%i)
ECHO.============================================================================
    echo.
    echo. 已连接设备: %deviceinfo%
    echo.
ECHO.============================================================================
CALL %adb% shell settings put system screen_off_timeout 300000
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.account
CALL %adb% shell pm disable-user jp.co.sharp.android.LockWeatherWidget
CALL %adb% shell pm disable-user com.kddi.nfc.menu
CALL %adb% shell pm disable-user com.real.RealPlayerCloud
CALL %adb% shell pm disable-user jp.co.sharp.android.interactivesetup
CALL %adb% shell pm disable-user com.kddi.android.screenshotshare
CALL %adb% shell pm disable-user jp.co.sharp.android.picturemanager
CALL %adb% shell pm disable-user jp.co.sharp.android.cm
CALL %adb% shell pm disable-user jp.co.sharp.android.scshoviewer
CALL %adb% shell pm disable-user jp.co.sharp.android.scshocapture
CALL %adb% shell pm disable-user jp.co.sharp.android.settingsaquosusefull
CALL %adb% shell pm disable-user com.google.android.calendar
CALL %adb% shell pm disable-user com.google.android.apps.maps
CALL %adb% shell pm disable-user jp.co.sharp.android.emopar
CALL %adb% shell pm disable-user jp.co.sharp.android.emopar.internalcontent
CALL %adb% shell pm disable-user jp.co.sharp.android.emopar.internalcontent2
CALL %adb% shell pm disable-user com.kddi.ux.station
CALL %adb% shell pm disable-user com.kddi.android.auworldservice
CALL %adb% shell pm disable-user sharp.jp.android.makersiteappli
CALL %adb% shell pm disable-user com.kddi.android.newspass
CALL %adb% shell pm disable-user com.kddi.android.antijaywalk
CALL %adb% shell pm disable-user com.kddi.android.repairreceipt
CALL %adb% shell pm disable-user com.google.android.talk
CALL %adb% shell pm disable-user jp.co.optim.oru
CALL %adb% shell pm disable-user com.google.android.apps.cloudprint
CALL %adb% shell pm disable-user com.google.android.apps.docs
CALL %adb% shell pm disable-user com.kddi.android.AddressbookPlus
CALL %adb% shell pm disable-user com.kddi.android.klop
CALL %adb% shell pm disable-user com.kddi.android.checker_android
CALL %adb% shell pm disable-user com.kddi.disasterapp
CALL %adb% shell pm disable-user com.kddi.android.easysettingwizard
CALL %adb% shell pm disable-user com.kddi.android.auoneidsetting
CALL %adb% shell pm disable-user com.kddi.market
CALL %adb% shell pm disable-user com.kddi.android.au_setting_menu
CALL %adb% shell pm disable-user jp.auone.wallet
CALL %adb% shell pm disable-user web.wm.auone.jp
CALL %adb% shell pm disable-user com.kddi.android.au_wifi_connect2
CALL %adb% shell pm disable-user com.kddi.cs.app001
CALL %adb% shell pm disable-user com.kddi.android.ausharelink
CALL %adb% shell pm disable-user com.kddi.android.smartpass
CALL %adb% shell pm disable-user com.uievolution.gguide.android
CALL %adb% shell pm disable-user jp.co.sharp.android.smartfamilink
CALL %adb% shell pm disable-user jp.co.sharp.android.shinstructionmanualshv34
CALL %adb% shell pm disable-user jp.co.sharp.android.shinstructionmanualshv35
CALL %adb% shell pm disable-user jp.co.sharp.android.shinstructionmanualshv37
CALL %adb% shell pm disable-user jp.co.canon.android.printservice.plugin
CALL %adb% shell pm disable-user jp.co.sharp.android.scshocapture
CALL %adb% shell pm disable-user jp.co.sharp.exapps
CALL %adb% shell pm disable-user jp.co.sharp.android.xmdfDict
CALL %adb% shell pm disable-user com.google.android.apps.tachyon
CALL %adb% shell pm disable-user com.kddi.android.email
CALL %adb% shell pm disable-user com.kddi.android.emailprov
CALL %adb% shell pm disable-user com.facebook.katana
CALL %adb% shell pm disable-user com.digion.dixim.android.player.sharp
CALL %adb% shell pm disable-user com.google.android.gm
CALL %adb% shell pm disable-user com.google.android.music
CALL %adb% shell pm disable-user com.google.android.videos
CALL %adb% shell pm disable-user jp.co.sharp.android.karadamate
CALL %adb% shell pm disable-user com.lookout
CALL %adb% shell pm disable-user com.felicanetworks.mfc
CALL %adb% shell pm disable-user com.kddi.android.imp
CALL %adb% shell pm disable-user jp.co.sharp.android.netdictionary
CALL %adb% shell pm disable-user com.mobisystems.office
CALL %adb% shell pm disable-user com.android.email
CALL %adb% shell pm disable-user com.kddi.ar.satch.satchviewer
CALL %adb% shell pm disable-user jp.co.sharp.android.shselfcheck
CALL %adb% shell pm disable-user jp.pixela.stationtv.localtuner.full.app
CALL %adb% shell pm disable-user com.kddi.android.UtaPass
CALL %adb% shell pm disable-user com.kddi.auoneshopping
CALL %adb% shell pm disable-user com.google.android.youtube
CALL %adb% shell pm disable-user jp.netstar.familysmile
CALL %adb% shell pm disable-user com.kddi.android.btdun
CALL %adb% shell pm disable-user com.kddi.pass.launcher
CALL %adb% shell pm disable-user jp.kddilabs.smartnetwork.troubleshooting
CALL %adb% shell pm disable-user com.kddi.android.mamoru
CALL %adb% shell pm disable-user jp.co.disney.apps.base.disneymarketapp
CALL %adb% shell pm disable-user com.kddi.datacharge
CALL %adb% shell pm disable-user com.kddi.android.lismobookstore
CALL %adb% shell pm disable-user com.felicanetworks.mfm
CALL %adb% install qyzw.apk
CALL %adb% install candy1016.apk
CALL %adb% shell pm disable-user com.android.dialer
CALL %adb% shell settings put secure dialer_default_application com.candykk.android.dialer
CALL %adb% shell pm grant jp.co.c_lis.ccl.morelocale android.permission.CHANGE_CONFIGURATION
CALL %adb% shell pm disable-user jp.co.sharp.android.feeluxhome
CALL %adb% shell pm disable-user com.kddi.android.auhomelauncher
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

:MENU5
CLS
SET adb=adb.exe
ECHO.
ECHO.      shv34/35/37批量操作工具
ECHO. 
ECHO.=============================================================
ECHO.
ECHO.
ECHO.   6.0系统批量精简，区域软件+candy拨号+酷安+搜狗+冰箱
ECHO. 
ECHO. 
ECHO.=============================================================
ECHO ------运行中------
for /F %%i in ('adb get-serialno') do ( set deviceinfo=%%i)
ECHO.============================================================================
    echo.
    echo. 已连接设备: %deviceinfo%
    echo.
ECHO.============================================================================
CALL %adb% shell settings put system screen_off_timeout 300000
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.account
CALL %adb% shell settings put secure install_non_market_apps 1
CALL %adb% shell pm uninstall -k --user 0 com.kddi.nfc.tag_reader
CALL %adb% shell pm uninstall -k --user 0 ait.com.vn.main.plus.lte
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.LockWeatherWidget
CALL %adb% shell pm uninstall -k --user 0 com.kddi.nfc.menu
CALL %adb% shell pm uninstall -k --user 0 com.real.RealPlayerCloud
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.interactivesetup
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.screenshotshare
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.picturemanager
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.cm
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.scshoviewer
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.scshocapture
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.settingsaquosusefull
CALL %adb% shell pm uninstall -k --user 0 com.google.android.calendar
CALL %adb% shell pm uninstall -k --user 0 com.google.android.apps.maps
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.emopar
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.emopar.internalcontent
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.emopar.internalcontent2
CALL %adb% shell pm uninstall -k --user 0 com.kddi.ux.station
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.auworldservice
CALL %adb% shell pm uninstall -k --user 0 sharp.jp.android.makersiteappli
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.newspass
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.antijaywalk
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.repairreceipt
CALL %adb% shell pm uninstall -k --user 0 com.google.android.talk
CALL %adb% shell pm uninstall -k --user 0 jp.co.optim.oru
CALL %adb% shell pm uninstall -k --user 0 com.google.android.apps.cloudprint
CALL %adb% shell pm uninstall -k --user 0 com.google.android.apps.docs
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.AddressbookPlus
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.klop
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.checker_android
CALL %adb% shell pm uninstall -k --user 0 com.kddi.disasterapp
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.easysettingwizard
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.auoneidsetting
CALL %adb% shell pm uninstall -k --user 0 com.kddi.market
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.au_setting_menu
CALL %adb% shell pm uninstall -k --user 0 jp.auone.wallet
CALL %adb% shell pm uninstall -k --user 0 web.wm.auone.jp
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.au_wifi_connect2
CALL %adb% shell pm uninstall -k --user 0 com.kddi.cs.app001
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.ausharelink
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.smartpass
CALL %adb% shell pm uninstall -k --user 0 com.uievolution.gguide.android
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.smartfamilink
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.shinstructionmanualshv34
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.shinstructionmanualshv35
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.shinstructionmanualshv37
CALL %adb% shell pm uninstall -k --user 0 jp.co.canon.android.printservice.plugin
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.scshocapture
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.exapps
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.xmdfDict
CALL %adb% shell pm uninstall -k --user 0 com.google.android.apps.tachyon
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.email
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.emailprov
CALL %adb% shell pm uninstall -k --user 0 com.facebook.katana
CALL %adb% shell pm uninstall -k --user 0 com.digion.dixim.android.player.sharp
CALL %adb% shell pm uninstall -k --user 0 com.google.android.gm
CALL %adb% shell pm uninstall -k --user 0 com.google.android.music
CALL %adb% shell pm uninstall -k --user 0 com.google.android.videos
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.karadamate
CALL %adb% shell pm uninstall -k --user 0 com.lookout
CALL %adb% shell pm uninstall -k --user 0 com.felicanetworks.mfc
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.imp
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.netdictionary
CALL %adb% shell pm uninstall -k --user 0 com.mobisystems.office
CALL %adb% shell pm uninstall -k --user 0 com.android.email
CALL %adb% shell pm uninstall -k --user 0 com.kddi.ar.satch.satchviewer
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.shselfcheck
CALL %adb% shell pm uninstall -k --user 0 jp.pixela.stationtv.localtuner.full.app
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.UtaPass
CALL %adb% shell pm uninstall -k --user 0 com.kddi.auoneshopping
CALL %adb% shell pm uninstall -k --user 0 com.google.android.youtube
CALL %adb% shell pm uninstall -k --user 0 jp.netstar.familysmile
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.btdun
CALL %adb% shell pm uninstall -k --user 0 com.kddi.pass.launcher
CALL %adb% shell pm uninstall -k --user 0 jp.kddilabs.smartnetwork.troubleshooting
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.mamoru
CALL %adb% shell pm uninstall -k --user 0 jp.co.disney.apps.base.disneymarketapp
CALL %adb% shell pm uninstall -k --user 0 com.kddi.datacharge
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.lismobookstore
CALL %adb% shell pm uninstall -k --user 0 com.felicanetworks.mfm
CALL %adb% install qyzw.apk
CALL %adb% install IceBox395G.apk
CALL %adb% install wdj.apk
CALL %adb% install sougou.Smartisan.apk
CALL %adb% install candy1016.apk
CALL %adb% shell pm uninstall -k --user 0 com.android.dialer
CALL %adb% shell settings put secure dialer_default_application com.candykk.android.dialer
CALL %adb% shell dpm set-device-owner com.catchingnow.icebox/.receiver.DPMReceiver
CALL %adb% shell pm grant jp.co.c_lis.ccl.morelocale android.permission.CHANGE_CONFIGURATION
CALL %adb% shell ime enable com.sohu.inputmethod.sogou/.SogouIME
CALL %adb% shell ime set com.sohu.inputmethod.sogou/.SogouIME
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.feeluxhome
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.auhomelauncher

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

:MENU6
CLS
SET adb=adb.exe
ECHO.
ECHO.      shv34/35/37批量操作工具
ECHO. 
ECHO.=============================================================
ECHO.
ECHO.
ECHO.   6.0系统批量精简，安装区域软件+candy拨号
ECHO. 
ECHO. 
ECHO.=============================================================
ECHO ------运行中------
for /F %%i in ('adb get-serialno') do ( set deviceinfo=%%i)
ECHO.============================================================================
    echo.
    echo. 已连接设备: %deviceinfo%
    echo.
ECHO.============================================================================
CALL %adb% shell settings put system screen_off_timeout 300000
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.account
CALL %adb% shell pm uninstall -k --user 0 com.kddi.nfc.tag_reader
CALL %adb% shell pm uninstall -k --user 0 ait.com.vn.main.plus.lte
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.LockWeatherWidget
CALL %adb% shell pm uninstall -k --user 0 com.kddi.nfc.menu
CALL %adb% shell pm uninstall -k --user 0 com.real.RealPlayerCloud
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.interactivesetup
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.screenshotshare
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.picturemanager
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.cm
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.scshoviewer
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.scshocapture
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.settingsaquosusefull
CALL %adb% shell pm uninstall -k --user 0 com.google.android.calendar
CALL %adb% shell pm uninstall -k --user 0 com.google.android.apps.maps
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.emopar
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.emopar.internalcontent
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.emopar.internalcontent2
CALL %adb% shell pm uninstall -k --user 0 com.kddi.ux.station
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.auworldservice
CALL %adb% shell pm uninstall -k --user 0 sharp.jp.android.makersiteappli
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.newspass
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.antijaywalk
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.repairreceipt
CALL %adb% shell pm uninstall -k --user 0 com.google.android.talk
CALL %adb% shell pm uninstall -k --user 0 jp.co.optim.oru
CALL %adb% shell pm uninstall -k --user 0 com.google.android.apps.cloudprint
CALL %adb% shell pm uninstall -k --user 0 com.google.android.apps.docs
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.AddressbookPlus
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.klop
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.checker_android
CALL %adb% shell pm uninstall -k --user 0 com.kddi.disasterapp
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.easysettingwizard
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.auoneidsetting
CALL %adb% shell pm uninstall -k --user 0 com.kddi.market
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.au_setting_menu
CALL %adb% shell pm uninstall -k --user 0 jp.auone.wallet
CALL %adb% shell pm uninstall -k --user 0 web.wm.auone.jp
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.au_wifi_connect2
CALL %adb% shell pm uninstall -k --user 0 com.kddi.cs.app001
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.ausharelink
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.smartpass
CALL %adb% shell pm uninstall -k --user 0 com.uievolution.gguide.android
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.smartfamilink
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.shinstructionmanualshv34
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.shinstructionmanualshv35
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.shinstructionmanualshv37
CALL %adb% shell pm uninstall -k --user 0 jp.co.canon.android.printservice.plugin
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.scshocapture
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.exapps
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.xmdfDict
CALL %adb% shell pm uninstall -k --user 0 com.google.android.apps.tachyon
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.email
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.emailprov
CALL %adb% shell pm uninstall -k --user 0 com.facebook.katana
CALL %adb% shell pm uninstall -k --user 0 com.digion.dixim.android.player.sharp
CALL %adb% shell pm uninstall -k --user 0 com.google.android.gm
CALL %adb% shell pm uninstall -k --user 0 com.google.android.music
CALL %adb% shell pm uninstall -k --user 0 com.google.android.videos
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.karadamate
CALL %adb% shell pm uninstall -k --user 0 com.lookout
CALL %adb% shell pm uninstall -k --user 0 com.felicanetworks.mfc
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.imp
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.netdictionary
CALL %adb% shell pm uninstall -k --user 0 com.mobisystems.office
CALL %adb% shell pm uninstall -k --user 0 com.android.email
CALL %adb% shell pm uninstall -k --user 0 com.kddi.ar.satch.satchviewer
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.shselfcheck
CALL %adb% shell pm uninstall -k --user 0 jp.pixela.stationtv.localtuner.full.app
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.UtaPass
CALL %adb% shell pm uninstall -k --user 0 com.kddi.auoneshopping
CALL %adb% shell pm uninstall -k --user 0 com.google.android.youtube
CALL %adb% shell pm uninstall -k --user 0 jp.netstar.familysmile
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.btdun
CALL %adb% shell pm uninstall -k --user 0 com.kddi.pass.launcher
CALL %adb% shell pm uninstall -k --user 0 jp.kddilabs.smartnetwork.troubleshooting
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.mamoru
CALL %adb% shell pm uninstall -k --user 0 jp.co.disney.apps.base.disneymarketapp
CALL %adb% shell pm uninstall -k --user 0 com.kddi.datacharge
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.lismobookstore
CALL %adb% shell pm uninstall -k --user 0 com.felicanetworks.mfm
CALL %adb% install qyzw.apk
CALL %adb% install candy1016.apk
CALL %adb% shell pm uninstall -k --user 0 com.android.dialer
CALL %adb% shell settings put secure dialer_default_application com.candykk.android.dialer
CALL %adb% shell pm grant jp.co.c_lis.ccl.morelocale android.permission.CHANGE_CONFIGURATION
CALL %adb% shell pm uninstall -k --user 0 jp.co.sharp.android.feeluxhome
CALL %adb% shell pm uninstall -k --user 0 com.kddi.android.auhomelauncher
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
