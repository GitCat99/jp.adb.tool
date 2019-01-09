@ECHO OFF
mode con cols=100 lines=45
TITLE Fujitsu F-04H adb批量操作工具v1.1--by 翻车猫
color 8f


:STARTMENU
CLS
ECHO. 
ECHO.       **********
ECHO.       **   本工具必须放入adb工具包文件夹内运行
ECHO.       **          F-04H adb批量操作工具
ECHO.       **********       ****       **       **
ECHO.       **             **           ** *   * **
ECHO.       **             **           **  * *  **
ECHO.       **               ****       **   *   **
ECHO.============================================================================
ECHO. 
ECHO.    【工具说明】
ECHO.
ECHO.          a. 需要打开多次点击build number打开开发者模式 ； 
ECHO. 
ECHO.          b. 打开USB调试模式并连接电脑点允许debug；
ECHO.   
ECHO.          c. 禁用或卸载预装不常用app不会损坏系统；
ECHO.   
ECHO.          d. 支持7.1.1系统批量禁用绝大部分do预装app；
ECHO.  
ECHO.          e. 支持6.01系统批量卸载部分do预装app；
ECHO.  
ECHO.          f. 支持一键安装区域软件并授予更改区域权限；
ECHO. 
ECHO.          g. 支持一键安装酷安市场、搜狗输入法；
ECHO. 
ECHO.          h. 如需寻求帮助请前往翻车猫淘宝店买个机器后咨询。
ECHO.  
ECHO.============================================================================
ECHO.                                                                           
ECHO.    【请根据情况选择】                                   
ECHO.                                                                           
ECHO.          1.6.01系统批量精简，安装区域软件，安装酷安搜狗
ECHO.  
ECHO.          2.6.01系统批量精简，安装区域软件      
ECHO.  
ECHO.          3.7.11系统，安装区域软件，安装酷安搜狗
ECHO.                                                                           
ECHO.          4.7.11系统，安装区域软件     
ECHO.
ECHO.============================================================================
ECHO.
set choice=
set /p choice=请输入对应数字，按【Enter键确认】继续下一步：
if /i "%choice%"=="1" goto MENU1
if /i "%choice%"=="2" goto MENU2
if /i "%choice%"=="3" goto MENU3
if /i "%choice%"=="4" goto MENU4
ECHO.
ECHO.输入无效，请重新输入...
ping 127.0.0.1 -n 2 >NUL
ECHO.
goto STARTMENU

:MENU1
CLS
SET adb=adb.exe
ECHO.
ECHO.      F-04H adb批量操作工具
ECHO. 
ECHO.=============================================================
ECHO.
ECHO.
ECHO.   6.01系统批量精简，安装区域软件，安装酷安搜狗
ECHO. 
ECHO. 
ECHO.=============================================================
ECHO ------卸载fujitsu------
CALL %adb% uninstall com.fujitsu.mobile_phone.atfsite
ECHO ------卸载amazon------
CALL %adb% uninstall com.amazon.mShop.android.shopping
ECHO ------卸载kindle------
CALL %adb% uninstall com.amazon.kindle
ECHO ------卸载navi02------
CALL %adb% uninstall jp.dmapnavi.navi02
ECHO ------卸载rsupport------
CALL %adb% uninstall com.rsupport.rs.activity.ntt
ECHO ------卸载mcafee------
CALL %adb% uninstall com.mcafee.vsm_android_dcm
ECHO ------卸载buffalo------
CALL %adb% uninstall jp.buffalo.aoss
ECHO ------卸载canon printservice------
CALL %adb% uninstall jp.co.canon.android.printservice.plugin
ECHO ------卸载contentsheadline------
CALL %adb% uninstall jp.co.nttdocomo.contentsheadline
ECHO ------卸载dbook------
CALL %adb% uninstall jp.co.nttdocomo.dbook
ECHO ------卸载dpoint------
CALL %adb% uninstall com.nttdocomo.android.dpoint
ECHO ------卸载epsonprint------
CALL %adb% uninstall com.epson.mobilephone.android.epsonprintserviceplugin
ECHO ------卸载ictrw------
CALL %adb% uninstall com.nttdocomo.android.ictrw
ECHO ------卸载manual------
CALL %adb% uninstall com.fujitsu.mobile_phone.manual.f04h
ECHO ------卸载lawson------
CALL %adb% uninstall jp.co.lawson.activity
ECHO ------卸载nxmail------
CALL %adb% uninstall com.fujitsu.mobile_phone.nxmail
ECHO ------卸载writingtranslation------
CALL %adb% uninstall com.nttdocomo.android.writingtranslation
ECHO ------卸载toruca------
CALL %adb% uninstall com.nttdocomo.android.toruca
ECHO ------卸载twitter------
CALL %adb% uninstall com.twitter.android
ECHO ------卸载cloudstorageservice------
CALL %adb% uninstall com.nttdocomo.android.cloudstorageservice
ECHO ------卸载photocollection------
CALL %adb% uninstall com.nttdocomo.android.photocollection
ECHO ------卸载moneyrecord------
CALL %adb% uninstall com.nttdocomo.android.moneyrecord
ECHO ------安装区域软件------
CALL %adb% install qyzw.apk
ECHO ------安装酷安市场------
CALL %adb% install wdj.apk
ECHO ------安装搜狗锤子版------
CALL %adb% install sougou.Smartisan.apk
ECHO ------对区域软件授权------
ECHO ------本条成功无提示------
CALL %adb% shell pm grant jp.co.c_lis.ccl.morelocale android.permission.CHANGE_CONFIGURATION
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

:MENU2
CLS
SET adb=adb.exe
ECHO.
ECHO.      F-04H adb批量操作工具
ECHO. 
ECHO.=============================================================
ECHO.
ECHO.
ECHO.   6.01系统批量精简，安装区域软件
ECHO. 
ECHO. 
ECHO.=============================================================
ECHO ------卸载fujitsu------
CALL %adb% uninstall com.fujitsu.mobile_phone.atfsite
ECHO ------卸载amazon------
CALL %adb% uninstall com.amazon.mShop.android.shopping
ECHO ------卸载kindle------
CALL %adb% uninstall com.amazon.kindle
ECHO ------卸载navi02------
CALL %adb% uninstall jp.dmapnavi.navi02
ECHO ------卸载rsupport------
CALL %adb% uninstall com.rsupport.rs.activity.ntt
ECHO ------卸载mcafee------
CALL %adb% uninstall com.mcafee.vsm_android_dcm
ECHO ------卸载buffalo------
CALL %adb% uninstall jp.buffalo.aoss
ECHO ------卸载canon printservice------
CALL %adb% uninstall jp.co.canon.android.printservice.plugin
ECHO ------卸载contentsheadline------
CALL %adb% uninstall jp.co.nttdocomo.contentsheadline
ECHO ------卸载dbook------
CALL %adb% uninstall jp.co.nttdocomo.dbook
ECHO ------卸载dpoint------
CALL %adb% uninstall com.nttdocomo.android.dpoint
ECHO ------卸载epsonprint------
CALL %adb% uninstall com.epson.mobilephone.android.epsonprintserviceplugin
ECHO ------卸载ictrw------
CALL %adb% uninstall com.nttdocomo.android.ictrw
ECHO ------卸载manual------
CALL %adb% uninstall com.fujitsu.mobile_phone.manual.f04h
ECHO ------卸载lawson------
CALL %adb% uninstall jp.co.lawson.activity
ECHO ------卸载nxmail------
CALL %adb% uninstall com.fujitsu.mobile_phone.nxmail
ECHO ------卸载writingtranslation------
CALL %adb% uninstall com.nttdocomo.android.writingtranslation
ECHO ------卸载toruca------
CALL %adb% uninstall com.nttdocomo.android.toruca
ECHO ------卸载twitter------
CALL %adb% uninstall com.twitter.android
ECHO ------卸载cloudstorageservice------
CALL %adb% uninstall com.nttdocomo.android.cloudstorageservice
ECHO ------卸载photocollection------
CALL %adb% uninstall com.nttdocomo.android.photocollection
ECHO ------卸载moneyrecord------
CALL %adb% uninstall com.nttdocomo.android.moneyrecord
ECHO ------安装区域软件------
CALL %adb% install qyzw.apk
ECHO ------对区域软件授权------
ECHO ------本条成功无提示------
CALL %adb% shell pm grant jp.co.c_lis.ccl.morelocale android.permission.CHANGE_CONFIGURATION
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


:MENU3
CLS
SET adb=adb.exe
ECHO.
ECHO.      F-04H adb批量操作工具
ECHO. 
ECHO.=============================================================
ECHO.
ECHO.
ECHO.   7.11系统，安装区域软件，安装酷安搜狗
ECHO. 
ECHO. 
ECHO.=============================================================
ECHO ------卸载fujitsu------
CALL %adb% uninstall com.fujitsu.mobile_phone.atfsite
ECHO ------卸载amazon------
CALL %adb% uninstall com.amazon.mShop.android.shopping
ECHO ------卸载kindle------
CALL %adb% uninstall com.amazon.kindle
ECHO ------卸载navi02------
CALL %adb% uninstall jp.dmapnavi.navi02
ECHO ------卸载rsupport------
CALL %adb% uninstall com.rsupport.rs.activity.ntt
ECHO ------卸载mcafee------
CALL %adb% uninstall com.mcafee.vsm_android_dcm
ECHO ------卸载buffalo------
CALL %adb% uninstall jp.buffalo.aoss
ECHO ------卸载canon printservice------
CALL %adb% uninstall jp.co.canon.android.printservice.plugin
ECHO ------卸载contentsheadline------
CALL %adb% uninstall jp.co.nttdocomo.contentsheadline
ECHO ------卸载dbook------
CALL %adb% uninstall jp.co.nttdocomo.dbook
ECHO ------卸载dpoint------
CALL %adb% uninstall com.nttdocomo.android.dpoint
ECHO ------卸载epsonprint------
CALL %adb% uninstall com.epson.mobilephone.android.epsonprintserviceplugin
ECHO ------卸载ictrw------
CALL %adb% uninstall com.nttdocomo.android.ictrw
ECHO ------卸载manual------
CALL %adb% uninstall com.fujitsu.mobile_phone.manual.f04h
ECHO ------卸载lawson------
CALL %adb% uninstall jp.co.lawson.activity
ECHO ------卸载nxmail------
CALL %adb% uninstall com.fujitsu.mobile_phone.nxmail
ECHO ------卸载writingtranslation------
CALL %adb% uninstall com.nttdocomo.android.writingtranslation
ECHO ------卸载toruca------
CALL %adb% uninstall com.nttdocomo.android.toruca
ECHO ------卸载twitter------
CALL %adb% uninstall com.twitter.android
ECHO ------卸载cloudstorageservice------
CALL %adb% uninstall com.nttdocomo.android.cloudstorageservice
ECHO ------卸载photocollection------
CALL %adb% uninstall com.nttdocomo.android.photocollection
ECHO ------卸载moneyrecord------
CALL %adb% uninstall com.nttdocomo.android.moneyrecord
ECHO ------禁用talk------
CALL %adb% shell pm disable-user com.google.android.talk
ECHO ------禁用areamail------
CALL %adb% shell pm disable-user com.nttdocomo.android.areamail
ECHO ------禁用docs------
CALL %adb% shell pm disable-user com.google.android.apps.docs
ECHO ------禁用bugreport------
CALL %adb% shell pm disable-user com.nttdocomo.android.bugreport
ECHO ------禁用browser------
CALL %adb% shell pm disable-user com.android.browser
ECHO ------禁用saigaiban------
CALL %adb% shell pm disable-user jp.co.nttdocomo.saigaiban
ECHO ------禁用fujitsu.q8------
CALL %adb% shell pm disable-user com.digion.dixim.android.dmp.fujitsu.q8
ECHO ------禁用store------
CALL %adb% shell pm disable-user com.nttdocomo.android.store
ECHO ------禁用applicationmanager------
CALL %adb% shell pm disable-user com.nttdocomo.android.applicationmanager
ECHO ------禁用accountauthenticator------
CALL %adb% shell pm disable-user com.nttdocomo.android.accountauthenticator
ECHO ------禁用cloudset------
CALL %adb% shell pm disable-user com.nttdocomo.android.cloudset
ECHO ------禁用sdcardbackup------
CALL %adb% shell pm disable-user com.nttdocomo.android.sdcardbackup
ECHO ------禁用initialization------
CALL %adb% shell pm disable-user com.nttdocomo.android.initialization
ECHO ------禁用lac------
CALL %adb% shell pm disable-user com.nttdocomo.android.lac
ECHO ------禁用nextbit------
CALL %adb% shell pm disable-user com.nextbit.app
ECHO ------禁用lcsappsub------
CALL %adb% shell pm disable-user jp.co.nttdocomo.lcsappsub
ECHO ------禁用carriermail------
CALL %adb% shell pm disable-user jp.co.nttdocomo.carriermail
ECHO ------禁用contacts------
CALL %adb% shell pm disable-user com.android.contacts
ECHO ------禁用docomoset------
CALL %adb% shell pm disable-user com.nttdocomo.android.docomoset
ECHO ------禁用idmanager------
CALL %adb% shell pm disable-user com.nttdocomo.android.idmanager
ECHO ------禁用dmenu2------
CALL %adb% shell pm disable-user com.nttdocomo.android.dmenu2
ECHO ------禁用fujitsuaccount------
CALL %adb% shell pm disable-user com.fujitsu.mobile_phone.fujitsuaccount
ECHO ------禁用functionlimit------
CALL %adb% shell pm disable-user com.fujitsu.mobile_phone.functionlimit
ECHO ------禁用gm------
CALL %adb% shell pm disable-user com.google.android.gm
ECHO ------禁用music------
CALL %adb% shell pm disable-user com.google.android.music
ECHO ------禁用videos------
CALL %adb% shell pm disable-user com.google.android.videos
ECHO ------禁用gguide------
CALL %adb% shell pm disable-user com.ipg.gguide.dcm_app.android
ECHO ------禁用iconcier------
CALL %adb% shell pm disable-user com.nttdocomo.android.iconcier
ECHO ------禁用iconcier------
CALL %adb% shell pm disable-user com.nttdocomo.android.iconcier_contents
ECHO ------禁用homeagent------
CALL %adb% shell pm disable-user com.nttdocomo.android.homeagent
ECHO ------禁用mediaplayer------
CALL %adb% shell pm disable-user com.nttdocomo.android.mediaplayer
ECHO ------禁用voiceeditor------
CALL %adb% shell pm disable-user com.nttdocomo.android.voiceeditor
ECHO ------禁用nxinputko------
CALL %adb% shell pm disable-user com.fujitsu.nxinput.korea
ECHO ------禁用nxinputcn------
CALL %adb% shell pm disable-user com.fujitsu.nxinput.chinese
ECHO ------禁用NXwidget------
CALL %adb% shell pm disable-user com.fujitsu.mobile_phone.NXwidget
ECHO ------禁用devicehelp------
CALL %adb% shell pm disable-user com.nttdocomo.android.devicehelp
ECHO ------禁用printcooperation------
CALL %adb% shell pm disable-user com.fujitsu.mobile_phone.printcooperation
ECHO ------禁用schedulememo------
CALL %adb% shell pm disable-user com.nttdocomo.android.schedulememo
ECHO ------禁用lac------
CALL %adb% shell pm disable-user com.nttdocomo.android.settings.lac
ECHO ------禁用atok------
CALL %adb% shell pm disable-user com.atok.mobile.im.fujitsu.service
ECHO ------禁用fsi------
CALL %adb% shell pm disable-user jp.co.fsi.fs1seg
ECHO ------禁用dictionary------
CALL %adb% shell pm disable-user com.atok.mobile.im.fujitsu.dictionary
ECHO ------禁用anshinmode------
CALL %adb% shell pm disable-user jp.co.nttdocomo.anshinmode
ECHO ------禁用fbrowser------
CALL %adb% shell pm disable-user com.fujitsu.mobile_phone.fbrowser
ECHO ------禁用custom1------
CALL %adb% shell pm disable-user com.atok.mobile.im.fujitsu.theme.custom1
ECHO ------禁用custom2------
CALL %adb% shell pm disable-user com.atok.mobile.im.fujitsu.theme.custom2
ECHO ------禁用basic------
CALL %adb% shell pm disable-user com.atok.mobile.im.fujitsu.theme.basic
ECHO ------禁用kids1------
CALL %adb% shell pm disable-user com.atok.mobile.im.fujitsu.theme.kids1
ECHO ------禁用timetablewidget------
CALL %adb% shell pm disable-user com.fujitsu.mobile_phone.timetablewidget
ECHO ------禁用mascot------
CALL %adb% shell pm disable-user com.nttdocomo.android.mascot
ECHO ------禁用databackup------
CALL %adb% shell pm disable-user com.nttdocomo.android.databackup
ECHO ------禁用stumpcalendar------
CALL %adb% shell pm disable-user com.fujitsu.mobile_phone.stumpcalendar
ECHO ------禁用dcmvoicere------
CALL %adb% shell pm disable-user com.nttdocomo.android.dcmvoicerecognition
ECHO ------禁用black------
CALL %adb% shell pm disable-user com.atok.mobile.im.fujitsu.theme.black
ECHO ------禁用white------
CALL %adb% shell pm disable-user com.atok.mobile.im.fujitsu.theme.white
ECHO ------禁用rakuraku------
CALL %adb% shell pm disable-user com.fujitsu.mobile_phone.rakurakucommunity
ECHO ------安装区域软件------
CALL %adb% install qyzw.apk
ECHO ------安装酷安市场------
CALL %adb% install wdj.apk
ECHO ------安装搜狗锤子版------
CALL %adb% install sougou.Smartisan.apk
ECHO ------对区域软件授权------
ECHO ------本条成功无提示------
CALL %adb% shell pm grant jp.co.c_lis.ccl.morelocale android.permission.CHANGE_CONFIGURATION
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

:MENU4
CLS
SET adb=adb.exe
ECHO.
ECHO.      F-04H adb批量操作工具
ECHO. 
ECHO.=============================================================
ECHO.
ECHO.
ECHO.   7.11系统，安装区域软件
ECHO. 
ECHO. 
ECHO.=============================================================
ECHO ------卸载fujitsu------
CALL %adb% uninstall com.fujitsu.mobile_phone.atfsite
ECHO ------卸载amazon------
CALL %adb% uninstall com.amazon.mShop.android.shopping
ECHO ------卸载kindle------
CALL %adb% uninstall com.amazon.kindle
ECHO ------卸载navi02------
CALL %adb% uninstall jp.dmapnavi.navi02
ECHO ------卸载rsupport------
CALL %adb% uninstall com.rsupport.rs.activity.ntt
ECHO ------卸载mcafee------
CALL %adb% uninstall com.mcafee.vsm_android_dcm
ECHO ------卸载buffalo------
CALL %adb% uninstall jp.buffalo.aoss
ECHO ------卸载canon printservice------
CALL %adb% uninstall jp.co.canon.android.printservice.plugin
ECHO ------卸载contentsheadline------
CALL %adb% uninstall jp.co.nttdocomo.contentsheadline
ECHO ------卸载dbook------
CALL %adb% uninstall jp.co.nttdocomo.dbook
ECHO ------卸载dpoint------
CALL %adb% uninstall com.nttdocomo.android.dpoint
ECHO ------卸载epsonprint------
CALL %adb% uninstall com.epson.mobilephone.android.epsonprintserviceplugin
ECHO ------卸载ictrw------
CALL %adb% uninstall com.nttdocomo.android.ictrw
ECHO ------卸载manual------
CALL %adb% uninstall com.fujitsu.mobile_phone.manual.f04h
ECHO ------卸载lawson------
CALL %adb% uninstall jp.co.lawson.activity
ECHO ------卸载nxmail------
CALL %adb% uninstall com.fujitsu.mobile_phone.nxmail
ECHO ------卸载writingtranslation------
CALL %adb% uninstall com.nttdocomo.android.writingtranslation
ECHO ------卸载toruca------
CALL %adb% uninstall com.nttdocomo.android.toruca
ECHO ------卸载twitter------
CALL %adb% uninstall com.twitter.android
ECHO ------卸载cloudstorageservice------
CALL %adb% uninstall com.nttdocomo.android.cloudstorageservice
ECHO ------卸载photocollection------
CALL %adb% uninstall com.nttdocomo.android.photocollection
ECHO ------卸载moneyrecord------
CALL %adb% uninstall com.nttdocomo.android.moneyrecord
ECHO ------禁用talk------
CALL %adb% shell pm disable-user com.google.android.talk
ECHO ------禁用areamail------
CALL %adb% shell pm disable-user com.nttdocomo.android.areamail
ECHO ------禁用docs------
CALL %adb% shell pm disable-user com.google.android.apps.docs
ECHO ------禁用bugreport------
CALL %adb% shell pm disable-user com.nttdocomo.android.bugreport
ECHO ------禁用browser------
CALL %adb% shell pm disable-user com.android.browser
ECHO ------禁用saigaiban------
CALL %adb% shell pm disable-user jp.co.nttdocomo.saigaiban
ECHO ------禁用fujitsu.q8------
CALL %adb% shell pm disable-user com.digion.dixim.android.dmp.fujitsu.q8
ECHO ------禁用store------
CALL %adb% shell pm disable-user com.nttdocomo.android.store
ECHO ------禁用applicationmanager------
CALL %adb% shell pm disable-user com.nttdocomo.android.applicationmanager
ECHO ------禁用accountauthenticator------
CALL %adb% shell pm disable-user com.nttdocomo.android.accountauthenticator
ECHO ------禁用cloudset------
CALL %adb% shell pm disable-user com.nttdocomo.android.cloudset
ECHO ------禁用sdcardbackup------
CALL %adb% shell pm disable-user com.nttdocomo.android.sdcardbackup
ECHO ------禁用initialization------
CALL %adb% shell pm disable-user com.nttdocomo.android.initialization
ECHO ------禁用lac------
CALL %adb% shell pm disable-user com.nttdocomo.android.lac
ECHO ------禁用nextbit------
CALL %adb% shell pm disable-user com.nextbit.app
ECHO ------禁用lcsappsub------
CALL %adb% shell pm disable-user jp.co.nttdocomo.lcsappsub
ECHO ------禁用carriermail------
CALL %adb% shell pm disable-user jp.co.nttdocomo.carriermail
ECHO ------禁用contacts------
CALL %adb% shell pm disable-user com.android.contacts
ECHO ------禁用docomoset------
CALL %adb% shell pm disable-user com.nttdocomo.android.docomoset
ECHO ------禁用idmanager------
CALL %adb% shell pm disable-user com.nttdocomo.android.idmanager
ECHO ------禁用dmenu2------
CALL %adb% shell pm disable-user com.nttdocomo.android.dmenu2
ECHO ------禁用fujitsuaccount------
CALL %adb% shell pm disable-user com.fujitsu.mobile_phone.fujitsuaccount
ECHO ------禁用functionlimit------
CALL %adb% shell pm disable-user com.fujitsu.mobile_phone.functionlimit
ECHO ------禁用gm------
CALL %adb% shell pm disable-user com.google.android.gm
ECHO ------禁用music------
CALL %adb% shell pm disable-user com.google.android.music
ECHO ------禁用videos------
CALL %adb% shell pm disable-user com.google.android.videos
ECHO ------禁用gguide------
CALL %adb% shell pm disable-user com.ipg.gguide.dcm_app.android
ECHO ------禁用iconcier------
CALL %adb% shell pm disable-user com.nttdocomo.android.iconcier
ECHO ------禁用iconcier------
CALL %adb% shell pm disable-user com.nttdocomo.android.iconcier_contents
ECHO ------禁用homeagent------
CALL %adb% shell pm disable-user com.nttdocomo.android.homeagent
ECHO ------禁用mediaplayer------
CALL %adb% shell pm disable-user com.nttdocomo.android.mediaplayer
ECHO ------禁用voiceeditor------
CALL %adb% shell pm disable-user com.nttdocomo.android.voiceeditor
ECHO ------禁用nxinputko------
CALL %adb% shell pm disable-user com.fujitsu.nxinput.korea
ECHO ------禁用nxinputcn------
CALL %adb% shell pm disable-user com.fujitsu.nxinput.chinese
ECHO ------禁用NXwidget------
CALL %adb% shell pm disable-user com.fujitsu.mobile_phone.NXwidget
ECHO ------禁用devicehelp------
CALL %adb% shell pm disable-user com.nttdocomo.android.devicehelp
ECHO ------禁用printcooperation------
CALL %adb% shell pm disable-user com.fujitsu.mobile_phone.printcooperation
ECHO ------禁用schedulememo------
CALL %adb% shell pm disable-user com.nttdocomo.android.schedulememo
ECHO ------禁用lac------
CALL %adb% shell pm disable-user com.nttdocomo.android.settings.lac
ECHO ------禁用atok------
CALL %adb% shell pm disable-user com.atok.mobile.im.fujitsu.service
ECHO ------禁用fsi------
CALL %adb% shell pm disable-user jp.co.fsi.fs1seg
ECHO ------禁用dictionary------
CALL %adb% shell pm disable-user com.atok.mobile.im.fujitsu.dictionary
ECHO ------禁用anshinmode------
CALL %adb% shell pm disable-user jp.co.nttdocomo.anshinmode
ECHO ------禁用fbrowser------
CALL %adb% shell pm disable-user com.fujitsu.mobile_phone.fbrowser
ECHO ------禁用custom1------
CALL %adb% shell pm disable-user com.atok.mobile.im.fujitsu.theme.custom1
ECHO ------禁用custom2------
CALL %adb% shell pm disable-user com.atok.mobile.im.fujitsu.theme.custom2
ECHO ------禁用basic------
CALL %adb% shell pm disable-user com.atok.mobile.im.fujitsu.theme.basic
ECHO ------禁用kids1------
CALL %adb% shell pm disable-user com.atok.mobile.im.fujitsu.theme.kids1
ECHO ------禁用timetablewidget------
CALL %adb% shell pm disable-user com.fujitsu.mobile_phone.timetablewidget
ECHO ------禁用mascot------
CALL %adb% shell pm disable-user com.nttdocomo.android.mascot
ECHO ------禁用databackup------
CALL %adb% shell pm disable-user com.nttdocomo.android.databackup
ECHO ------禁用stumpcalendar------
CALL %adb% shell pm disable-user com.fujitsu.mobile_phone.stumpcalendar
ECHO ------禁用dcmvoicere------
CALL %adb% shell pm disable-user com.nttdocomo.android.dcmvoicerecognition
ECHO ------禁用black------
CALL %adb% shell pm disable-user com.atok.mobile.im.fujitsu.theme.black
ECHO ------禁用white------
CALL %adb% shell pm disable-user com.atok.mobile.im.fujitsu.theme.white
ECHO ------禁用rakuraku------
CALL %adb% shell pm disable-user com.fujitsu.mobile_phone.rakurakucommunity
ECHO ------安装区域软件------
CALL %adb% install qyzw.apk
ECHO ------对区域软件授权------
ECHO ------本条成功无提示------
CALL %adb% shell pm grant jp.co.c_lis.ccl.morelocale android.permission.CHANGE_CONFIGURATION
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

