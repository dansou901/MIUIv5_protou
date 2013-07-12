.class public Lcom/htc/server/WirelessDisplayService;
.super Lcom/htc/service/IWirelessDisplayService$Stub;
.source "WirelessDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/WirelessDisplayService$RecorderErrorCallback;,
        Lcom/htc/server/WirelessDisplayService$InfoListener;,
        Lcom/htc/server/WirelessDisplayService$WivuThread;,
        Lcom/htc/server/WirelessDisplayService$HtcWDSrvHistory;,
        Lcom/htc/server/WirelessDisplayService$HdmiReceiver;,
        Lcom/htc/server/WirelessDisplayService$CallReceiver;,
        Lcom/htc/server/WirelessDisplayService$ConnectivityReceiver;,
        Lcom/htc/server/WirelessDisplayService$DialogResultReceiver;,
        Lcom/htc/server/WirelessDisplayService$WifiReceiver;,
        Lcom/htc/server/WirelessDisplayService$ScreenReceiver;,
        Lcom/htc/server/WirelessDisplayService$H;
    }
.end annotation


# static fields
.field private static final ACTION_CONNECTING_DIALOG:Ljava/lang/String; = "com.htc.intent.action.WIRELESS_DISPLAY_CONNECTING_DIALOG"

.field private static final ANIMATOR_DURATION_SCALE:I = 0x2

.field private static final APP_LOCK:I = 0x47

.field private static final APP_PAUSE:I = 0x2c

.field private static final AUDIO_PAUSE:I = 0x0

.field private static final AUDIO_RESUME:I = 0x1

.field private static final CALL_ONLY:I = 0x4b

.field private static final CALL_PAUSE:I = 0x2e

.field private static final DBG:Z = true

.field private static final DEBUG_INFO_CACHE_SIZE:I = 0xc8

.field private static final DISMISS_CONNECTION_WEAK_DIALOG:I = 0x12f

.field private static final DISMISS_SWITCH_HDMI_DIALOG:I = 0x130

.field private static final DISPLAY_CONNECTION_WEAK_DIALOG:I = 0x3

.field private static final DISPLAY_HDMI_PLUG_DIALOG:I = 0x2

.field private static final DISPLAY_OUTPUT_TV_DIALOG:I = 0x1

.field private static final DISPLAY_SWITCH_HDMI_DIALOG:I = 0x4

.field private static final DONGLE_INFO_CACHE_SIZE:I = 0x1e

.field private static final ENVIRONMENT_DONGLE_STATE_MANY_UNDONGLE_FOUND:I = 0x3

.field private static final ENVIRONMENT_DONGLE_STATE_NO_DONGLE:I = 0x0

.field private static final ENVIRONMENT_DONGLE_STATE_ONE_CFG_DONGLE_FOUND:I = 0x4

.field private static final ENVIRONMENT_DONGLE_STATE_ONE_UNCONFIG_DONGLE_FOUND:I = 0x2

.field private static final ENVIRONMENT_DONGLE_STATE_READY_TO_USE_DONGLE_FOUND:I = 0x1

.field private static final ERROR_RESTART:I = 0x36

.field private static final HANDLE_BIND_CONFIG_SERVICE:I = 0xb

.field private static final HANDLE_CHANGE_STATE:I = 0x1

.field private static final HANDLE_CONFIUGRE_STATE_CHANGED:I = 0xd

.field private static final HANDLE_CURDONGLE_REMOVE_DISCONNECT:I = 0x14d

.field private static final HANDLE_DISABLE_SWITCH_TOPOLOGY_DIALOG:I = 0xde

.field private static final HANDLE_DISPLAY_DIALOG:I = 0xc9

.field private static final HANDLE_FINGER_GESTURE:I = 0x6f

.field private static final HANDLE_FINGER_GESTURE_DIRECTION:I = 0x71

.field private static final HANDLE_GET_DEVICE_IP:I = 0x2

.field private static final HANDLE_MIRROR_FALLBACK:I = 0x14

.field private static final HANDLE_PROCESS_WFDSERVICE:I = 0x70

.field private static final HANDLE_REQUEST_MEDIARECORDER:I = 0x75

.field private static final HANDLE_REQUEST_MIRROR_CHANGE_BITRATE:I = 0x2

.field private static final HANDLE_REQUEST_MIRROR_DELAY_STOP:I = 0x1

.field private static final HANDLE_REQUEST_MIRROR_RTPWRITER_CONTROL:I = 0x3

.field private static final HANDLE_RESET_FINGERGESTURE_FLAG:I = 0x73

.field private static final HANDLE_RESET_WDS_USABLE_FLAG:I = 0x13

.field private static final HANDLE_RESUME_DLNADELAY:I = 0x74

.field private static final HANDLE_STOP_DIS:I = 0x3

.field private static final HANDLE_STOP_TRANSMIT:I = 0x6

.field private static final HANDLE_TIMEOUT_STOP:I = 0x4

.field private static final HANDLE_TOPOLOGY_TRANSFER:I = 0x72

.field private static final HANDLE_TURN_OFF_CONCURRENT_HOTSPOT:I = 0x10

.field private static final HANDLE_UNBIND_CONFIG_SERVICE:I = 0xc

.field private static final HANDLE_WIFI_DIS:I = 0x5

.field private static final HANDLE_WIFI_FULL_SCAN:I = 0x11

.field private static final HANDLE_WIFI_SCAN_RESULT_AVAILABLE:I = 0x9

.field private static final HANDLE_WRITE_CONCURRENT_MAC_ADDRESS:I = 0xf

.field private static final HRTBEAT_MISS:I = 0x1c

.field private static final HTC_HISTORY_LOG:Z = true

.field private static final INTENT_BGSCAN_NOTIFY_ACTION:Ljava/lang/String; = "com.htc.intent.action.WIFI_BGSCAN_NOTIFY"

.field private static final INTENT_CONFIG_DONGLE:Ljava/lang/String; = "com.htc.wifidisplay.CONFIGURE_MODE_NOTIFICATION_CONFIG"

.field private static final INTENT_CONFIG_DONGLES_LIST:Ljava/lang/String; = "com.htc.wifidisplay.CONFIGURE_MODE_NOTIFICATION_LIST"

.field private static final INTENT_CONFIG_DONGLES_LIST_NORMAL:Ljava/lang/String; = "com.htc.wifidisplay.CONFIGURE_MODE_NORMAL"

.field private static final INTENT_DONGLE_FIRMWARE_UPDATE:Ljava/lang/String; = "com.htc.wifidisplay.intent.DONGLE_FIRMWARE_UPDATE"

.field private static final INTENT_EXTRA_OUTPUTTV_RESULT:Ljava/lang/String; = "com.htc.intent.action.EXTRA_OUTPUTTV_RESULT"

.field private static final INTENT_NOTIFICATION_CONFIGURE_TOOL:Ljava/lang/String; = "com.htc.wifidisplay.NOTIFICATION_CONFIGURE_TOOL"

.field private static final INTENT_NOTIFY_DLNA_MIRROR_OFF:Ljava/lang/String; = "com.htc.intent.action.NOTIFY_DLNA_WIRELESS_DISPLAY_MIRROR_OFF"

.field private static final INTENT_NOTIFY_DLNA_MIRROR_REPLACE:Ljava/lang/String; = "com.htc.intent.action.NOTIFY_DLNA_WIRELESS_DISPLAY_MIRROR_REPLACE"

.field private static final INTENT_NOTIFY_DONGLE_CONNECTION_FAIL:Ljava/lang/String; = "com.htc.intent.action.INTENT_NOTIFY_DONGLE_CONNECTION_FAIL"

.field private static final INTENT_NOTIFY_EXTEND_TURNOFF_HOTSPOT_TIMER:Ljava/lang/String; = "com.htc.intent.action.INTENT_NOTIFY_EXTEND_TURNOFF_HOTSPOT_TIMER"

.field private static final INTENT_NOTIFY_PINCODE_AUTHENTICATION:Ljava/lang/String; = "com.htc.intent.action.INTENT_NOTIFY_PINCODE_AUTHENTICATION"

.field private static final INTENT_NOTIFY_RECONNECT_DFS_WIFI:Ljava/lang/String; = "com.htc.wifidisplay.NOTIFY_RECONNECT_DFS_WIFI"

.field private static final INTENT_NOTIFY_UNCONFIG_DONGLE_FOUND:Ljava/lang/String; = "com.htc.intent.action.WIRELESS_DISPLAY_NOTIFY_UNCONFIG_DONGLE_FOUND"

.field private static final INTENT_NOTIFY_UPDATE_DONGLE_STATE:Ljava/lang/String; = "com.htc.intent.action.NOTIFY_UPDATE_DONGLE_STATE"

.field private static final INTENT_PINCODE_CHECK_DONE:Ljava/lang/String; = "com.htc.wifidisplay.INTENT_PINCODE_CHECK_DONE"

.field private static final INTENT_WIRELESS_DISPLAY_MIRROR_RESULT:Ljava/lang/String; = "com.htc.intent.action.WIRELESS_DISPLAY_MIRROR_RESULT"

.field private static final INTENT_WIRELESS_DISPLAY_OUTPUTTV_RESULT:Ljava/lang/String; = "com.htc.intent.action.WIRELESS_DISPLAY_OUTPUTTV_RESULT"

.field private static final INTENT_WIRELESS_DISPLAY_OUTPUTTV_SHOW:Ljava/lang/String; = "com.htc.intent.action.WIRELESS_DISPLAY_OUTPUTTV_SHOW"

.field private static final INTENT_WIRELESS_DISPLAY_SHOW_DONGLE_CONNECTED:Ljava/lang/String; = "com.htc.intent.action.WIRELESS_DISPLAY_SHOW_DONGLE_CONNECTED"

.field private static final INTENT_WIRELESS_NOTIFY_MIRROR_CONNECTED:Ljava/lang/String; = "com.htc.intent.action.WIRELESS_NOTIFY_MIRROR_CONNECTED"

.field private static final INTENT_WIRELESS_NOTIFY_MIRROR_CONNECTED_SWITCH:Ljava/lang/String; = "com.htc.intent.action.WIRELESS_NOTIFY_MIRROR_CONNECTED_SWITCH"

.field private static final INTERT_SYSTEM_NOTIFY_TURNOFF_HOTSPOT_TIMEOUT:Ljava/lang/String; = "com.htc.intent.action.INTERT_SYSTEM_NOTIFY_TURNOFF_HOTSPOT_TIMEOUT"

.field private static final IPV4_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final LOCK_ONLY:I = 0x48

.field private static final LOCK_PAUSE:I = 0x2d

.field private static final MAX_DONGLE:I = 0x4

.field private static final MAX_DONGLE_WAIT:I = 0x15f90

.field private static final MEDIA_PAUSE_RESUME:I = 0x29

.field private static final MEDIA_START_STOP:I = 0x33

.field private static final MIRROR_OFF_TIMEOUT:I = 0x927c0

.field private static final NORMAL:I = 0x49

.field private static final OUTPUTTV_ACTIVITY_RESULT_NO:I = 0x0

.field private static final OUTPUTTV_ACTIVITY_RESULT_YES:I = 0x1

.field private static final PAUSE:I = 0x2b

.field private static final PEER_ADD:I = 0x1b

.field private static final PEER_LIST:I = 0x18

.field private static final RATE_FEEDBACK:I = 0x1a

.field private static final RATE_FEEDBACK_THRESHOLD:I = 0x2

.field private static final REQ_DISCOVERY:I = 0x20

.field private static final REQ_DIS_STATUS:I = 0x22

.field private static final REQ_HRT_BEAT_SELECT:I = 0x26

.field private static final REQ_JOIN_GROUP:I = 0x28

.field private static final REQ_PEER_SELECT:I = 0x25

.field private static final REQ_PLUGGED:I = 0x21

.field private static final REQ_PLU_STATUS:I = 0x23

.field private static final REQ_SET_AAC_ENABLED:I = 0x192

.field private static final REQ_SET_INTERFACE:I = 0x27

.field private static final REQ_SET_MCAST_ROUTE:I = 0x191

.field private static final REQ_STOP_DIS:I = 0x24

.field private static final RESUME:I = 0x2a

.field private static final RES_DISCOVERY:I = 0x3f

.field private static final RES_HRTBEAT:I = 0x41

.field private static final RES_PEER_INFO:I = 0x42

.field private static final RES_PLUGGED:I = 0x3e

.field private static final RES_ROTATION:I = 0x40

.field private static final SCREEN_CALL:I = 0x4a

.field private static final SCREEN_OFF_TIMEOUT:I = 0x1d4c0

.field private static final SEND_WIVU_COMMAND:I = 0x1f

.field private static final SRV_DLNA:Ljava/lang/String; = "com.htc.dlnainterface.IDLNAPluginService"

.field private static final START:I = 0x34

.field private static final STOP:I = 0x35

.field private static final SWUPGRADE:I = 0x19

.field private static final TAG:Ljava/lang/String; = "WirelessDisplayService"

.field private static final TIMEOUT_OUT_OF_RANGE:I = 0x4e20

.field private static final TRANSITION_ANIMATION_SCALE:I = 0x1

.field private static final VIDEO_PAUSE:I = 0x2

.field private static final VIDEO_RESUME:I = 0x3

.field private static final WFDSERVICE_START_CONFIG_DONGLE:I = 0x1

.field private static final WFDSERVICE_START_MIRROR:I = 0x0

.field private static final WINDOW_ANIMATION_SCALE:I = 0x0

.field private static final WIVUSTART:I = 0x16

.field private static final WIVUSTOP:I = 0x17

.field private static final WIVU_REQUEST:I = 0x15

.field private static final WIVU_RESPONSE:I = 0x3d

.field private static autoTestFlag:Ljava/lang/String;

.field private static cur_discovery_status:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static cur_plugged_status:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static finger_gesture_enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static isFWUpgrading:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static isFingerTrigger:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static isJoinMultiCastGroup:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static isLiteConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static isMusicAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static isNeedStopMMDelayTimer:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static isPopDialog:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static isWifiBGScan:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static isWifiDFS:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final mAudioPattern:Ljava/util/regex/Pattern;

.field private static final mBssidPattern:Ljava/util/regex/Pattern;

.field private static mHandler:Lcom/htc/server/WirelessDisplayService$H;

.field private static final mHdmiPlug:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final mIPv4Pattern:Ljava/util/regex/Pattern;

.field private static mIsHotspotIpAddressReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final mVideoPattern:Ljava/util/regex/Pattern;

.field private static mWifiScanbyFingerGesture:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

.field private static needToSwitch:Ljava/lang/Boolean;

.field private static pre_request:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static preload_DLNA:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static synchronize_WivuThread_lock:Ljava/lang/Object;

.field private static wfdservice_usable:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final DELAY_RESTART_MR:I

.field private final DELAY_START_MR:I

.field private final FAILED:I

.field private final PAUSE_APP:I

.field private final PAUSE_APP_CALL:I

.field private final PAUSE_APP_CALL_SCREEN:I

.field private final PAUSE_APP_SCREEN:I

.field private final PAUSE_CALL:I

.field private final PAUSE_CALL_SCREEN:I

.field private final PAUSE_NA:I

.field private final PAUSE_SCREEN:I

.field private final SUCCESS:I

.field private final VIDEOHEIGHT:I

.field private final VIDEOWIDTH:I

.field private volatile app_req_status:Ljava/lang/Boolean;

.field private callOnGoing:Z

.field private curDongle:Ljava/lang/String;

.field private dialogResult:I

.field private isNVCPU:Z

.field private isQCT:Z

.field private isResume:Z

.field private lastDongle:Ljava/lang/String;

.field private mAP_M_MacAddress:Ljava/lang/String;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAnimationDurationScale:F

.field private final mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioPort:Ljava/lang/String;

.field private mAutoConfigConnection:Landroid/content/ServiceConnection;

.field private mAutoConfigService:Landroid/os/IBinder;

.field private mBitrate:I

.field private final mCallScreenException:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mConnectFailDialog:Lcom/htc/server/medialinkdialog/ConnectFailDialog;

.field private mConnectingDialog:Lcom/htc/server/medialinkdialog/ConnectingDialog;

.field private mConnectionWeakDialog:Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurNetworkInterface:Ljava/lang/String;

.field private mDialogIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mDongleConnectedDialog:Lcom/htc/server/medialinkdialog/DongleConnectedDialog;

.field private final mDongleInfoCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/service/DongleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDongleIp:Ljava/lang/String;

.field private final mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mFrameRate:I

.field private mGroupNumber:Ljava/lang/String;

.field private mHdmiPlugDialog:Lcom/htc/server/medialinkdialog/HdmiPlugDialog;

.field private mHtcDebugMessage:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/server/WirelessDisplayService$HtcWDSrvHistory;",
            ">;"
        }
    .end annotation
.end field

.field private final mInfoListener:Lcom/htc/server/WirelessDisplayService$InfoListener;

.field private volatile mInitComplete:Z

.field private mInterval:F

.field private mIpAndPort:Ljava/lang/String;

.field private mIsBoundToAutoConfigService:Z

.field private mIsStartFullScan:Z

.field private mMirrorConnectedDialog:Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;

.field private final mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mNotifySwitchHDMIDialog:Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;

.field private mNotifyUpgrade:Ljava/lang/Boolean;

.field private mOutputTVDialog:Lcom/htc/server/medialinkdialog/OutputTVDialog;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRecorder:Landroid/media/MediaRecorder;

.field private final mRecorderErrorCallback:Lcom/htc/server/WirelessDisplayService$RecorderErrorCallback;

.field private mRecording:Z

.field private mResource:Landroid/content/res/Resources;

.field private mSenseVersion:Ljava/lang/String;

.field private mSoftapInterface:Ljava/lang/String;

.field private mSupportAAC:Z

.field private mSupportKDDI:Z

.field private mThread:Landroid/os/HandlerThread;

.field private mTransitionAnimationScale:F

.field private mTurnOffHotspotIntent:Landroid/app/PendingIntent;

.field private final mTurnOffHotspotWakeLock:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mUsedDongleCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUsedDongleList_FilePath:Ljava/lang/String;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVideoPort:Ljava/lang/String;

.field private mWeakConnectionDialog:Z

.field private mWfdServiceRetryCount:I

.field private mWiFiInterface:Ljava/lang/String;

.field private mWifiDFSChannelDialog:Lcom/htc/server/medialinkdialog/WifiDFSChannelDialog;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiScanCount:I

.field private mWindowAnimationScale:F

.field private mWindowManager:Landroid/view/IWindowManager;

.field private mWirelessDisplayNotification:Lcom/htc/server/WirelessDisplayNotification;

.field private final mWivuCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/service/DongleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private musicKeepPollingCount:I

.field private notSupportConcurrent:Z

.field private notifyDongleFWupgradeVersion:D

.field private onlySupportDLNA:Z

.field private supportAudioAACVersion:D

.field private synchronize_lock:Ljava/lang/Object;

.field private tempDongle:Ljava/lang/String;

.field private tempFingerIndicator:I

.field private unPauseForLite:I

.field private wivuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 374
    const-string v0, "(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->mIPv4Pattern:Ljava/util/regex/Pattern;

    .line 376
    const-string v0, "AUDIO=([0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->mAudioPattern:Ljava/util/regex/Pattern;

    .line 377
    const-string v0, "VIDEO=([0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->mVideoPattern:Ljava/util/regex/Pattern;

    .line 378
    const-string v0, "((?:[0-9a-fA-F]{2}:){5}[0-9a-fA-F]{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->mBssidPattern:Ljava/util/regex/Pattern;

    .line 380
    const-string v0, "^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    .line 466
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->mHdmiPlug:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 471
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->cur_plugged_status:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 483
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->cur_discovery_status:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 488
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->finger_gesture_enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 493
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->preload_DLNA:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 498
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->wfdservice_usable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 503
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->mWifiScanbyFingerGesture:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 510
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->isWifiBGScan:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 515
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->isJoinMultiCastGroup:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 517
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->isFWUpgrading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 522
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->isNeedStopMMDelayTimer:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 528
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->isLiteConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 533
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->isMusicAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 538
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->isFingerTrigger:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 553
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->pre_request:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 558
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->isWifiDFS:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 563
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->isPopDialog:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 568
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->mIsHotspotIpAddressReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 750
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->needToSwitch:Ljava/lang/Boolean;

    .line 786
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->synchronize_WivuThread_lock:Ljava/lang/Object;

    .line 819
    const-string v0, ""

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->autoTestFlag:Ljava/lang/String;

    .line 6485
    const-string v0, "wivu"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 6486
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 24
    .parameter "context"

    .prologue
    .line 2616
    invoke-direct/range {p0 .. p0}, Lcom/htc/service/IWirelessDisplayService$Stub;-><init>()V

    .line 157
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->mInitComplete:Z

    .line 161
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->wl:Landroid/os/PowerManager$WakeLock;

    .line 358
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->DELAY_START_MR:I

    .line 359
    const/16 v20, 0x3e8

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->DELAY_RESTART_MR:I

    .line 360
    new-instance v20, Ljava/util/ArrayList;

    const/16 v21, 0x4

    invoke-direct/range {v20 .. v21}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static/range {v20 .. v20}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    .line 390
    const-string v20, "wlan0"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;

    .line 417
    new-instance v20, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v21, 0x49

    invoke-direct/range {v20 .. v21}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 427
    new-instance v20, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v21, 0x49

    invoke-direct/range {v20 .. v21}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mCallScreenException:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 440
    new-instance v20, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v21, 0x0

    invoke-direct/range {v20 .. v21}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 442
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->PAUSE_NA:I

    .line 443
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->PAUSE_SCREEN:I

    .line 444
    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->PAUSE_CALL:I

    .line 445
    const/16 v20, 0x3

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->PAUSE_CALL_SCREEN:I

    .line 446
    const/16 v20, 0x4

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->PAUSE_APP:I

    .line 447
    const/16 v20, 0x5

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->PAUSE_APP_SCREEN:I

    .line 448
    const/16 v20, 0x6

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->PAUSE_APP_CALL:I

    .line 449
    const/16 v20, 0x7

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->PAUSE_APP_CALL_SCREEN:I

    .line 451
    new-instance v20, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v21, 0x1

    invoke-direct/range {v20 .. v21}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 452
    new-instance v20, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v21, 0x0

    invoke-direct/range {v20 .. v21}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 459
    new-instance v20, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v21, 0x0

    invoke-direct/range {v20 .. v21}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mTurnOffHotspotWakeLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 478
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->app_req_status:Ljava/lang/Boolean;

    .line 540
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->unPauseForLite:I

    .line 545
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mNotifyUpgrade:Ljava/lang/Boolean;

    .line 579
    const/16 v20, 0xa

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I

    .line 584
    const/16 v20, 0x3

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I

    .line 600
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->dialogResult:I

    .line 602
    const/16 v20, 0xf

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->musicKeepPollingCount:I

    .line 604
    const-string v20, ""

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;

    .line 743
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z

    .line 765
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z

    .line 770
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->isResume:Z

    .line 776
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->mIsStartFullScan:Z

    .line 781
    new-instance v20, Ljava/lang/Object;

    invoke-direct/range {v20 .. v20}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->synchronize_lock:Ljava/lang/Object;

    .line 791
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->onlySupportDLNA:Z

    .line 796
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->isQCT:Z

    .line 801
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->notSupportConcurrent:Z

    .line 806
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->isNVCPU:Z

    .line 808
    const-string v20, "/data/misc/wifidisplay_usedList"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mUsedDongleList_FilePath:Ljava/lang/String;

    .line 810
    const-wide/high16 v20, 0x4000

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/server/WirelessDisplayService;->notifyDongleFWupgradeVersion:D

    .line 812
    const-wide v20, 0x40c3880000000000L

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/server/WirelessDisplayService;->supportAudioAACVersion:D

    .line 835
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    .line 838
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mOutputTVDialog:Lcom/htc/server/medialinkdialog/OutputTVDialog;

    .line 839
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mConnectingDialog:Lcom/htc/server/medialinkdialog/ConnectingDialog;

    .line 840
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mMirrorConnectedDialog:Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;

    .line 841
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mDongleConnectedDialog:Lcom/htc/server/medialinkdialog/DongleConnectedDialog;

    .line 842
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mHdmiPlugDialog:Lcom/htc/server/medialinkdialog/HdmiPlugDialog;

    .line 843
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mConnectFailDialog:Lcom/htc/server/medialinkdialog/ConnectFailDialog;

    .line 844
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mWifiDFSChannelDialog:Lcom/htc/server/medialinkdialog/WifiDFSChannelDialog;

    .line 845
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mConnectionWeakDialog:Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;

    .line 846
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mNotifySwitchHDMIDialog:Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;

    .line 847
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mResource:Landroid/content/res/Resources;

    .line 848
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->mSupportKDDI:Z

    .line 850
    const-string v20, ""

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;

    .line 851
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->mWeakConnectionDialog:Z

    .line 3165
    new-instance v20, Lcom/htc/server/WirelessDisplayService$19;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$19;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mDialogIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 3211
    new-instance v20, Lcom/htc/server/WirelessDisplayService$20;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$20;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mAutoConfigConnection:Landroid/content/ServiceConnection;

    .line 4462
    const-string v20, "192.168.1.1:5634/5638"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;

    .line 6141
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->mRecording:Z

    .line 6142
    const v20, 0x2dc6c0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->mBitrate:I

    .line 6143
    const/16 v20, 0x1e

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->mFrameRate:I

    .line 6144
    const/high16 v20, 0x3f80

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->mInterval:F

    .line 6145
    new-instance v20, Lcom/htc/server/WirelessDisplayService$InfoListener;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService$InfoListener;-><init>(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/WirelessDisplayService$1;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mInfoListener:Lcom/htc/server/WirelessDisplayService$InfoListener;

    .line 6146
    new-instance v20, Lcom/htc/server/WirelessDisplayService$RecorderErrorCallback;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService$RecorderErrorCallback;-><init>(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/WirelessDisplayService$1;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mRecorderErrorCallback:Lcom/htc/server/WirelessDisplayService$RecorderErrorCallback;

    .line 6149
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->mSupportAAC:Z

    .line 6151
    const/16 v20, 0x3c0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->VIDEOWIDTH:I

    .line 6152
    const/16 v20, 0x220

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->VIDEOHEIGHT:I

    .line 6153
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->SUCCESS:I

    .line 6154
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->FAILED:I

    .line 2618
    new-instance v20, Lcom/htc/server/WirelessDisplayNotification;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayNotification;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mWirelessDisplayNotification:Lcom/htc/server/WirelessDisplayNotification;

    .line 2621
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    .line 2622
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/WirelessDisplayService;->init()V

    .line 2624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "wifi"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2626
    const-string v20, "window"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mWindowManager:Landroid/view/IWindowManager;

    .line 2627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "power"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/PowerManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mPowerManager:Landroid/os/PowerManager;

    .line 2628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "connectivity"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/ConnectivityManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 2629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "audio"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/media/AudioManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mAudioManager:Landroid/media/AudioManager;

    .line 2630
    new-instance v20, Ljava/util/Hashtable;

    const/16 v21, 0x1e

    invoke-direct/range {v20 .. v21}, Ljava/util/Hashtable;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    .line 2631
    new-instance v20, Ljava/util/Hashtable;

    const/16 v21, 0x1e

    invoke-direct/range {v20 .. v21}, Ljava/util/Hashtable;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mWivuCache:Ljava/util/Hashtable;

    .line 2632
    new-instance v20, Ljava/util/Hashtable;

    const/16 v21, 0x1e

    invoke-direct/range {v20 .. v21}, Ljava/util/Hashtable;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mUsedDongleCache:Ljava/util/Hashtable;

    .line 2633
    new-instance v20, Ljava/util/Hashtable;

    const/16 v21, 0xc8

    invoke-direct/range {v20 .. v21}, Ljava/util/Hashtable;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mHtcDebugMessage:Ljava/util/Hashtable;

    .line 2634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "alarm"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/AlarmManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 2635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const-string v22, "WirelessDisplayService"

    invoke-virtual/range {v20 .. v22}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->wl:Landroid/os/PowerManager$WakeLock;

    .line 2636
    sget-object v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;

    .line 2637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "vibrator"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/Vibrator;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mVibrator:Landroid/os/Vibrator;

    .line 2639
    sget-short v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v21, 0x51

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 2640
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->mSupportKDDI:Z

    .line 2643
    :cond_0
    new-instance v18, Landroid/content/Intent;

    const-string v20, "com.htc.intent.action.INTERT_SYSTEM_NOTIFY_TURNOFF_HOTSPOT_TIMEOUT"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2644
    .local v18, turnOffHotspotIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v18

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mTurnOffHotspotIntent:Landroid/app/PendingIntent;

    .line 2645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mResource:Landroid/content/res/Resources;

    .line 2647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    new-instance v21, Lcom/htc/server/WirelessDisplayService$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$1;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v22, Landroid/content/IntentFilter;

    const-string v23, "com.htc.intent.action.INTERT_SYSTEM_NOTIFY_TURNOFF_HOTSPOT_TIMEOUT"

    invoke-direct/range {v22 .. v23}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    new-instance v21, Lcom/htc/server/WirelessDisplayService$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$2;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v22, Landroid/content/IntentFilter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v23, v0

    const-string v23, "com.htc.wifi.SET_HOTSPOT_INTERFACE_ADDRESS"

    invoke-direct/range {v22 .. v23}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    new-instance v21, Lcom/htc/server/WirelessDisplayService$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$3;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v22, Landroid/content/IntentFilter;

    const-string v23, "com.htc.wifidisplay.ACTION_CHECK_TURN_OFF_HOTSPOT"

    invoke-direct/range {v22 .. v23}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    new-instance v21, Lcom/htc/server/WirelessDisplayService$4;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$4;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v22, Landroid/content/IntentFilter;

    const-string v23, "android.net.wifi.SCAN_RESULTS"

    invoke-direct/range {v22 .. v23}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    new-instance v21, Lcom/htc/server/WirelessDisplayService$5;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$5;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v22, Landroid/content/IntentFilter;

    const-string v23, "android.net.wifi.DONGLE_SCAN_RESULTS"

    invoke-direct/range {v22 .. v23}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    new-instance v21, Lcom/htc/server/WirelessDisplayService$6;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$6;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v22, Landroid/content/IntentFilter;

    const-string v23, "com.htc.wifidisplay.NOTIFY_CONCURRENT_MODE_ENABLED"

    invoke-direct/range {v22 .. v23}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    new-instance v21, Lcom/htc/server/WirelessDisplayService$7;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$7;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v22, Landroid/content/IntentFilter;

    const-string v23, "com.htc.wifidisplay.NOTIFY_DONGLE_FIRMWARE_UPGRADE"

    invoke-direct/range {v22 .. v23}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    new-instance v21, Lcom/htc/server/WirelessDisplayService$8;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$8;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v22, Landroid/content/IntentFilter;

    const-string v23, "com.htc.wifidisplay.NOTIFY_RECONNECT_DFS_WIFI"

    invoke-direct/range {v22 .. v23}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    new-instance v21, Lcom/htc/server/WirelessDisplayService$9;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$9;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v22, Landroid/content/IntentFilter;

    const-string v23, "com.htc.wifidisplay.INTENT_PINCODE_CHECK_DONE"

    invoke-direct/range {v22 .. v23}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    new-instance v21, Lcom/htc/server/WirelessDisplayService$10;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$10;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v22, Landroid/content/IntentFilter;

    const-string v23, "com.htc.intent.action.NOTIFY_UPDATE_DONGLE_STATE"

    invoke-direct/range {v22 .. v23}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    new-instance v21, Lcom/htc/server/WirelessDisplayService$11;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$11;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v22, Landroid/content/IntentFilter;

    const-string v23, "com.htc.wifidisplay.SWITCH_ON_OFF_MIRROR_MODE"

    invoke-direct/range {v22 .. v23}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    new-instance v21, Lcom/htc/server/WirelessDisplayService$12;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$12;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v22, Landroid/content/IntentFilter;

    const-string v23, "com.htc.wifidisplay.CONFIGURE_STATE_CHANGED_ACTION"

    invoke-direct/range {v22 .. v23}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    new-instance v21, Lcom/htc/server/WirelessDisplayService$13;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$13;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v22, Landroid/content/IntentFilter;

    const-string v23, "com.htc.accessory.action.CONNECTION_EXISTING"

    invoke-direct/range {v22 .. v23}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    new-instance v21, Lcom/htc/server/WirelessDisplayService$14;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$14;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v22, Landroid/content/IntentFilter;

    const-string v23, "com.htc.action.MULTIPLE_FINGER_SWIPE_EVENT"

    invoke-direct/range {v22 .. v23}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    new-instance v21, Lcom/htc/server/WirelessDisplayService$15;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$15;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v22, Landroid/content/IntentFilter;

    const-string v23, "com.htc.intent.action.INTENT_NOTIFY_EXTEND_TURNOFF_HOTSPOT_TIMER"

    invoke-direct/range {v22 .. v23}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "4.5"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "4.0"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 2965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    new-instance v21, Lcom/htc/server/WirelessDisplayService$16;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$16;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v22, Landroid/content/IntentFilter;

    const-string v23, "com.htc.action.MULTIPLE_FINGER_SWIPE_EVENT_THROUGH_AP"

    invoke-direct/range {v22 .. v23}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2987
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    new-instance v21, Lcom/htc/server/WirelessDisplayService$17;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$17;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v22, Landroid/content/IntentFilter;

    const-string v23, "com.htc.wifidisplay.NOTIFICATION_CONFIGURE_TOOL"

    invoke-direct/range {v22 .. v23}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    new-instance v21, Lcom/htc/server/WirelessDisplayService$18;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$18;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v22, Landroid/content/IntentFilter;

    const-string v23, "com.htc.intent.action.WIFI_BGSCAN_NOTIFY"

    invoke-direct/range {v22 .. v23}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "4.5"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "4.0"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 3017
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 3018
    .local v8, dialogIntentfilter:Landroid/content/IntentFilter;
    const-string v20, "com.htc.intent.action.WIRELESS_DISPLAY_CONNECTING_DIALOG"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3019
    const-string v20, "com.htc.intent.action.WIRELESS_DISPLAY_SHOW_DONGLE_CONNECTED"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3020
    const-string v20, "com.htc.intent.action.INTENT_NOTIFY_DONGLE_CONNECTION_FAIL"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mDialogIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3024
    .end local v8           #dialogIntentfilter:Landroid/content/IntentFilter;
    :cond_2
    new-instance v9, Landroid/content/IntentFilter;

    const-string v20, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3025
    .local v9, filter:Landroid/content/IntentFilter;
    const-string v20, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3026
    const-string v20, "android.intent.action.USER_PRESENT"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3028
    new-instance v15, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v15, v0, v1}, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;-><init>(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/WirelessDisplayService$1;)V

    .line 3029
    .local v15, mReceiver:Landroid/content/BroadcastReceiver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3035
    new-instance v19, Landroid/content/IntentFilter;

    const-string v20, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct/range {v19 .. v20}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3036
    .local v19, wifiFilter:Landroid/content/IntentFilter;
    const-string v20, "android.net.wifi.WIFIDISPLAY_AP_STATE_CHANGED"

    invoke-virtual/range {v19 .. v20}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3037
    const-string v20, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual/range {v19 .. v20}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3039
    new-instance v16, Lcom/htc/server/WirelessDisplayService$WifiReceiver;

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService$WifiReceiver;-><init>(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/WirelessDisplayService$1;)V

    .line 3040
    .local v16, mWifiReceiver:Landroid/content/BroadcastReceiver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3044
    new-instance v4, Landroid/content/IntentFilter;

    const-string v20, "android.intent.action.PHONE_STATE"

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3047
    .local v4, callFilter:Landroid/content/IntentFilter;
    new-instance v11, Lcom/htc/server/WirelessDisplayService$CallReceiver;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/htc/server/WirelessDisplayService$CallReceiver;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    .line 3048
    .local v11, mCallReceiver:Landroid/content/BroadcastReceiver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3052
    new-instance v10, Landroid/content/IntentFilter;

    const-string v20, "android.intent.action.HDMI_AUDIO_PLUG"

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3054
    .local v10, hdmiFilter:Landroid/content/IntentFilter;
    new-instance v14, Lcom/htc/server/WirelessDisplayService$HdmiReceiver;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/htc/server/WirelessDisplayService$HdmiReceiver;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    .line 3055
    .local v14, mHdmiReceiver:Landroid/content/BroadcastReceiver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3058
    new-instance v7, Landroid/content/IntentFilter;

    const-string v20, "com.htc.intent.action.WIRELESS_DISPLAY_OUTPUTTV_RESULT"

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3059
    .local v7, dialogFilter:Landroid/content/IntentFilter;
    new-instance v13, Lcom/htc/server/WirelessDisplayService$DialogResultReceiver;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v13, v0, v1}, Lcom/htc/server/WirelessDisplayService$DialogResultReceiver;-><init>(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/WirelessDisplayService$1;)V

    .line 3060
    .local v13, mDialogResultReceiver:Landroid/content/BroadcastReceiver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3062
    new-instance v5, Landroid/content/IntentFilter;

    const-string v20, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3064
    .local v5, connectivityFilter:Landroid/content/IntentFilter;
    new-instance v12, Lcom/htc/server/WirelessDisplayService$ConnectivityReceiver;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v12, v0, v1}, Lcom/htc/server/WirelessDisplayService$ConnectivityReceiver;-><init>(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/WirelessDisplayService$1;)V

    .line 3065
    .local v12, mConnectivityReceiver:Landroid/content/BroadcastReceiver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3068
    const-string v20, "wifi.softapconcurrent.interface"

    const-string v21, "wlan1"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mSoftapInterface:Ljava/lang/String;

    .line 3069
    const-string v20, "wifi.interface"

    const-string v21, "wlan0"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;

    .line 3070
    const-string v20, "persist.sys.wfd.lastdongle"

    const-string v21, ""

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;

    .line 3071
    const-string v20, "/data/misc/wifidisplay.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService;->readConfigFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;

    .line 3072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mUsedDongleList_FilePath:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService;->readConfigFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 3073
    .local v17, readUsedDongleListResult:Ljava/lang/String;
    const-string v20, "Success"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 3074
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/WirelessDisplayService;->updateUsedDongleListFile()V

    .line 3077
    :cond_3
    const-string v20, "ro.board.platform"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3078
    .local v6, device:Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 3079
    const-string v20, "WirelessDisplayService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Platform is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3080
    const-string v20, "msm7x30"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    const-string v20, "msm7k"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 3081
    :cond_4
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->onlySupportDLNA:Z

    .line 3099
    :cond_5
    :goto_0
    sget-short v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v21, 0xdf

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    sget-short v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v21, 0xe2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    sget-short v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v21, 0xe3

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    sget-short v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v21, 0xe4

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    sget-short v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v21, 0xe5

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    sget-short v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v21, 0x23f

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    sget-short v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v21, 0x240

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    sget-short v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v21, 0x241

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    sget-short v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v21, 0x242

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    sget-short v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v21, 0x243

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 3109
    :cond_6
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->onlySupportDLNA:Z

    .line 3110
    const-string v20, "WirelessDisplayService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Project: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-short v22, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " onlySupportDLNA: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/server/WirelessDisplayService;->onlySupportDLNA:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3113
    :cond_7
    sget-short v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v21, 0xe3

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    sget-short v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v21, 0xe4

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    sget-short v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v21, 0x243

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 3116
    :cond_8
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->notSupportConcurrent:Z

    .line 3117
    const-string v20, "WirelessDisplayService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Project: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-short v22, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " notSupportConcurrent: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/server/WirelessDisplayService;->notSupportConcurrent:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3128
    :cond_9
    sget-short v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v21, 0x26

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_a

    sget-short v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v21, 0x25

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_a

    sget-short v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v21, 0x146

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_a

    sget-short v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v21, 0x147

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_a

    sget-short v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v21, 0x149

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 3133
    :cond_a
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->isNVCPU:Z

    .line 3134
    const-string v20, "WirelessDisplayService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Project: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-short v22, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " isNVCPU: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/server/WirelessDisplayService;->isNVCPU:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3136
    :cond_b
    return-void

    .line 3082
    :cond_c
    const-string v20, "msm8960"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_d

    const-string v20, "msm8660"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_d

    const-string v20, "msm7627a"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 3083
    :cond_d
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->isQCT:Z

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/OutputTVDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mOutputTVDialog:Lcom/htc/server/medialinkdialog/OutputTVDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService;->updateDongleStateToPaired(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$10100(Lcom/htc/server/WirelessDisplayService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->isNewSwipeExist()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/medialinkdialog/OutputTVDialog;)Lcom/htc/server/medialinkdialog/OutputTVDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->mOutputTVDialog:Lcom/htc/server/medialinkdialog/OutputTVDialog;

    return-object p1
.end method

.method static synthetic access$10200()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->isWifiBGScan:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$10700(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/ConnectingDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mConnectingDialog:Lcom/htc/server/medialinkdialog/ConnectingDialog;

    return-object v0
.end method

.method static synthetic access$10702(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/medialinkdialog/ConnectingDialog;)Lcom/htc/server/medialinkdialog/ConnectingDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->mConnectingDialog:Lcom/htc/server/medialinkdialog/ConnectingDialog;

    return-object p1
.end method

.method static synthetic access$10800(Lcom/htc/server/WirelessDisplayService;)Landroid/content/res/Resources;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mResource:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$10900(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/ConnectFailDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mConnectFailDialog:Lcom/htc/server/medialinkdialog/ConnectFailDialog;

    return-object v0
.end method

.method static synthetic access$10902(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/medialinkdialog/ConnectFailDialog;)Lcom/htc/server/medialinkdialog/ConnectFailDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->mConnectFailDialog:Lcom/htc/server/medialinkdialog/ConnectFailDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic access$11000(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->initInThread()V

    return-void
.end method

.method static synthetic access$1200()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->preload_DLNA:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->isNeedStopMMDelayTimer:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/htc/server/WirelessDisplayService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/server/WirelessDisplayService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget v0, p0, Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I

    return v0
.end method

.method static synthetic access$1602(Lcom/htc/server/WirelessDisplayService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput p1, p0, Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I

    return p1
.end method

.method static synthetic access$1610(Lcom/htc/server/WirelessDisplayService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 150
    iget v0, p0, Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1800()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$1900()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->synchronize_WivuThread_lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    sput-object p0, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200()Lcom/htc/server/WirelessDisplayService$H;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/server/WirelessDisplayService;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/htc/server/WirelessDisplayService;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/server/WirelessDisplayService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->clearDongleCache()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->notifyWHDMI()V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/server/WirelessDisplayService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/htc/server/WirelessDisplayService;->mSupportKDDI:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->saveLimitedApInfo()V

    return-void
.end method

.method static synthetic access$3300(Lcom/htc/server/WirelessDisplayService;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->setToDefault_musicKeepPollingCount()V

    return-void
.end method

.method static synthetic access$3500(Lcom/htc/server/WirelessDisplayService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget v0, p0, Lcom/htc/server/WirelessDisplayService;->musicKeepPollingCount:I

    return v0
.end method

.method static synthetic access$3510(Lcom/htc/server/WirelessDisplayService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 150
    iget v0, p0, Lcom/htc/server/WirelessDisplayService;->musicKeepPollingCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/htc/server/WirelessDisplayService;->musicKeepPollingCount:I

    return v0
.end method

.method static synthetic access$3600()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->isMusicAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->fallBackFromAppPause()V

    return-void
.end method

.method static synthetic access$3800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mTurnOffHotspotWakeLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/htc/server/WirelessDisplayService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/htc/server/WirelessDisplayService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/HdmiPlugDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mHdmiPlugDialog:Lcom/htc/server/medialinkdialog/HdmiPlugDialog;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/htc/server/WirelessDisplayService;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mAutoConfigConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/medialinkdialog/HdmiPlugDialog;)Lcom/htc/server/medialinkdialog/HdmiPlugDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->mHdmiPlugDialog:Lcom/htc/server/medialinkdialog/HdmiPlugDialog;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/htc/server/WirelessDisplayService;)Landroid/os/IBinder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/htc/server/WirelessDisplayService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$4200()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->wfdservice_usable:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/htc/server/WirelessDisplayService;->addToHtcWDSrvHistory(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->binder_finishService()V

    return-void
.end method

.method static synthetic access$4500(Lcom/htc/server/WirelessDisplayService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService;->constructDongleInfoFromWifi(Z)V

    return-void
.end method

.method static synthetic access$4600(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->updateNotification()V

    return-void
.end method

.method static synthetic access$4700()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->cur_plugged_status:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$4800()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->cur_discovery_status:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService;->updteDongleInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mConnectionWeakDialog:Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;

    return-object v0
.end method

.method static synthetic access$5000()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->pre_request:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;)Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->mConnectionWeakDialog:Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;

    return-object p1
.end method

.method static synthetic access$5100()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->mIPv4Pattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5300()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->mAudioPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mAudioPort:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5402(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->mAudioPort:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5500()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->mVideoPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mVideoPort:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5602(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->mVideoPort:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5700(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/server/WirelessDisplayService;->setIPandPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->synchronize_lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->app_req_status:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/server/WirelessDisplayService;)Landroid/os/Vibrator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/htc/server/WirelessDisplayService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z

    return v0
.end method

.method static synthetic access$6002(Lcom/htc/server/WirelessDisplayService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/htc/server/WirelessDisplayService;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/server/WirelessDisplayService;->updateMirrorPauseState(IIZ)V

    return-void
.end method

.method static synthetic access$6200()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->needToSwitch:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$6202(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    sput-object p0, Lcom/htc/server/WirelessDisplayService;->needToSwitch:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/htc/server/WirelessDisplayService;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService;->updateWivuList([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->updateFWUpgradeNotification()V

    return-void
.end method

.method static synthetic access$6500(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6600()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->isJoinMultiCastGroup:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/htc/server/WirelessDisplayService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/htc/server/WirelessDisplayService;->mSupportAAC:Z

    return v0
.end method

.method static synthetic access$6800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService;->startDisplayRecorder(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mNotifySwitchHDMIDialog:Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/htc/server/WirelessDisplayService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->stopDisplayRecorder()I

    move-result v0

    return v0
.end method

.method static synthetic access$702(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;)Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->mNotifySwitchHDMIDialog:Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;

    return-object p1
.end method

.method static synthetic access$7100(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->gotoPauseState()V

    return-void
.end method

.method static synthetic access$7200(Lcom/htc/server/WirelessDisplayService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService;->startPatternLockStopAudio(Z)V

    return-void
.end method

.method static synthetic access$7300(Lcom/htc/server/WirelessDisplayService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->writeConcurrentAPMacAddress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7402(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7500(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService;->readConfigFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7600(Lcom/htc/server/WirelessDisplayService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget v0, p0, Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I

    return v0
.end method

.method static synthetic access$7602(Lcom/htc/server/WirelessDisplayService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput p1, p0, Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I

    return p1
.end method

.method static synthetic access$7610(Lcom/htc/server/WirelessDisplayService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 150
    iget v0, p0, Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I

    return v0
.end method

.method static synthetic access$7700(Lcom/htc/server/WirelessDisplayService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService;->binder_setMode(I)V

    return-void
.end method

.method static synthetic access$7800(Lcom/htc/server/WirelessDisplayService;Lcom/htc/service/DongleInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService;->binder_attemptToConfigure(Lcom/htc/service/DongleInfo;)V

    return-void
.end method

.method static synthetic access$7900(Lcom/htc/server/WirelessDisplayService;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/htc/server/WirelessDisplayService;->mirrorOnOffDirection(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/htc/server/WirelessDisplayService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/htc/server/WirelessDisplayService;->mWeakConnectionDialog:Z

    return v0
.end method

.method static synthetic access$8002(Lcom/htc/server/WirelessDisplayService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput p1, p0, Lcom/htc/server/WirelessDisplayService;->tempFingerIndicator:I

    return p1
.end method

.method static synthetic access$802(Lcom/htc/server/WirelessDisplayService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/htc/server/WirelessDisplayService;->mWeakConnectionDialog:Z

    return p1
.end method

.method static synthetic access$8100()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->mWifiScanbyFingerGesture:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/htc/server/WirelessDisplayService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/htc/server/WirelessDisplayService;->notSupportConcurrent:Z

    return v0
.end method

.method static synthetic access$8300(Lcom/htc/server/WirelessDisplayService;)Ljava/util/Hashtable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/DongleConnectedDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mDongleConnectedDialog:Lcom/htc/server/medialinkdialog/DongleConnectedDialog;

    return-object v0
.end method

.method static synthetic access$8402(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/medialinkdialog/DongleConnectedDialog;)Lcom/htc/server/medialinkdialog/DongleConnectedDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->mDongleConnectedDialog:Lcom/htc/server/medialinkdialog/DongleConnectedDialog;

    return-object p1
.end method

.method static synthetic access$8500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->autoTestFlag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8502(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    sput-object p0, Lcom/htc/server/WirelessDisplayService;->autoTestFlag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$8600()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->isWifiDFS:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->cancelTurnOffConcurrentHotspot()V

    return-void
.end method

.method static synthetic access$8800()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->mIsHotspotIpAddressReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$8900()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->isFWUpgrading:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mSoftapInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9100(Lcom/htc/server/WirelessDisplayService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService;->setDialogResult(I)V

    return-void
.end method

.method static synthetic access$9200()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->isPopDialog:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$9300()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->isLiteConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$9400(Lcom/htc/server/WirelessDisplayService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget v0, p0, Lcom/htc/server/WirelessDisplayService;->unPauseForLite:I

    return v0
.end method

.method static synthetic access$9408(Lcom/htc/server/WirelessDisplayService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 150
    iget v0, p0, Lcom/htc/server/WirelessDisplayService;->unPauseForLite:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/server/WirelessDisplayService;->unPauseForLite:I

    return v0
.end method

.method static synthetic access$9410(Lcom/htc/server/WirelessDisplayService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 150
    iget v0, p0, Lcom/htc/server/WirelessDisplayService;->unPauseForLite:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/htc/server/WirelessDisplayService;->unPauseForLite:I

    return v0
.end method

.method static synthetic access$9500()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->mHdmiPlug:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$9600()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->finger_gesture_enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/htc/server/WirelessDisplayService;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/htc/server/WirelessDisplayService;->turnOffConcurrentHotspot(J)V

    return-void
.end method

.method static synthetic access$9800(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/WifiDFSChannelDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mWifiDFSChannelDialog:Lcom/htc/server/medialinkdialog/WifiDFSChannelDialog;

    return-object v0
.end method

.method static synthetic access$9802(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/medialinkdialog/WifiDFSChannelDialog;)Lcom/htc/server/medialinkdialog/WifiDFSChannelDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->mWifiDFSChannelDialog:Lcom/htc/server/medialinkdialog/WifiDFSChannelDialog;

    return-object p1
.end method

.method static synthetic access$9900()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->isFingerTrigger:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private addToHtcWDSrvHistory(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .parameter "event"
    .parameter "args"

    .prologue
    .line 5560
    new-instance v0, Lcom/htc/server/WirelessDisplayService$HtcWDSrvHistory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/server/WirelessDisplayService$HtcWDSrvHistory;-><init>(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/WirelessDisplayService$1;)V

    .line 5561
    .local v0, hist:Lcom/htc/server/WirelessDisplayService$HtcWDSrvHistory;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/server/WirelessDisplayService$HtcWDSrvHistory;->timeStamp:J

    .line 5562
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v1

    iput v1, v0, Lcom/htc/server/WirelessDisplayService$HtcWDSrvHistory;->pid:I

    .line 5563
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v1

    iput v1, v0, Lcom/htc/server/WirelessDisplayService$HtcWDSrvHistory;->uid:I

    .line 5564
    iput-object p1, v0, Lcom/htc/server/WirelessDisplayService$HtcWDSrvHistory;->event:Ljava/lang/String;

    .line 5565
    if-eqz p2, :cond_0

    .line 5566
    iput-object p2, v0, Lcom/htc/server/WirelessDisplayService$HtcWDSrvHistory;->args:[Ljava/lang/Object;

    .line 5568
    :cond_0
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mHtcDebugMessage:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5569
    return-void
.end method

.method private binder_attemptToConfigure(Lcom/htc/service/DongleInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    .line 3256
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3257
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3260
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.wfdservice.IWfdService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3261
    if-eqz p1, :cond_0

    .line 3262
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3263
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/htc/service/DongleInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3269
    :goto_0
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3270
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3276
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3277
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3279
    return-void

    .line 3266
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3271
    :catch_0
    move-exception v2

    .line 3276
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3276
    throw v2

    .line 3273
    :catch_1
    move-exception v2

    .line 3276
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_1
.end method

.method private binder_finishService()V
    .locals 5

    .prologue
    .line 3282
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3283
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3286
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.wfdservice.IWfdService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3288
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3289
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3295
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3296
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3298
    return-void

    .line 3295
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3295
    throw v2

    .line 3290
    :catch_0
    move-exception v2

    .line 3295
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 3292
    :catch_1
    move-exception v2

    .line 3295
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0
.end method

.method private binder_setMode(I)V
    .locals 5
    .parameter "mode"

    .prologue
    .line 3237
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3238
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3241
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.wfdservice.IWfdService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3242
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3243
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3244
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3250
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3251
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3253
    return-void

    .line 3250
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3250
    throw v2

    .line 3245
    :catch_0
    move-exception v2

    .line 3250
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 3247
    :catch_1
    move-exception v2

    .line 3250
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0
.end method

.method private cancelTurnOffConcurrentHotspot()V
    .locals 2

    .prologue
    .line 4399
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mTurnOffHotspotIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 4400
    return-void
.end method

.method private checkDongleFWUpgrade(Lcom/htc/service/DongleInfo;)Z
    .locals 6
    .parameter "dongle"

    .prologue
    .line 4950
    const-string v3, "WirelessDisplayService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkDongleFWUpgrade, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/htc/service/DongleInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4951
    const/4 v2, 0x1

    .line 4952
    .local v2, isNeed:Z
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService;->transferDongleVersion(Lcom/htc/service/DongleInfo;)D

    move-result-wide v0

    .line 4953
    .local v0, dongleVersion:D
    const-wide/high16 v3, -0x4010

    cmpl-double v3, v0, v3

    if-eqz v3, :cond_0

    .line 4954
    iget-wide v3, p0, Lcom/htc/server/WirelessDisplayService;->notifyDongleFWupgradeVersion:D

    cmpl-double v3, v0, v3

    if-ltz v3, :cond_0

    .line 4955
    const/4 v2, 0x0

    .line 4958
    :cond_0
    return v2
.end method

.method private clearDongleCache()Z
    .locals 6

    .prologue
    .line 3933
    const/4 v2, 0x0

    .line 3934
    .local v2, isUpdate:Z
    iget-object v3, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3935
    const-string v3, "WirelessDisplayService"

    const-string v4, "clearDongleCache: Wivulist is already empty"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3955
    :cond_0
    return v2

    .line 3937
    :cond_1
    const/4 v2, 0x1

    .line 3938
    iget-object v3, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3939
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3940
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3941
    .local v0, element:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3942
    const-string v3, "WirelessDisplayService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearDongleCache removing:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3943
    iget-object v3, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3949
    :cond_3
    iget-object v3, p0, Lcom/htc/server/WirelessDisplayService;->mWivuCache:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3950
    const-string v3, "WirelessDisplayService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clean mWivuCache removing:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3951
    iget-object v3, p0, Lcom/htc/server/WirelessDisplayService;->mWivuCache:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private constructDongleInfoFromWifi(Z)V
    .locals 41
    .parameter "isDongleScan"

    .prologue
    .line 3477
    const-string v36, "WirelessDisplayService"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "constructDongleInfoFromWifi() dongleScan = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/net/wifi/WifiManager;->getDongleScanList()Ljava/util/List;

    move-result-object v27

    .line 3482
    .local v27, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3483
    .local v9, dongleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 3485
    .local v2, activeNetwork:Landroid/net/NetworkInfo;
    sget-object v36, Lcom/htc/server/WirelessDisplayService;->isWifiBGScan:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual/range {v36 .. v36}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v36

    if-eqz v36, :cond_1

    .line 3486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v21

    .line 3487
    .local v21, mFullWifiScanList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v21, :cond_1

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_1

    .line 3488
    if-eqz v2, :cond_1

    .line 3489
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_1

    .line 3490
    const-string v36, "WirelessDisplayService"

    const-string v37, "Wifi BG Scan, ignore it"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3491
    sget-object v36, Lcom/htc/server/WirelessDisplayService;->isWifiBGScan:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v37, 0x0

    invoke-virtual/range {v36 .. v37}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3684
    .end local v21           #mFullWifiScanList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_0
    :goto_0
    return-void

    .line 3498
    :cond_1
    if-eqz v27, :cond_18

    .line 3500
    const/4 v15, 0x0

    .local v15, ii:I
    :goto_1
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v36

    move/from16 v0, v36

    if-ge v15, v0, :cond_2

    .line 3501
    const-string v37, "WirelessDisplayService"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Wifi Scan Result:"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v27

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/net/wifi/ScanResult;

    invoke-virtual/range {v36 .. v36}, Landroid/net/wifi/ScanResult;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3500
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 3506
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    move-object/from16 v37, v0

    monitor-enter v37

    .line 3507
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v23

    .line 3508
    .local v23, macs:Ljava/util/Enumeration;
    :cond_3
    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v36

    if-eqz v36, :cond_8

    .line 3509
    invoke-interface/range {v23 .. v23}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 3510
    .local v22, mac:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_3

    .line 3511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    move-object/from16 v36, v0

    if-eqz v36, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;

    move-object/from16 v36, v0

    if-eqz v36, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_7

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v36

    const/16 v38, 0x8

    move/from16 v0, v36

    move/from16 v1, v38

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v36

    const/16 v38, 0x2

    move/from16 v0, v36

    move/from16 v1, v38

    if-ne v0, v1, :cond_7

    .line 3513
    :cond_6
    const-string v36, "WirelessDisplayService"

    const-string v38, "Should be not clean curDongle || tempDongle via Wifi Scan"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3520
    .end local v22           #mac:Ljava/lang/String;
    .end local v23           #macs:Ljava/util/Enumeration;
    :catchall_0
    move-exception v36

    monitor-exit v37
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v36

    .line 3515
    .restart local v22       #mac:Ljava/lang/String;
    .restart local v23       #macs:Ljava/util/Enumeration;
    :cond_7
    :try_start_1
    const-string v36, "WirelessDisplayService"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "constructDongleInfoFromWifi: remove:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3520
    .end local v22           #mac:Ljava/lang/String;
    :cond_8
    monitor-exit v37
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3522
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_9
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_18

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/wifi/ScanResult;

    .line 3523
    .local v26, result:Landroid/net/wifi/ScanResult;
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v36, v0

    const-string v37, "[DONGLE-"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v36

    if-eqz v36, :cond_9

    .line 3527
    const/4 v7, 0x0

    .line 3529
    .local v7, dongle:Lcom/htc/service/DongleInfo;
    const/16 v19, 0x0

    .line 3530
    .local v19, key:Ljava/lang/String;
    const/4 v3, 0x0

    .line 3531
    .local v3, aph:Ljava/lang/String;
    const/4 v4, 0x0

    .line 3532
    .local v4, apm:Ljava/lang/String;
    const/16 v31, 0x0

    .line 3533
    .local v31, staBssid:Ljava/lang/String;
    const/16 v35, 0x0

    .line 3535
    .local v35, version:Ljava/lang/String;
    const/16 v17, 0x0

    .line 3538
    .local v17, isConnectable:Z
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 3539
    .local v30, ssid:Ljava/lang/String;
    move-object/from16 v0, v26

    iget-object v5, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 3540
    .local v5, bssid:Ljava/lang/String;
    move-object/from16 v0, v26

    iget-object v14, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 3541
    .local v14, ieInfo:Ljava/lang/String;
    const-string v32, ""

    .line 3547
    .local v32, state:Ljava/lang/String;
    :try_start_2
    const-string v36, "[DONGLE-"

    move-object/from16 v0, v36

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v36

    const-string v37, "][RSSI-"

    move-object/from16 v0, v37

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v37

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    .line 3548
    .local v34, subStr:Ljava/lang/String;
    const-string v36, "[DONGLE-"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v36

    if-eqz v36, :cond_11

    .line 3550
    const-string v36, "-"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 3551
    .local v18, items:[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x6

    move/from16 v0, v36

    move/from16 v1, v37

    if-lt v0, v1, :cond_10

    .line 3553
    const/16 v36, 0x1

    aget-object v35, v18, v36

    .line 3554
    const/16 v36, 0x2

    aget-object v32, v18, v36

    .line 3555
    const/16 v36, 0x3

    aget-object v3, v18, v36

    .line 3556
    const/16 v36, 0x4

    aget-object v4, v18, v36

    .line 3558
    sget-object v36, Lcom/htc/server/WirelessDisplayService;->mBssidPattern:Ljava/util/regex/Pattern;

    const/16 v37, 0x5

    aget-object v37, v18, v37

    invoke-virtual/range {v36 .. v37}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v24

    .line 3559
    .local v24, matcher:Ljava/util/regex/Matcher;
    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->find()Z

    move-result v36

    if-eqz v36, :cond_a

    .line 3560
    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v31

    .line 3561
    :cond_a
    const-string v36, "WirelessDisplayService"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "staBssid:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3562
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x6

    move/from16 v0, v36

    move/from16 v1, v37

    if-le v0, v1, :cond_b

    const/16 v36, 0x6

    aget-object v36, v18, v36

    if-eqz v36, :cond_b

    const/16 v36, 0x6

    aget-object v36, v18, v36

    const-string v37, "CONNECTED"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_b

    .line 3574
    .end local v18           #items:[Ljava/lang/String;
    .end local v24           #matcher:Ljava/util/regex/Matcher;
    :cond_b
    :goto_4
    move-object/from16 v19, v31

    .line 3576
    const-string v36, "WPS"

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v36

    if-eqz v36, :cond_12

    .line 3577
    const/16 v33, 0x1

    .line 3593
    .local v33, status:I
    :goto_5
    if-eqz v19, :cond_c

    .line 3594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v36

    check-cast v0, Lcom/htc/service/DongleInfo;

    move-object v7, v0

    .line 3596
    :cond_c
    if-eqz v19, :cond_1d

    if-nez v7, :cond_1d

    .line 3597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mWivuCache:Ljava/util/Hashtable;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v36

    check-cast v0, Lcom/htc/service/DongleInfo;

    move-object v7, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v8, v7

    .line 3599
    .end local v7           #dongle:Lcom/htc/service/DongleInfo;
    .local v8, dongle:Lcom/htc/service/DongleInfo;
    :goto_6
    if-nez v8, :cond_1c

    .line 3600
    :try_start_3
    new-instance v7, Lcom/htc/service/DongleInfo;

    invoke-direct {v7}, Lcom/htc/service/DongleInfo;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 3601
    .end local v8           #dongle:Lcom/htc/service/DongleInfo;
    .restart local v7       #dongle:Lcom/htc/service/DongleInfo;
    const/16 v36, 0x0

    :try_start_4
    move/from16 v0, v36

    iput-boolean v0, v7, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    .line 3602
    const/16 v36, 0x0

    move/from16 v0, v36

    iput-boolean v0, v7, Lcom/htc/service/DongleInfo;->isConnectable:Z

    .line 3603
    move-object/from16 v0, v31

    iput-object v0, v7, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    .line 3604
    const-wide/16 v36, 0x0

    move-wide/from16 v0, v36

    iput-wide v0, v7, Lcom/htc/service/DongleInfo;->capabilities:J

    .line 3607
    :goto_7
    iput-object v5, v7, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    .line 3608
    move-object/from16 v0, v30

    iput-object v0, v7, Lcom/htc/service/DongleInfo;->name:Ljava/lang/String;

    .line 3609
    move-object/from16 v0, v30

    iput-object v0, v7, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    .line 3610
    move/from16 v0, v33

    iput v0, v7, Lcom/htc/service/DongleInfo;->status:I

    .line 3611
    move-object/from16 v0, v35

    iput-object v0, v7, Lcom/htc/service/DongleInfo;->version:Ljava/lang/String;

    .line 3612
    iput-object v3, v7, Lcom/htc/service/DongleInfo;->currentAph:Ljava/lang/String;

    .line 3613
    iput-object v4, v7, Lcom/htc/service/DongleInfo;->pairedApm:Ljava/lang/String;

    .line 3614
    move/from16 v0, v17

    iput-boolean v0, v7, Lcom/htc/service/DongleInfo;->isConnectable:Z

    .line 3616
    const/16 v36, 0x4

    move/from16 v0, v33

    move/from16 v1, v36

    if-ne v0, v1, :cond_d

    .line 3617
    const/16 v36, 0x0

    move/from16 v0, v36

    iput-boolean v0, v7, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    .line 3618
    const/16 v36, 0x0

    move/from16 v0, v36

    iput-boolean v0, v7, Lcom/htc/service/DongleInfo;->isConnectable:Z

    .line 3632
    :cond_d
    const-string v36, "[DLNA-"

    move-object/from16 v0, v36

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 3633
    .local v6, dlnaIndex:I
    if-lez v6, :cond_e

    .line 3635
    add-int/lit8 v36, v6, 0x6

    add-int/lit8 v37, v6, 0xe

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 3636
    .local v12, hexStr:Ljava/lang/String;
    const/16 v36, 0x10

    move/from16 v0, v36

    invoke-static {v12, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v36

    move-wide/from16 v0, v36

    iput-wide v0, v7, Lcom/htc/service/DongleInfo;->capabilities:J

    .line 3638
    .end local v12           #hexStr:Ljava/lang/String;
    :cond_e
    const-string v36, "[RSSI-"

    move-object/from16 v0, v36

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v28

    .line 3639
    .local v28, rssiIndex:I
    if-lez v28, :cond_16

    .line 3640
    add-int/lit8 v36, v28, 0x6

    add-int/lit8 v37, v28, 0x8

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    .line 3641
    .local v29, rssiStr:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v36

    iput v0, v7, Lcom/htc/service/DongleInfo;->rssi:I

    .line 3645
    .end local v29           #rssiStr:Ljava/lang/String;
    :goto_8
    const-string v36, "[PTN-"

    move-object/from16 v0, v36

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v25

    .line 3646
    .local v25, ptnIndex:I
    if-lez v25, :cond_17

    .line 3647
    add-int/lit8 v36, v25, 0x5

    add-int/lit8 v37, v25, 0x6

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 3648
    .local v20, lockType:I
    move/from16 v0, v20

    iput v0, v7, Lcom/htc/service/DongleInfo;->lockType:I

    .line 3649
    add-int/lit8 v36, v25, 0x7

    add-int/lit8 v37, v25, 0xc

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    iput-object v0, v7, Lcom/htc/service/DongleInfo;->lockStatus:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 3657
    .end local v6           #dlnaIndex:I
    .end local v20           #lockType:I
    .end local v25           #ptnIndex:I
    .end local v28           #rssiIndex:I
    .end local v33           #status:I
    .end local v34           #subStr:Ljava/lang/String;
    :goto_9
    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_f

    .line 3658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3659
    const-string v36, "WirelessDisplayService"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Adding dongle info: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual {v7}, Lcom/htc/service/DongleInfo;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3661
    :cond_f
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3566
    .restart local v18       #items:[Ljava/lang/String;
    .restart local v34       #subStr:Ljava/lang/String;
    :cond_10
    :try_start_5
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-lt v0, v1, :cond_b

    .line 3567
    const/16 v36, 0x1

    aget-object v35, v18, v36

    .line 3568
    move-object/from16 v32, v34

    goto/16 :goto_4

    .line 3571
    .end local v18           #items:[Ljava/lang/String;
    :cond_11
    move-object/from16 v32, v30

    goto/16 :goto_4

    .line 3578
    :cond_12
    const-string v36, "UNCFG"

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v36

    if-eqz v36, :cond_13

    .line 3580
    const/16 v33, 0x4

    .restart local v33       #status:I
    goto/16 :goto_5

    .line 3581
    .end local v33           #status:I
    :cond_13
    const-string v36, "CFG"

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v36

    if-eqz v36, :cond_15

    .line 3582
    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_14

    .line 3583
    const/16 v33, 0x3

    .restart local v33       #status:I
    goto/16 :goto_5

    .line 3585
    .end local v33           #status:I
    :cond_14
    const/16 v33, 0x2

    .restart local v33       #status:I
    goto/16 :goto_5

    .line 3590
    .end local v33           #status:I
    :cond_15
    const/16 v33, 0x0

    .restart local v33       #status:I
    goto/16 :goto_5

    .line 3643
    .restart local v6       #dlnaIndex:I
    .restart local v28       #rssiIndex:I
    :cond_16
    const/16 v36, -0x1

    move/from16 v0, v36

    iput v0, v7, Lcom/htc/service/DongleInfo;->rssi:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_8

    .line 3654
    .end local v6           #dlnaIndex:I
    .end local v28           #rssiIndex:I
    .end local v33           #status:I
    .end local v34           #subStr:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 3655
    .local v10, e:Ljava/lang/Exception;
    :goto_a
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9

    .line 3651
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v6       #dlnaIndex:I
    .restart local v25       #ptnIndex:I
    .restart local v28       #rssiIndex:I
    .restart local v33       #status:I
    .restart local v34       #subStr:Ljava/lang/String;
    :cond_17
    const/16 v36, 0x2

    :try_start_6
    move/from16 v0, v36

    iput v0, v7, Lcom/htc/service/DongleInfo;->lockType:I

    .line 3652
    const-string v36, "0000N"

    move-object/from16 v0, v36

    iput-object v0, v7, Lcom/htc/service/DongleInfo;->lockStatus:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_9

    .line 3665
    .end local v3           #aph:Ljava/lang/String;
    .end local v4           #apm:Ljava/lang/String;
    .end local v5           #bssid:Ljava/lang/String;
    .end local v6           #dlnaIndex:I
    .end local v7           #dongle:Lcom/htc/service/DongleInfo;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #ieInfo:Ljava/lang/String;
    .end local v15           #ii:I
    .end local v17           #isConnectable:Z
    .end local v19           #key:Ljava/lang/String;
    .end local v23           #macs:Ljava/util/Enumeration;
    .end local v25           #ptnIndex:I
    .end local v26           #result:Landroid/net/wifi/ScanResult;
    .end local v28           #rssiIndex:I
    .end local v30           #ssid:Ljava/lang/String;
    .end local v31           #staBssid:Ljava/lang/String;
    .end local v32           #state:Ljava/lang/String;
    .end local v33           #status:I
    .end local v34           #subStr:Ljava/lang/String;
    .end local v35           #version:Ljava/lang/String;
    :cond_18
    new-instance v16, Landroid/content/Intent;

    const-string v36, "com.htc.MIRROR_DISPLAY_DONGLE_AVAILABLE"

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3666
    .local v16, intent:Landroid/content/Intent;
    const/high16 v36, 0x800

    move-object/from16 v0, v16

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3667
    sget-object v36, Lcom/htc/server/WirelessDisplayService;->wfdservice_usable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual/range {v36 .. v36}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v36

    if-eqz v36, :cond_19

    sget-object v36, Lcom/htc/server/WirelessDisplayService;->finger_gesture_enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual/range {v36 .. v36}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v36

    if-nez v36, :cond_1b

    .line 3668
    :cond_19
    const-string v36, "WirelessDisplayService"

    const-string v37, "Sending intent: MIRROR_DISPLAY_DONGLE_AVAILABLE_ACTION"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3674
    :goto_b
    sget-object v36, Lcom/htc/server/WirelessDisplayService;->mWifiScanbyFingerGesture:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual/range {v36 .. v36}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v36

    if-eqz v36, :cond_1a

    .line 3675
    sget-object v36, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    sget-object v37, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v38, 0x6f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/server/WirelessDisplayService;->tempFingerIndicator:I

    move/from16 v39, v0

    const/16 v40, 0x0

    invoke-virtual/range {v37 .. v40}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 3677
    :cond_1a
    sget-object v36, Lcom/htc/server/WirelessDisplayService;->mWifiScanbyFingerGesture:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v37, 0x0

    invoke-virtual/range {v36 .. v37}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/util/Hashtable;->size()I

    move-result v36

    if-lez v36, :cond_0

    sget-object v36, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    if-nez v36, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_0

    .line 3679
    const-string v36, "WirelessDisplayService"

    const-string v37, " wifi connected and dongle found, start wivu"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3680
    sget-object v36, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v37, 0x2

    invoke-virtual/range {v36 .. v37}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 3681
    .local v11, getIp:Landroid/os/Message;
    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 3671
    .end local v11           #getIp:Landroid/os/Message;
    :cond_1b
    const-string v36, "WirelessDisplayService"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "wfdservice: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    sget-object v38, Lcom/htc/server/WirelessDisplayService;->wfdservice_usable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual/range {v38 .. v38}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ", finger gesture: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    sget-object v38, Lcom/htc/server/WirelessDisplayService;->finger_gesture_enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual/range {v38 .. v38}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ", don\'t sendBroadcast"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 3654
    .end local v16           #intent:Landroid/content/Intent;
    .restart local v3       #aph:Ljava/lang/String;
    .restart local v4       #apm:Ljava/lang/String;
    .restart local v5       #bssid:Ljava/lang/String;
    .restart local v8       #dongle:Lcom/htc/service/DongleInfo;
    .restart local v13       #i$:Ljava/util/Iterator;
    .restart local v14       #ieInfo:Ljava/lang/String;
    .restart local v15       #ii:I
    .restart local v17       #isConnectable:Z
    .restart local v19       #key:Ljava/lang/String;
    .restart local v23       #macs:Ljava/util/Enumeration;
    .restart local v26       #result:Landroid/net/wifi/ScanResult;
    .restart local v30       #ssid:Ljava/lang/String;
    .restart local v31       #staBssid:Ljava/lang/String;
    .restart local v32       #state:Ljava/lang/String;
    .restart local v33       #status:I
    .restart local v34       #subStr:Ljava/lang/String;
    .restart local v35       #version:Ljava/lang/String;
    :catch_1
    move-exception v10

    move-object v7, v8

    .end local v8           #dongle:Lcom/htc/service/DongleInfo;
    .restart local v7       #dongle:Lcom/htc/service/DongleInfo;
    goto/16 :goto_a

    .end local v7           #dongle:Lcom/htc/service/DongleInfo;
    .restart local v8       #dongle:Lcom/htc/service/DongleInfo;
    :cond_1c
    move-object v7, v8

    .end local v8           #dongle:Lcom/htc/service/DongleInfo;
    .restart local v7       #dongle:Lcom/htc/service/DongleInfo;
    goto/16 :goto_7

    :cond_1d
    move-object v8, v7

    .end local v7           #dongle:Lcom/htc/service/DongleInfo;
    .restart local v8       #dongle:Lcom/htc/service/DongleInfo;
    goto/16 :goto_6
.end method

.method private fallBackFromAppPause()V
    .locals 7

    .prologue
    const/16 v6, 0x29

    .line 4624
    iget-object v3, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 4630
    .local v0, curState:I
    const/4 v3, 0x7

    if-ne v0, v3, :cond_0

    .line 4631
    const-string v3, "WirelessDisplayService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fallBackFromAppPause: curState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", wivu pre_request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/server/WirelessDisplayService;->pre_request:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4632
    sget-object v3, Lcom/htc/server/WirelessDisplayService;->pre_request:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/16 v4, 0x16

    if-ne v3, v4, :cond_1

    .line 4633
    sget-object v3, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v4, 0x2a

    const/16 v5, 0x2c

    invoke-virtual {v3, v6, v4, v5}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 4634
    .local v2, msgResumeMirror:Landroid/os/Message;
    sget-object v3, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v3, v6}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 4635
    sget-object v3, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v3, v2}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 4641
    .end local v2           #msgResumeMirror:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 4637
    :cond_1
    sget-object v3, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v4, 0x1f

    const/16 v5, 0x21

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 4638
    .local v1, msgPlug:Landroid/os/Message;
    sget-object v3, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v3, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private getAnimationScaleValue(I)F
    .locals 2
    .parameter "which"

    .prologue
    .line 5629
    const/4 v0, 0x0

    .line 5631
    .local v0, scale:F
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->getAnimationScale(I)F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 5634
    :goto_0
    return v0

    .line 5632
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getCurrentNetwork()Landroid/net/wifi/WifiConfiguration;
    .locals 9

    .prologue
    .line 5269
    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    .line 5270
    .local v5, wifiInfo:Landroid/net/wifi/WifiInfo;
    const/4 v1, 0x0

    .line 5271
    .local v1, currentNetwork:Landroid/net/wifi/WifiConfiguration;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 5272
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    .line 5273
    .local v3, netid:I
    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .line 5274
    .local v4, networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v4, :cond_1

    .line 5275
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 5276
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v6, v3, :cond_0

    .line 5277
    move-object v1, v0

    .line 5278
    const-string v6, "WirelessDisplayService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current network, ssid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", network ID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", limited = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->limited:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5284
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #netid:I
    .end local v4           #networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_1
    return-object v1
.end method

.method private getDialogResult()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 5445
    const-string v1, "WirelessDisplayService"

    const-string v2, "getDialogResult"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5446
    iget v1, p0, Lcom/htc/server/WirelessDisplayService;->dialogResult:I

    if-ne v1, v0, :cond_0

    .line 5449
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getEnvironmentDongleState()I
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 3309
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->size()I

    move-result v3

    .line 3310
    .local v3, size:I
    if-nez v3, :cond_0

    .line 3333
    :goto_0
    return v4

    .line 3312
    :cond_0
    invoke-virtual {p0}, Lcom/htc/server/WirelessDisplayService;->getDefaultDongle()Lcom/htc/service/DongleInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    move v4, v5

    .line 3313
    goto :goto_0

    .line 3314
    :cond_1
    invoke-virtual {p0}, Lcom/htc/server/WirelessDisplayService;->getunConfigDongleList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v5, :cond_2

    move v4, v6

    .line 3315
    goto :goto_0

    .line 3316
    :cond_2
    if-ne v3, v5, :cond_4

    .line 3318
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/server/WirelessDisplayService;->getDiscoveryDongleList()Ljava/util/List;

    move-result-object v2

    .line 3319
    .local v2, infos:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 3320
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/DongleInfo;

    .line 3321
    .local v0, dongle:Lcom/htc/service/DongleInfo;
    if-eqz v0, :cond_3

    iget v4, v0, Lcom/htc/service/DongleInfo;->status:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v4, v6, :cond_3

    .line 3322
    const/4 v4, 0x4

    goto :goto_0

    .line 3325
    .end local v0           #dongle:Lcom/htc/service/DongleInfo;
    .end local v2           #infos:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    :catch_0
    move-exception v1

    .line 3326
    .local v1, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 3333
    .end local v1           #ex:Ljava/lang/NullPointerException;
    :cond_3
    :goto_1
    const/4 v4, -0x1

    goto :goto_0

    .line 3327
    :catch_1
    move-exception v1

    .line 3328
    .local v1, ex:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_1

    .line 3330
    .end local v1           #ex:Ljava/lang/IndexOutOfBoundsException;
    :cond_4
    if-le v3, v5, :cond_3

    .line 3331
    const/4 v4, 0x3

    goto :goto_0
.end method

.method private getUsedDongleList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/service/DongleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4887
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4888
    .local v2, usedDongleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    monitor-enter v4

    .line 4889
    :try_start_0
    iget-object v3, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 4890
    .local v1, macs:Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4891
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4892
    .local v0, mac:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/server/WirelessDisplayService;->mUsedDongleCache:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4893
    iget-object v3, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4896
    .end local v0           #mac:Ljava/lang/String;
    .end local v1           #macs:Ljava/util/Enumeration;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #macs:Ljava/util/Enumeration;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4897
    const-string v3, "WirelessDisplayService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUsedDongleList(), size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4898
    return-object v2
.end method

.method private gotoPauseState()V
    .locals 5

    .prologue
    .line 6390
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_1

    .line 6391
    const-string v2, "WirelessDisplayService"

    const-string v3, "gotoPauseState() start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6393
    :try_start_0
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;

    const-string v3, "4.5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;

    const-string v3, "4.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6394
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/htc/server/WirelessDisplayService;->startStopVideo(Z)V

    .line 6398
    :goto_0
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->setRTPPause()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6408
    :cond_1
    :goto_1
    const-string v2, "WirelessDisplayService"

    const-string v3, "gotoPauseState() end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6409
    return-void

    .line 6396
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->requestRTPWriterPause(I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 6399
    :catch_0
    move-exception v1

    .line 6400
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v2, "WirelessDisplayService"

    const-string v3, "mRecorder.pause(null - Runtime exception caught"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 6402
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 6403
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WirelessDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception caught"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 3447
    new-instance v0, Lcom/htc/server/WirelessDisplayService$21;

    const-string v1, "WirelessDisplayService"

    invoke-direct {v0, p0, v1}, Lcom/htc/server/WirelessDisplayService$21;-><init>(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mThread:Landroid/os/HandlerThread;

    .line 3454
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3456
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mThread:Landroid/os/HandlerThread;

    monitor-enter v1

    .line 3457
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/server/WirelessDisplayService;->mInitComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 3459
    :try_start_1
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3460
    :catch_0
    move-exception v0

    goto :goto_0

    .line 3464
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 3465
    return-void

    .line 3464
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private initInThread()V
    .locals 2

    .prologue
    .line 3468
    new-instance v0, Lcom/htc/server/WirelessDisplayService$H;

    invoke-direct {v0, p0}, Lcom/htc/server/WirelessDisplayService$H;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    .line 3470
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mThread:Landroid/os/HandlerThread;

    monitor-enter v1

    .line 3471
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/server/WirelessDisplayService;->mInitComplete:Z

    .line 3472
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 3473
    monitor-exit v1

    .line 3474
    return-void

    .line 3473
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isNewSwipeExist()Z
    .locals 1

    .prologue
    .line 3140
    const/4 v0, 0x1

    return v0
.end method

.method private mirrorOnOffDirection(II)I
    .locals 4
    .parameter "absoluteDirection"
    .parameter "relativeDirection"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 3342
    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_2

    :cond_0
    move p2, p1

    .line 3352
    .end local p2
    :cond_1
    :goto_0
    return p2

    .line 3344
    .restart local p2
    :cond_2
    if-eq p2, v0, :cond_1

    if-eq p2, v1, :cond_1

    .line 3346
    if-ne p1, v2, :cond_3

    if-ne p2, v2, :cond_3

    move p2, v0

    .line 3347
    goto :goto_0

    .line 3348
    :cond_3
    if-ne p1, v3, :cond_4

    if-ne p2, v3, :cond_4

    move p2, v1

    .line 3349
    goto :goto_0

    .line 3351
    :cond_4
    const-string v0, "WirelessDisplayService"

    const-string v2, "should not be here,intent value Fail"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v1

    .line 3352
    goto :goto_0
.end method

.method private notifyWHDMI()V
    .locals 3

    .prologue
    .line 4179
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.MIRROR_DONGLE_LIST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4180
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4181
    const-string v1, "WirelessDisplayService"

    const-string v2, "Sending intent: MIRROR_DONGLE_LIST_CHANGED_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4182
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4184
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 4185
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4186
    const-string v1, "WirelessDisplayService"

    const-string v2, "wifi scan fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4188
    :cond_0
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->updateNotification()V

    .line 4189
    return-void
.end method

.method private static onCallbackEvent(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4454
    const-string v0, "WirelessDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallbackEvent()..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4455
    sget-object v1, Lcom/htc/server/WirelessDisplayService;->synchronize_WivuThread_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 4456
    :try_start_0
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    if-eqz v0, :cond_0

    .line 4457
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    invoke-virtual {v0, p0}, Lcom/htc/server/WirelessDisplayService$WivuThread;->transactEvent(Ljava/lang/String;)V

    .line 4459
    :cond_0
    monitor-exit v1

    .line 4460
    return-void

    .line 4459
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private readConfigFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "filePath"

    .prologue
    .line 4267
    const-string v9, "WirelessDisplayService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "readConfigFile: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4268
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 4269
    .local v8, result:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 4270
    .local v2, in:Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 4271
    .local v6, reader:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 4274
    .local v4, line:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9

    .line 4275
    .end local v2           #in:Ljava/io/FileInputStream;
    .local v3, in:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 4276
    .end local v6           #reader:Ljava/io/BufferedReader;
    .local v7, reader:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 4277
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mUsedDongleList_FilePath:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 4278
    if-eqz v4, :cond_0

    .line 4279
    const/4 v9, 0x0

    const/16 v10, 0x11

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4280
    .local v0, dongleStaBssid:Ljava/lang/String;
    const/16 v9, 0x12

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 4281
    .local v5, pattern:Ljava/lang/String;
    const-string v9, "WirelessDisplayService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Read file: dongleStaBssid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", pattern: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4282
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mUsedDongleCache:Ljava/util/Hashtable;

    invoke-virtual {v9, v0, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 4293
    .end local v0           #dongleStaBssid:Ljava/lang/String;
    .end local v5           #pattern:Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v6, v7

    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    move-object v2, v3

    .line 4294
    .end local v3           #in:Ljava/io/FileInputStream;
    .local v1, e:Ljava/io/FileNotFoundException;
    .restart local v2       #in:Ljava/io/FileInputStream;
    :goto_1
    :try_start_3
    const-string v9, "WirelessDisplayService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FileNotFoundException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4298
    if-eqz v2, :cond_1

    .line 4300
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 4305
    :cond_1
    :goto_2
    if-eqz v6, :cond_2

    .line 4307
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 4313
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_2
    :goto_3
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 4285
    .end local v2           #in:Ljava/io/FileInputStream;
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/FileInputStream;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :cond_3
    :try_start_6
    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4286
    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4287
    const-string v9, "WirelessDisplayService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Reading config is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 4295
    :catch_1
    move-exception v1

    move-object v6, v7

    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    move-object v2, v3

    .line 4296
    .end local v3           #in:Ljava/io/FileInputStream;
    .local v1, e:Ljava/io/IOException;
    .restart local v2       #in:Ljava/io/FileInputStream;
    :goto_4
    :try_start_7
    const-string v9, "WirelessDisplayService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4298
    if-eqz v2, :cond_4

    .line 4300
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 4305
    :cond_4
    :goto_5
    if-eqz v6, :cond_2

    .line 4307
    :try_start_9
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_3

    .line 4308
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v9

    goto :goto_3

    .line 4290
    .end local v2           #in:Ljava/io/FileInputStream;
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/FileInputStream;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :cond_5
    :try_start_a
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mUsedDongleList_FilePath:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 4291
    const-string v9, "Success"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 4298
    :cond_6
    if-eqz v3, :cond_7

    .line 4300
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 4305
    :cond_7
    :goto_6
    if-eqz v7, :cond_8

    .line 4307
    :try_start_c
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    :cond_8
    :goto_7
    move-object v6, v7

    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    move-object v2, v3

    .line 4312
    .end local v3           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    goto :goto_3

    .line 4298
    :catchall_0
    move-exception v9

    :goto_8
    if-eqz v2, :cond_9

    .line 4300
    :try_start_d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    .line 4305
    :cond_9
    :goto_9
    if-eqz v6, :cond_a

    .line 4307
    :try_start_e
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    .line 4298
    :cond_a
    :goto_a
    throw v9

    .line 4301
    :catch_3
    move-exception v10

    goto :goto_9

    .line 4308
    :catch_4
    move-exception v10

    goto :goto_a

    .line 4301
    .local v1, e:Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v9

    goto/16 :goto_2

    .local v1, e:Ljava/io/IOException;
    :catch_6
    move-exception v9

    goto :goto_5

    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #in:Ljava/io/FileInputStream;
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/FileInputStream;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :catch_7
    move-exception v9

    goto :goto_6

    .line 4308
    :catch_8
    move-exception v9

    goto :goto_7

    .line 4298
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    goto :goto_8

    .end local v2           #in:Ljava/io/FileInputStream;
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/FileInputStream;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :catchall_2
    move-exception v9

    move-object v6, v7

    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    goto :goto_8

    .line 4295
    :catch_9
    move-exception v1

    goto :goto_4

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    :catch_a
    move-exception v1

    move-object v2, v3

    .end local v3           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    goto :goto_4

    .line 4293
    :catch_b
    move-exception v1

    goto/16 :goto_1

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    :catch_c
    move-exception v1

    move-object v2, v3

    .end local v3           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method private releaseMediaRecorder()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 6361
    const-string v2, "WirelessDisplayService"

    const-string v3, "releaseMediaRecorder() start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6365
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_1

    .line 6366
    const-string v2, "WirelessDisplayService"

    const-string v3, "releaseMediaRecorder! Recorder != null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6368
    :try_start_0
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;

    const-string v3, "4.5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;

    const-string v3, "4.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6369
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/htc/server/WirelessDisplayService;->startStopVideo(Z)V

    .line 6373
    :goto_0
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 6374
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 6375
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->reset()V

    .line 6376
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6382
    :goto_1
    iput-object v5, p0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    .line 6384
    :cond_1
    return-void

    .line 6371
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->requestRTPWriterPause(I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 6377
    :catch_0
    move-exception v1

    .line 6378
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v2, "WirelessDisplayService"

    const-string v3, "Runtime exception caught"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 6379
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 6380
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WirelessDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception caught"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private saveLimitedApInfo()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 5256
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 5257
    .local v1, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5258
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->getCurrentNetwork()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 5259
    .local v0, network:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->limited:I

    if-eq v2, v3, :cond_0

    .line 5260
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->limited:I

    .line 5261
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 5262
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 5263
    const-string v2, "WirelessDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CT1->CT2, Save limited AP info, ssid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5266
    .end local v0           #network:Landroid/net/wifi/WifiConfiguration;
    :cond_0
    return-void
.end method

.method private setDialogResult(I)V
    .locals 3
    .parameter "userChoose"

    .prologue
    .line 5453
    const-string v0, "WirelessDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDialogResult, userChoose: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5454
    iput p1, p0, Lcom/htc/server/WirelessDisplayService;->dialogResult:I

    .line 5455
    return-void
.end method

.method private setIPandPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "ip"
    .parameter "audio"
    .parameter "video"

    .prologue
    .line 4466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;

    .line 4467
    return-void
.end method

.method private setMirrorModeState(II)V
    .locals 22
    .parameter "mirrorState"
    .parameter "err"

    .prologue
    .line 3687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v13

    .line 3688
    .local v13, previousState:I
    const-string v17, "WirelessDisplayService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "setMirrorModeState:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " err="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", isWifiDFS: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/htc/server/WirelessDisplayService;->isWifiDFS:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3689
    move/from16 v0, p1

    if-ne v13, v0, :cond_1

    .line 3928
    :cond_0
    :goto_0
    return-void

    .line 3691
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3692
    sget-object v17, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v18, 0x14

    invoke-virtual/range {v17 .. v18}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 3693
    sget-object v17, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v18, 0x130

    invoke-virtual/range {v17 .. v18}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 3694
    sget-object v17, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    sget-object v18, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v19, 0x130

    invoke-virtual/range {v18 .. v19}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 3695
    new-instance v7, Landroid/content/Intent;

    const-string v17, "com.htc.MIRROR_DISPLAY_STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3696
    .local v7, intent:Landroid/content/Intent;
    const/high16 v17, 0x800

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v15

    .line 3708
    .local v15, screenOn:Z
    const/4 v10, 0x0

    .line 3709
    .local v10, needPinCodeAuthenication:Z
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/WirelessDisplayService;->cancelTurnOffConcurrentHotspot()V

    .line 3710
    const/16 v17, 0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_2

    const/16 v17, 0x3

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 3711
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/WirelessDisplayService;->setToDefault_musicKeepPollingCount()V

    .line 3712
    sget-object v17, Lcom/htc/server/WirelessDisplayService;->isMusicAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3713
    sget-object v17, Lcom/htc/server/WirelessDisplayService;->isFingerTrigger:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3714
    const/16 v17, 0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_f

    .line 3715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3716
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService;->setPowerCharingLimit(Z)V

    .line 3717
    sget-object v17, Lcom/htc/server/WirelessDisplayService;->isNeedStopMMDelayTimer:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "4.5"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "4.0"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 3720
    :cond_3
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService;->startPatternLockFakeMirror(Z)V

    .line 3721
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService;->startPatternLockStopAudio(Z)V

    .line 3731
    :cond_4
    :goto_1
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->isResume:Z

    .line 3732
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->unPauseForLite:I

    .line 3736
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->app_req_status:Ljava/lang/Boolean;

    .line 3738
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/server/WirelessDisplayService;->isNVCPU:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 3739
    const-string v17, "WirelessDisplayService"

    const-string v18, "NV workaround: Resume NV Eack when leaving Wireless Display"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3740
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Lcom/htc/server/WirelessDisplayService;->wivuNVEackState(I)I

    .line 3745
    :cond_5
    if-nez v15, :cond_6

    .line 3746
    const-string v17, "WirelessDisplayService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Screen On: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3748
    sget-object v17, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v18, 0x1f

    const/16 v19, 0x28

    const/16 v20, -0x1

    invoke-virtual/range {v17 .. v20}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    .line 3749
    .local v9, msg_leave:Landroid/os/Message;
    sget-object v17, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 3750
    const-string v17, "WirelessDisplayService"

    const-string v18, "SCREEN OFF in Mirror Disabled State: REQ_JOIN_GROUP - FALSE"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3759
    .end local v9           #msg_leave:Landroid/os/Message;
    :cond_6
    const-string v17, "sys.wfd.autoTestFlag"

    const-string v18, ""

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    sput-object v17, Lcom/htc/server/WirelessDisplayService;->autoTestFlag:Ljava/lang/String;

    .line 3760
    sget-object v17, Lcom/htc/server/WirelessDisplayService;->autoTestFlag:Ljava/lang/String;

    const-string v18, "reconnect"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 3761
    sget-object v17, Lcom/htc/server/WirelessDisplayService;->isFWUpgrading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v17

    if-nez v17, :cond_7

    .line 3762
    const-wide/16 v17, 0x7530

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService;->turnOffConcurrentHotspot(J)V

    .line 3880
    :cond_7
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/WirelessDisplayService;->updateNotification()V

    .line 3886
    :cond_8
    const/16 v17, 0x3

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_9

    const/16 v17, 0x7

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_9

    const/16 v17, 0x8

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_9

    const/16 v17, 0x2

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_23

    .line 3887
    :cond_9
    const-string v17, "WirelessDisplayService"

    const-string v18, "Disable wifi background/roming scanning during Mirror Mode."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/net/wifi/WifiManager;->setWifiDisplayUnscan(Z)Z

    .line 3890
    if-nez v15, :cond_b

    .line 3891
    const-string v17, "WirelessDisplayService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Screen On: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3893
    const/16 v17, 0x8

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_a

    const/16 v17, 0x2

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 3894
    :cond_a
    sget-object v17, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v18, 0x1f

    const/16 v19, 0x28

    const/16 v20, 0x1

    invoke-virtual/range {v17 .. v20}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    .line 3895
    .local v8, msg_join:Landroid/os/Message;
    sget-object v17, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 3896
    const-string v17, "WirelessDisplayService"

    const-string v18, "in Mirror Enabling/Dongle Wait State when SCREEN_OFF: REQ_JOIN_GROUP - TRUE"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3916
    .end local v8           #msg_join:Landroid/os/Message;
    :cond_b
    :goto_3
    const-string v17, "mirror_display_state"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3917
    const-string v17, "mirror_display_status"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3918
    const-string v17, "mirror_error_message"

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3924
    if-eqz v10, :cond_0

    .line 3925
    new-instance v14, Landroid/content/Intent;

    const-string v17, "com.htc.intent.action.INTENT_NOTIFY_PINCODE_AUTHENTICATION"

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3926
    .local v14, sart_PinCode_Authenication:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3722
    .end local v14           #sart_PinCode_Authenication:Landroid/content/Intent;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 3724
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/media/MediaRecorder;->requestRTPWriterPause(I)V

    .line 3725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    invoke-virtual/range {v17 .. v18}, Landroid/media/MediaRecorder;->requestRTPWriterPause(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 3726
    :catch_0
    move-exception v5

    .line 3727
    .local v5, e:Ljava/lang/Exception;
    const-string v17, "WirelessDisplayService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "exception caught"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3765
    .end local v5           #e:Ljava/lang/Exception;
    :cond_d
    sget-object v17, Lcom/htc/server/WirelessDisplayService;->isFWUpgrading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v17

    if-nez v17, :cond_e

    .line 3766
    const-wide/32 v17, 0x927c0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService;->turnOffConcurrentHotspot(J)V

    goto/16 :goto_2

    .line 3768
    :cond_e
    const-wide/32 v17, 0x124f80

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService;->turnOffConcurrentHotspot(J)V

    .line 3769
    const-string v17, "WirelessDisplayService"

    const-string v18, "Executing Dongle FW upgrade, Turn off hotspot timer is 20 mins"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 3775
    :cond_f
    const/4 v3, 0x0

    .line 3776
    .local v3, curDongleInfo:Lcom/htc/service/DongleInfo;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_12

    .line 3777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Lcom/htc/service/DongleInfo;

    move-object v3, v0

    .line 3778
    const-string v4, ""

    .line 3779
    .local v4, dongleIP:Ljava/lang/String;
    if-eqz v3, :cond_10

    .line 3780
    iget-object v4, v3, Lcom/htc/service/DongleInfo;->inetAddress:Ljava/lang/String;

    .line 3782
    :cond_10
    if-eqz v3, :cond_12

    if-eqz v4, :cond_11

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_12

    .line 3783
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v3, Lcom/htc/service/DongleInfo;->inetAddress:Ljava/lang/String;

    .line 3784
    const-string v17, "WirelessDisplayService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "IP not sync, update CurentDongle IP:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v3, Lcom/htc/service/DongleInfo;->inetAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3788
    .end local v4           #dongleIP:Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/server/WirelessDisplayService;->isResume:Z

    move/from16 v17, v0

    if-nez v17, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/server/WirelessDisplayService;->onlySupportDLNA:Z

    move/from16 v17, v0

    if-eqz v17, :cond_14

    .line 3789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "4.5"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "4.0"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19

    .line 3790
    :cond_13
    new-instance v12, Landroid/content/Intent;

    const-string v17, "com.htc.intent.action.WIRELESS_NOTIFY_MIRROR_CONNECTED"

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3791
    .local v12, notify_user_mirror_on:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3799
    .end local v12           #notify_user_mirror_on:Landroid/content/Intent;
    :cond_14
    :goto_4
    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/server/WirelessDisplayService;->isResume:Z

    move/from16 v17, v0

    if-nez v17, :cond_15

    .line 3800
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/server/WirelessDisplayService;->checkDongleFWUpgrade(Lcom/htc/service/DongleInfo;)Z

    move-result v17

    if-nez v17, :cond_22

    .line 3801
    iget v0, v3, Lcom/htc/service/DongleInfo;->status:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b

    .line 3802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mUsedDongleCache:Ljava/util/Hashtable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_15

    .line 3803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "0000"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService;->setDonglePattern(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 3850
    :cond_15
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/server/WirelessDisplayService;->isResume:Z

    move/from16 v17, v0

    if-nez v17, :cond_16

    .line 3851
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService;->setWifiNetworkLimit(Z)V

    .line 3852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "4.5"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "4.0"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_16

    .line 3853
    sget-object v17, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    sget-object v18, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v19, 0xc9

    const/16 v20, 0x4

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 3854
    sget-object v17, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    sget-object v18, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v19, 0x130

    invoke-virtual/range {v18 .. v19}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    const-wide/16 v19, 0xbb8

    invoke-virtual/range {v17 .. v20}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3857
    :cond_16
    const-string v17, "isResume"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/server/WirelessDisplayService;->isResume:Z

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3859
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService;->setPowerCharingLimit(Z)V

    .line 3860
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->isResume:Z

    .line 3861
    sget-object v17, Lcom/htc/server/WirelessDisplayService;->isNeedStopMMDelayTimer:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v17

    if-eqz v17, :cond_17

    .line 3862
    const-string v17, "WirelessDisplayService"

    const-string v18, "Set up stop delay again due to rotate already finish"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3863
    sget-object v17, Lcom/htc/server/WirelessDisplayService;->isNeedStopMMDelayTimer:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3864
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService;->requestDelayTimerStop(Z)V

    .line 3868
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/server/WirelessDisplayService;->isNVCPU:Z

    move/from16 v17, v0

    if-eqz v17, :cond_18

    .line 3869
    const-string v17, "WirelessDisplayService"

    const-string v18, "NV workaround: Disable NV Eack during Wireless Display"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3870
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/htc/server/WirelessDisplayService;->wivuNVEackState(I)I

    .line 3873
    :cond_18
    const-string v17, "WirelessDisplayService"

    const-string v18, "Pre Load DLNA Services for Mirror Mode Enabled"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3875
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    new-instance v18, Landroid/content/Intent;

    const-string v19, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 3876
    :catch_1
    move-exception v16

    .line 3877
    .local v16, se:Ljava/lang/SecurityException;
    const-string v17, "WirelessDisplayService"

    const-string v18, "Pre Load DLNA Services occur SecurityException "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 3793
    .end local v16           #se:Ljava/lang/SecurityException;
    :cond_19
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mMirrorConnectedDialog:Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;

    move-object/from16 v17, v0

    if-nez v17, :cond_1a

    .line 3794
    new-instance v17, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/server/WirelessDisplayService;->mSupportKDDI:Z

    move/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;-><init>(Landroid/content/Context;Z)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mMirrorConnectedDialog:Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;

    .line 3795
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mMirrorConnectedDialog:Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->show()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_4

    .line 3847
    :catch_2
    move-exception v6

    .line 3848
    .local v6, ex:Ljava/lang/Exception;
    const-string v17, "WirelessDisplayService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 3805
    .end local v6           #ex:Ljava/lang/Exception;
    :cond_1b
    :try_start_4
    iget v0, v3, Lcom/htc/service/DongleInfo;->status:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_15

    .line 3806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mUsedDongleCache:Ljava/util/Hashtable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1d

    .line 3807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "4.5"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "4.0"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_21

    .line 3808
    :cond_1c
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService;->startPatternLockStopAudio(Z)V

    .line 3809
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService;->startPatternLockFakeMirror(Z)V

    .line 3819
    :cond_1d
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "4.5"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "4.0"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1f

    .line 3820
    sget-object v17, Lcom/htc/server/WirelessDisplayService;->isWifiDFS:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v17

    if-eqz v17, :cond_1f

    .line 3821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mWifiDFSChannelDialog:Lcom/htc/server/medialinkdialog/WifiDFSChannelDialog;

    move-object/from16 v17, v0

    if-nez v17, :cond_1e

    .line 3822
    new-instance v17, Lcom/htc/server/medialinkdialog/WifiDFSChannelDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/server/WirelessDisplayService;->mSupportKDDI:Z

    move/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Lcom/htc/server/medialinkdialog/WifiDFSChannelDialog;-><init>(Landroid/content/Context;Z)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mWifiDFSChannelDialog:Lcom/htc/server/medialinkdialog/WifiDFSChannelDialog;

    .line 3823
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mWifiDFSChannelDialog:Lcom/htc/server/medialinkdialog/WifiDFSChannelDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/server/medialinkdialog/WifiDFSChannelDialog;->show()V

    .line 3827
    :cond_1f
    sget-object v17, Lcom/htc/server/WirelessDisplayService;->wfdservice_usable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v17

    if-nez v17, :cond_20

    .line 3828
    sget-object v17, Lcom/htc/server/WirelessDisplayService;->isFingerTrigger:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3833
    :cond_20
    const/4 v10, 0x1

    goto/16 :goto_5

    .line 3810
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v17, v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v17, :cond_1d

    .line 3812
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/media/MediaRecorder;->requestRTPWriterPause(I)V

    .line 3813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/media/MediaRecorder;->requestRTPWriterPause(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_6

    .line 3814
    :catch_3
    move-exception v5

    .line 3815
    .restart local v5       #e:Ljava/lang/Exception;
    :try_start_6
    const-string v17, "WirelessDisplayService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "exception caught"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 3841
    .end local v5           #e:Ljava/lang/Exception;
    :cond_22
    new-instance v11, Landroid/content/Intent;

    const-string v17, "com.htc.wifidisplay.intent.DONGLE_FIRMWARE_UPDATE"

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3842
    .local v11, notifyFWupfrade:Landroid/content/Intent;
    const-string v17, "com.htc.wifidisplay.intent.extra.DONGLE_IP_ADDR"

    iget-object v0, v3, Lcom/htc/service/DongleInfo;->inetAddress:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3843
    const-string v17, "com.htc.wifidisplay.intent.extra.DONGLE_VERSION"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/server/WirelessDisplayService;->transferDongleVersion(Lcom/htc/service/DongleInfo;)D

    move-result-wide v18

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v11, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 3844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_5

    .line 3901
    .end local v3           #curDongleInfo:Lcom/htc/service/DongleInfo;
    .end local v11           #notifyFWupfrade:Landroid/content/Intent;
    :cond_23
    const-string v17, "WirelessDisplayService"

    const-string v18, "Resume wifi background/roming scanning during Mirror Mode."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/net/wifi/WifiManager;->setWifiDisplayUnscan(Z)Z

    goto/16 :goto_3
.end method

.method private setPowerCharingLimit(Z)V
    .locals 8
    .parameter "enable"

    .prologue
    .line 5638
    const-string v2, "sys/class/power_supply/battery/medialink"

    .line 5639
    .local v2, filePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5640
    .local v1, file:Ljava/io/File;
    const/4 v3, 0x0

    .line 5642
    .local v3, writer:Ljava/io/FileWriter;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 5643
    const-string v5, "WirelessDisplayService"

    const-string v6, "PowerCharingLimit Not Exist, Return it"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5659
    :goto_0
    return-void

    .line 5646
    :cond_0
    new-instance v4, Ljava/io/FileWriter;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5647
    .end local v3           #writer:Ljava/io/FileWriter;
    .local v4, writer:Ljava/io/FileWriter;
    if-eqz p1, :cond_1

    .line 5648
    :try_start_1
    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 5652
    :goto_1
    invoke-virtual {v4}, Ljava/io/FileWriter;->flush()V

    .line 5653
    const-string v5, "WirelessDisplayService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "write setPowerCharingLimit:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 5658
    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    goto :goto_0

    .line 5650
    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v4       #writer:Ljava/io/FileWriter;
    :cond_1
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 5654
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 5655
    .end local v4           #writer:Ljava/io/FileWriter;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v3       #writer:Ljava/io/FileWriter;
    :goto_2
    const-string v5, "WirelessDisplayService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FileNotFoundException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5656
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 5657
    .local v0, e:Ljava/io/IOException;
    :goto_3
    const-string v5, "WirelessDisplayService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5656
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v4       #writer:Ljava/io/FileWriter;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    goto :goto_3

    .line 5654
    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method private setToDefault_musicKeepPollingCount()V
    .locals 1

    .prologue
    .line 3162
    const/16 v0, 0xf

    iput v0, p0, Lcom/htc/server/WirelessDisplayService;->musicKeepPollingCount:I

    .line 3163
    return-void
.end method

.method private startDisplayRecorder(Ljava/lang/String;)I
    .locals 25
    .parameter "ipAndPort"

    .prologue
    .line 6156
    const-string v21, "WirelessDisplayService"

    const-string v22, "startDisplayRecorder - start"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6158
    const/16 v21, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService;->getAnimationScaleValue(I)F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->mWindowAnimationScale:F

    .line 6159
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService;->getAnimationScaleValue(I)F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->mTransitionAnimationScale:F

    .line 6160
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService;->getAnimationScaleValue(I)F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->mAnimationDurationScale:F

    .line 6162
    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService;->writeAnimationScaleOption(ILjava/lang/Object;)V

    .line 6163
    const/16 v21, 0x1

    const-wide/16 v22, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService;->writeAnimationScaleOption(ILjava/lang/Object;)V

    .line 6164
    const/16 v21, 0x2

    const-wide/16 v22, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService;->writeAnimationScaleOption(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 6186
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    if-nez v21, :cond_7

    .line 6187
    new-instance v21, Landroid/media/MediaRecorder;

    invoke-direct/range {v21 .. v21}, Landroid/media/MediaRecorder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    .line 6188
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->mRecording:Z

    .line 6193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "4.5"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "4.0"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 6194
    :cond_0
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService;->startStopVideo(Z)V

    .line 6204
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/server/WirelessDisplayService;->onlySupportDLNA:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 6205
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->mInterval:F

    .line 6206
    const v21, 0x989680

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->mBitrate:I

    .line 6210
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    const/16 v22, 0xa

    invoke-virtual/range {v21 .. v22}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 6211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    invoke-virtual/range {v21 .. v22}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 6212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    const/16 v22, 0xb

    invoke-virtual/range {v21 .. v22}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 6213
    const-string v21, "WirelessDisplayService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "IP/Port is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6214
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":0"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 6215
    .local v18, tmp:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setRTPParameters(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 6235
    const-string v21, "ro.board.platform"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 6236
    .local v9, device:Ljava/lang/String;
    const-string v21, "WirelessDisplayService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Platform is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6239
    const v3, 0xfa00

    .line 6240
    .local v3, audBitrate:I
    const/16 v6, 0x1f40

    .line 6241
    .local v6, audSamplerate:I
    const/4 v4, 0x1

    .line 6242
    .local v4, audChannel:I
    const/16 v5, 0x8

    .line 6243
    .local v5, audEnc:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/server/WirelessDisplayService;->mSupportAAC:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    .line 6244
    const-string v21, "tegra"

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 6245
    const v6, 0xbb80

    .line 6249
    :cond_2
    :goto_2
    const/4 v4, 0x2

    .line 6250
    const/4 v5, 0x3

    .line 6252
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 6253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 6254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 6255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 6258
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/server/WirelessDisplayService;->mBitrate:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 6259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/server/WirelessDisplayService;->mInterval:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/media/MediaRecorder;->setVideoIFrameInterval(F)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 6264
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/server/WirelessDisplayService;->mFrameRate:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 6266
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    .line 6267
    .local v10, display:Landroid/view/Display;
    new-instance v16, Landroid/graphics/Point;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Point;-><init>()V

    .line 6268
    .local v16, outSize:Landroid/graphics/Point;
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 6269
    const-string v21, "WirelessDisplayService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "RealScreenSize: width = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "height = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6270
    const/16 v20, 0x3c0

    .line 6271
    .local v20, vdoWidth:I
    const/16 v19, 0x220

    .line 6272
    .local v19, vdoHeight:I
    const v21, 0x7f800

    move/from16 v0, v21

    int-to-long v7, v0

    .line 6273
    .local v7, defaultRes:J
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    mul-int v21, v21, v22

    move/from16 v0, v21

    int-to-long v11, v0

    .line 6286
    .local v11, displayRes:J
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_a

    .line 6287
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    .line 6288
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    .line 6298
    :goto_4
    const/16 v21, 0x2d0

    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_4

    .line 6299
    const/16 v20, 0x500

    .line 6300
    const/16 v19, 0x2d0

    .line 6303
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/server/WirelessDisplayService;->isQCT:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 6304
    rem-int/lit8 v21, v19, 0x20

    if-eqz v21, :cond_5

    .line 6305
    const-string v21, "WirelessDisplayService"

    const-string v22, "QCT platform, modify solution"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6306
    div-int/lit8 v21, v19, 0x20

    add-int/lit8 v21, v21, 0x1

    mul-int/lit8 v19, v21, 0x20

    .line 6311
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/server/WirelessDisplayService;->onlySupportDLNA:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 6312
    const/16 v20, 0x320

    .line 6313
    const/16 v19, 0x1e0

    .line 6315
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 6316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 6319
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/media/MediaRecorder;->prepare(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 6331
    :try_start_4
    sget-object v21, Lcom/htc/server/WirelessDisplayService;->preload_DLNA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v21

    if-eqz v21, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/server/WirelessDisplayService;->isResume:Z

    move/from16 v21, v0

    if-nez v21, :cond_b

    .line 6332
    const-string v21, "WirelessDisplayService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Need Delay Mirror Media, DLNA: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/htc/server/WirelessDisplayService;->preload_DLNA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " , isResume"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/server/WirelessDisplayService;->isResume:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Landroid/media/MediaRecorder;->requestRTPWriterPause(I)V

    .line 6335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/media/MediaRecorder;->requestRTPWriterPause(I)V

    .line 6336
    sget-object v21, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    sget-object v22, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v23, 0x74

    invoke-virtual/range {v22 .. v23}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    const-wide/16 v23, 0xbb8

    invoke-virtual/range {v21 .. v24}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/media/MediaRecorder;->setDLNADelay(Z)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    .line 6348
    :goto_5
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mInfoListener:Lcom/htc/server/WirelessDisplayService$InfoListener;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 6349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorderErrorCallback:Lcom/htc/server/WirelessDisplayService$RecorderErrorCallback;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 6350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/media/MediaRecorder;->start()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 6356
    const-string v21, "WirelessDisplayService"

    const-string v22, "startDisplayRecorder - end"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6357
    const/16 v21, 0x0

    .end local v3           #audBitrate:I
    .end local v4           #audChannel:I
    .end local v5           #audEnc:I
    .end local v6           #audSamplerate:I
    .end local v7           #defaultRes:J
    .end local v9           #device:Ljava/lang/String;
    .end local v10           #display:Landroid/view/Display;
    .end local v11           #displayRes:J
    .end local v16           #outSize:Landroid/graphics/Point;
    .end local v18           #tmp:Ljava/lang/String;
    .end local v19           #vdoHeight:I
    .end local v20           #vdoWidth:I
    :goto_6
    return v21

    .line 6190
    :cond_7
    const-string v21, "WirelessDisplayService"

    const-string v22, "Media Recorder already running"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6191
    const/16 v21, 0x0

    goto :goto_6

    .line 6197
    :cond_8
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    invoke-virtual/range {v21 .. v22}, Landroid/media/MediaRecorder;->requestRTPWriterPause(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1

    .line 6198
    :catch_0
    move-exception v13

    .line 6199
    .local v13, e:Ljava/lang/Exception;
    const-string v21, "WirelessDisplayService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "exception caught"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 6217
    .end local v13           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v15

    .line 6218
    .local v15, exception:Ljava/lang/Exception;
    const-string v21, "WirelessDisplayService"

    const-string v22, "mRecorder.setParameters() failed"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6219
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/WirelessDisplayService;->releaseMediaRecorder()V

    .line 6220
    const/16 v21, -0x1

    goto :goto_6

    .line 6246
    .end local v15           #exception:Ljava/lang/Exception;
    .restart local v3       #audBitrate:I
    .restart local v4       #audChannel:I
    .restart local v5       #audEnc:I
    .restart local v6       #audSamplerate:I
    .restart local v9       #device:Ljava/lang/String;
    .restart local v18       #tmp:Ljava/lang/String;
    :cond_9
    const-string v21, "msm8960"

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 6247
    const v6, 0xac44

    goto/16 :goto_2

    .line 6260
    :catch_2
    move-exception v15

    .line 6261
    .restart local v15       #exception:Ljava/lang/Exception;
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->mRecording:Z

    .line 6262
    const-string v21, "WirelessDisplayService"

    const-string v22, "mRecorder.setParameters() failed"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 6290
    .end local v15           #exception:Ljava/lang/Exception;
    .restart local v7       #defaultRes:J
    .restart local v10       #display:Landroid/view/Display;
    .restart local v11       #displayRes:J
    .restart local v16       #outSize:Landroid/graphics/Point;
    .restart local v19       #vdoHeight:I
    .restart local v20       #vdoWidth:I
    :cond_a
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    .line 6291
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    goto/16 :goto_4

    .line 6320
    :catch_3
    move-exception v14

    .line 6321
    .local v14, ex:Ljava/lang/Exception;
    const-string v21, "WirelessDisplayService"

    const-string v22, "mRecorder.prepare() failed"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6322
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/WirelessDisplayService;->releaseMediaRecorder()V

    .line 6323
    const/16 v21, -0x1

    goto/16 :goto_6

    .line 6339
    .end local v14           #ex:Ljava/lang/Exception;
    :cond_b
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/media/MediaRecorder;->setDLNADelay(Z)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_5

    .line 6341
    :catch_4
    move-exception v17

    .line 6342
    .local v17, rex:Ljava/lang/RuntimeException;
    const-string v21, "WirelessDisplayService"

    const-string v22, "mRecorder.reset() - Runtime exception caught"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 6351
    .end local v17           #rex:Ljava/lang/RuntimeException;
    :catch_5
    move-exception v14

    .line 6352
    .restart local v14       #ex:Ljava/lang/Exception;
    const-string v21, "WirelessDisplayService"

    const-string v22, "mRecorder.prepare() setOnInfoListener/start"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6353
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/WirelessDisplayService;->releaseMediaRecorder()V

    .line 6354
    const/16 v21, -0x1

    goto/16 :goto_6

    .line 6165
    .end local v3           #audBitrate:I
    .end local v4           #audChannel:I
    .end local v5           #audEnc:I
    .end local v6           #audSamplerate:I
    .end local v7           #defaultRes:J
    .end local v9           #device:Ljava/lang/String;
    .end local v10           #display:Landroid/view/Display;
    .end local v11           #displayRes:J
    .end local v14           #ex:Ljava/lang/Exception;
    .end local v16           #outSize:Landroid/graphics/Point;
    .end local v18           #tmp:Ljava/lang/String;
    .end local v19           #vdoHeight:I
    .end local v20           #vdoWidth:I
    :catch_6
    move-exception v21

    goto/16 :goto_0
.end method

.method private startPatternLockStopAudio(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 5223
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v1

    .line 5224
    .local v1, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v0

    .line 5225
    .local v0, pid:I
    const-string v2, "WirelessDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startPatternLockStopAudio: enable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,Uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5226
    if-eqz p1, :cond_0

    .line 5227
    const-string v2, "sys.ml.noaudio"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5231
    :goto_0
    return-void

    .line 5229
    :cond_0
    const-string v2, "sys.ml.noaudio"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startStopVideo(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 5234
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v1

    .line 5235
    .local v1, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v0

    .line 5236
    .local v0, pid:I
    const-string v2, "WirelessDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startStopVideo: enable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,Uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5237
    if-eqz p1, :cond_0

    .line 5238
    const-string v2, "sys.ml.novideo"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5242
    :goto_0
    return-void

    .line 5240
    :cond_0
    const-string v2, "sys.ml.novideo"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopDisplayRecorder()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6466
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->releaseMediaRecorder()V

    .line 6468
    const/4 v1, 0x0

    :try_start_0
    iget v2, p0, Lcom/htc/server/WirelessDisplayService;->mWindowAnimationScale:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/htc/server/WirelessDisplayService;->writeAnimationScaleOption(ILjava/lang/Object;)V

    .line 6469
    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/server/WirelessDisplayService;->mTransitionAnimationScale:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/htc/server/WirelessDisplayService;->writeAnimationScaleOption(ILjava/lang/Object;)V

    .line 6470
    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/server/WirelessDisplayService;->mAnimationDurationScale:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/htc/server/WirelessDisplayService;->writeAnimationScaleOption(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6474
    :goto_0
    const-string v1, "WirelessDisplayService"

    const-string v2, "stopDisplayRecorder end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6478
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.NOTIFY_MEDIARECORDER_RELEASED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6479
    .local v0, notifyMediaRecorderReleased:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6481
    return v3

    .line 6471
    .end local v0           #notifyMediaRecorderReleased:Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private transferDongleVersion(Lcom/htc/service/DongleInfo;)D
    .locals 6
    .parameter "dongle"

    .prologue
    .line 4962
    const-wide/high16 v0, -0x4010

    .line 4963
    .local v0, dongleVersion:D
    if-eqz p1, :cond_0

    .line 4964
    iget-object v3, p1, Lcom/htc/service/DongleInfo;->version:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 4965
    iget-object v3, p1, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    const-string v4, "Unknown device name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4966
    const-wide v0, 0x3fefae147ae147aeL

    .line 4983
    :cond_0
    :goto_0
    const-string v3, "WirelessDisplayService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transferDongleVersion, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4984
    return-wide v0

    .line 4968
    :cond_1
    iget-wide v0, p0, Lcom/htc/server/WirelessDisplayService;->notifyDongleFWupgradeVersion:D

    goto :goto_0

    .line 4972
    :cond_2
    iget-object v3, p1, Lcom/htc/service/DongleInfo;->version:Ljava/lang/String;

    const-string v4, "M"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4973
    const-wide v0, 0x3fefae147ae147aeL

    goto :goto_0

    .line 4976
    :cond_3
    :try_start_0
    iget-object v3, p1, Lcom/htc/service/DongleInfo;->version:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 4977
    :catch_0
    move-exception v2

    .line 4978
    .local v2, nfe:Ljava/lang/NumberFormatException;
    const-string v3, "WirelessDisplayService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dongle Version Parser NumberFormatException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private turnOffConcurrentHotspot(J)V
    .locals 5
    .parameter "duration"

    .prologue
    .line 4394
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long v0, v2, p1

    .line 4395
    .local v0, triggerTime:J
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mTurnOffHotspotIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 4396
    return-void
.end method

.method private updateDongleStateToPaired(Ljava/lang/String;)V
    .locals 4
    .parameter "dongleStaBssid"

    .prologue
    .line 3224
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3225
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/DongleInfo;

    .line 3226
    .local v0, dongle:Lcom/htc/service/DongleInfo;
    if-eqz v0, :cond_1

    .line 3227
    const/4 v1, 0x3

    iput v1, v0, Lcom/htc/service/DongleInfo;->status:I

    .line 3228
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mUsedDongleCache:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3229
    const-string v1, "0000"

    invoke-virtual {p0, p1, v1}, Lcom/htc/server/WirelessDisplayService;->setDonglePattern(Ljava/lang/String;Ljava/lang/String;)V

    .line 3231
    :cond_0
    const-string v1, "WirelessDisplayService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dongle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", status update to Paired"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3234
    .end local v0           #dongle:Lcom/htc/service/DongleInfo;
    :cond_1
    return-void
.end method

.method private updateFWUpgradeNotification()V
    .locals 4

    .prologue
    .line 4408
    invoke-virtual {p0}, Lcom/htc/server/WirelessDisplayService;->getCurrentDongle()Lcom/htc/service/DongleInfo;

    move-result-object v0

    .line 4409
    .local v0, dongleInfo:Lcom/htc/service/DongleInfo;
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4410
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getInetAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4411
    const-string v1, "WirelessDisplayService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dongle FW Upgrade, IP: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getInetAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4412
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mWirelessDisplayNotification:Lcom/htc/server/WirelessDisplayNotification;

    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getInetAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/server/WirelessDisplayNotification;->notifyFirmwareUpdate(Ljava/lang/String;Ljava/lang/String;)V

    .line 4415
    :cond_0
    return-void
.end method

.method private updateMirrorPauseState(IIZ)V
    .locals 4
    .parameter "condState"
    .parameter "pauseCondition"
    .parameter "isPause"

    .prologue
    const/4 v2, 0x7

    .line 3357
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3400
    :goto_0
    return-void

    .line 3359
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 3399
    :cond_1
    :goto_1
    const-string v1, "WirelessDisplayService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMirrorPauseState from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3361
    :pswitch_0
    if-eqz p3, :cond_1

    .line 3362
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1

    .line 3368
    :pswitch_1
    if-eqz p3, :cond_2

    .line 3370
    add-int v0, p1, p2

    .line 3371
    .local v0, targetCondition:I
    if-eq p2, p1, :cond_1

    .line 3372
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1

    .line 3374
    .end local v0           #targetCondition:I
    :cond_2
    if-ne p1, p2, :cond_1

    .line 3375
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1

    .line 3381
    :pswitch_2
    if-eqz p3, :cond_3

    .line 3382
    add-int v0, p1, p2

    .line 3383
    .restart local v0       #targetCondition:I
    if-ne v0, v2, :cond_1

    .line 3384
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1

    .line 3387
    .end local v0           #targetCondition:I
    :cond_3
    sub-int v0, p1, p2

    .line 3388
    .restart local v0       #targetCondition:I
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1

    .line 3392
    .end local v0           #targetCondition:I
    :pswitch_3
    if-nez p3, :cond_1

    .line 3393
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    sub-int v2, p1, p2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1

    .line 3359
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateNotification()V
    .locals 5

    .prologue
    .line 4419
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    .line 4430
    .local v2, mirrorOn:Z
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v0

    .line 4431
    .local v0, dongleCount:I
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    .line 4433
    .local v3, wifiOn:Z
    invoke-virtual {p0}, Lcom/htc/server/WirelessDisplayService;->getDiscoveryDongleList()Ljava/util/List;

    move-result-object v1

    .line 4444
    .local v1, mDongleInfos:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mWirelessDisplayNotification:Lcom/htc/server/WirelessDisplayNotification;

    invoke-virtual {v4, v2, v0, v3, v1}, Lcom/htc/server/WirelessDisplayNotification;->updateNotification(ZIZLjava/util/List;)V

    .line 4447
    return-void
.end method

.method private updateUsedDongleListFile()V
    .locals 7

    .prologue
    .line 4253
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mUsedDongleList_FilePath:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4254
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    .line 4255
    .local v3, ret:Z
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 4256
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService;->mUsedDongleCache:Ljava/util/Hashtable;

    monitor-enter v5

    .line 4257
    :try_start_0
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mUsedDongleCache:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 4258
    .local v2, macs:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4259
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4260
    .local v1, mac:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mUsedDongleCache:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/server/WirelessDisplayService;->writeUsedDongleList(Ljava/lang/String;)Z

    goto :goto_0

    .line 4262
    .end local v1           #mac:Ljava/lang/String;
    .end local v2           #macs:Ljava/util/Enumeration;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v2       #macs:Ljava/util/Enumeration;
    :cond_0
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4264
    .end local v2           #macs:Ljava/util/Enumeration;
    :cond_1
    return-void
.end method

.method private updateWivuList([Ljava/lang/String;)V
    .locals 13
    .parameter "macs"

    .prologue
    .line 3963
    const/4 v9, 0x1

    aget-object v9, p1, v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 3964
    const-string v9, "WirelessDisplayService"

    const-string v10, "updateWivuList:ther is no dongle in list"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3965
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 3966
    .local v4, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3967
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3973
    .local v1, element:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mWivuCache:Ljava/util/Hashtable;

    invoke-virtual {v9, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3974
    const-string v9, "WirelessDisplayService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "removing from mWivuCache:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3975
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mWivuCache:Ljava/util/Hashtable;

    invoke-virtual {v9, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3977
    :cond_1
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 3978
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_2

    .line 3979
    const-string v9, "WirelessDisplayService"

    const-string v10, "updateWivuList: curDongle is been removed"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3980
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, -0x6

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    .line 3981
    .local v7, m2:Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 3985
    .end local v7           #m2:Landroid/os/Message;
    :cond_2
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 3986
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    iput-object v9, p0, Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;

    .line 3987
    const-string v9, "persist.sys.wfd.lastdongle"

    iget-object v10, p0, Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3989
    :cond_3
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    goto :goto_0

    .line 3993
    .end local v1           #element:Ljava/lang/String;
    :cond_4
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 3996
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v9

    if-nez v9, :cond_5

    .line 3997
    const-string v9, "WirelessDisplayService"

    const-string v10, "wifi scan fail!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4067
    .end local v4           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_5
    return-void

    .line 4000
    :cond_6
    const/4 v9, 0x1

    aget-object v9, p1, v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4001
    .local v0, addrs:[Ljava/lang/String;
    array-length v6, v0

    .line 4002
    .local v6, length:I
    const-string v9, "WirelessDisplayService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateWivuList:Total Dongles in Network:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4004
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-le v6, v9, :cond_8

    .line 4006
    const-string v9, "WirelessDisplayService"

    const-string v10, "updateWivuList:Add New Dongle"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4007
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    if-ge v5, v6, :cond_f

    .line 4008
    sget-object v10, Lcom/htc/server/WirelessDisplayService;->synchronize_WivuThread_lock:Ljava/lang/Object;

    monitor-enter v10

    .line 4009
    :try_start_0
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    aget-object v11, v0, v5

    invoke-interface {v9, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 4010
    const-string v9, "WirelessDisplayService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Get dongle info:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v0, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4011
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    aget-object v11, v0, v5

    invoke-virtual {v9, v11}, Lcom/htc/server/WirelessDisplayService$WivuThread;->getDongleInfo(Ljava/lang/String;)I

    .line 4017
    :cond_7
    monitor-exit v10

    .line 4007
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4017
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 4019
    .end local v5           #j:I
    :cond_8
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_f

    .line 4020
    const-string v9, "WirelessDisplayService"

    const-string v10, "updateWivuList:Remove dongle from List"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4022
    const/4 v5, 0x0

    .restart local v5       #j:I
    :goto_2
    if-ge v5, v6, :cond_9

    .line 4023
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    aget-object v10, v0, v5

    invoke-interface {v9, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4022
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 4025
    :cond_9
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 4026
    .restart local v4       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_a
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 4027
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4035
    .local v2, element2:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mWivuCache:Ljava/util/Hashtable;

    invoke-virtual {v9, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 4036
    const-string v9, "WirelessDisplayService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "removing from mWivuCache:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4037
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mWivuCache:Ljava/util/Hashtable;

    invoke-virtual {v9, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4040
    :cond_b
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 4041
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_c

    .line 4042
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, -0x6

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    .line 4043
    .restart local v7       #m2:Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 4044
    const-string v9, "WirelessDisplayService"

    const-string v10, "updateWivuList2: curDongle is been removed"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4046
    .end local v7           #m2:Landroid/os/Message;
    :cond_c
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    if-eqz v9, :cond_d

    .line 4047
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    iput-object v9, p0, Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;

    .line 4048
    const-string v9, "persist.sys.wfd.lastdongle"

    iget-object v10, p0, Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4050
    :cond_d
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    goto :goto_3

    .line 4053
    .end local v2           #element2:Ljava/lang/String;
    :cond_e
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v9

    if-nez v9, :cond_f

    .line 4054
    const-string v9, "WirelessDisplayService"

    const-string v10, "wifi scan fail!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4056
    .end local v4           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5           #j:I
    :cond_f
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 4057
    const/4 v3, 0x0

    .local v3, i:I
    :goto_4
    array-length v9, v0

    if-ge v3, v9, :cond_5

    .line 4058
    const-string v9, "WirelessDisplayService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MAC Addr:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v0, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4060
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mBssidPattern:Ljava/util/regex/Pattern;

    aget-object v10, v0, v3

    invoke-virtual {v9, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 4061
    .local v8, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 4062
    const-string v9, "WirelessDisplayService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateWivuList: Add dongle to WIvu list:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v0, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4063
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    aget-object v10, v0, v3

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4057
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_4
.end method

.method private updteDongleInfo(Ljava/lang/String;)V
    .locals 10
    .parameter "stat"

    .prologue
    .line 4075
    if-nez p1, :cond_1

    .line 4176
    :cond_0
    :goto_0
    return-void

    .line 4077
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 4078
    const-string v7, "WirelessDisplayService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updteDongleInfo =["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4080
    const-string v7, "VALUE="

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 4082
    .local v6, sep:[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    .line 4085
    const/4 v7, 0x1

    aget-object v7, v6, v7

    const-string v8, "\t"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 4087
    .local v3, infos:[Ljava/lang/String;
    const-string v7, "WirelessDisplayService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MAC Addr:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, v3, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4089
    sget-object v7, Lcom/htc/server/WirelessDisplayService;->mBssidPattern:Ljava/util/regex/Pattern;

    const/4 v8, 0x0

    aget-object v8, v3, v8

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 4091
    .local v5, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 4092
    const/4 v4, 0x0

    .line 4093
    .local v4, isExistInWivuList:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 4094
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v8, v3, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4095
    const/4 v4, 0x1

    .line 4093
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4098
    :cond_3
    if-nez v4, :cond_4

    .line 4099
    const-string v7, "WirelessDisplayService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Not exist in Wivulist, updateWivuList: Add dongle to WIvu list:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, v3, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4100
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    const/4 v8, 0x0

    aget-object v8, v3, v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4104
    .end local v2           #i:I
    .end local v4           #isExistInWivuList:Z
    :cond_4
    array-length v7, v3

    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    .line 4105
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    const/4 v8, 0x0

    aget-object v8, v3, v8

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 4106
    const-string v7, "WirelessDisplayService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updteDongleInfo: Modifying WIFI scan list ip:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v3, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4107
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    const/4 v8, 0x0

    aget-object v8, v3, v8

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/DongleInfo;

    .line 4108
    .local v0, dongle:Lcom/htc/service/DongleInfo;
    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    .line 4110
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0xe3

    if-eq v7, v8, :cond_5

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0xe4

    if-ne v7, v8, :cond_6

    .line 4112
    :cond_5
    const/4 v7, 0x2

    iput v7, v0, Lcom/htc/service/DongleInfo;->status:I

    .line 4115
    :cond_6
    array-length v7, v3

    const/4 v8, 0x4

    if-le v7, v8, :cond_9

    .line 4116
    sget-object v7, Lcom/htc/server/WirelessDisplayService;->mBssidPattern:Ljava/util/regex/Pattern;

    const/4 v8, 0x3

    aget-object v8, v3, v8

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 4117
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 4118
    const/4 v7, 0x3

    aget-object v7, v3, v7

    iput-object v7, v0, Lcom/htc/service/DongleInfo;->pairedApm:Ljava/lang/String;

    .line 4119
    iget-object v7, v0, Lcom/htc/service/DongleInfo;->pairedApm:Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 4120
    const/4 v7, 0x3

    iput v7, v0, Lcom/htc/service/DongleInfo;->status:I

    .line 4124
    :cond_7
    const/4 v7, 0x4

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v0, Lcom/htc/service/DongleInfo;->wifiQuality:I

    .line 4126
    iget v7, v0, Lcom/htc/service/DongleInfo;->wifiQuality:I

    if-nez v7, :cond_8

    .line 4127
    const/4 v7, 0x2

    iput v7, v0, Lcom/htc/service/DongleInfo;->lockType:I

    .line 4132
    :cond_8
    :goto_2
    const/4 v7, 0x1

    aget-object v7, v3, v7

    iput-object v7, v0, Lcom/htc/service/DongleInfo;->inetAddress:Ljava/lang/String;

    .line 4133
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    const/4 v8, 0x0

    aget-object v8, v3, v8

    invoke-virtual {v7, v8, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4173
    .end local v0           #dongle:Lcom/htc/service/DongleInfo;
    :goto_3
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->notifyWHDMI()V

    goto/16 :goto_0

    .line 4130
    .restart local v0       #dongle:Lcom/htc/service/DongleInfo;
    :cond_9
    const/4 v7, -0x1

    iput v7, v0, Lcom/htc/service/DongleInfo;->wifiQuality:I

    goto :goto_2

    .line 4135
    .end local v0           #dongle:Lcom/htc/service/DongleInfo;
    :cond_a
    const-string v7, "WirelessDisplayService"

    const-string v8, "updteDongleInfo: New dongle is added, trigger wifi scan to find out this dongle"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4136
    new-instance v1, Lcom/htc/service/DongleInfo;

    invoke-direct {v1}, Lcom/htc/service/DongleInfo;-><init>()V

    .line 4137
    .local v1, dongle2:Lcom/htc/service/DongleInfo;
    const/4 v7, 0x1

    aget-object v7, v3, v7

    iput-object v7, v1, Lcom/htc/service/DongleInfo;->inetAddress:Ljava/lang/String;

    .line 4138
    const-string v7, "Unknown device name"

    iput-object v7, v1, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    .line 4139
    const-string v7, "Unknown device name"

    iput-object v7, v1, Lcom/htc/service/DongleInfo;->name:Ljava/lang/String;

    .line 4140
    array-length v7, v3

    const/4 v8, 0x2

    if-le v7, v8, :cond_b

    const/4 v7, 0x2

    aget-object v7, v3, v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_b

    .line 4141
    const/4 v7, 0x2

    aget-object v7, v3, v7

    iput-object v7, v1, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    .line 4142
    const/4 v7, 0x2

    aget-object v7, v3, v7

    iput-object v7, v1, Lcom/htc/service/DongleInfo;->name:Ljava/lang/String;

    .line 4144
    :cond_b
    const/4 v7, 0x2

    iput v7, v1, Lcom/htc/service/DongleInfo;->status:I

    .line 4145
    array-length v7, v3

    const/4 v8, 0x4

    if-le v7, v8, :cond_10

    .line 4146
    sget-object v7, Lcom/htc/server/WirelessDisplayService;->mBssidPattern:Ljava/util/regex/Pattern;

    const/4 v8, 0x3

    aget-object v8, v3, v8

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 4147
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 4148
    const/4 v7, 0x3

    aget-object v7, v3, v7

    iput-object v7, v1, Lcom/htc/service/DongleInfo;->pairedApm:Ljava/lang/String;

    .line 4149
    iget-object v7, v1, Lcom/htc/service/DongleInfo;->pairedApm:Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 4150
    const/4 v7, 0x3

    iput v7, v1, Lcom/htc/service/DongleInfo;->status:I

    .line 4153
    :cond_c
    const/4 v7, 0x4

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v1, Lcom/htc/service/DongleInfo;->wifiQuality:I

    .line 4155
    iget v7, v1, Lcom/htc/service/DongleInfo;->wifiQuality:I

    if-nez v7, :cond_d

    .line 4156
    const/4 v7, 0x2

    iput v7, v1, Lcom/htc/service/DongleInfo;->lockType:I

    .line 4161
    :cond_d
    :goto_4
    const/4 v7, 0x0

    aget-object v7, v3, v7

    iput-object v7, v1, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    .line 4162
    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    .line 4165
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    if-eqz v7, :cond_e

    const/4 v7, 0x0

    aget-object v7, v3, v7

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    :cond_e
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;

    if-eqz v7, :cond_11

    const/4 v7, 0x0

    aget-object v7, v3, v7

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 4166
    :cond_f
    const-string v7, "WirelessDisplayService"

    const-string v8, "User Selected Dongle, Add Dongle to Dongle Cache"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4167
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    const/4 v8, 0x0

    aget-object v8, v3, v8

    invoke-virtual {v7, v8, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 4159
    :cond_10
    const/4 v7, -0x1

    iput v7, v1, Lcom/htc/service/DongleInfo;->wifiQuality:I

    goto :goto_4

    .line 4169
    :cond_11
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mWivuCache:Ljava/util/Hashtable;

    const/4 v8, 0x0

    aget-object v8, v3, v8

    invoke-virtual {v7, v8, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3
.end method

.method static native wivuIpcExit()I
.end method

.method static native wivuIpcInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static native wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static native wivuNVEackState(I)I
.end method

.method static native wivuSQoSStart()Z
.end method

.method static native wivuSQoSStop()Z
.end method

.method private writeAnimationScaleOption(ILjava/lang/Object;)V
    .locals 5
    .parameter "which"
    .parameter "newValue"

    .prologue
    .line 5598
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 5601
    .local v2, scale:F
    :goto_0
    iget-object v3, p0, Lcom/htc/server/WirelessDisplayService;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v3, p1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v1

    .line 5602
    .local v1, oldScale:F
    const/4 v0, 0x0

    .line 5603
    .local v0, key:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 5614
    const-string v3, "WirelessDisplayService"

    const-string v4, "Illegal animation parameter!!"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5625
    .end local v0           #key:Ljava/lang/String;
    .end local v1           #oldScale:F
    .end local v2           #scale:F
    :goto_1
    return-void

    .line 5598
    :cond_0
    const/high16 v2, 0x3f80

    goto :goto_0

    .line 5605
    .restart local v0       #key:Ljava/lang/String;
    .restart local v1       #oldScale:F
    .restart local v2       #scale:F
    :pswitch_0
    const-string v0, "htc_window_animation_scale"

    .line 5618
    :goto_2
    iget-object v3, p0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 5622
    iget-object v3, p0, Lcom/htc/server/WirelessDisplayService;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v3, p1, v2}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    goto :goto_1

    .line 5623
    .end local v0           #key:Ljava/lang/String;
    .end local v1           #oldScale:F
    .end local v2           #scale:F
    :catch_0
    move-exception v3

    goto :goto_1

    .line 5608
    .restart local v0       #key:Ljava/lang/String;
    .restart local v1       #oldScale:F
    .restart local v2       #scale:F
    :pswitch_1
    const-string v0, "htc_transition_animation_scale"

    .line 5609
    goto :goto_2

    .line 5611
    :pswitch_2
    const-string v0, "htc_animator_duration_scale"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5612
    goto :goto_2

    .line 5603
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private writeConcurrentAPMacAddress()Z
    .locals 10

    .prologue
    const/4 v9, -0x1

    .line 4192
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/sys/class/net/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService;->mSoftapInterface:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/address"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4193
    .local v2, mConcurrent_AP_MAC_FilePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v7, "/data/misc/wifidisplay.conf"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4194
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1b6

    invoke-static {v7, v8, v9, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 4195
    const/4 v5, 0x0

    .line 4196
    .local v5, writer:Ljava/io/FileWriter;
    const/4 v4, 0x0

    .line 4198
    .local v4, ret:Z
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 4199
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 4200
    new-instance v6, Ljava/io/FileWriter;

    const/4 v7, 0x1

    invoke-direct {v6, v1, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4201
    .end local v5           #writer:Ljava/io/FileWriter;
    .local v6, writer:Ljava/io/FileWriter;
    :try_start_1
    invoke-direct {p0, v2}, Lcom/htc/server/WirelessDisplayService;->readConfigFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;

    .line 4202
    const-string v7, "WirelessDisplayService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Configuration file doesn\'t exist, create a new one, mAP_M_MACAdderss: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4203
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 4204
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 4206
    :cond_0
    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 4207
    invoke-virtual {v6}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v5, v6

    .line 4212
    .end local v6           #writer:Ljava/io/FileWriter;
    .restart local v5       #writer:Ljava/io/FileWriter;
    :goto_0
    const/4 v4, 0x1

    .line 4213
    :try_start_2
    const-string v7, "WirelessDisplayService"

    const-string v8, "writeConcurrentAPMacAddress() done."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4221
    :goto_1
    return v4

    .line 4209
    :cond_1
    const-string v7, "/data/misc/wifidisplay.conf"

    invoke-direct {p0, v7}, Lcom/htc/server/WirelessDisplayService;->readConfigFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4210
    .local v3, previousResult:Ljava/lang/String;
    const-string v7, "WirelessDisplayService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "writeConcurrentAPMacAddress already existed, MAC: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 4214
    .end local v3           #previousResult:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 4215
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    const-string v7, "WirelessDisplayService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FileNotFoundException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4216
    const/4 v4, 0x0

    .line 4220
    goto :goto_1

    .line 4217
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 4218
    .local v0, e:Ljava/io/IOException;
    :goto_3
    const-string v7, "WirelessDisplayService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4219
    const/4 v4, 0x0

    goto :goto_1

    .line 4217
    .end local v0           #e:Ljava/io/IOException;
    .end local v5           #writer:Ljava/io/FileWriter;
    .restart local v6       #writer:Ljava/io/FileWriter;
    :catch_2
    move-exception v0

    move-object v5, v6

    .end local v6           #writer:Ljava/io/FileWriter;
    .restart local v5       #writer:Ljava/io/FileWriter;
    goto :goto_3

    .line 4214
    .end local v5           #writer:Ljava/io/FileWriter;
    .restart local v6       #writer:Ljava/io/FileWriter;
    :catch_3
    move-exception v0

    move-object v5, v6

    .end local v6           #writer:Ljava/io/FileWriter;
    .restart local v5       #writer:Ljava/io/FileWriter;
    goto :goto_2
.end method

.method private writeUsedDongleList(Ljava/lang/String;)Z
    .locals 8
    .parameter "usedDongleList"

    .prologue
    const/4 v7, -0x1

    .line 4225
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService;->mUsedDongleList_FilePath:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4226
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1b6

    invoke-static {v5, v6, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 4227
    const/4 v3, 0x0

    .line 4228
    .local v3, writer:Ljava/io/FileWriter;
    const/4 v2, 0x0

    .line 4230
    .local v2, ret:Z
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4231
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 4232
    const-string v5, "WirelessDisplayService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Create New file for record Used Dongle List: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mUsedDongleList_FilePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4234
    :cond_0
    new-instance v4, Ljava/io/FileWriter;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4235
    .end local v3           #writer:Ljava/io/FileWriter;
    .local v4, writer:Ljava/io/FileWriter;
    if-eqz p1, :cond_1

    .line 4236
    :try_start_1
    invoke-virtual {v4, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 4238
    :cond_1
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 4239
    invoke-virtual {v4}, Ljava/io/FileWriter;->flush()V

    .line 4240
    const/4 v2, 0x1

    .line 4241
    const-string v5, "WirelessDisplayService"

    const-string v6, "write UsedDongleList done."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    .line 4249
    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    :goto_0
    return v2

    .line 4242
    :catch_0
    move-exception v0

    .line 4243
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    const-string v5, "WirelessDisplayService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FileNotFoundException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4244
    const/4 v2, 0x0

    .line 4248
    goto :goto_0

    .line 4245
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 4246
    .local v0, e:Ljava/io/IOException;
    :goto_2
    const-string v5, "WirelessDisplayService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4247
    const/4 v2, 0x0

    goto :goto_0

    .line 4245
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v4       #writer:Ljava/io/FileWriter;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    goto :goto_2

    .line 4242
    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v4       #writer:Ljava/io/FileWriter;
    :catch_3
    move-exception v0

    move-object v3, v4

    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    goto :goto_1
.end method


# virtual methods
.method public changeVideoBitRate(I)V
    .locals 6
    .parameter "bitRate"

    .prologue
    .line 5212
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v1

    .line 5213
    .local v1, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v0

    .line 5214
    .local v0, pid:I
    const-string v2, "WirelessDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeVideoBitRate: bitRate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,Uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5215
    sget-object v2, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    sget-object v3, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v4, 0x75

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5, p1}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5216
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 4727
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    const-string v12, "android.permission.DUMP"

    invoke-virtual {v11, v12}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_0

    .line 4728
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Permission Denial: can\'t dump WirelessDisplayService from from pid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", uid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4763
    :goto_0
    return-void

    .line 4732
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4734
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 4735
    .local v2, dataTimeStamp:Ljava/util/Date;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 4738
    .local v8, timeStamp:J
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Change History: WirelessDisplaySerivce Debug/ entries (current 0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4742
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/server/WirelessDisplayService;->mHtcDebugMessage:Ljava/util/Hashtable;

    monitor-enter v12

    .line 4743
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/server/WirelessDisplayService;->mHtcDebugMessage:Ljava/util/Hashtable;

    invoke-virtual {v11}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v7

    .line 4744
    .local v7, logKeys:Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 4745
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4746
    .local v6, logKey:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/server/WirelessDisplayService;->mHtcDebugMessage:Ljava/util/Hashtable;

    invoke-virtual {v11, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/server/WirelessDisplayService$HtcWDSrvHistory;

    .line 4747
    .local v4, hist:Lcom/htc/server/WirelessDisplayService$HtcWDSrvHistory;
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    sub-long/2addr v13, v8

    iget-wide v15, v4, Lcom/htc/server/WirelessDisplayService$HtcWDSrvHistory;->timeStamp:J

    add-long/2addr v13, v15

    invoke-direct {v3, v13, v14}, Ljava/util/Date;-><init>(J)V

    .line 4748
    .local v3, date:Ljava/util/Date;
    invoke-virtual {v4}, Lcom/htc/server/WirelessDisplayService$HtcWDSrvHistory;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4749
    .local v1, argStr:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  [0x"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v13, v4, Lcom/htc/server/WirelessDisplayService$HtcWDSrvHistory;->timeStamp:J

    invoke-static {v13, v14}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "] "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "["

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "] "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 4753
    .end local v1           #argStr:Ljava/lang/String;
    .end local v3           #date:Ljava/util/Date;
    .end local v4           #hist:Lcom/htc/server/WirelessDisplayService$HtcWDSrvHistory;
    .end local v6           #logKey:Ljava/lang/String;
    .end local v7           #logKeys:Ljava/util/Enumeration;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .restart local v7       #logKeys:Ljava/util/Enumeration;
    :cond_1
    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4754
    const-string v11, "Used Dongle List:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4755
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/server/WirelessDisplayService;->mUsedDongleCache:Ljava/util/Hashtable;

    monitor-enter v12

    .line 4756
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/server/WirelessDisplayService;->mUsedDongleCache:Ljava/util/Hashtable;

    invoke-virtual {v11}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v10

    .line 4757
    .local v10, usedDongleCacheKeys:Ljava/util/Enumeration;
    :goto_2
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 4758
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4759
    .local v5, key:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ": "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/server/WirelessDisplayService;->mUsedDongleCache:Ljava/util/Hashtable;

    invoke-virtual {v11, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 4761
    .end local v5           #key:Ljava/lang/String;
    .end local v10           #usedDongleCacheKeys:Ljava/util/Enumeration;
    :catchall_1
    move-exception v11

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v11

    .restart local v10       #usedDongleCacheKeys:Ljava/util/Enumeration;
    :cond_2
    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0
.end method

.method public extendTurnOffHotspotTimer()V
    .locals 5

    .prologue
    .line 5550
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v1

    .line 5551
    .local v1, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v0

    .line 5552
    .local v0, pid:I
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifidisplayApEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5553
    const-string v2, "WirelessDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extendTurnOffHotspotTimer uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5554
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->cancelTurnOffConcurrentHotspot()V

    .line 5555
    const-wide/32 v2, 0x927c0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/htc/server/WirelessDisplayService;->turnOffConcurrentHotspot(J)V

    .line 5557
    :cond_0
    return-void
.end method

.method public getConnectedDongleIP()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4718
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4721
    :goto_0
    return-object v0

    .line 4720
    :cond_0
    sget-object v1, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    monitor-enter v1

    .line 4721
    :try_start_0
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    .line 4722
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getConnectedDongleIPLong()J
    .locals 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4770
    const-string v9, "WirelessDisplayService"

    const-string v10, "getConnectedDongleIPLong"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4771
    const-wide/16 v2, 0x0

    .line 4773
    .local v2, num:J
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    if-nez v9, :cond_0

    move-wide v4, v2

    .line 4796
    .end local v2           #num:J
    .local v4, num:J
    :goto_0
    return-wide v4

    .line 4775
    .end local v4           #num:J
    .restart local v2       #num:J
    :cond_0
    sget-object v10, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    monitor-enter v10

    .line 4777
    :try_start_0
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 4778
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;

    const-string v11, "\\."

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4779
    .local v0, addrArray:[Ljava/lang/String;
    const/16 v6, 0x20

    .line 4780
    .local v6, offset:I
    array-length v9, v0

    add-int/lit8 v1, v9, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_3

    .line 4781
    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v9, :cond_1

    .line 4782
    const-string v9, "WirelessDisplayService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addrArray("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v0, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4783
    :cond_1
    add-int/lit8 v6, v6, -0x8

    .line 4784
    aget-object v9, v0, v1

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 4787
    .local v7, token:J
    const-wide/16 v11, 0x0

    cmp-long v9, v7, v11

    if-ltz v9, :cond_2

    const-wide/16 v11, 0x100

    cmp-long v9, v7, v11

    if-ltz v9, :cond_5

    .line 4788
    :cond_2
    const-wide/16 v2, -0x1

    .line 4793
    .end local v7           #token:J
    :cond_3
    const-string v9, "WirelessDisplayService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "long value="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4795
    .end local v0           #addrArray:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v6           #offset:I
    :cond_4
    monitor-exit v10

    move-wide v4, v2

    .line 4796
    .end local v2           #num:J
    .restart local v4       #num:J
    goto :goto_0

    .line 4791
    .end local v4           #num:J
    .restart local v0       #addrArray:[Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #num:J
    .restart local v6       #offset:I
    .restart local v7       #token:J
    :cond_5
    shl-long v11, v7, v6

    add-long/2addr v2, v11

    .line 4780
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 4795
    .end local v0           #addrArray:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v6           #offset:I
    .end local v7           #token:J
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method

.method public getCurrentDongle()Lcom/htc/service/DongleInfo;
    .locals 6

    .prologue
    .line 5527
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v2

    .line 5528
    .local v2, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v1

    .line 5529
    .local v1, pid:I
    const-string v3, "WirelessDisplayService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentDongle uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mirrorOn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", curDongle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5530
    iget-object v3, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5531
    iget-object v3, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/DongleInfo;

    .line 5534
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDLNAPreloadEnable()Z
    .locals 3

    .prologue
    .line 5478
    const-string v0, "WirelessDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDLNAPreloadEnable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/server/WirelessDisplayService;->preload_DLNA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5479
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->preload_DLNA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public getDefaultDongle()Lcom/htc/service/DongleInfo;
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 5114
    const/4 v1, 0x0

    .line 5116
    .local v1, dong:Lcom/htc/service/DongleInfo;
    :try_start_0
    const-string v6, "WirelessDisplayService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDefaultDongle , curDongle Bssid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", lastDongle Bssid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5117
    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5118
    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/htc/service/DongleInfo;

    move-object v1, v0

    .line 5119
    const-string v6, "WirelessDisplayService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDefaultDongle , curDongle Bssid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", dongle state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Lcom/htc/service/DongleInfo;->status:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v1

    .line 5176
    :goto_0
    return-object v4

    .line 5122
    :cond_0
    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5123
    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/service/DongleInfo;

    .line 5124
    .local v4, tempLastDongle:Lcom/htc/service/DongleInfo;
    if-eqz v4, :cond_2

    .line 5126
    iget v6, v4, Lcom/htc/service/DongleInfo;->status:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    iget v6, v4, Lcom/htc/service/DongleInfo;->status:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 5127
    :cond_1
    const-string v6, "WirelessDisplayService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDefaultDongle , lastDongle Bssid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", dongle state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/htc/service/DongleInfo;->status:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5172
    .end local v4           #tempLastDongle:Lcom/htc/service/DongleInfo;
    :catch_0
    move-exception v3

    .line 5173
    .local v3, npe:Ljava/lang/NullPointerException;
    const-string v6, "WirelessDisplayService"

    const-string v7, "NullPointerException, getDefaultDongle : null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5174
    const/4 v4, 0x0

    goto :goto_0

    .line 5133
    .end local v3           #npe:Ljava/lang/NullPointerException;
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->getUsedDongleList()Ljava/util/List;

    move-result-object v5

    .line 5134
    .local v5, usedDongleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    invoke-virtual {p0}, Lcom/htc/server/WirelessDisplayService;->getDiscoveryDongleList()Ljava/util/List;

    move-result-object v2

    .line 5135
    .local v2, dongleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v9, :cond_3

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 5136
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/htc/service/DongleInfo;

    move-object v1, v0

    .line 5137
    const-string v6, "WirelessDisplayService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDefaultDongle , used_dongle Bssid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", dongle state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Lcom/htc/service/DongleInfo;->status:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v1

    .line 5138
    goto/16 :goto_0

    .line 5139
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v9, :cond_4

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 5140
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/htc/service/DongleInfo;

    move-object v1, v0

    .line 5141
    const-string v6, "WirelessDisplayService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDefaultDongle , onlyOneDongle Bssid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", dongle state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Lcom/htc/service/DongleInfo;->status:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v1

    .line 5142
    goto/16 :goto_0

    .line 5169
    :cond_4
    if-nez v1, :cond_5

    .line 5170
    const-string v6, "WirelessDisplayService"

    const-string v7, "getDefaultDongle : null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    move-object v4, v1

    .line 5176
    goto/16 :goto_0
.end method

.method public getDefaultVideoBitRate()I
    .locals 1

    .prologue
    .line 5219
    iget v0, p0, Lcom/htc/server/WirelessDisplayService;->mBitrate:I

    return v0
.end method

.method public getDiscoveryDongleList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/service/DongleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4856
    const-string v4, "WirelessDisplayService"

    const-string v5, "getDiscoveryDongleList"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4857
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4858
    .local v3, sendToAPP:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    monitor-enter v5

    .line 4859
    :try_start_0
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 4860
    .local v2, macs:Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4861
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4862
    .local v1, mac:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/DongleInfo;

    .line 4863
    .local v0, dongle:Lcom/htc/service/DongleInfo;
    if-eqz v0, :cond_0

    .line 4864
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4868
    .end local v0           #dongle:Lcom/htc/service/DongleInfo;
    .end local v1           #mac:Ljava/lang/String;
    .end local v2           #macs:Ljava/util/Enumeration;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v2       #macs:Ljava/util/Enumeration;
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4869
    return-object v3
.end method

.method public getDonglePattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "dongleStaBssid"

    .prologue
    .line 5515
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v1

    .line 5516
    .local v1, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v0

    .line 5518
    .local v0, pid:I
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mUsedDongleCache:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5520
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mUsedDongleCache:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5522
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getFingerGestureEnable()Z
    .locals 3

    .prologue
    .line 5458
    const-string v0, "WirelessDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFingerGestureEnable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/server/WirelessDisplayService;->finger_gesture_enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5459
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->finger_gesture_enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public getInterface()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5181
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getMirrorDisplayStatus()Z
    .locals 5

    .prologue
    .line 4703
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 4704
    .local v0, curstate:I
    const/4 v1, 0x0

    .line 4705
    .local v1, ret:Z
    const-string v2, "WirelessDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMirrorDisplayStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "curState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4706
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 4707
    :cond_0
    const/4 v1, 0x0

    .line 4714
    :goto_0
    return v1

    .line 4709
    :cond_1
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4710
    const/4 v1, 0x1

    goto :goto_0

    .line 4712
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMirrorModeState()I
    .locals 1

    .prologue
    .line 4800
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getunConfigDongleList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/service/DongleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4876
    const-string v3, "WirelessDisplayService"

    const-string v4, "getunConfigDongleList()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4877
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4878
    .local v2, unConfigDongleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    invoke-virtual {p0}, Lcom/htc/server/WirelessDisplayService;->getDiscoveryDongleList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/service/DongleInfo;

    .line 4879
    .local v1, info:Lcom/htc/service/DongleInfo;
    iget v3, v1, Lcom/htc/service/DongleInfo;->status:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    iget v3, v1, Lcom/htc/service/DongleInfo;->status:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 4880
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4883
    .end local v1           #info:Lcom/htc/service/DongleInfo;
    :cond_2
    return-object v2
.end method

.method public mirrorModeStartStop(Z)Z
    .locals 10
    .parameter "enable"

    .prologue
    const/4 v6, 0x1

    .line 4811
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v5

    .line 4812
    .local v5, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v3

    .line 4813
    .local v3, pid:I
    sget-object v7, Lcom/htc/server/WirelessDisplayService;->mHdmiPlug:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4814
    const-string v6, "WirelessDisplayService"

    const-string v7, "MHL/HDMI is Plugged"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4815
    invoke-virtual {p0}, Lcom/htc/server/WirelessDisplayService;->msgHDMIToast()V

    .line 4816
    const/4 v6, 0x0

    .line 4848
    :cond_0
    :goto_0
    return v6

    .line 4818
    :cond_1
    const-string v7, "WirelessDisplayService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mirrorModeStartStop:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Pid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,Uid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4819
    if-eqz p1, :cond_2

    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    :cond_2
    if-nez p1, :cond_4

    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    if-ne v7, v6, :cond_4

    .line 4821
    :cond_3
    const-string v7, "WirelessDisplayService"

    const-string v8, "Already in the target state"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4824
    :cond_4
    const/4 v4, -0x1

    .line 4828
    .local v4, ret:I
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4829
    sget-object v7, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    if-eqz v7, :cond_6

    .line 4831
    const/4 v0, -0x1

    .line 4833
    .local v0, arg:I
    if-eqz p1, :cond_5

    .line 4834
    const/4 v0, 0x1

    .line 4835
    :cond_5
    sget-object v7, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v8, 0x1f

    const/16 v9, 0x21

    invoke-virtual {v7, v8, v9, v0}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 4836
    .local v1, m:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4837
    sget-object v7, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v7, v6}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 4840
    .end local v0           #arg:I
    .end local v1           #m:Landroid/os/Message;
    :cond_6
    if-nez p1, :cond_7

    .line 4841
    sget-object v7, Lcom/htc/server/WirelessDisplayService;->isPopDialog:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4843
    :cond_7
    if-nez p1, :cond_0

    .line 4844
    const-string v7, "WirelessDisplayService"

    const-string v8, "Notify DLNA Service mirror mode off"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4845
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.htc.intent.action.NOTIFY_DLNA_WIRELESS_DISPLAY_MIRROR_OFF"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4846
    .local v2, notifyDLNA:Landroid/content/Intent;
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public mirrorNow()V
    .locals 7

    .prologue
    .line 5494
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v1

    .line 5495
    .local v1, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v0

    .line 5496
    .local v0, pid:I
    const-string v2, "WirelessDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mirrorNow uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5497
    sget-object v2, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    sget-object v3, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v4, 0x6f

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5498
    return-void
.end method

.method public msgHDMIToast()V
    .locals 2

    .prologue
    .line 5095
    const-string v0, "WirelessDisplayService"

    const-string v1, "msgHDMIToast"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5101
    return-void
.end method

.method public notifyUserUnConfigDoneleResult(Z)V
    .locals 14
    .parameter "result"

    .prologue
    .line 3407
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v7

    .line 3408
    .local v7, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v6

    .line 3409
    .local v6, pid:I
    invoke-virtual {p0}, Lcom/htc/server/WirelessDisplayService;->getunConfigDongleList()Ljava/util/List;

    move-result-object v9

    .line 3411
    .local v9, unConfigDongleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    const-string v10, "WirelessDisplayService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "notifyUserUnConfigDoneleResult, result = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", Pid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ,Uid:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", unConfigDongleCount "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3412
    if-eqz p1, :cond_2

    .line 3413
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 3414
    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/service/DongleInfo;

    if-eqz v10, :cond_0

    .line 3415
    new-instance v4, Landroid/content/Intent;

    const-string v10, "com.htc.wifidisplay.CONFIGURE_MODE_NOTIFICATION_CONFIG"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3416
    .local v4, notifyConfigToolToConfig:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/server/WirelessDisplayService;->getunConfigDongleList()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/service/DongleInfo;

    .line 3417
    .local v8, unConfigDongle:Lcom/htc/service/DongleInfo;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3418
    .local v1, bundle:Landroid/os/Bundle;
    const-string v10, "DONGLE_MAC"

    iget-object v11, v8, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3419
    invoke-virtual {v4, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3420
    const/high16 v10, 0x1000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3422
    :try_start_0
    iget-object v10, p0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3442
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v4           #notifyConfigToolToConfig:Landroid/content/Intent;
    .end local v8           #unConfigDongle:Lcom/htc/service/DongleInfo;
    :cond_0
    :goto_0
    return-void

    .line 3423
    .restart local v1       #bundle:Landroid/os/Bundle;
    .restart local v4       #notifyConfigToolToConfig:Landroid/content/Intent;
    .restart local v8       #unConfigDongle:Lcom/htc/service/DongleInfo;
    :catch_0
    move-exception v0

    .line 3424
    .local v0, ae:Landroid/content/ActivityNotFoundException;
    const-string v10, "WirelessDisplayService"

    const-string v11, "ActivityNotFoundException, intent: notifyConfigToolToConfig"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3428
    .end local v0           #ae:Landroid/content/ActivityNotFoundException;
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v4           #notifyConfigToolToConfig:Landroid/content/Intent;
    .end local v8           #unConfigDongle:Lcom/htc/service/DongleInfo;
    :cond_1
    new-instance v5, Landroid/content/Intent;

    const-string v10, "com.htc.wifidisplay.CONFIGURE_MODE_NOTIFICATION_LIST"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3429
    .local v5, notifyConfigerTool:Landroid/content/Intent;
    const/high16 v10, 0x1000

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3431
    :try_start_1
    iget-object v10, p0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3432
    :catch_1
    move-exception v0

    .line 3433
    .restart local v0       #ae:Landroid/content/ActivityNotFoundException;
    const-string v10, "WirelessDisplayService"

    const-string v11, "ActivityNotFoundException, intent: notifyConfigerTool"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3437
    .end local v0           #ae:Landroid/content/ActivityNotFoundException;
    .end local v5           #notifyConfigerTool:Landroid/content/Intent;
    :cond_2
    sget-object v10, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v11, 0xb

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-virtual {v10, v11, v12, v13}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 3438
    .local v2, msgBindWfdService:Landroid/os/Message;
    sget-object v10, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v10, v2}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 3439
    sget-object v10, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v11, 0x70

    const/4 v12, 0x0

    const/4 v13, -0x1

    invoke-virtual {v10, v11, v12, v13}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 3440
    .local v3, msgUseWfdService:Landroid/os/Message;
    sget-object v10, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const-wide/16 v11, 0xc8

    invoke-virtual {v10, v3, v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public playOnTV(Z)I
    .locals 12
    .parameter "enable"

    .prologue
    const/4 v11, 0x7

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 4644
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v5

    .line 4645
    .local v5, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v2

    .line 4646
    .local v2, pid:I
    const-string v6, "WirelessDisplayService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "playOnTV(), value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Pid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,Uid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4648
    const/4 v4, -0x1

    .line 4649
    .local v4, ret:I
    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 4652
    .local v3, previousState:I
    if-ne v3, v9, :cond_1

    .line 4653
    const/4 v4, -0x1

    .line 4693
    :cond_0
    :goto_0
    return v4

    .line 4654
    :cond_1
    if-eqz p1, :cond_5

    .line 4655
    if-ne v3, v11, :cond_4

    .line 4657
    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService;->mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    const/16 v7, 0x49

    if-ne v6, v7, :cond_3

    .line 4658
    sget-object v6, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v7, 0x1f

    const/16 v8, 0x21

    invoke-virtual {v6, v7, v8, v9}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 4660
    .local v1, msg2:Landroid/os/Message;
    sget-object v6, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v6, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 4668
    .end local v1           #msg2:Landroid/os/Message;
    :cond_2
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 4665
    :cond_3
    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService;->mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    const/16 v7, 0x47

    if-ne v6, v7, :cond_2

    .line 4666
    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService;->mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v7, 0x48

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1

    .line 4669
    :cond_4
    if-ne v3, v10, :cond_0

    .line 4670
    const/4 v4, 0x0

    goto :goto_0

    .line 4673
    :cond_5
    const/4 v6, 0x3

    if-ne v3, v6, :cond_6

    .line 4682
    sget-object v6, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v7, 0x0

    invoke-virtual {v6, v9, v11, v7}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 4683
    .local v0, msg:Landroid/os/Message;
    sget-object v6, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v6, v0}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 4685
    .end local v0           #msg:Landroid/os/Message;
    :cond_6
    if-ne v3, v10, :cond_7

    .line 4687
    const/4 v4, 0x0

    goto :goto_0

    .line 4688
    :cond_7
    const/4 v6, 0x4

    if-ne v3, v6, :cond_0

    .line 4690
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public popDialog()Z
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v5, 0x0

    .line 5402
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v4

    .line 5403
    .local v4, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v2

    .line 5404
    .local v2, pid:I
    const-string v6, "WirelessDisplayService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "popDialog , getDefaultOption"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/internal/app/OutputTVActivity;->getDefaultOption(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isPopDialog: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/htc/server/WirelessDisplayService;->isPopDialog:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Pid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,Uid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5405
    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/internal/app/OutputTVActivity;->getDefaultOption(Landroid/content/Context;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 5440
    :goto_0
    return v5

    .line 5414
    :cond_0
    sget-object v6, Lcom/htc/server/WirelessDisplayService;->isPopDialog:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_1

    .line 5415
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->getDialogResult()Z

    move-result v5

    goto :goto_0

    .line 5418
    :cond_1
    iput v10, p0, Lcom/htc/server/WirelessDisplayService;->dialogResult:I

    .line 5419
    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;

    const-string v7, "4.5"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;

    const-string v7, "4.0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 5420
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.htc.intent.action.WIRELESS_DISPLAY_OUTPUTTV_SHOW"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5421
    .local v3, popDialogIntent:Landroid/content/Intent;
    const-string v6, "WirelessDisplayService"

    const-string v7, "Sending intent: INTENT_WIRELESS_DISPLAY_OUTPUTTV_SHOW"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5422
    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5427
    .end local v3           #popDialogIntent:Landroid/content/Intent;
    :goto_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    const/16 v6, 0x33

    if-ge v1, v6, :cond_3

    .line 5428
    iget v6, p0, Lcom/htc/server/WirelessDisplayService;->dialogResult:I

    if-eq v6, v10, :cond_5

    .line 5429
    const-string v6, "WirelessDisplayService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "user click, dialogResult: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/server/WirelessDisplayService;->dialogResult:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5439
    :cond_3
    :goto_3
    sget-object v6, Lcom/htc/server/WirelessDisplayService;->isPopDialog:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5440
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->getDialogResult()Z

    move-result v5

    goto :goto_0

    .line 5424
    .end local v1           #i:I
    :cond_4
    sget-object v6, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    sget-object v7, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v8, 0xc9

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9, v5}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 5433
    .restart local v1       #i:I
    :cond_5
    const-wide/16 v6, 0x64

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5427
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5434
    :catch_0
    move-exception v0

    .line 5435
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "WirelessDisplayService"

    const-string v7, "sleep() error"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public requestDelayTimerStop(Z)V
    .locals 7
    .parameter "isStop"

    .prologue
    .line 5203
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v1

    .line 5204
    .local v1, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v0

    .line 5205
    .local v0, pid:I
    const-string v2, "WirelessDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestDelayTimerStop: isStop: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,Uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", preload_DLNA: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/server/WirelessDisplayService;->preload_DLNA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5206
    if-eqz p1, :cond_0

    .line 5207
    sget-object v2, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    sget-object v3, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v4, 0x75

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5209
    :cond_0
    return-void
.end method

.method public requestWivuDiscovery(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .parameter "nwif"
    .parameter "group"
    .parameter "auto"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 4903
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v4

    .line 4904
    .local v4, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v3

    .line 4905
    .local v3, pid:I
    const-string v5, "WirelessDisplayService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requestWivuDiscovery() interface = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", group = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Pid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,Uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4906
    const/4 v0, -0x1

    .line 4907
    .local v0, arg2:I
    if-eqz p3, :cond_0

    .line 4908
    const-string v5, "WirelessDisplayService"

    const-string v6, "auto is TRUE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4909
    const/4 v0, 0x1

    .line 4910
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4913
    :cond_0
    sget-object v6, Lcom/htc/server/WirelessDisplayService;->synchronize_WivuThread_lock:Ljava/lang/Object;

    monitor-enter v6

    .line 4914
    :try_start_0
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    if-nez v5, :cond_2

    .line 4915
    new-instance v5, Lcom/htc/server/WirelessDisplayService$WivuThread;

    invoke-direct {v5, p0, p1, p2}, Lcom/htc/server/WirelessDisplayService$WivuThread;-><init>(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 4916
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    invoke-virtual {v5}, Lcom/htc/server/WirelessDisplayService$WivuThread;->wivuInit()I

    move-result v5

    if-ne v5, v8, :cond_1

    .line 4917
    const-string v5, "WirelessDisplayService"

    const-string v7, "Something Wrong with netHD initialization Delete mWivuThread"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4918
    const/4 v5, 0x0

    sput-object v5, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 4921
    :cond_1
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v7, 0x1f

    const/16 v8, 0x20

    invoke-virtual {v5, v7, v8, v0}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 4922
    .local v1, msg1:Landroid/os/Message;
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v1, v7, v8}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4946
    .end local v1           #msg1:Landroid/os/Message;
    :goto_0
    monitor-exit v6

    .line 4947
    return-void

    .line 4925
    :cond_2
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    invoke-virtual {v5}, Lcom/htc/server/WirelessDisplayService$WivuThread;->getWivuInterfaceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 4926
    const-string v5, "WirelessDisplayService"

    const-string v7, "Re-create wivu thread due to different network interface detected."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4928
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v7, 0x15

    invoke-virtual {v5, v7}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 4929
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    invoke-virtual {v5}, Lcom/htc/server/WirelessDisplayService$WivuThread;->stopThread()V

    .line 4930
    const/4 v5, 0x0

    sput-object v5, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 4931
    new-instance v5, Lcom/htc/server/WirelessDisplayService$WivuThread;

    invoke-direct {v5, p0, p1, p2}, Lcom/htc/server/WirelessDisplayService$WivuThread;-><init>(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 4932
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    invoke-virtual {v5}, Lcom/htc/server/WirelessDisplayService$WivuThread;->wivuInit()I

    move-result v5

    if-ne v5, v8, :cond_3

    .line 4933
    const-string v5, "WirelessDisplayService"

    const-string v7, "Something Wrong with netHD initialization Delete mWivuThread"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4934
    const/4 v5, 0x0

    sput-object v5, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 4937
    :cond_3
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v7, 0x1f

    const/16 v8, 0x20

    invoke-virtual {v5, v7, v8, v0}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 4938
    .local v2, msg2:Landroid/os/Message;
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v2, v7, v8}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 4946
    .end local v2           #msg2:Landroid/os/Message;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 4942
    :cond_4
    :try_start_1
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v7, 0x1f

    const/16 v8, 0x20

    invoke-virtual {v5, v7, v8, v0}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 4943
    .restart local v1       #msg1:Landroid/os/Message;
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v5, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public selectDongle(Ljava/lang/String;)V
    .locals 17
    .parameter "staBssid"

    .prologue
    .line 4989
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v12

    .line 4990
    .local v12, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v9

    .line 4991
    .local v9, pid:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .line 4993
    .local v4, curState:I
    const-string v13, "WirelessDisplayService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "selectDongle:staBssid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " state:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", Pid: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ,Uid:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4994
    if-nez p1, :cond_0

    .line 5089
    :goto_0
    return-void

    .line 4996
    :cond_0
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mHdmiPlug:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 4997
    const-string v13, "WirelessDisplayService"

    const-string v14, "MHL/HDMI is Plugged"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4998
    invoke-virtual/range {p0 .. p0}, Lcom/htc/server/WirelessDisplayService;->msgHDMIToast()V

    goto :goto_0

    .line 5018
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    invoke-interface {v13, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 5019
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/service/DongleInfo;

    .line 5020
    .local v3, curDong:Lcom/htc/service/DongleInfo;
    if-nez v3, :cond_4

    .line 5021
    const-string v13, "WirelessDisplayService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "curDong is nULL why? :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5022
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/service/DongleInfo;

    .line 5023
    .local v5, don2:Lcom/htc/service/DongleInfo;
    if-nez v5, :cond_2

    .line 5024
    const-string v13, "WirelessDisplayService"

    const-string v14, "don2 is nULL why?"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5041
    .end local v3           #curDong:Lcom/htc/service/DongleInfo;
    .end local v5           #don2:Lcom/htc/service/DongleInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    const/4 v13, 0x3

    if-eq v4, v13, :cond_3

    const/4 v13, 0x2

    if-eq v4, v13, :cond_3

    const/4 v13, 0x6

    if-ne v4, v13, :cond_6

    .line 5044
    :cond_3
    const-string v13, "WirelessDisplayService"

    const-string v14, "selectDongle: Switching Dongle"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5045
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v14, 0x1f

    invoke-virtual {v13, v14}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 5046
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v14, 0x1f

    const/16 v15, 0x21

    const/16 v16, -0x1

    invoke-virtual/range {v13 .. v16}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    .line 5047
    .local v10, plug:Landroid/os/Message;
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 5048
    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    sput-object v13, Lcom/htc/server/WirelessDisplayService;->needToSwitch:Ljava/lang/Boolean;

    .line 5049
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;

    goto/16 :goto_0

    .line 5026
    .end local v10           #plug:Landroid/os/Message;
    .restart local v3       #curDong:Lcom/htc/service/DongleInfo;
    :cond_4
    iget-boolean v13, v3, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 5027
    const/4 v13, 0x1

    if-ne v4, v13, :cond_5

    .line 5028
    const-string v13, "WirelessDisplayService"

    const-string v14, "selectDongle:Using MirrorStartStop"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5029
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/server/WirelessDisplayService;->mirrorModeStartStop(Z)Z

    .line 5031
    :cond_5
    const-string v13, "WirelessDisplayService"

    const-string v14, "Dongle is Already Selected"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5051
    .end local v3           #curDong:Lcom/htc/service/DongleInfo;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 5052
    const-string v13, "WirelessDisplayService"

    const-string v14, "selectDongle:wivulist contains the dongle"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5053
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 5054
    .local v2, b:Landroid/os/Bundle;
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v14, 0x1f

    const/16 v15, 0x25

    const/16 v16, -0x1

    invoke-virtual/range {v13 .. v16}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    .line 5055
    .local v6, m:Landroid/os/Message;
    const-string v13, "dongle_staBssid"

    move-object/from16 v0, p1

    invoke-virtual {v2, v13, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5056
    invoke-virtual {v6, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 5057
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 5058
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v14, 0x1

    const/4 v15, 0x2

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    .line 5059
    .local v8, m2:Landroid/os/Message;
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 5060
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5062
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, -0x6

    invoke-virtual/range {v13 .. v16}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v11

    .line 5063
    .local v11, timeOut2:Landroid/os/Message;
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const-wide/32 v14, 0x15f90

    invoke-virtual {v13, v11, v14, v15}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 5070
    .end local v2           #b:Landroid/os/Bundle;
    .end local v6           #m:Landroid/os/Message;
    .end local v8           #m2:Landroid/os/Message;
    .end local v11           #timeOut2:Landroid/os/Message;
    :cond_7
    const-string v13, "WirelessDisplayService"

    const-string v14, "selectDongle: Dongle is not in Wivu List"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5071
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;

    .line 5072
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v14, 0x1

    const/16 v15, 0x8

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    .line 5073
    .local v7, m1:Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 5079
    const/16 v13, 0x8

    if-eq v4, v13, :cond_9

    .line 5080
    sget-object v14, Lcom/htc/server/WirelessDisplayService;->synchronize_WivuThread_lock:Ljava/lang/Object;

    monitor-enter v14

    .line 5081
    :try_start_0
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    if-eqz v13, :cond_8

    .line 5082
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v13, v15, v0}, Lcom/htc/server/WirelessDisplayService$WivuThread;->changeInterface(Ljava/lang/String;Ljava/lang/String;)V

    .line 5083
    :cond_8
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5086
    :cond_9
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, -0x6

    invoke-virtual/range {v13 .. v16}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    .line 5087
    .restart local v8       #m2:Landroid/os/Message;
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const-wide/32 v14, 0x15f90

    invoke-virtual {v13, v8, v14, v15}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 5083
    .end local v8           #m2:Landroid/os/Message;
    :catchall_0
    move-exception v13

    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13
.end method

.method public setDLNAPreloadEnable(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    .line 5483
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v2

    .line 5484
    .local v2, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v1

    .line 5485
    .local v1, pid:I
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    .line 5486
    .local v0, debug:[Ljava/lang/Object;
    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v3

    .line 5487
    const-string v3, "setDLNAPreloadEnable"

    invoke-direct {p0, v3, v0}, Lcom/htc/server/WirelessDisplayService;->addToHtcWDSrvHistory(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5488
    const-string v3, "WirelessDisplayService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDLNAPreloadEnable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5489
    sget-object v3, Lcom/htc/server/WirelessDisplayService;->preload_DLNA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5490
    return-void
.end method

.method public setDonglePattern(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "dongleStaBssid"
    .parameter "pattern"

    .prologue
    .line 5501
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v1

    .line 5502
    .local v1, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v0

    .line 5503
    .local v0, pid:I
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mUsedDongleCache:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mUsedDongleCache:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5512
    :cond_0
    :goto_0
    return-void

    .line 5507
    :cond_1
    const-string v2, "WirelessDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDonglePattern uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dongleStaBssid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pattern: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5508
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 5509
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mUsedDongleCache:Ljava/util/Hashtable;

    invoke-virtual {v2, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5510
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/server/WirelessDisplayService;->writeUsedDongleList(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public setFingerGestureEnable(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    .line 5463
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v2

    .line 5464
    .local v2, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v1

    .line 5465
    .local v1, pid:I
    sget-object v3, Lcom/htc/server/WirelessDisplayService;->mHdmiPlug:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5466
    const-string v3, "WirelessDisplayService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MHL/HDMI is Plugged, Not allow setFingerGestureEnable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5475
    :goto_0
    return-void

    .line 5469
    :cond_0
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    .line 5470
    .local v0, debug:[Ljava/lang/Object;
    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v3

    .line 5471
    const-string v3, "setFingerGestureEnable"

    invoke-direct {p0, v3, v0}, Lcom/htc/server/WirelessDisplayService;->addToHtcWDSrvHistory(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5472
    const-string v3, "WirelessDisplayService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setFingerGestureEnable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5473
    sget-object v3, Lcom/htc/server/WirelessDisplayService;->finger_gesture_enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5474
    sget-object v3, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v4, 0x73

    invoke-virtual {v3, v4}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    goto :goto_0
.end method

.method public setInterface(Ljava/lang/String;)V
    .locals 17
    .parameter "nwif"

    .prologue
    .line 5289
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v10

    .line 5290
    .local v10, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v8

    .line 5291
    .local v8, pid:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 5292
    .local v3, curState:I
    const-string v12, "WirelessDisplayService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setInterface:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", Pid: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ,Uid:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " curState"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5293
    if-eqz p1, :cond_4

    .line 5294
    move-object/from16 v6, p1

    .line 5295
    .local v6, local:Ljava/lang/String;
    sget-object v12, Lcom/htc/server/WirelessDisplayService;->mIsHotspotIpAddressReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v12

    if-nez v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/server/WirelessDisplayService;->mSoftapInterface:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 5296
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mIsHotspotIpAddressReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v13

    .line 5297
    :try_start_0
    sget-object v12, Lcom/htc/server/WirelessDisplayService;->mIsHotspotIpAddressReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    if-nez v12, :cond_0

    .line 5299
    :try_start_1
    sget-object v12, Lcom/htc/server/WirelessDisplayService;->mIsHotspotIpAddressReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v14, 0x1b58

    invoke-virtual {v12, v14, v15}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 5304
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5306
    :cond_1
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->synchronize_WivuThread_lock:Ljava/lang/Object;

    monitor-enter v13

    .line 5307
    :try_start_3
    sget-object v12, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    if-nez v12, :cond_7

    .line 5312
    sget-object v12, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v14, 0x5

    invoke-virtual {v12, v14}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 5314
    new-instance v12, Lcom/htc/server/WirelessDisplayService$WivuThread;

    const-string v14, "3655"

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v6, v14}, Lcom/htc/server/WirelessDisplayService$WivuThread;-><init>(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v12, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 5315
    const/4 v11, 0x0

    .line 5316
    .local v11, wivuInitSuccess:Z
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    const/16 v12, 0x8

    if-ge v5, v12, :cond_2

    .line 5317
    sget-object v12, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    invoke-virtual {v12}, Lcom/htc/server/WirelessDisplayService$WivuThread;->wivuInit()I

    move-result v12

    const/4 v14, -0x1

    if-eq v12, v14, :cond_5

    .line 5318
    const/4 v11, 0x1

    .line 5328
    :cond_2
    if-nez v11, :cond_6

    .line 5329
    const-string v12, "WirelessDisplayService"

    const-string v14, "Something Wrong with netHD initialization Delete mWivuThread"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5330
    const/4 v12, 0x0

    sput-object v12, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 5342
    :goto_2
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;

    .line 5379
    .end local v5           #i:I
    .end local v11           #wivuInitSuccess:Z
    :cond_3
    :goto_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5381
    .end local v6           #local:Ljava/lang/String;
    :cond_4
    return-void

    .line 5300
    .restart local v6       #local:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 5301
    .local v4, e:Ljava/lang/Exception;
    :try_start_4
    const-string v12, "WirelessDisplayService"

    const-string v14, "sleep() error"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5304
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v12

    .line 5322
    .restart local v5       #i:I
    .restart local v11       #wivuInitSuccess:Z
    :cond_5
    :try_start_5
    const-string v12, "WirelessDisplayService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Something Wrong with netHD initialization, retry: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5323
    const-wide/16 v14, 0x1f4

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 5316
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 5324
    :catch_1
    move-exception v4

    .line 5325
    .restart local v4       #e:Ljava/lang/Exception;
    :try_start_6
    const-string v12, "WirelessDisplayService"

    const-string v14, "sleep() error"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 5379
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #i:I
    .end local v11           #wivuInitSuccess:Z
    :catchall_1
    move-exception v12

    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v12

    .line 5333
    .restart local v5       #i:I
    .restart local v11       #wivuInitSuccess:Z
    :cond_6
    :try_start_7
    const-string v12, "WirelessDisplayService"

    const-string v14, "setInterface: REQ_SET_MCAST_ROUTE"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5334
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 5335
    .local v2, bundle:Landroid/os/Bundle;
    sget-object v12, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v14, 0x1f

    const/16 v15, 0x191

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    .line 5336
    .local v9, setif:Landroid/os/Message;
    const-string v12, "interfaceRoute"

    move-object/from16 v0, p1

    invoke-virtual {v2, v12, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5337
    invoke-virtual {v9, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 5338
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 5344
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v5           #i:I
    .end local v9           #setif:Landroid/os/Message;
    .end local v11           #wivuInitSuccess:Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;

    if-eqz v12, :cond_3

    .line 5345
    const-string v12, "WirelessDisplayService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setInterface:Interface change, mIsHotspotIpAddressReady: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/htc/server/WirelessDisplayService;->mIsHotspotIpAddressReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5346
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 5347
    const-string v12, "WirelessDisplayService"

    const-string v14, "setInterface:clearing dongle lists: Change in interface"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5348
    sget-object v12, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v14, 0x5

    invoke-virtual {v12, v14}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 5351
    sget-object v12, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 5356
    sget-object v12, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    .line 5357
    .local v7, msg:Landroid/os/Message;
    sget-object v12, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v12, v7}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5359
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5360
    .local v1, b:Landroid/os/Bundle;
    sget-object v12, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v14, 0x1f

    const/16 v15, 0x27

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    .line 5361
    .restart local v9       #setif:Landroid/os/Message;
    const-string v12, "interface"

    invoke-virtual {v1, v12, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5362
    invoke-virtual {v9, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 5363
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 5365
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;

    .line 5370
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/WirelessDisplayService;->clearDongleCache()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 5371
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v12

    if-nez v12, :cond_8

    .line 5372
    const-string v12, "WirelessDisplayService"

    const-string v14, "wifi scan fail!"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5374
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->clear()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_3
.end method

.method public setL2peApInfo(Ljava/lang/String;)V
    .locals 5
    .parameter "ssid"

    .prologue
    .line 5185
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v1

    .line 5186
    .local v1, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v0

    .line 5187
    .local v0, pid:I
    const-string v2, "WirelessDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setL2peApInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,Uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5188
    const-string v2, "sys.wfd.ap"

    invoke-static {v2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5189
    return-void
.end method

.method public setMirrorDisplayOnOff(Z)I
    .locals 17
    .parameter "enable"

    .prologue
    .line 4470
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v10

    .line 4471
    .local v10, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v7

    .line 4472
    .local v7, pid:I
    const/4 v9, -0x1

    .line 4473
    .local v9, ret:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/server/WirelessDisplayService;->synchronize_lock:Ljava/lang/Object;

    monitor-enter v12

    .line 4474
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    .line 4475
    .local v8, previousState:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 4476
    .local v1, condState:I
    const-string v11, "WirelessDisplayService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setMirrorDisplayOnOff(), value = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", Pid: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ,Uid:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", State="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " condState="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4477
    const/4 v11, 0x1

    if-ne v8, v11, :cond_1

    .line 4478
    const-string v11, "WirelessDisplayService"

    const-string v13, "Mirror is DISABLED already"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4479
    const/4 v9, -0x1

    .line 4619
    :cond_0
    :goto_0
    monitor-exit v12

    .line 4620
    return v9

    .line 4480
    :cond_1
    if-eqz p1, :cond_7

    .line 4481
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/htc/server/WirelessDisplayService;->app_req_status:Ljava/lang/Boolean;

    .line 4482
    const/4 v11, 0x4

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11, v13}, Lcom/htc/server/WirelessDisplayService;->updateMirrorPauseState(IIZ)V

    .line 4483
    const/4 v11, 0x7

    if-ne v8, v11, :cond_4

    .line 4484
    const/4 v11, 0x4

    if-ne v1, v11, :cond_3

    .line 4485
    sget-object v11, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v13, 0x1f

    const/16 v14, 0x21

    const/4 v15, 0x1

    invoke-virtual {v11, v13, v14, v15}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 4486
    .local v3, msg2:Landroid/os/Message;
    sget-object v11, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v11, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 4490
    sget-object v11, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v13, 0x14

    invoke-virtual {v11, v13}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 4491
    sget-object v11, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v13, 0x14

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v13, v14, v15}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 4492
    .local v4, msgFallBackfromAppPause:Landroid/os/Message;
    sget-object v11, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const-wide/16 v13, 0xbb8

    invoke-virtual {v11, v4, v13, v14}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4508
    .end local v3           #msg2:Landroid/os/Message;
    .end local v4           #msgFallBackfromAppPause:Landroid/os/Message;
    :cond_2
    :goto_1
    const/4 v9, 0x0

    goto :goto_0

    .line 4499
    :cond_3
    const/4 v11, 0x5

    if-ne v1, v11, :cond_2

    .line 4502
    sget-object v11, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v13, 0x4

    invoke-virtual {v11, v13}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 4503
    .local v6, msgTimeOut:Landroid/os/Message;
    sget-object v11, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const-wide/32 v13, 0x1d4c0

    invoke-virtual {v11, v6, v13, v14}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4504
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/server/WirelessDisplayService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v11}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 4505
    sget-object v11, Lcom/htc/server/WirelessDisplayService;->isMusicAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    .line 4619
    .end local v1           #condState:I
    .end local v6           #msgTimeOut:Landroid/os/Message;
    .end local v8           #previousState:I
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 4509
    .restart local v1       #condState:I
    .restart local v8       #previousState:I
    :cond_4
    const/4 v11, 0x2

    if-ne v8, v11, :cond_5

    .line 4510
    const/4 v9, 0x0

    goto :goto_0

    .line 4511
    :cond_5
    const/4 v11, 0x4

    if-ne v8, v11, :cond_6

    .line 4518
    const/4 v11, 0x4

    if-ne v1, v11, :cond_0

    .line 4519
    :try_start_1
    sget-object v11, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v13, 0x29

    const/16 v14, 0x2a

    const/16 v15, 0x2d

    invoke-virtual {v11, v13, v14, v15}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 4520
    .local v2, msg:Landroid/os/Message;
    sget-object v11, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const-wide/16 v13, 0x1

    invoke-virtual {v11, v2, v13, v14}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 4528
    .end local v2           #msg:Landroid/os/Message;
    :cond_6
    const/16 v11, 0x9

    if-ne v8, v11, :cond_0

    .line 4535
    const/4 v11, 0x4

    if-ne v1, v11, :cond_0

    .line 4536
    sget-object v11, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v13, 0x29

    const/16 v14, 0x2a

    const/16 v15, 0x2e

    invoke-virtual {v11, v13, v14, v15}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 4537
    .restart local v2       #msg:Landroid/os/Message;
    sget-object v11, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const-wide/16 v13, 0x1

    invoke-virtual {v11, v2, v13, v14}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 4546
    .end local v2           #msg:Landroid/os/Message;
    :cond_7
    sget-object v11, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v13, 0x14

    invoke-virtual {v11, v13}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 4547
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/htc/server/WirelessDisplayService;->app_req_status:Ljava/lang/Boolean;

    .line 4548
    const/4 v11, 0x4

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11, v13}, Lcom/htc/server/WirelessDisplayService;->updateMirrorPauseState(IIZ)V

    .line 4549
    const/4 v11, 0x3

    if-ne v8, v11, :cond_a

    .line 4550
    sget-object v11, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v13, 0x1

    const/4 v14, 0x7

    const/4 v15, 0x0

    invoke-virtual {v11, v13, v14, v15}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 4551
    .restart local v2       #msg:Landroid/os/Message;
    sget-object v11, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v11, v2}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 4556
    sget-object v11, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v13, 0x29

    const/16 v14, 0x2b

    const/16 v15, 0x2c

    invoke-virtual {v11, v13, v14, v15}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .line 4557
    .local v5, msgPause:Landroid/os/Message;
    sget-object v11, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v13, 0x29

    invoke-virtual {v11, v13}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 4560
    sget-object v11, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const-wide/16 v13, 0x3e8

    invoke-virtual {v11, v5, v13, v14}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4563
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;

    const-string v13, "4.5"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;

    const-string v13, "4.0"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 4564
    :cond_8
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/htc/server/WirelessDisplayService;->startStopVideo(Z)V

    goto/16 :goto_0

    .line 4566
    :cond_9
    sget-object v11, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v13, 0x74

    invoke-virtual {v11, v13}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 4567
    sget-object v11, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v14, 0x75

    const/4 v15, 0x3

    const/16 v16, 0x2

    invoke-virtual/range {v13 .. v16}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 4568
    sget-object v11, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v14, 0x75

    const/4 v15, 0x3

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 4581
    .end local v2           #msg:Landroid/os/Message;
    .end local v5           #msgPause:Landroid/os/Message;
    :cond_a
    const/4 v11, 0x2

    if-ne v8, v11, :cond_b

    .line 4583
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 4584
    :cond_b
    const/4 v11, 0x4

    if-ne v8, v11, :cond_c

    .line 4593
    const-string v11, "WirelessDisplayService"

    const-string v13, "When screen is locked DLNA should not call any function"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4594
    const/4 v9, -0x1

    goto/16 :goto_0

    .line 4595
    :cond_c
    const/16 v11, 0x9

    if-ne v8, v11, :cond_d

    .line 4603
    const-string v11, "WirelessDisplayService"

    const-string v13, "When in Call DLNA should not call any function"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4604
    const/4 v9, -0x1

    goto/16 :goto_0

    .line 4605
    :cond_d
    const/4 v11, 0x7

    if-ne v8, v11, :cond_0

    .line 4616
    const-string v11, "WirelessDisplayService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Already in APP_PAUSE and condState:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public setWifiNetworkLimit(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 5245
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v1

    .line 5246
    .local v1, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v0

    .line 5247
    .local v0, pid:I
    const-string v2, "WirelessDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWifiNetworkLimit: enable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,Uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5248
    if-eqz p1, :cond_0

    .line 5249
    const-string v2, "sys.ml.wifilock"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5253
    :goto_0
    return-void

    .line 5251
    :cond_0
    const-string v2, "sys.ml.wifilock"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startPatternLockFakeMirror(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 5192
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v1

    .line 5193
    .local v1, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v0

    .line 5194
    .local v0, pid:I
    const-string v2, "WirelessDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startPatternLockFakeMirror: enable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,Uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5195
    if-eqz p1, :cond_0

    .line 5196
    const-string v2, "sys.ml.uilock"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5200
    :goto_0
    return-void

    .line 5198
    :cond_0
    const-string v2, "sys.ml.uilock"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopWivuDiscovery()V
    .locals 8

    .prologue
    .line 5384
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v3

    .line 5385
    .local v3, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v1

    .line 5386
    .local v1, pid:I
    const-string v4, "WirelessDisplayService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stopWivuDiscovery(), Pid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,Uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5391
    sget-object v4, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v5, 0x1f

    const/16 v6, 0x21

    const/4 v7, -0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 5392
    .local v2, plug:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 5394
    sget-object v4, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5395
    .local v0, m:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5397
    return-void
.end method

.method public usedDongleFound()Z
    .locals 7

    .prologue
    .line 5538
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v2

    .line 5539
    .local v2, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v1

    .line 5540
    .local v1, pid:I
    const/4 v0, 0x0

    .line 5541
    .local v0, found:Z
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->getUsedDongleList()Ljava/util/List;

    move-result-object v3

    .line 5542
    .local v3, usedDongleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 5543
    const/4 v0, 0x1

    .line 5545
    :cond_0
    const-string v4, "WirelessDisplayService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "usedDongleFound uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", usedDongleList Number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5546
    return v0
.end method
