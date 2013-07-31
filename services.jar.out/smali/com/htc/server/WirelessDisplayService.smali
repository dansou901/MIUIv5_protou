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
.field private static final ANIMATOR_DURATION_SCALE:I = 0x2

.field private static final APP_LOCK:I = 0x47

.field private static final APP_PAUSE:I = 0x2c

.field private static final CALL_ONLY:I = 0x4b

.field private static final CALL_PAUSE:I = 0x2e

.field private static final DBG:Z = true

.field private static final DEBUG_INFO_CACHE_SIZE:I = 0xc8

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

.field private static final HANDLE_DISABLE_SWITCH_TOPOLOGY_DIALOG:I = 0xde

.field private static final HANDLE_FINGER_GESTURE:I = 0x6f

.field private static final HANDLE_FINGER_GESTURE_DIRECTION:I = 0x71

.field private static final HANDLE_GET_DEVICE_IP:I = 0x2

.field private static final HANDLE_MIRROR_FALLBACK:I = 0x14

.field private static final HANDLE_PROCESS_WFDSERVICE:I = 0x70

.field private static final HANDLE_RESET_FINGERGESTURE_FLAG:I = 0x73

.field private static final HANDLE_RESET_WDS_USABLE_FLAG:I = 0x13

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

.field private static final INTENT_NOTIFY_PINCODE_AUTHENTICATION:Ljava/lang/String; = "com.htc.intent.action.INTENT_NOTIFY_PINCODE_AUTHENTICATION"

.field private static final INTENT_NOTIFY_RECONNECT_DFS_WIFI:Ljava/lang/String; = "com.htc.wifidisplay.NOTIFY_RECONNECT_DFS_WIFI"

.field private static final INTENT_NOTIFY_UNCONFIG_DONGLE_FOUND:Ljava/lang/String; = "com.htc.intent.action.WIRELESS_DISPLAY_NOTIFY_UNCONFIG_DONGLE_FOUND"

.field private static final INTENT_NOTIFY_UPDATE_DONGLE_STATE:Ljava/lang/String; = "com.htc.intent.action.NOTIFY_UPDATE_DONGLE_STATE"

.field private static final INTENT_PINCODE_CHECK_DONE:Ljava/lang/String; = "com.htc.wifidisplay.INTENT_PINCODE_CHECK_DONE"

.field private static final INTENT_WIRELESS_DISPLAY_MIRROR_RESULT:Ljava/lang/String; = "com.htc.intent.action.WIRELESS_DISPLAY_MIRROR_RESULT"

.field private static final INTENT_WIRELESS_DISPLAY_OUTPUTTV_RESULT:Ljava/lang/String; = "com.htc.intent.action.WIRELESS_DISPLAY_OUTPUTTV_RESULT"

.field private static final INTENT_WIRELESS_DISPLAY_OUTPUTTV_SHOW:Ljava/lang/String; = "com.htc.intent.action.WIRELESS_DISPLAY_OUTPUTTV_SHOW"

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

.field private static isJoinMultiCastGroup:Ljava/util/concurrent/atomic/AtomicBoolean;

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

.field private static wfdservice_usable:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final DELAY_RESTART_MR:I

.field private final DELAY_START_MR:I

.field private final FAILED:I

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

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurNetworkInterface:Ljava/lang/String;

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

.field private final mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mNotifyUpgrade:Ljava/lang/Boolean;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRecorder:Landroid/media/MediaRecorder;

.field private final mRecorderErrorCallback:Lcom/htc/server/WirelessDisplayService$RecorderErrorCallback;

.field private mRecording:Z

.field private mSoftapInterface:Ljava/lang/String;

.field private mSupportAAC:Z

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

.field private mVideoPort:Ljava/lang/String;

.field private mWfdServiceRetryCount:I

.field private mWiFiInterface:Ljava/lang/String;

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

.field private notSupportConcurrent:Z

.field private notifyDongleFWupgradeVersion:D

.field private onlySupportDLNA:Z

.field private supportAudioAACVersion:D

.field private synchronize_lock:Ljava/lang/Object;

.field private tempDongle:Ljava/lang/String;

.field private tempFingerIndicator:I

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

    .line 332
    const-string v0, "(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->mIPv4Pattern:Ljava/util/regex/Pattern;

    .line 334
    const-string v0, "AUDIO=([0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->mAudioPattern:Ljava/util/regex/Pattern;

    .line 335
    const-string v0, "VIDEO=([0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->mVideoPattern:Ljava/util/regex/Pattern;

    .line 336
    const-string v0, "((?:[0-9a-fA-F]{2}:){5}[0-9a-fA-F]{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->mBssidPattern:Ljava/util/regex/Pattern;

    .line 338
    const-string v0, "^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    .line 415
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->mHdmiPlug:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 420
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->cur_plugged_status:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 432
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->cur_discovery_status:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 437
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->finger_gesture_enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 442
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->preload_DLNA:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 447
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->wfdservice_usable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 452
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->mWifiScanbyFingerGesture:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 459
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->isWifiBGScan:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 464
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->isJoinMultiCastGroup:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 466
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->isFWUpgrading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 479
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->pre_request:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 484
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->isWifiDFS:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 489
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->isPopDialog:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 494
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->mIsHotspotIpAddressReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 657
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->needToSwitch:Ljava/lang/Boolean;

    .line 721
    const-string v0, ""

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->autoTestFlag:Ljava/lang/String;

    .line 5738
    const-string v0, "wivu"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 5739
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 23
    .parameter "context"

    .prologue
    .line 2273
    invoke-direct/range {p0 .. p0}, Lcom/htc/service/IWirelessDisplayService$Stub;-><init>()V

    .line 142
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->mInitComplete:Z

    .line 146
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->wl:Landroid/os/PowerManager$WakeLock;

    .line 316
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->DELAY_START_MR:I

    .line 317
    const/16 v19, 0x3e8

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->DELAY_RESTART_MR:I

    .line 318
    new-instance v19, Ljava/util/ArrayList;

    const/16 v20, 0x4

    invoke-direct/range {v19 .. v20}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    .line 348
    const-string v19, "wlan0"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;

    .line 375
    new-instance v19, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v20, 0x49

    invoke-direct/range {v19 .. v20}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 385
    new-instance v19, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v20, 0x49

    invoke-direct/range {v19 .. v20}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mCallScreenException:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 398
    new-instance v19, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v20, 0x0

    invoke-direct/range {v19 .. v20}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 400
    new-instance v19, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v20, 0x1

    invoke-direct/range {v19 .. v20}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 401
    new-instance v19, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v20, 0x0

    invoke-direct/range {v19 .. v20}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 408
    new-instance v19, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v20, 0x0

    invoke-direct/range {v19 .. v20}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mTurnOffHotspotWakeLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 427
    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->app_req_status:Ljava/lang/Boolean;

    .line 471
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mNotifyUpgrade:Ljava/lang/Boolean;

    .line 505
    const/16 v19, 0xa

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I

    .line 510
    const/16 v19, 0x3

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I

    .line 526
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->dialogResult:I

    .line 528
    const-string v19, ""

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;

    .line 650
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z

    .line 672
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z

    .line 677
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->isResume:Z

    .line 683
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->mIsStartFullScan:Z

    .line 688
    new-instance v19, Ljava/lang/Object;

    invoke-direct/range {v19 .. v19}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->synchronize_lock:Ljava/lang/Object;

    .line 693
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->onlySupportDLNA:Z

    .line 698
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->isQCT:Z

    .line 703
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->notSupportConcurrent:Z

    .line 708
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->isNVCPU:Z

    .line 710
    const-string v19, "/data/misc/wifidisplay_usedList"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mUsedDongleList_FilePath:Ljava/lang/String;

    .line 712
    const-wide/high16 v19, 0x4000

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/server/WirelessDisplayService;->notifyDongleFWupgradeVersion:D

    .line 714
    const-wide v19, 0x40c3880000000000L

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/server/WirelessDisplayService;->supportAudioAACVersion:D

    .line 2668
    new-instance v19, Lcom/htc/server/WirelessDisplayService$15;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$15;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mAutoConfigConnection:Landroid/content/ServiceConnection;

    .line 3801
    const-string v19, "192.168.1.1:5634/5638"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;

    .line 5430
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    .line 5431
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->mRecording:Z

    .line 5432
    const v19, 0x2dc6c0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->mBitrate:I

    .line 5433
    const/16 v19, 0x1e

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->mFrameRate:I

    .line 5434
    const/high16 v19, 0x3f80

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->mInterval:F

    .line 5435
    new-instance v19, Lcom/htc/server/WirelessDisplayService$InfoListener;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService$InfoListener;-><init>(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/WirelessDisplayService$1;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mInfoListener:Lcom/htc/server/WirelessDisplayService$InfoListener;

    .line 5436
    new-instance v19, Lcom/htc/server/WirelessDisplayService$RecorderErrorCallback;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService$RecorderErrorCallback;-><init>(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/WirelessDisplayService$1;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mRecorderErrorCallback:Lcom/htc/server/WirelessDisplayService$RecorderErrorCallback;

    .line 5439
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->mSupportAAC:Z

    .line 5441
    const/16 v19, 0x3c0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->VIDEOWIDTH:I

    .line 5442
    const/16 v19, 0x220

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->VIDEOHEIGHT:I

    .line 5443
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->SUCCESS:I

    .line 5444
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->FAILED:I

    .line 2275
    new-instance v19, Lcom/htc/server/WirelessDisplayNotification;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayNotification;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mWirelessDisplayNotification:Lcom/htc/server/WirelessDisplayNotification;

    .line 2278
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    .line 2279
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/WirelessDisplayService;->init()V

    .line 2281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "wifi"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2283
    const-string v19, "window"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mWindowManager:Landroid/view/IWindowManager;

    .line 2284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "power"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/PowerManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mPowerManager:Landroid/os/PowerManager;

    .line 2285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "connectivity"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/ConnectivityManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 2286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "audio"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/media/AudioManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mAudioManager:Landroid/media/AudioManager;

    .line 2287
    new-instance v19, Ljava/util/Hashtable;

    const/16 v20, 0x1e

    invoke-direct/range {v19 .. v20}, Ljava/util/Hashtable;-><init>(I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    .line 2288
    new-instance v19, Ljava/util/Hashtable;

    const/16 v20, 0x1e

    invoke-direct/range {v19 .. v20}, Ljava/util/Hashtable;-><init>(I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mWivuCache:Ljava/util/Hashtable;

    .line 2289
    new-instance v19, Ljava/util/Hashtable;

    const/16 v20, 0x1e

    invoke-direct/range {v19 .. v20}, Ljava/util/Hashtable;-><init>(I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mUsedDongleCache:Ljava/util/Hashtable;

    .line 2290
    new-instance v19, Ljava/util/Hashtable;

    const/16 v20, 0xc8

    invoke-direct/range {v19 .. v20}, Ljava/util/Hashtable;-><init>(I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mHtcDebugMessage:Ljava/util/Hashtable;

    .line 2291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "alarm"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/AlarmManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 2292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const-string v21, "WirelessDisplayService"

    invoke-virtual/range {v19 .. v21}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->wl:Landroid/os/PowerManager$WakeLock;

    .line 2294
    new-instance v17, Landroid/content/Intent;

    const-string v19, "com.htc.intent.action.INTERT_SYSTEM_NOTIFY_TURNOFF_HOTSPOT_TIMEOUT"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2295
    .local v17, turnOffHotspotIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v17

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mTurnOffHotspotIntent:Landroid/app/PendingIntent;

    .line 2297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    new-instance v20, Lcom/htc/server/WirelessDisplayService$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$1;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v21, Landroid/content/IntentFilter;

    const-string v22, "com.htc.intent.action.INTERT_SYSTEM_NOTIFY_TURNOFF_HOTSPOT_TIMEOUT"

    invoke-direct/range {v21 .. v22}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    new-instance v20, Lcom/htc/server/WirelessDisplayService$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$2;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v21, Landroid/content/IntentFilter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v22, v0

    const-string v22, "com.htc.wifi.SET_HOTSPOT_INTERFACE_ADDRESS"

    invoke-direct/range {v21 .. v22}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    new-instance v20, Lcom/htc/server/WirelessDisplayService$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$3;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v21, Landroid/content/IntentFilter;

    const-string v22, "android.net.wifi.SCAN_RESULTS"

    invoke-direct/range {v21 .. v22}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    new-instance v20, Lcom/htc/server/WirelessDisplayService$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$4;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v21, Landroid/content/IntentFilter;

    const-string v22, "android.net.wifi.DONGLE_SCAN_RESULTS"

    invoke-direct/range {v21 .. v22}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    new-instance v20, Lcom/htc/server/WirelessDisplayService$5;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$5;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v21, Landroid/content/IntentFilter;

    const-string v22, "com.htc.wifidisplay.NOTIFY_CONCURRENT_MODE_ENABLED"

    invoke-direct/range {v21 .. v22}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    new-instance v20, Lcom/htc/server/WirelessDisplayService$6;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$6;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v21, Landroid/content/IntentFilter;

    const-string v22, "com.htc.wifidisplay.NOTIFY_DONGLE_FIRMWARE_UPGRADE"

    invoke-direct/range {v21 .. v22}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    new-instance v20, Lcom/htc/server/WirelessDisplayService$7;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$7;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v21, Landroid/content/IntentFilter;

    const-string v22, "com.htc.wifidisplay.NOTIFY_RECONNECT_DFS_WIFI"

    invoke-direct/range {v21 .. v22}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    new-instance v20, Lcom/htc/server/WirelessDisplayService$8;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$8;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v21, Landroid/content/IntentFilter;

    const-string v22, "com.htc.wifidisplay.INTENT_PINCODE_CHECK_DONE"

    invoke-direct/range {v21 .. v22}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    new-instance v20, Lcom/htc/server/WirelessDisplayService$9;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$9;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v21, Landroid/content/IntentFilter;

    const-string v22, "com.htc.intent.action.NOTIFY_UPDATE_DONGLE_STATE"

    invoke-direct/range {v21 .. v22}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    new-instance v20, Lcom/htc/server/WirelessDisplayService$10;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$10;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v21, Landroid/content/IntentFilter;

    const-string v22, "com.htc.wifidisplay.SWITCH_ON_OFF_MIRROR_MODE"

    invoke-direct/range {v21 .. v22}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    new-instance v20, Lcom/htc/server/WirelessDisplayService$11;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$11;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v21, Landroid/content/IntentFilter;

    const-string v22, "com.htc.wifidisplay.CONFIGURE_STATE_CHANGED_ACTION"

    invoke-direct/range {v21 .. v22}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    new-instance v20, Lcom/htc/server/WirelessDisplayService$12;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$12;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v21, Landroid/content/IntentFilter;

    const-string v22, "com.htc.action.MULTIPLE_FINGER_SWIPE_EVENT"

    invoke-direct/range {v21 .. v22}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    new-instance v20, Lcom/htc/server/WirelessDisplayService$13;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$13;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v21, Landroid/content/IntentFilter;

    const-string v22, "com.htc.wifidisplay.NOTIFICATION_CONFIGURE_TOOL"

    invoke-direct/range {v21 .. v22}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    new-instance v20, Lcom/htc/server/WirelessDisplayService$14;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$14;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    new-instance v21, Landroid/content/IntentFilter;

    const-string v22, "com.htc.intent.action.WIFI_BGSCAN_NOTIFY"

    invoke-direct/range {v21 .. v22}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2556
    new-instance v8, Landroid/content/IntentFilter;

    const-string v19, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2557
    .local v8, filter:Landroid/content/IntentFilter;
    const-string v19, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2558
    const-string v19, "android.intent.action.USER_PRESENT"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2560
    new-instance v14, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v14, v0, v1}, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;-><init>(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/WirelessDisplayService$1;)V

    .line 2561
    .local v14, mReceiver:Landroid/content/BroadcastReceiver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2567
    new-instance v18, Landroid/content/IntentFilter;

    const-string v19, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct/range {v18 .. v19}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2568
    .local v18, wifiFilter:Landroid/content/IntentFilter;
    const-string v19, "android.net.wifi.WIFIDISPLAY_AP_STATE_CHANGED"

    invoke-virtual/range {v18 .. v19}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2569
    const-string v19, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual/range {v18 .. v19}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2571
    new-instance v15, Lcom/htc/server/WirelessDisplayService$WifiReceiver;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v15, v0, v1}, Lcom/htc/server/WirelessDisplayService$WifiReceiver;-><init>(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/WirelessDisplayService$1;)V

    .line 2572
    .local v15, mWifiReceiver:Landroid/content/BroadcastReceiver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v15, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2576
    new-instance v4, Landroid/content/IntentFilter;

    const-string v19, "android.intent.action.PHONE_STATE"

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2579
    .local v4, callFilter:Landroid/content/IntentFilter;
    new-instance v10, Lcom/htc/server/WirelessDisplayService$CallReceiver;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/htc/server/WirelessDisplayService$CallReceiver;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    .line 2580
    .local v10, mCallReceiver:Landroid/content/BroadcastReceiver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2584
    new-instance v9, Landroid/content/IntentFilter;

    const-string v19, "android.intent.action.HDMI_AUDIO_PLUG"

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2586
    .local v9, hdmiFilter:Landroid/content/IntentFilter;
    new-instance v13, Lcom/htc/server/WirelessDisplayService$HdmiReceiver;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/htc/server/WirelessDisplayService$HdmiReceiver;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    .line 2587
    .local v13, mHdmiReceiver:Landroid/content/BroadcastReceiver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2590
    new-instance v7, Landroid/content/IntentFilter;

    const-string v19, "com.htc.intent.action.WIRELESS_DISPLAY_OUTPUTTV_RESULT"

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2591
    .local v7, dialogFilter:Landroid/content/IntentFilter;
    new-instance v12, Lcom/htc/server/WirelessDisplayService$DialogResultReceiver;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v12, v0, v1}, Lcom/htc/server/WirelessDisplayService$DialogResultReceiver;-><init>(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/WirelessDisplayService$1;)V

    .line 2592
    .local v12, mDialogResultReceiver:Landroid/content/BroadcastReceiver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2594
    new-instance v5, Landroid/content/IntentFilter;

    const-string v19, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2596
    .local v5, connectivityFilter:Landroid/content/IntentFilter;
    new-instance v11, Lcom/htc/server/WirelessDisplayService$ConnectivityReceiver;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v11, v0, v1}, Lcom/htc/server/WirelessDisplayService$ConnectivityReceiver;-><init>(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/WirelessDisplayService$1;)V

    .line 2597
    .local v11, mConnectivityReceiver:Landroid/content/BroadcastReceiver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2600
    const-string v19, "wifi.softapconcurrent.interface"

    const-string v20, "wlan1"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mSoftapInterface:Ljava/lang/String;

    .line 2601
    const-string v19, "wifi.interface"

    const-string v20, "wlan0"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;

    .line 2602
    const-string v19, "persist.sys.wfd.lastdongle"

    const-string v20, ""

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;

    .line 2603
    const-string v19, "/data/misc/wifidisplay.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService;->readConfigFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;

    .line 2604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mUsedDongleList_FilePath:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService;->readConfigFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2605
    .local v16, readUsedDongleListResult:Ljava/lang/String;
    const-string v19, "Success"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 2606
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/WirelessDisplayService;->updateUsedDongleListFile()V

    .line 2609
    :cond_0
    const-string v19, "ro.board.platform"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2610
    .local v6, device:Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 2611
    const-string v19, "WirelessDisplayService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Platform is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2612
    const-string v19, "msm7x30"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    const-string v19, "msm7k"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 2613
    :cond_1
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->onlySupportDLNA:Z

    .line 2630
    :cond_2
    :goto_0
    sget-short v19, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v20, 0xdf

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    sget-short v19, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v20, 0xe2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    sget-short v19, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v20, 0xe3

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    sget-short v19, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v20, 0xe4

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    sget-short v19, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v20, 0xe5

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    sget-short v19, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v20, 0x23f

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    sget-short v19, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v20, 0x240

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    sget-short v19, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v20, 0x241

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    sget-short v19, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v20, 0x242

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 2639
    :cond_3
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->onlySupportDLNA:Z

    .line 2640
    const-string v19, "WirelessDisplayService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Project: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-short v21, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " onlySupportDLNA: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/server/WirelessDisplayService;->onlySupportDLNA:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2643
    :cond_4
    sget-short v19, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v20, 0xe3

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    sget-short v19, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v20, 0xe4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 2645
    :cond_5
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->notSupportConcurrent:Z

    .line 2646
    const-string v19, "WirelessDisplayService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Project: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-short v21, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " notSupportConcurrent: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/server/WirelessDisplayService;->notSupportConcurrent:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2657
    :cond_6
    sget-short v19, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v20, 0x26

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    sget-short v19, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v20, 0x25

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    sget-short v19, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v20, 0x146

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    sget-short v19, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v20, 0x147

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    sget-short v19, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v20, 0x149

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 2662
    :cond_7
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->isNVCPU:Z

    .line 2663
    const-string v19, "WirelessDisplayService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Project: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-short v21, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " isNVCPU: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/server/WirelessDisplayService;->isNVCPU:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    :cond_8
    return-void

    .line 2614
    :cond_9
    const-string v19, "msm8960"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_a

    const-string v19, "msm8660"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 2615
    :cond_a
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->isQCT:Z

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/server/WirelessDisplayService;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/htc/server/WirelessDisplayService;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/htc/server/WirelessDisplayService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->clearDongleCache()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->notifyWHDMI()V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/server/WirelessDisplayService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/server/WirelessDisplayService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->saveLimitedApInfo()V

    return-void
.end method

.method static synthetic access$2200(Lcom/htc/server/WirelessDisplayService;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->fallBackFromAppPause()V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mTurnOffHotspotWakeLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/server/WirelessDisplayService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/htc/server/WirelessDisplayService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/htc/server/WirelessDisplayService;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mAutoConfigConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/server/WirelessDisplayService;)Landroid/os/IBinder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/htc/server/WirelessDisplayService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$2800()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->wfdservice_usable:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Lcom/htc/server/WirelessDisplayService;->addToHtcWDSrvHistory(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/server/WirelessDisplayService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget v0, p0, Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I

    return v0
.end method

.method static synthetic access$3000(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->binder_finishService()V

    return-void
.end method

.method static synthetic access$302(Lcom/htc/server/WirelessDisplayService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput p1, p0, Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I

    return p1
.end method

.method static synthetic access$310(Lcom/htc/server/WirelessDisplayService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 135
    iget v0, p0, Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I

    return v0
.end method

.method static synthetic access$3100(Lcom/htc/server/WirelessDisplayService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService;->constructDongleInfoFromWifi(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->updateNotification()V

    return-void
.end method

.method static synthetic access$3300()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->cur_plugged_status:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$3400()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->cur_discovery_status:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService;->updteDongleInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->pre_request:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$3700()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->mIPv4Pattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3900()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->mAudioPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mAudioPort:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->mAudioPort:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4100()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->mVideoPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mVideoPort:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->mVideoPort:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 135
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/server/WirelessDisplayService;->setIPandPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->synchronize_lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->app_req_status:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/htc/server/WirelessDisplayService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z

    return v0
.end method

.method static synthetic access$4602(Lcom/htc/server/WirelessDisplayService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z

    return p1
.end method

.method static synthetic access$4700()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->needToSwitch:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$4702(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"

    .prologue
    .line 135
    sput-object p0, Lcom/htc/server/WirelessDisplayService;->needToSwitch:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/htc/server/WirelessDisplayService;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService;->updateWivuList([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->updateFWUpgradeNotification()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic access$5100()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->isJoinMultiCastGroup:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/htc/server/WirelessDisplayService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/htc/server/WirelessDisplayService;->mSupportAAC:Z

    return v0
.end method

.method static synthetic access$5300(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService;->startDisplayRecorder(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Lcom/htc/server/WirelessDisplayService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->stopDisplayRecorder()I

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->gotoPauseState()V

    return-void
.end method

.method static synthetic access$5700(Lcom/htc/server/WirelessDisplayService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService;->startPatternLockStopAudio(Z)V

    return-void
.end method

.method static synthetic access$5800(Lcom/htc/server/WirelessDisplayService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->writeConcurrentAPMacAddress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5900(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5902(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService;->readConfigFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6100(Lcom/htc/server/WirelessDisplayService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget v0, p0, Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I

    return v0
.end method

.method static synthetic access$6102(Lcom/htc/server/WirelessDisplayService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput p1, p0, Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I

    return p1
.end method

.method static synthetic access$6110(Lcom/htc/server/WirelessDisplayService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 135
    iget v0, p0, Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I

    return v0
.end method

.method static synthetic access$6200(Lcom/htc/server/WirelessDisplayService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService;->binder_setMode(I)V

    return-void
.end method

.method static synthetic access$6300(Lcom/htc/server/WirelessDisplayService;Lcom/htc/service/DongleInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService;->binder_attemptToConfigure(Lcom/htc/service/DongleInfo;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/htc/server/WirelessDisplayService;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Lcom/htc/server/WirelessDisplayService;->mirrorOnOffDirection(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$6502(Lcom/htc/server/WirelessDisplayService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput p1, p0, Lcom/htc/server/WirelessDisplayService;->tempFingerIndicator:I

    return p1
.end method

.method static synthetic access$6600()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->mWifiScanbyFingerGesture:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$6700()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->preload_DLNA:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/htc/server/WirelessDisplayService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/htc/server/WirelessDisplayService;->notSupportConcurrent:Z

    return v0
.end method

.method static synthetic access$6900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/Hashtable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    return-object v0
.end method

.method static synthetic access$7000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->autoTestFlag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 135
    sput-object p0, Lcom/htc/server/WirelessDisplayService;->autoTestFlag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;
    .locals 0
    .parameter "x0"

    .prologue
    .line 135
    sput-object p0, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    return-object p0
.end method

.method static synthetic access$7100()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->isWifiDFS:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->cancelTurnOffConcurrentHotspot()V

    return-void
.end method

.method static synthetic access$7300()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->mIsHotspotIpAddressReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$7400()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->isFWUpgrading:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mSoftapInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/htc/server/WirelessDisplayService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService;->setDialogResult(I)V

    return-void
.end method

.method static synthetic access$7700()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->isPopDialog:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$7800()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->mHdmiPlug:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$7900()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->finger_gesture_enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/htc/server/WirelessDisplayService;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Lcom/htc/server/WirelessDisplayService;->turnOffConcurrentHotspot(J)V

    return-void
.end method

.method static synthetic access$8100(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService;->updateDongleStateToPaired(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8200()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->isWifiBGScan:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->initInThread()V

    return-void
.end method

.method static synthetic access$900()Lcom/htc/server/WirelessDisplayService$H;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    return-object v0
.end method

.method private addToHtcWDSrvHistory(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .parameter "event"
    .parameter "args"

    .prologue
    .line 4859
    new-instance v0, Lcom/htc/server/WirelessDisplayService$HtcWDSrvHistory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/server/WirelessDisplayService$HtcWDSrvHistory;-><init>(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/WirelessDisplayService$1;)V

    .line 4860
    .local v0, hist:Lcom/htc/server/WirelessDisplayService$HtcWDSrvHistory;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/server/WirelessDisplayService$HtcWDSrvHistory;->timeStamp:J

    .line 4861
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v1

    iput v1, v0, Lcom/htc/server/WirelessDisplayService$HtcWDSrvHistory;->pid:I

    .line 4862
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v1

    iput v1, v0, Lcom/htc/server/WirelessDisplayService$HtcWDSrvHistory;->uid:I

    .line 4863
    iput-object p1, v0, Lcom/htc/server/WirelessDisplayService$HtcWDSrvHistory;->event:Ljava/lang/String;

    .line 4864
    if-eqz p2, :cond_0

    .line 4865
    iput-object p2, v0, Lcom/htc/server/WirelessDisplayService$HtcWDSrvHistory;->args:[Ljava/lang/Object;

    .line 4867
    :cond_0
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mHtcDebugMessage:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4868
    return-void
.end method

.method private binder_attemptToConfigure(Lcom/htc/service/DongleInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    .line 2713
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2714
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2717
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.wfdservice.IWfdService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2718
    if-eqz p1, :cond_0

    .line 2719
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2720
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/htc/service/DongleInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2726
    :goto_0
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2727
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2733
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2734
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2736
    return-void

    .line 2723
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2728
    :catch_0
    move-exception v2

    .line 2733
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2734
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2733
    throw v2

    .line 2730
    :catch_1
    move-exception v2

    .line 2733
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_1
.end method

.method private binder_finishService()V
    .locals 5

    .prologue
    .line 2739
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2740
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2743
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.wfdservice.IWfdService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2745
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2746
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2752
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2753
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2755
    return-void

    .line 2752
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2753
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2752
    throw v2

    .line 2747
    :catch_0
    move-exception v2

    .line 2752
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 2749
    :catch_1
    move-exception v2

    .line 2752
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0
.end method

.method private binder_setMode(I)V
    .locals 5
    .parameter "mode"

    .prologue
    .line 2694
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2695
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2698
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.wfdservice.IWfdService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2699
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2700
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2701
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2707
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2708
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2710
    return-void

    .line 2707
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2708
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2707
    throw v2

    .line 2702
    :catch_0
    move-exception v2

    .line 2707
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 2704
    :catch_1
    move-exception v2

    .line 2707
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0
.end method

.method private cancelTurnOffConcurrentHotspot()V
    .locals 2

    .prologue
    .line 3740
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mTurnOffHotspotIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3741
    return-void
.end method

.method private checkDongleFWUpgrade(Lcom/htc/service/DongleInfo;)Z
    .locals 6
    .parameter "dongle"

    .prologue
    .line 4269
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

    .line 4270
    const/4 v2, 0x1

    .line 4271
    .local v2, isNeed:Z
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService;->transferDongleVersion(Lcom/htc/service/DongleInfo;)D

    move-result-wide v0

    .line 4272
    .local v0, dongleVersion:D
    const-wide/high16 v3, -0x4010

    cmpl-double v3, v0, v3

    if-eqz v3, :cond_0

    .line 4273
    iget-wide v3, p0, Lcom/htc/server/WirelessDisplayService;->notifyDongleFWupgradeVersion:D

    cmpl-double v3, v0, v3

    if-ltz v3, :cond_0

    .line 4274
    const/4 v2, 0x0

    .line 4277
    :cond_0
    return v2
.end method

.method private clearDongleCache()Z
    .locals 6

    .prologue
    .line 3282
    const/4 v2, 0x0

    .line 3283
    .local v2, isUpdate:Z
    iget-object v3, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3284
    const-string v3, "WirelessDisplayService"

    const-string v4, "clearDongleCache: Wivulist is already empty"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3304
    :cond_0
    return v2

    .line 3286
    :cond_1
    const/4 v2, 0x1

    .line 3287
    iget-object v3, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3288
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3289
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3290
    .local v0, element:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3291
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

    .line 3292
    iget-object v3, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3298
    :cond_3
    iget-object v3, p0, Lcom/htc/server/WirelessDisplayService;->mWivuCache:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3299
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

    .line 3300
    iget-object v3, p0, Lcom/htc/server/WirelessDisplayService;->mWivuCache:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private constructDongleInfoFromWifi(Z)V
    .locals 40
    .parameter "isDongleScan"

    .prologue
    .line 2888
    const-string v35, "WirelessDisplayService"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "constructDongleInfoFromWifi() dongleScan = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/net/wifi/WifiManager;->getDongleScanList()Ljava/util/List;

    move-result-object v26

    .line 2893
    .local v26, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2894
    .local v9, dongleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 2896
    .local v2, activeNetwork:Landroid/net/NetworkInfo;
    sget-object v35, Lcom/htc/server/WirelessDisplayService;->isWifiBGScan:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual/range {v35 .. v35}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v35

    if-eqz v35, :cond_1

    .line 2897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v20

    .line 2898
    .local v20, mFullWifiScanList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v20, :cond_1

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_1

    .line 2899
    if-eqz v2, :cond_1

    .line 2900
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_1

    .line 2901
    const-string v35, "WirelessDisplayService"

    const-string v36, "Wifi BG Scan, ignore it"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2902
    sget-object v35, Lcom/htc/server/WirelessDisplayService;->isWifiBGScan:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3089
    .end local v20           #mFullWifiScanList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_0
    :goto_0
    return-void

    .line 2909
    :cond_1
    if-eqz v26, :cond_18

    .line 2911
    const/4 v15, 0x0

    .local v15, ii:I
    :goto_1
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v35

    move/from16 v0, v35

    if-ge v15, v0, :cond_2

    .line 2912
    const-string v36, "WirelessDisplayService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Wifi Scan Result:"

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v26

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/net/wifi/ScanResult;

    invoke-virtual/range {v35 .. v35}, Landroid/net/wifi/ScanResult;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2911
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 2917
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    move-object/from16 v36, v0

    monitor-enter v36

    .line 2918
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v22

    .line 2919
    .local v22, macs:Ljava/util/Enumeration;
    :cond_3
    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v35

    if-eqz v35, :cond_8

    .line 2920
    invoke-interface/range {v22 .. v22}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 2921
    .local v21, mac:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_3

    .line 2922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    move-object/from16 v35, v0

    if-eqz v35, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;

    move-object/from16 v35, v0

    if-eqz v35, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_7

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v35

    const/16 v37, 0x8

    move/from16 v0, v35

    move/from16 v1, v37

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v35

    const/16 v37, 0x2

    move/from16 v0, v35

    move/from16 v1, v37

    if-ne v0, v1, :cond_7

    .line 2924
    :cond_6
    const-string v35, "WirelessDisplayService"

    const-string v37, "Should be not clean curDongle || tempDongle via Wifi Scan"

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2931
    .end local v21           #mac:Ljava/lang/String;
    .end local v22           #macs:Ljava/util/Enumeration;
    :catchall_0
    move-exception v35

    monitor-exit v36
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v35

    .line 2926
    .restart local v21       #mac:Ljava/lang/String;
    .restart local v22       #macs:Ljava/util/Enumeration;
    :cond_7
    :try_start_1
    const-string v35, "WirelessDisplayService"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "constructDongleInfoFromWifi: remove:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2931
    .end local v21           #mac:Ljava/lang/String;
    :cond_8
    monitor-exit v36
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2933
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_9
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_18

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/net/wifi/ScanResult;

    .line 2934
    .local v25, result:Landroid/net/wifi/ScanResult;
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "[DONGLE-"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_9

    .line 2938
    const/4 v7, 0x0

    .line 2940
    .local v7, dongle:Lcom/htc/service/DongleInfo;
    const/16 v18, 0x0

    .line 2941
    .local v18, key:Ljava/lang/String;
    const/4 v3, 0x0

    .line 2942
    .local v3, aph:Ljava/lang/String;
    const/4 v4, 0x0

    .line 2943
    .local v4, apm:Ljava/lang/String;
    const/16 v30, 0x0

    .line 2944
    .local v30, staBssid:Ljava/lang/String;
    const/16 v34, 0x0

    .line 2948
    .local v34, version:Ljava/lang/String;
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 2949
    .local v29, ssid:Ljava/lang/String;
    move-object/from16 v0, v25

    iget-object v5, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 2950
    .local v5, bssid:Ljava/lang/String;
    move-object/from16 v0, v25

    iget-object v14, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 2951
    .local v14, ieInfo:Ljava/lang/String;
    const-string v31, ""

    .line 2957
    .local v31, state:Ljava/lang/String;
    :try_start_2
    const-string v35, "[DONGLE-"

    move-object/from16 v0, v35

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v35

    move/from16 v0, v35

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v33

    .line 2958
    .local v33, subStr:Ljava/lang/String;
    const-string v35, "[DONGLE-"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_11

    .line 2960
    const-string v35, "-"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 2961
    .local v17, items:[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v35, v0

    const/16 v36, 0x6

    move/from16 v0, v35

    move/from16 v1, v36

    if-lt v0, v1, :cond_10

    .line 2963
    const/16 v35, 0x1

    aget-object v34, v17, v35

    .line 2964
    const/16 v35, 0x2

    aget-object v31, v17, v35

    .line 2965
    const/16 v35, 0x3

    aget-object v3, v17, v35

    .line 2966
    const/16 v35, 0x4

    aget-object v4, v17, v35

    .line 2968
    sget-object v35, Lcom/htc/server/WirelessDisplayService;->mBssidPattern:Ljava/util/regex/Pattern;

    const/16 v36, 0x5

    aget-object v36, v17, v36

    invoke-virtual/range {v35 .. v36}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v23

    .line 2969
    .local v23, matcher:Ljava/util/regex/Matcher;
    invoke-virtual/range {v23 .. v23}, Ljava/util/regex/Matcher;->find()Z

    move-result v35

    if-eqz v35, :cond_a

    .line 2970
    invoke-virtual/range {v23 .. v23}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v30

    .line 2971
    :cond_a
    const-string v35, "WirelessDisplayService"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "staBssid:"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2981
    .end local v17           #items:[Ljava/lang/String;
    .end local v23           #matcher:Ljava/util/regex/Matcher;
    :cond_b
    :goto_4
    move-object/from16 v18, v30

    .line 2983
    const-string v35, "WPS"

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_12

    .line 2984
    const/16 v32, 0x1

    .line 3000
    .local v32, status:I
    :goto_5
    if-eqz v18, :cond_c

    .line 3001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v0, v35

    check-cast v0, Lcom/htc/service/DongleInfo;

    move-object v7, v0

    .line 3003
    :cond_c
    if-eqz v18, :cond_1d

    if-nez v7, :cond_1d

    .line 3004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mWivuCache:Ljava/util/Hashtable;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v0, v35

    check-cast v0, Lcom/htc/service/DongleInfo;

    move-object v7, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v8, v7

    .line 3006
    .end local v7           #dongle:Lcom/htc/service/DongleInfo;
    .local v8, dongle:Lcom/htc/service/DongleInfo;
    :goto_6
    if-nez v8, :cond_1c

    .line 3007
    :try_start_3
    new-instance v7, Lcom/htc/service/DongleInfo;

    invoke-direct {v7}, Lcom/htc/service/DongleInfo;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 3008
    .end local v8           #dongle:Lcom/htc/service/DongleInfo;
    .restart local v7       #dongle:Lcom/htc/service/DongleInfo;
    const/16 v35, 0x0

    :try_start_4
    move/from16 v0, v35

    iput-boolean v0, v7, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    .line 3009
    const/16 v35, 0x0

    move/from16 v0, v35

    iput-boolean v0, v7, Lcom/htc/service/DongleInfo;->isConnectable:Z

    .line 3010
    move-object/from16 v0, v30

    iput-object v0, v7, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    .line 3011
    const-wide/16 v35, 0x0

    move-wide/from16 v0, v35

    iput-wide v0, v7, Lcom/htc/service/DongleInfo;->capabilities:J

    .line 3014
    :goto_7
    iput-object v5, v7, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    .line 3015
    move-object/from16 v0, v29

    iput-object v0, v7, Lcom/htc/service/DongleInfo;->name:Ljava/lang/String;

    .line 3016
    move-object/from16 v0, v29

    iput-object v0, v7, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    .line 3017
    move/from16 v0, v32

    iput v0, v7, Lcom/htc/service/DongleInfo;->status:I

    .line 3018
    move-object/from16 v0, v34

    iput-object v0, v7, Lcom/htc/service/DongleInfo;->version:Ljava/lang/String;

    .line 3019
    iput-object v3, v7, Lcom/htc/service/DongleInfo;->currentAph:Ljava/lang/String;

    .line 3020
    iput-object v4, v7, Lcom/htc/service/DongleInfo;->pairedApm:Ljava/lang/String;

    .line 3022
    const/16 v35, 0x4

    move/from16 v0, v32

    move/from16 v1, v35

    if-ne v0, v1, :cond_d

    .line 3023
    const/16 v35, 0x0

    move/from16 v0, v35

    iput-boolean v0, v7, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    .line 3037
    :cond_d
    const-string v35, "[DLNA-"

    move-object/from16 v0, v35

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 3038
    .local v6, dlnaIndex:I
    if-lez v6, :cond_e

    .line 3040
    add-int/lit8 v35, v6, 0x6

    add-int/lit8 v36, v6, 0xe

    move/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 3041
    .local v12, hexStr:Ljava/lang/String;
    const/16 v35, 0x10

    move/from16 v0, v35

    invoke-static {v12, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v35

    move-wide/from16 v0, v35

    iput-wide v0, v7, Lcom/htc/service/DongleInfo;->capabilities:J

    .line 3043
    .end local v12           #hexStr:Ljava/lang/String;
    :cond_e
    const-string v35, "[RSSI-"

    move-object/from16 v0, v35

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v27

    .line 3044
    .local v27, rssiIndex:I
    if-lez v27, :cond_16

    .line 3045
    add-int/lit8 v35, v27, 0x6

    add-int/lit8 v36, v27, 0x8

    move/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    .line 3046
    .local v28, rssiStr:Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    move/from16 v0, v35

    iput v0, v7, Lcom/htc/service/DongleInfo;->rssi:I

    .line 3050
    .end local v28           #rssiStr:Ljava/lang/String;
    :goto_8
    const-string v35, "[PTN-"

    move-object/from16 v0, v35

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    .line 3051
    .local v24, ptnIndex:I
    if-lez v24, :cond_17

    .line 3052
    add-int/lit8 v35, v24, 0x5

    add-int/lit8 v36, v24, 0x6

    move/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 3053
    .local v19, lockType:I
    move/from16 v0, v19

    iput v0, v7, Lcom/htc/service/DongleInfo;->lockType:I

    .line 3054
    add-int/lit8 v35, v24, 0x7

    add-int/lit8 v36, v24, 0xc

    move/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    iput-object v0, v7, Lcom/htc/service/DongleInfo;->lockStatus:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 3062
    .end local v6           #dlnaIndex:I
    .end local v19           #lockType:I
    .end local v24           #ptnIndex:I
    .end local v27           #rssiIndex:I
    .end local v32           #status:I
    .end local v33           #subStr:Ljava/lang/String;
    :goto_9
    if-eqz v18, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_f

    .line 3063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3064
    const-string v35, "WirelessDisplayService"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Adding dongle info: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual {v7}, Lcom/htc/service/DongleInfo;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3066
    :cond_f
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2973
    .restart local v17       #items:[Ljava/lang/String;
    .restart local v33       #subStr:Ljava/lang/String;
    :cond_10
    :try_start_5
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v35, v0

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-lt v0, v1, :cond_b

    .line 2974
    const/16 v35, 0x1

    aget-object v34, v17, v35

    .line 2975
    move-object/from16 v31, v33

    goto/16 :goto_4

    .line 2978
    .end local v17           #items:[Ljava/lang/String;
    :cond_11
    move-object/from16 v31, v29

    goto/16 :goto_4

    .line 2985
    :cond_12
    const-string v35, "UNCFG"

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_13

    .line 2987
    const/16 v32, 0x4

    .restart local v32       #status:I
    goto/16 :goto_5

    .line 2988
    .end local v32           #status:I
    :cond_13
    const-string v35, "CFG"

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_15

    .line 2989
    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_14

    .line 2990
    const/16 v32, 0x3

    .restart local v32       #status:I
    goto/16 :goto_5

    .line 2992
    .end local v32           #status:I
    :cond_14
    const/16 v32, 0x2

    .restart local v32       #status:I
    goto/16 :goto_5

    .line 2997
    .end local v32           #status:I
    :cond_15
    const/16 v32, 0x0

    .restart local v32       #status:I
    goto/16 :goto_5

    .line 3048
    .restart local v6       #dlnaIndex:I
    .restart local v27       #rssiIndex:I
    :cond_16
    const/16 v35, -0x1

    move/from16 v0, v35

    iput v0, v7, Lcom/htc/service/DongleInfo;->rssi:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_8

    .line 3059
    .end local v6           #dlnaIndex:I
    .end local v27           #rssiIndex:I
    .end local v32           #status:I
    .end local v33           #subStr:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 3060
    .local v10, e:Ljava/lang/Exception;
    :goto_a
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9

    .line 3056
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v6       #dlnaIndex:I
    .restart local v24       #ptnIndex:I
    .restart local v27       #rssiIndex:I
    .restart local v32       #status:I
    .restart local v33       #subStr:Ljava/lang/String;
    :cond_17
    const/16 v35, 0x2

    :try_start_6
    move/from16 v0, v35

    iput v0, v7, Lcom/htc/service/DongleInfo;->lockType:I

    .line 3057
    const-string v35, "0000N"

    move-object/from16 v0, v35

    iput-object v0, v7, Lcom/htc/service/DongleInfo;->lockStatus:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_9

    .line 3070
    .end local v3           #aph:Ljava/lang/String;
    .end local v4           #apm:Ljava/lang/String;
    .end local v5           #bssid:Ljava/lang/String;
    .end local v6           #dlnaIndex:I
    .end local v7           #dongle:Lcom/htc/service/DongleInfo;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #ieInfo:Ljava/lang/String;
    .end local v15           #ii:I
    .end local v18           #key:Ljava/lang/String;
    .end local v22           #macs:Ljava/util/Enumeration;
    .end local v24           #ptnIndex:I
    .end local v25           #result:Landroid/net/wifi/ScanResult;
    .end local v27           #rssiIndex:I
    .end local v29           #ssid:Ljava/lang/String;
    .end local v30           #staBssid:Ljava/lang/String;
    .end local v31           #state:Ljava/lang/String;
    .end local v32           #status:I
    .end local v33           #subStr:Ljava/lang/String;
    .end local v34           #version:Ljava/lang/String;
    :cond_18
    new-instance v16, Landroid/content/Intent;

    const-string v35, "com.htc.MIRROR_DISPLAY_DONGLE_AVAILABLE"

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3071
    .local v16, intent:Landroid/content/Intent;
    const/high16 v35, 0x800

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3072
    sget-object v35, Lcom/htc/server/WirelessDisplayService;->wfdservice_usable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual/range {v35 .. v35}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v35

    if-eqz v35, :cond_19

    sget-object v35, Lcom/htc/server/WirelessDisplayService;->finger_gesture_enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual/range {v35 .. v35}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v35

    if-nez v35, :cond_1b

    .line 3073
    :cond_19
    const-string v35, "WirelessDisplayService"

    const-string v36, "Sending intent: MIRROR_DISPLAY_DONGLE_AVAILABLE_ACTION"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3079
    :goto_b
    sget-object v35, Lcom/htc/server/WirelessDisplayService;->mWifiScanbyFingerGesture:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual/range {v35 .. v35}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v35

    if-eqz v35, :cond_1a

    .line 3080
    sget-object v35, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    sget-object v36, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v37, 0x6f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/server/WirelessDisplayService;->tempFingerIndicator:I

    move/from16 v38, v0

    const/16 v39, 0x0

    invoke-virtual/range {v36 .. v39}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 3082
    :cond_1a
    sget-object v35, Lcom/htc/server/WirelessDisplayService;->mWifiScanbyFingerGesture:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/Hashtable;->size()I

    move-result v35

    if-lez v35, :cond_0

    sget-object v35, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    if-nez v35, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_0

    .line 3084
    const-string v35, "WirelessDisplayService"

    const-string v36, " wifi connected and dongle found, start wivu"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3085
    sget-object v35, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v36, 0x2

    invoke-virtual/range {v35 .. v36}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 3086
    .local v11, getIp:Landroid/os/Message;
    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 3076
    .end local v11           #getIp:Landroid/os/Message;
    :cond_1b
    const-string v35, "WirelessDisplayService"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "wfdservice: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget-object v37, Lcom/htc/server/WirelessDisplayService;->wfdservice_usable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual/range {v37 .. v37}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ", finger gesture: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget-object v37, Lcom/htc/server/WirelessDisplayService;->finger_gesture_enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual/range {v37 .. v37}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ", don\'t sendBroadcast"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 3059
    .end local v16           #intent:Landroid/content/Intent;
    .restart local v3       #aph:Ljava/lang/String;
    .restart local v4       #apm:Ljava/lang/String;
    .restart local v5       #bssid:Ljava/lang/String;
    .restart local v8       #dongle:Lcom/htc/service/DongleInfo;
    .restart local v13       #i$:Ljava/util/Iterator;
    .restart local v14       #ieInfo:Ljava/lang/String;
    .restart local v15       #ii:I
    .restart local v18       #key:Ljava/lang/String;
    .restart local v22       #macs:Ljava/util/Enumeration;
    .restart local v25       #result:Landroid/net/wifi/ScanResult;
    .restart local v29       #ssid:Ljava/lang/String;
    .restart local v30       #staBssid:Ljava/lang/String;
    .restart local v31       #state:Ljava/lang/String;
    .restart local v32       #status:I
    .restart local v33       #subStr:Ljava/lang/String;
    .restart local v34       #version:Ljava/lang/String;
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

    .line 3944
    iget-object v3, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 3950
    .local v0, curState:I
    const/4 v3, 0x7

    if-ne v0, v3, :cond_0

    .line 3951
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

    .line 3952
    sget-object v3, Lcom/htc/server/WirelessDisplayService;->pre_request:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/16 v4, 0x16

    if-ne v3, v4, :cond_1

    .line 3953
    sget-object v3, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v4, 0x2a

    const/16 v5, 0x2c

    invoke-virtual {v3, v6, v4, v5}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 3954
    .local v2, msgResumeMirror:Landroid/os/Message;
    sget-object v3, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v3, v6}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 3955
    sget-object v3, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v3, v2}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 3961
    .end local v2           #msgResumeMirror:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 3957
    :cond_1
    sget-object v3, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v4, 0x1f

    const/16 v5, 0x21

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 3958
    .local v1, msgPlug:Landroid/os/Message;
    sget-object v3, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v3, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private getAnimationScaleValue(I)F
    .locals 2
    .parameter "which"

    .prologue
    .line 4928
    const/4 v0, 0x0

    .line 4930
    .local v0, scale:F
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->getAnimationScale(I)F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 4933
    :goto_0
    return v0

    .line 4931
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getCurrentNetwork()Landroid/net/wifi/WifiConfiguration;
    .locals 9

    .prologue
    .line 4555
    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    .line 4556
    .local v5, wifiInfo:Landroid/net/wifi/WifiInfo;
    const/4 v1, 0x0

    .line 4557
    .local v1, currentNetwork:Landroid/net/wifi/WifiConfiguration;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 4558
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    .line 4559
    .local v3, netid:I
    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .line 4560
    .local v4, networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v4, :cond_1

    .line 4561
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

    .line 4562
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v6, v3, :cond_0

    .line 4563
    move-object v1, v0

    .line 4564
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

    .line 4570
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

    .line 4744
    const-string v1, "WirelessDisplayService"

    const-string v2, "getDialogResult"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4745
    iget v1, p0, Lcom/htc/server/WirelessDisplayService;->dialogResult:I

    if-ne v1, v0, :cond_0

    .line 4748
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

    .line 2766
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->size()I

    move-result v3

    .line 2767
    .local v3, size:I
    if-nez v3, :cond_0

    .line 2790
    :goto_0
    return v4

    .line 2769
    :cond_0
    invoke-virtual {p0}, Lcom/htc/server/WirelessDisplayService;->getDefaultDongle()Lcom/htc/service/DongleInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    move v4, v5

    .line 2770
    goto :goto_0

    .line 2771
    :cond_1
    invoke-virtual {p0}, Lcom/htc/server/WirelessDisplayService;->getunConfigDongleList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v5, :cond_2

    move v4, v6

    .line 2772
    goto :goto_0

    .line 2773
    :cond_2
    if-ne v3, v5, :cond_4

    .line 2775
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/server/WirelessDisplayService;->getDiscoveryDongleList()Ljava/util/List;

    move-result-object v2

    .line 2776
    .local v2, infos:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 2777
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/DongleInfo;

    .line 2778
    .local v0, dongle:Lcom/htc/service/DongleInfo;
    if-eqz v0, :cond_3

    iget v4, v0, Lcom/htc/service/DongleInfo;->status:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v4, v6, :cond_3

    .line 2779
    const/4 v4, 0x4

    goto :goto_0

    .line 2782
    .end local v0           #dongle:Lcom/htc/service/DongleInfo;
    .end local v2           #infos:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    :catch_0
    move-exception v1

    .line 2783
    .local v1, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 2790
    .end local v1           #ex:Ljava/lang/NullPointerException;
    :cond_3
    :goto_1
    const/4 v4, -0x1

    goto :goto_0

    .line 2784
    :catch_1
    move-exception v1

    .line 2785
    .local v1, ex:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_1

    .line 2787
    .end local v1           #ex:Ljava/lang/IndexOutOfBoundsException;
    :cond_4
    if-le v3, v5, :cond_3

    .line 2788
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
    .line 4207
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4208
    .local v2, usedDongleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    monitor-enter v4

    .line 4209
    :try_start_0
    iget-object v3, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 4210
    .local v1, macs:Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4211
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4212
    .local v0, mac:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/server/WirelessDisplayService;->mUsedDongleCache:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4213
    iget-object v3, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4216
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

    .line 4217
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

    .line 4218
    return-object v2
.end method

.method private gotoPauseState()V
    .locals 3

    .prologue
    .line 5653
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/server/WirelessDisplayService;->startStopVideo(Z)V

    .line 5657
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    .line 5658
    const-string v1, "WirelessDisplayService"

    const-string v2, "gotoPauseState() start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5660
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->setRTPPause()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5666
    :cond_0
    :goto_0
    const-string v1, "WirelessDisplayService"

    const-string v2, "gotoPauseState() end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5667
    return-void

    .line 5661
    :catch_0
    move-exception v0

    .line 5662
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "WirelessDisplayService"

    const-string v2, "mRecorder.pause(null - Runtime exception caught"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 2858
    new-instance v0, Lcom/htc/server/WirelessDisplayService$16;

    const-string v1, "WirelessDisplayService"

    invoke-direct {v0, p0, v1}, Lcom/htc/server/WirelessDisplayService$16;-><init>(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mThread:Landroid/os/HandlerThread;

    .line 2865
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2867
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mThread:Landroid/os/HandlerThread;

    monitor-enter v1

    .line 2868
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/server/WirelessDisplayService;->mInitComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2870
    :try_start_1
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2871
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2875
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 2876
    return-void

    .line 2875
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
    .line 2879
    new-instance v0, Lcom/htc/server/WirelessDisplayService$H;

    invoke-direct {v0, p0}, Lcom/htc/server/WirelessDisplayService$H;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    sput-object v0, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    .line 2881
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mThread:Landroid/os/HandlerThread;

    monitor-enter v1

    .line 2882
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/server/WirelessDisplayService;->mInitComplete:Z

    .line 2883
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2884
    monitor-exit v1

    .line 2885
    return-void

    .line 2884
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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

    .line 2799
    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_2

    :cond_0
    move p2, p1

    .line 2809
    .end local p2
    :cond_1
    :goto_0
    return p2

    .line 2801
    .restart local p2
    :cond_2
    if-eq p2, v0, :cond_1

    if-eq p2, v1, :cond_1

    .line 2803
    if-ne p1, v2, :cond_3

    if-ne p2, v2, :cond_3

    move p2, v0

    .line 2804
    goto :goto_0

    .line 2805
    :cond_3
    if-ne p1, v3, :cond_4

    if-ne p2, v3, :cond_4

    move p2, v1

    .line 2806
    goto :goto_0

    .line 2808
    :cond_4
    const-string v0, "WirelessDisplayService"

    const-string v2, "should not be here,intent value Fail"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v1

    .line 2809
    goto :goto_0
.end method

.method private notifyWHDMI()V
    .locals 3

    .prologue
    .line 3520
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.MIRROR_DONGLE_LIST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3521
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3522
    const-string v1, "WirelessDisplayService"

    const-string v2, "Sending intent: MIRROR_DONGLE_LIST_CHANGED_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3523
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3525
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

    .line 3526
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3527
    const-string v1, "WirelessDisplayService"

    const-string v2, "wifi scan fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3529
    :cond_0
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->updateNotification()V

    .line 3530
    return-void
.end method

.method private static onCallbackEvent(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3795
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

    .line 3796
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    if-eqz v0, :cond_0

    .line 3797
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    invoke-virtual {v0, p0}, Lcom/htc/server/WirelessDisplayService$WivuThread;->transactEvent(Ljava/lang/String;)V

    .line 3799
    :cond_0
    return-void
.end method

.method private readConfigFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "filePath"

    .prologue
    .line 3608
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

    .line 3609
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 3610
    .local v8, result:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 3611
    .local v2, in:Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 3612
    .local v6, reader:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 3615
    .local v4, line:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9

    .line 3616
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

    .line 3617
    .end local v6           #reader:Ljava/io/BufferedReader;
    .local v7, reader:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 3618
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mUsedDongleList_FilePath:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3619
    if-eqz v4, :cond_0

    .line 3620
    const/4 v9, 0x0

    const/16 v10, 0x11

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3621
    .local v0, dongleStaBssid:Ljava/lang/String;
    const/16 v9, 0x12

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 3622
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

    .line 3623
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mUsedDongleCache:Ljava/util/Hashtable;

    invoke-virtual {v9, v0, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 3634
    .end local v0           #dongleStaBssid:Ljava/lang/String;
    .end local v5           #pattern:Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v6, v7

    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    move-object v2, v3

    .line 3635
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

    .line 3639
    if-eqz v2, :cond_1

    .line 3641
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 3646
    :cond_1
    :goto_2
    if-eqz v6, :cond_2

    .line 3648
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 3654
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_2
    :goto_3
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 3626
    .end local v2           #in:Ljava/io/FileInputStream;
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/FileInputStream;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :cond_3
    :try_start_6
    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3627
    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3628
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

    .line 3636
    :catch_1
    move-exception v1

    move-object v6, v7

    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    move-object v2, v3

    .line 3637
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

    .line 3639
    if-eqz v2, :cond_4

    .line 3641
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 3646
    :cond_4
    :goto_5
    if-eqz v6, :cond_2

    .line 3648
    :try_start_9
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_3

    .line 3649
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v9

    goto :goto_3

    .line 3631
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

    .line 3632
    const-string v9, "Success"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 3639
    :cond_6
    if-eqz v3, :cond_7

    .line 3641
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 3646
    :cond_7
    :goto_6
    if-eqz v7, :cond_8

    .line 3648
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

    .line 3653
    .end local v3           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    goto :goto_3

    .line 3639
    :catchall_0
    move-exception v9

    :goto_8
    if-eqz v2, :cond_9

    .line 3641
    :try_start_d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    .line 3646
    :cond_9
    :goto_9
    if-eqz v6, :cond_a

    .line 3648
    :try_start_e
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    .line 3639
    :cond_a
    :goto_a
    throw v9

    .line 3642
    :catch_3
    move-exception v10

    goto :goto_9

    .line 3649
    :catch_4
    move-exception v10

    goto :goto_a

    .line 3642
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

    .line 3649
    :catch_8
    move-exception v9

    goto :goto_7

    .line 3639
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

    .line 3636
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

    .line 3634
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
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5630
    const-string v1, "WirelessDisplayService"

    const-string v2, "releaseMediaRecorder() start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5634
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    .line 5635
    const-string v1, "WirelessDisplayService"

    const-string v2, "releaseMediaRecorder! Recorder != null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5636
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 5637
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 5639
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5644
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5648
    :goto_1
    iput-object v3, p0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    .line 5650
    :cond_0
    return-void

    .line 5640
    :catch_0
    move-exception v0

    .line 5641
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "WirelessDisplayService"

    const-string v2, "mRecorder.reset() - Runtime exception caught"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5645
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 5646
    .restart local v0       #ex:Ljava/lang/RuntimeException;
    const-string v1, "WirelessDisplayService"

    const-string v2, "mRecorder.release() - Runtime exception caught"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private saveLimitedApInfo()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 4542
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 4543
    .local v1, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4544
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->getCurrentNetwork()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 4545
    .local v0, network:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->limited:I

    if-eq v2, v3, :cond_0

    .line 4546
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->limited:I

    .line 4547
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 4548
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 4549
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

    .line 4552
    .end local v0           #network:Landroid/net/wifi/WifiConfiguration;
    :cond_0
    return-void
.end method

.method private setDialogResult(I)V
    .locals 3
    .parameter "userChoose"

    .prologue
    .line 4752
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

    .line 4753
    iput p1, p0, Lcom/htc/server/WirelessDisplayService;->dialogResult:I

    .line 4754
    return-void
.end method

.method private setIPandPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "ip"
    .parameter "audio"
    .parameter "video"

    .prologue
    .line 3805
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

    .line 3806
    return-void
.end method

.method private setMirrorModeState(II)V
    .locals 20
    .parameter "mirrorState"
    .parameter "err"

    .prologue
    .line 3092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    .line 3093
    .local v12, previousState:I
    const-string v16, "WirelessDisplayService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "setMirrorModeState:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " err="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", isWifiDFS: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Lcom/htc/server/WirelessDisplayService;->isWifiDFS:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3094
    move/from16 v0, p1

    if-ne v12, v0, :cond_1

    .line 3277
    :cond_0
    :goto_0
    return-void

    .line 3096
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3097
    sget-object v16, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v17, 0x14

    invoke-virtual/range {v16 .. v17}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 3108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v14

    .line 3109
    .local v14, screenOn:Z
    const/4 v9, 0x0

    .line 3110
    .local v9, needPinCodeAuthenication:Z
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/WirelessDisplayService;->cancelTurnOffConcurrentHotspot()V

    .line 3111
    const/16 v16, 0x1

    move/from16 v0, p1

    move/from16 v1, v16

    if-eq v0, v1, :cond_2

    const/16 v16, 0x3

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_6

    .line 3113
    :cond_2
    const/16 v16, 0x1

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_c

    .line 3114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3115
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService;->setPowerCharingLimit(Z)V

    .line 3116
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService;->startPatternLockFakeMirror(Z)V

    .line 3117
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService;->startPatternLockStopAudio(Z)V

    .line 3118
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->isResume:Z

    .line 3122
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->app_req_status:Ljava/lang/Boolean;

    .line 3124
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/server/WirelessDisplayService;->isNVCPU:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3

    .line 3125
    const-string v16, "WirelessDisplayService"

    const-string v17, "NV workaround: Resume NV Eack when leaving Wireless Display"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3126
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Lcom/htc/server/WirelessDisplayService;->wivuNVEackState(I)I

    .line 3131
    :cond_3
    if-nez v14, :cond_4

    .line 3132
    const-string v16, "WirelessDisplayService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Screen On: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3134
    sget-object v16, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v17, 0x1f

    const/16 v18, 0x28

    const/16 v19, -0x1

    invoke-virtual/range {v16 .. v19}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    .line 3135
    .local v8, msg_leave:Landroid/os/Message;
    sget-object v16, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 3136
    const-string v16, "WirelessDisplayService"

    const-string v17, "SCREEN OFF in Mirror Disabled State: REQ_JOIN_GROUP - FALSE"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3145
    .end local v8           #msg_leave:Landroid/os/Message;
    :cond_4
    const-string v16, "sys.wfd.autoTestFlag"

    const-string v17, ""

    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    sput-object v16, Lcom/htc/server/WirelessDisplayService;->autoTestFlag:Ljava/lang/String;

    .line 3146
    sget-object v16, Lcom/htc/server/WirelessDisplayService;->autoTestFlag:Ljava/lang/String;

    const-string v17, "reconnect"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 3147
    sget-object v16, Lcom/htc/server/WirelessDisplayService;->isFWUpgrading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v16

    if-nez v16, :cond_5

    .line 3148
    const-wide/16 v16, 0x7530

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService;->turnOffConcurrentHotspot(J)V

    .line 3227
    :cond_5
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/WirelessDisplayService;->updateNotification()V

    .line 3233
    :cond_6
    const/16 v16, 0x3

    move/from16 v0, p1

    move/from16 v1, v16

    if-eq v0, v1, :cond_7

    const/16 v16, 0x7

    move/from16 v0, p1

    move/from16 v1, v16

    if-eq v0, v1, :cond_7

    const/16 v16, 0x8

    move/from16 v0, p1

    move/from16 v1, v16

    if-eq v0, v1, :cond_7

    const/16 v16, 0x2

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_16

    .line 3234
    :cond_7
    const-string v16, "WirelessDisplayService"

    const-string v17, "Disable wifi background/roming scanning during Mirror Mode."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/net/wifi/WifiManager;->setWifiDisplayUnscan(Z)Z

    .line 3237
    if-nez v14, :cond_9

    .line 3238
    const-string v16, "WirelessDisplayService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Screen On: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3240
    const/16 v16, 0x8

    move/from16 v0, p1

    move/from16 v1, v16

    if-eq v0, v1, :cond_8

    const/16 v16, 0x2

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_9

    .line 3241
    :cond_8
    sget-object v16, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v17, 0x1f

    const/16 v18, 0x28

    const/16 v19, 0x1

    invoke-virtual/range {v16 .. v19}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    .line 3242
    .local v7, msg_join:Landroid/os/Message;
    sget-object v16, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 3243
    const-string v16, "WirelessDisplayService"

    const-string v17, "in Mirror Enabling/Dongle Wait State when SCREEN_OFF: REQ_JOIN_GROUP - TRUE"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3263
    .end local v7           #msg_join:Landroid/os/Message;
    :cond_9
    :goto_2
    new-instance v6, Landroid/content/Intent;

    const-string v16, "com.htc.MIRROR_DISPLAY_STATE_CHANGED"

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3264
    .local v6, intent:Landroid/content/Intent;
    const/high16 v16, 0x800

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3265
    const-string v16, "mirror_display_state"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v17

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3266
    const-string v16, "mirror_display_status"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v17

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3267
    const-string v16, "mirror_error_message"

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3273
    if-eqz v9, :cond_0

    .line 3274
    new-instance v13, Landroid/content/Intent;

    const-string v16, "com.htc.intent.action.INTENT_NOTIFY_PINCODE_AUTHENTICATION"

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3275
    .local v13, sart_PinCode_Authenication:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3151
    .end local v6           #intent:Landroid/content/Intent;
    .end local v13           #sart_PinCode_Authenication:Landroid/content/Intent;
    :cond_a
    sget-object v16, Lcom/htc/server/WirelessDisplayService;->isFWUpgrading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v16

    if-nez v16, :cond_b

    .line 3152
    const-wide/32 v16, 0x927c0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService;->turnOffConcurrentHotspot(J)V

    goto/16 :goto_1

    .line 3154
    :cond_b
    const-wide/32 v16, 0x124f80

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService;->turnOffConcurrentHotspot(J)V

    .line 3155
    const-string v16, "WirelessDisplayService"

    const-string v17, "Executing Dongle FW upgrade, Turn off hotspot timer is 20 mins"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3161
    :cond_c
    const/4 v3, 0x0

    .line 3162
    .local v3, curDongleInfo:Lcom/htc/service/DongleInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_f

    .line 3163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Lcom/htc/service/DongleInfo;

    move-object v3, v0

    .line 3164
    const-string v4, ""

    .line 3165
    .local v4, dongleIP:Ljava/lang/String;
    if-eqz v3, :cond_d

    .line 3166
    iget-object v4, v3, Lcom/htc/service/DongleInfo;->inetAddress:Ljava/lang/String;

    .line 3168
    :cond_d
    if-eqz v3, :cond_f

    if-eqz v4, :cond_e

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_f

    .line 3169
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v3, Lcom/htc/service/DongleInfo;->inetAddress:Ljava/lang/String;

    .line 3170
    const-string v16, "WirelessDisplayService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "IP not sync, update CurentDongle IP:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v3, Lcom/htc/service/DongleInfo;->inetAddress:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3174
    .end local v4           #dongleIP:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/server/WirelessDisplayService;->isResume:Z

    move/from16 v16, v0

    if-nez v16, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/server/WirelessDisplayService;->onlySupportDLNA:Z

    move/from16 v16, v0

    if-eqz v16, :cond_10

    .line 3175
    new-instance v11, Landroid/content/Intent;

    const-string v16, "com.htc.intent.action.WIRELESS_NOTIFY_MIRROR_CONNECTED"

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3176
    .local v11, notify_user_mirror_on:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3179
    .end local v11           #notify_user_mirror_on:Landroid/content/Intent;
    :cond_10
    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/server/WirelessDisplayService;->isResume:Z

    move/from16 v16, v0

    if-nez v16, :cond_11

    .line 3180
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/server/WirelessDisplayService;->checkDongleFWUpgrade(Lcom/htc/service/DongleInfo;)Z

    move-result v16

    if-nez v16, :cond_15

    .line 3181
    iget v0, v3, Lcom/htc/service/DongleInfo;->status:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_13

    .line 3182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mUsedDongleCache:Ljava/util/Hashtable;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_11

    .line 3183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "0000"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService;->setDonglePattern(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3210
    :cond_11
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3211
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService;->setPowerCharingLimit(Z)V

    .line 3212
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->isResume:Z

    .line 3215
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/server/WirelessDisplayService;->isNVCPU:Z

    move/from16 v16, v0

    if-eqz v16, :cond_12

    .line 3216
    const-string v16, "WirelessDisplayService"

    const-string v17, "NV workaround: Disable NV Eack during Wireless Display"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3217
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lcom/htc/server/WirelessDisplayService;->wivuNVEackState(I)I

    .line 3220
    :cond_12
    const-string v16, "WirelessDisplayService"

    const-string v17, "Pre Load DLNA Services for Mirror Mode Enabled"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3222
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    new-instance v17, Landroid/content/Intent;

    const-string v18, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 3223
    :catch_0
    move-exception v15

    .line 3224
    .local v15, se:Ljava/lang/SecurityException;
    const-string v16, "WirelessDisplayService"

    const-string v17, "Pre Load DLNA Services occur SecurityException "

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3185
    .end local v15           #se:Ljava/lang/SecurityException;
    :cond_13
    :try_start_2
    iget v0, v3, Lcom/htc/service/DongleInfo;->status:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_11

    .line 3186
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService;->startPatternLockStopAudio(Z)V

    .line 3187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mUsedDongleCache:Ljava/util/Hashtable;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_14

    .line 3188
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService;->startPatternLockFakeMirror(Z)V

    .line 3193
    :cond_14
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 3201
    :cond_15
    new-instance v10, Landroid/content/Intent;

    const-string v16, "com.htc.wifidisplay.intent.DONGLE_FIRMWARE_UPDATE"

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3202
    .local v10, notifyFWupfrade:Landroid/content/Intent;
    const-string v16, "com.htc.wifidisplay.intent.extra.DONGLE_IP_ADDR"

    iget-object v0, v3, Lcom/htc/service/DongleInfo;->inetAddress:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3203
    const-string v16, "com.htc.wifidisplay.intent.extra.DONGLE_VERSION"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/server/WirelessDisplayService;->transferDongleVersion(Lcom/htc/service/DongleInfo;)D

    move-result-wide v17

    move-object/from16 v0, v16

    move-wide/from16 v1, v17

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 3204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    .line 3207
    .end local v10           #notifyFWupfrade:Landroid/content/Intent;
    :catch_1
    move-exception v5

    .line 3208
    .local v5, ex:Ljava/lang/Exception;
    const-string v16, "WirelessDisplayService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Exception: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3248
    .end local v3           #curDongleInfo:Lcom/htc/service/DongleInfo;
    .end local v5           #ex:Ljava/lang/Exception;
    :cond_16
    const-string v16, "WirelessDisplayService"

    const-string v17, "Resume wifi background/roming scanning during Mirror Mode."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/net/wifi/WifiManager;->setWifiDisplayUnscan(Z)Z

    goto/16 :goto_2
.end method

.method private setPowerCharingLimit(Z)V
    .locals 8
    .parameter "enable"

    .prologue
    .line 4937
    const-string v2, "sys/class/power_supply/battery/medialink"

    .line 4938
    .local v2, filePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4939
    .local v1, file:Ljava/io/File;
    const/4 v3, 0x0

    .line 4941
    .local v3, writer:Ljava/io/FileWriter;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4942
    const-string v5, "WirelessDisplayService"

    const-string v6, "PowerCharingLimit Not Exist, Return it"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4958
    :goto_0
    return-void

    .line 4945
    :cond_0
    new-instance v4, Ljava/io/FileWriter;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4946
    .end local v3           #writer:Ljava/io/FileWriter;
    .local v4, writer:Ljava/io/FileWriter;
    if-eqz p1, :cond_1

    .line 4947
    :try_start_1
    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 4951
    :goto_1
    invoke-virtual {v4}, Ljava/io/FileWriter;->flush()V

    .line 4952
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

    .line 4957
    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    goto :goto_0

    .line 4949
    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v4       #writer:Ljava/io/FileWriter;
    :cond_1
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 4953
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 4954
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

    .line 4955
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 4956
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

    .line 4955
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v4       #writer:Ljava/io/FileWriter;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    goto :goto_3

    .line 4953
    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method private startDisplayRecorder(Ljava/lang/String;)I
    .locals 23
    .parameter "ipAndPort"

    .prologue
    .line 5446
    const-string v20, "WirelessDisplayService"

    const-string v21, "startDisplayRecorder - start"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5447
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService;->startStopVideo(Z)V

    .line 5449
    const/16 v20, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService;->getAnimationScaleValue(I)F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->mWindowAnimationScale:F

    .line 5450
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService;->getAnimationScaleValue(I)F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->mTransitionAnimationScale:F

    .line 5451
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService;->getAnimationScaleValue(I)F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->mAnimationDurationScale:F

    .line 5453
    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService;->writeAnimationScaleOption(ILjava/lang/Object;)V

    .line 5454
    const/16 v20, 0x1

    const-wide/16 v21, 0x0

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService;->writeAnimationScaleOption(ILjava/lang/Object;)V

    .line 5455
    const/16 v20, 0x2

    const-wide/16 v21, 0x0

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService;->writeAnimationScaleOption(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 5477
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v20, v0

    if-nez v20, :cond_5

    .line 5478
    new-instance v20, Landroid/media/MediaRecorder;

    invoke-direct/range {v20 .. v20}, Landroid/media/MediaRecorder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    .line 5479
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->mRecording:Z

    .line 5486
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/server/WirelessDisplayService;->onlySupportDLNA:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 5487
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->mInterval:F

    .line 5488
    const v20, 0x989680

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/server/WirelessDisplayService;->mBitrate:I

    .line 5492
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v20, v0

    const/16 v21, 0xa

    invoke-virtual/range {v20 .. v21}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 5493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 5494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v20, v0

    const/16 v21, 0xb

    invoke-virtual/range {v20 .. v21}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 5495
    const-string v20, "WirelessDisplayService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "IP/Port is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5496
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ":0"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 5497
    .local v17, tmp:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setRTPParameters(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 5517
    const-string v20, "ro.board.platform"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 5518
    .local v9, device:Ljava/lang/String;
    const-string v20, "WirelessDisplayService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Platform is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5521
    const v3, 0xfa00

    .line 5522
    .local v3, audBitrate:I
    const/16 v6, 0x1f40

    .line 5523
    .local v6, audSamplerate:I
    const/4 v4, 0x1

    .line 5524
    .local v4, audChannel:I
    const/16 v5, 0x8

    .line 5525
    .local v5, audEnc:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/server/WirelessDisplayService;->mSupportAAC:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 5526
    const-string v20, "tegra"

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 5527
    const v6, 0xbb80

    .line 5531
    :cond_1
    :goto_1
    const/4 v4, 0x2

    .line 5532
    const/4 v5, 0x3

    .line 5534
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 5535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 5536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 5537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 5540
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/server/WirelessDisplayService;->mBitrate:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 5541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/server/WirelessDisplayService;->mInterval:F

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/media/MediaRecorder;->setVideoIFrameInterval(F)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 5546
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/server/WirelessDisplayService;->mFrameRate:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 5548
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    .line 5549
    .local v10, display:Landroid/view/Display;
    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15}, Landroid/graphics/Point;-><init>()V

    .line 5550
    .local v15, outSize:Landroid/graphics/Point;
    invoke-virtual {v10, v15}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 5551
    const-string v20, "WirelessDisplayService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RealScreenSize: width = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v15, Landroid/graphics/Point;->x:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "height = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v15, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5552
    const/16 v19, 0x3c0

    .line 5553
    .local v19, vdoWidth:I
    const/16 v18, 0x220

    .line 5554
    .local v18, vdoHeight:I
    const v20, 0x7f800

    move/from16 v0, v20

    int-to-long v7, v0

    .line 5555
    .local v7, defaultRes:J
    iget v0, v15, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    iget v0, v15, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v11, v0

    .line 5568
    .local v11, displayRes:J
    iget v0, v15, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    iget v0, v15, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 5569
    iget v0, v15, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    .line 5570
    iget v0, v15, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    .line 5576
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/server/WirelessDisplayService;->isQCT:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 5577
    rem-int/lit8 v20, v18, 0x20

    if-eqz v20, :cond_3

    .line 5578
    const-string v20, "WirelessDisplayService"

    const-string v21, "QCT platform, modify solution"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5579
    div-int/lit8 v20, v18, 0x20

    add-int/lit8 v20, v20, 0x1

    mul-int/lit8 v18, v20, 0x20

    .line 5584
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/server/WirelessDisplayService;->onlySupportDLNA:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 5585
    const/16 v19, 0x320

    .line 5586
    const/16 v18, 0x1e0

    .line 5588
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 5589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 5592
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/media/MediaRecorder;->prepare(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 5604
    :try_start_4
    sget-object v20, Lcom/htc/server/WirelessDisplayService;->preload_DLNA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v20

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/server/WirelessDisplayService;->isResume:Z

    move/from16 v20, v0

    if-nez v20, :cond_8

    .line 5605
    const-string v20, "WirelessDisplayService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Need Delay Mirror Media, DLNA: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/htc/server/WirelessDisplayService;->preload_DLNA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " , isResume"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/server/WirelessDisplayService;->isResume:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/media/MediaRecorder;->setDLNADelay(Z)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    .line 5617
    :goto_4
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mInfoListener:Lcom/htc/server/WirelessDisplayService$InfoListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 5618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorderErrorCallback:Lcom/htc/server/WirelessDisplayService$RecorderErrorCallback;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 5619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/media/MediaRecorder;->start()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 5625
    const-string v20, "WirelessDisplayService"

    const-string v21, "startDisplayRecorder - end"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5626
    const/16 v20, 0x0

    .end local v3           #audBitrate:I
    .end local v4           #audChannel:I
    .end local v5           #audEnc:I
    .end local v6           #audSamplerate:I
    .end local v7           #defaultRes:J
    .end local v9           #device:Ljava/lang/String;
    .end local v10           #display:Landroid/view/Display;
    .end local v11           #displayRes:J
    .end local v15           #outSize:Landroid/graphics/Point;
    .end local v17           #tmp:Ljava/lang/String;
    .end local v18           #vdoHeight:I
    .end local v19           #vdoWidth:I
    :goto_5
    return v20

    .line 5481
    :cond_5
    const-string v20, "WirelessDisplayService"

    const-string v21, "Media Recorder already running"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5482
    const/16 v20, 0x0

    goto :goto_5

    .line 5499
    :catch_0
    move-exception v14

    .line 5500
    .local v14, exception:Ljava/lang/Exception;
    const-string v20, "WirelessDisplayService"

    const-string v21, "mRecorder.setParameters() failed"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5501
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/WirelessDisplayService;->releaseMediaRecorder()V

    .line 5502
    const/16 v20, -0x1

    goto :goto_5

    .line 5528
    .end local v14           #exception:Ljava/lang/Exception;
    .restart local v3       #audBitrate:I
    .restart local v4       #audChannel:I
    .restart local v5       #audEnc:I
    .restart local v6       #audSamplerate:I
    .restart local v9       #device:Ljava/lang/String;
    .restart local v17       #tmp:Ljava/lang/String;
    :cond_6
    const-string v20, "msm8960"

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 5529
    const v6, 0xac44

    goto/16 :goto_1

    .line 5542
    :catch_1
    move-exception v14

    .line 5543
    .restart local v14       #exception:Ljava/lang/Exception;
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/server/WirelessDisplayService;->mRecording:Z

    .line 5544
    const-string v20, "WirelessDisplayService"

    const-string v21, "mRecorder.setParameters() failed"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 5572
    .end local v14           #exception:Ljava/lang/Exception;
    .restart local v7       #defaultRes:J
    .restart local v10       #display:Landroid/view/Display;
    .restart local v11       #displayRes:J
    .restart local v15       #outSize:Landroid/graphics/Point;
    .restart local v18       #vdoHeight:I
    .restart local v19       #vdoWidth:I
    :cond_7
    iget v0, v15, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    .line 5573
    iget v0, v15, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    goto/16 :goto_3

    .line 5593
    :catch_2
    move-exception v13

    .line 5594
    .local v13, ex:Ljava/lang/Exception;
    const-string v20, "WirelessDisplayService"

    const-string v21, "mRecorder.prepare() failed"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5595
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/WirelessDisplayService;->releaseMediaRecorder()V

    .line 5596
    const/16 v20, -0x1

    goto :goto_5

    .line 5608
    .end local v13           #ex:Ljava/lang/Exception;
    :cond_8
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/media/MediaRecorder;->setDLNADelay(Z)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_4

    .line 5610
    :catch_3
    move-exception v16

    .line 5611
    .local v16, rex:Ljava/lang/RuntimeException;
    const-string v20, "WirelessDisplayService"

    const-string v21, "mRecorder.reset() - Runtime exception caught"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 5620
    .end local v16           #rex:Ljava/lang/RuntimeException;
    :catch_4
    move-exception v13

    .line 5621
    .restart local v13       #ex:Ljava/lang/Exception;
    const-string v20, "WirelessDisplayService"

    const-string v21, "mRecorder.prepare() setOnInfoListener/start"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5622
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/WirelessDisplayService;->releaseMediaRecorder()V

    .line 5623
    const/16 v20, -0x1

    goto/16 :goto_5

    .line 5456
    .end local v3           #audBitrate:I
    .end local v4           #audChannel:I
    .end local v5           #audEnc:I
    .end local v6           #audSamplerate:I
    .end local v7           #defaultRes:J
    .end local v9           #device:Ljava/lang/String;
    .end local v10           #display:Landroid/view/Display;
    .end local v11           #displayRes:J
    .end local v13           #ex:Ljava/lang/Exception;
    .end local v15           #outSize:Landroid/graphics/Point;
    .end local v17           #tmp:Ljava/lang/String;
    .end local v18           #vdoHeight:I
    .end local v19           #vdoWidth:I
    :catch_5
    move-exception v20

    goto/16 :goto_0
.end method

.method private startPatternLockStopAudio(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 4519
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v1

    .line 4520
    .local v1, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v0

    .line 4521
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

    .line 4522
    if-eqz p1, :cond_0

    .line 4523
    const-string v2, "sys.ml.noaudio"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4527
    :goto_0
    return-void

    .line 4525
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
    .line 4530
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v1

    .line 4531
    .local v1, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v0

    .line 4532
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

    .line 4533
    if-eqz p1, :cond_0

    .line 4534
    const-string v2, "sys.ml.novideo"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4538
    :goto_0
    return-void

    .line 4536
    :cond_0
    const-string v2, "sys.ml.novideo"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopDisplayRecorder()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5724
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->releaseMediaRecorder()V

    .line 5725
    invoke-direct {p0, v2}, Lcom/htc/server/WirelessDisplayService;->startStopVideo(Z)V

    .line 5727
    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lcom/htc/server/WirelessDisplayService;->mWindowAnimationScale:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/htc/server/WirelessDisplayService;->writeAnimationScaleOption(ILjava/lang/Object;)V

    .line 5728
    const/4 v0, 0x1

    iget v1, p0, Lcom/htc/server/WirelessDisplayService;->mTransitionAnimationScale:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/htc/server/WirelessDisplayService;->writeAnimationScaleOption(ILjava/lang/Object;)V

    .line 5729
    const/4 v0, 0x2

    iget v1, p0, Lcom/htc/server/WirelessDisplayService;->mAnimationDurationScale:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/htc/server/WirelessDisplayService;->writeAnimationScaleOption(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5733
    :goto_0
    const-string v0, "WirelessDisplayService"

    const-string v1, "stopDisplayRecorder end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5734
    return v2

    .line 5730
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private transferDongleVersion(Lcom/htc/service/DongleInfo;)D
    .locals 6
    .parameter "dongle"

    .prologue
    .line 4281
    const-wide/high16 v0, -0x4010

    .line 4282
    .local v0, dongleVersion:D
    if-eqz p1, :cond_0

    .line 4283
    iget-object v3, p1, Lcom/htc/service/DongleInfo;->version:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 4284
    iget-object v3, p1, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    const-string v4, "Unknown device name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4285
    const-wide v0, 0x3fefae147ae147aeL

    .line 4302
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

    .line 4303
    return-wide v0

    .line 4287
    :cond_1
    iget-wide v0, p0, Lcom/htc/server/WirelessDisplayService;->notifyDongleFWupgradeVersion:D

    goto :goto_0

    .line 4291
    :cond_2
    iget-object v3, p1, Lcom/htc/service/DongleInfo;->version:Ljava/lang/String;

    const-string v4, "M"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4292
    const-wide v0, 0x3fefae147ae147aeL

    goto :goto_0

    .line 4295
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

    .line 4296
    :catch_0
    move-exception v2

    .line 4297
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
    .line 3735
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long v0, v2, p1

    .line 3736
    .local v0, triggerTime:J
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mTurnOffHotspotIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 3737
    return-void
.end method

.method private updateDongleStateToPaired(Ljava/lang/String;)V
    .locals 4
    .parameter "dongleStaBssid"

    .prologue
    .line 2681
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2682
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/DongleInfo;

    .line 2683
    .local v0, dongle:Lcom/htc/service/DongleInfo;
    if-eqz v0, :cond_1

    .line 2684
    const/4 v1, 0x3

    iput v1, v0, Lcom/htc/service/DongleInfo;->status:I

    .line 2685
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mUsedDongleCache:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2686
    const-string v1, "0000"

    invoke-virtual {p0, p1, v1}, Lcom/htc/server/WirelessDisplayService;->setDonglePattern(Ljava/lang/String;Ljava/lang/String;)V

    .line 2688
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

    .line 2691
    .end local v0           #dongle:Lcom/htc/service/DongleInfo;
    :cond_1
    return-void
.end method

.method private updateFWUpgradeNotification()V
    .locals 4

    .prologue
    .line 3749
    invoke-virtual {p0}, Lcom/htc/server/WirelessDisplayService;->getCurrentDongle()Lcom/htc/service/DongleInfo;

    move-result-object v0

    .line 3750
    .local v0, dongleInfo:Lcom/htc/service/DongleInfo;
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3751
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getInetAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3752
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

    .line 3753
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService;->mWirelessDisplayNotification:Lcom/htc/server/WirelessDisplayNotification;

    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getInetAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/server/WirelessDisplayNotification;->notifyFirmwareUpdate(Ljava/lang/String;Ljava/lang/String;)V

    .line 3756
    :cond_0
    return-void
.end method

.method private updateNotification()V
    .locals 5

    .prologue
    .line 3760
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    .line 3771
    .local v2, mirrorOn:Z
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v0

    .line 3772
    .local v0, dongleCount:I
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    .line 3774
    .local v3, wifiOn:Z
    invoke-virtual {p0}, Lcom/htc/server/WirelessDisplayService;->getDiscoveryDongleList()Ljava/util/List;

    move-result-object v1

    .line 3785
    .local v1, mDongleInfos:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mWirelessDisplayNotification:Lcom/htc/server/WirelessDisplayNotification;

    invoke-virtual {v4, v2, v0, v3, v1}, Lcom/htc/server/WirelessDisplayNotification;->updateNotification(ZIZLjava/util/List;)V

    .line 3788
    return-void
.end method

.method private updateUsedDongleListFile()V
    .locals 7

    .prologue
    .line 3594
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mUsedDongleList_FilePath:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3595
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    .line 3596
    .local v3, ret:Z
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 3597
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService;->mUsedDongleCache:Ljava/util/Hashtable;

    monitor-enter v5

    .line 3598
    :try_start_0
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mUsedDongleCache:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 3599
    .local v2, macs:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3600
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3601
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

    .line 3603
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

    .line 3605
    .end local v2           #macs:Ljava/util/Enumeration;
    :cond_1
    return-void
.end method

.method private updateWivuList([Ljava/lang/String;)V
    .locals 13
    .parameter "macs"

    .prologue
    .line 3312
    const/4 v9, 0x1

    aget-object v9, p1, v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 3313
    const-string v9, "WirelessDisplayService"

    const-string v10, "updateWivuList:ther is no dongle in list"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3314
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 3315
    .local v4, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3316
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3317
    .local v1, element:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v9, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3318
    const-string v9, "WirelessDisplayService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "removing from mDongleInfoCache:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3319
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v9, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3320
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->notifyWHDMI()V

    .line 3322
    :cond_1
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mWivuCache:Ljava/util/Hashtable;

    invoke-virtual {v9, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3323
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

    .line 3324
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mWivuCache:Ljava/util/Hashtable;

    invoke-virtual {v9, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3326
    :cond_2
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 3327
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_3

    .line 3328
    const-string v9, "WirelessDisplayService"

    const-string v10, "updateWivuList: curDongle is been removed"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3329
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, -0x6

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    .line 3330
    .local v7, m2:Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 3334
    .end local v7           #m2:Landroid/os/Message;
    :cond_3
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 3335
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    iput-object v9, p0, Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;

    .line 3336
    const-string v9, "persist.sys.wfd.lastdongle"

    iget-object v10, p0, Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3338
    :cond_4
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    goto/16 :goto_0

    .line 3342
    .end local v1           #element:Ljava/lang/String;
    :cond_5
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 3343
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->updateNotification()V

    .line 3408
    .end local v4           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_6
    return-void

    .line 3345
    :cond_7
    const/4 v9, 0x1

    aget-object v9, p1, v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3346
    .local v0, addrs:[Ljava/lang/String;
    array-length v6, v0

    .line 3347
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

    .line 3349
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-le v6, v9, :cond_9

    .line 3351
    const-string v9, "WirelessDisplayService"

    const-string v10, "updateWivuList:Add New Dongle"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3352
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    if-ge v5, v6, :cond_10

    .line 3353
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    aget-object v10, v0, v5

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 3354
    const-string v9, "WirelessDisplayService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Get dongle info:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v0, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3355
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    aget-object v10, v0, v5

    invoke-virtual {v9, v10}, Lcom/htc/server/WirelessDisplayService$WivuThread;->getDongleInfo(Ljava/lang/String;)I

    .line 3352
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3362
    .end local v5           #j:I
    :cond_9
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_10

    .line 3363
    const-string v9, "WirelessDisplayService"

    const-string v10, "updateWivuList:Remove dongle from List"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3365
    const/4 v5, 0x0

    .restart local v5       #j:I
    :goto_2
    if-ge v5, v6, :cond_a

    .line 3366
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    aget-object v10, v0, v5

    invoke-interface {v9, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3365
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3368
    :cond_a
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 3369
    .restart local v4       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_b
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 3370
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3371
    .local v2, element2:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v9, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 3372
    const-string v9, "WirelessDisplayService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateWivuList:removing:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3373
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v9, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3375
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->notifyWHDMI()V

    .line 3378
    :cond_c
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mWivuCache:Ljava/util/Hashtable;

    invoke-virtual {v9, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 3379
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

    .line 3380
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mWivuCache:Ljava/util/Hashtable;

    invoke-virtual {v9, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3383
    :cond_d
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 3384
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_e

    .line 3385
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, -0x6

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    .line 3386
    .restart local v7       #m2:Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 3387
    const-string v9, "WirelessDisplayService"

    const-string v10, "updateWivuList2: curDongle is been removed"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3389
    .end local v7           #m2:Landroid/os/Message;
    :cond_e
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    if-eqz v9, :cond_f

    .line 3390
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    iput-object v9, p0, Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;

    .line 3391
    const-string v9, "persist.sys.wfd.lastdongle"

    iget-object v10, p0, Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3393
    :cond_f
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    goto/16 :goto_3

    .line 3397
    .end local v2           #element2:Ljava/lang/String;
    .end local v4           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5           #j:I
    :cond_10
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 3398
    const/4 v3, 0x0

    .local v3, i:I
    :goto_4
    array-length v9, v0

    if-ge v3, v9, :cond_6

    .line 3399
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

    .line 3401
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mBssidPattern:Ljava/util/regex/Pattern;

    aget-object v10, v0, v3

    invoke-virtual {v9, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 3402
    .local v8, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 3403
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

    .line 3404
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    aget-object v10, v0, v3

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3398
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_4
.end method

.method private updteDongleInfo(Ljava/lang/String;)V
    .locals 10
    .parameter "stat"

    .prologue
    .line 3416
    if-nez p1, :cond_1

    .line 3517
    :cond_0
    :goto_0
    return-void

    .line 3418
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 3419
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

    .line 3421
    const-string v7, "VALUE="

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3423
    .local v6, sep:[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    .line 3426
    const/4 v7, 0x1

    aget-object v7, v6, v7

    const-string v8, "\t"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3428
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

    .line 3430
    sget-object v7, Lcom/htc/server/WirelessDisplayService;->mBssidPattern:Ljava/util/regex/Pattern;

    const/4 v8, 0x0

    aget-object v8, v3, v8

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 3432
    .local v5, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3433
    const/4 v4, 0x0

    .line 3434
    .local v4, isExistInWivuList:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 3435
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v8, v3, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3436
    const/4 v4, 0x1

    .line 3434
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3439
    :cond_3
    if-nez v4, :cond_4

    .line 3440
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

    .line 3441
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    const/4 v8, 0x0

    aget-object v8, v3, v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3445
    .end local v2           #i:I
    .end local v4           #isExistInWivuList:Z
    :cond_4
    array-length v7, v3

    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    .line 3446
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    const/4 v8, 0x0

    aget-object v8, v3, v8

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 3447
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

    .line 3448
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    const/4 v8, 0x0

    aget-object v8, v3, v8

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/DongleInfo;

    .line 3449
    .local v0, dongle:Lcom/htc/service/DongleInfo;
    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    .line 3451
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0xe3

    if-eq v7, v8, :cond_5

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0xe4

    if-ne v7, v8, :cond_6

    .line 3453
    :cond_5
    const/4 v7, 0x2

    iput v7, v0, Lcom/htc/service/DongleInfo;->status:I

    .line 3456
    :cond_6
    array-length v7, v3

    const/4 v8, 0x4

    if-le v7, v8, :cond_9

    .line 3457
    sget-object v7, Lcom/htc/server/WirelessDisplayService;->mBssidPattern:Ljava/util/regex/Pattern;

    const/4 v8, 0x3

    aget-object v8, v3, v8

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 3458
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 3459
    const/4 v7, 0x3

    aget-object v7, v3, v7

    iput-object v7, v0, Lcom/htc/service/DongleInfo;->pairedApm:Ljava/lang/String;

    .line 3460
    iget-object v7, v0, Lcom/htc/service/DongleInfo;->pairedApm:Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 3461
    const/4 v7, 0x3

    iput v7, v0, Lcom/htc/service/DongleInfo;->status:I

    .line 3465
    :cond_7
    const/4 v7, 0x4

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v0, Lcom/htc/service/DongleInfo;->wifiQuality:I

    .line 3467
    iget v7, v0, Lcom/htc/service/DongleInfo;->wifiQuality:I

    if-nez v7, :cond_8

    .line 3468
    const/4 v7, 0x2

    iput v7, v0, Lcom/htc/service/DongleInfo;->lockType:I

    .line 3473
    :cond_8
    :goto_2
    const/4 v7, 0x1

    aget-object v7, v3, v7

    iput-object v7, v0, Lcom/htc/service/DongleInfo;->inetAddress:Ljava/lang/String;

    .line 3474
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    const/4 v8, 0x0

    aget-object v8, v3, v8

    invoke-virtual {v7, v8, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3514
    .end local v0           #dongle:Lcom/htc/service/DongleInfo;
    :goto_3
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->notifyWHDMI()V

    goto/16 :goto_0

    .line 3471
    .restart local v0       #dongle:Lcom/htc/service/DongleInfo;
    :cond_9
    const/4 v7, -0x1

    iput v7, v0, Lcom/htc/service/DongleInfo;->wifiQuality:I

    goto :goto_2

    .line 3476
    .end local v0           #dongle:Lcom/htc/service/DongleInfo;
    :cond_a
    const-string v7, "WirelessDisplayService"

    const-string v8, "updteDongleInfo: New dongle is added, trigger wifi scan to find out this dongle"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3477
    new-instance v1, Lcom/htc/service/DongleInfo;

    invoke-direct {v1}, Lcom/htc/service/DongleInfo;-><init>()V

    .line 3478
    .local v1, dongle2:Lcom/htc/service/DongleInfo;
    const/4 v7, 0x1

    aget-object v7, v3, v7

    iput-object v7, v1, Lcom/htc/service/DongleInfo;->inetAddress:Ljava/lang/String;

    .line 3479
    const-string v7, "Unknown device name"

    iput-object v7, v1, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    .line 3480
    const-string v7, "Unknown device name"

    iput-object v7, v1, Lcom/htc/service/DongleInfo;->name:Ljava/lang/String;

    .line 3481
    array-length v7, v3

    const/4 v8, 0x2

    if-le v7, v8, :cond_b

    const/4 v7, 0x2

    aget-object v7, v3, v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_b

    .line 3482
    const/4 v7, 0x2

    aget-object v7, v3, v7

    iput-object v7, v1, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    .line 3483
    const/4 v7, 0x2

    aget-object v7, v3, v7

    iput-object v7, v1, Lcom/htc/service/DongleInfo;->name:Ljava/lang/String;

    .line 3485
    :cond_b
    const/4 v7, 0x2

    iput v7, v1, Lcom/htc/service/DongleInfo;->status:I

    .line 3486
    array-length v7, v3

    const/4 v8, 0x4

    if-le v7, v8, :cond_10

    .line 3487
    sget-object v7, Lcom/htc/server/WirelessDisplayService;->mBssidPattern:Ljava/util/regex/Pattern;

    const/4 v8, 0x3

    aget-object v8, v3, v8

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 3488
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 3489
    const/4 v7, 0x3

    aget-object v7, v3, v7

    iput-object v7, v1, Lcom/htc/service/DongleInfo;->pairedApm:Ljava/lang/String;

    .line 3490
    iget-object v7, v1, Lcom/htc/service/DongleInfo;->pairedApm:Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 3491
    const/4 v7, 0x3

    iput v7, v1, Lcom/htc/service/DongleInfo;->status:I

    .line 3494
    :cond_c
    const/4 v7, 0x4

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v1, Lcom/htc/service/DongleInfo;->wifiQuality:I

    .line 3496
    iget v7, v1, Lcom/htc/service/DongleInfo;->wifiQuality:I

    if-nez v7, :cond_d

    .line 3497
    const/4 v7, 0x2

    iput v7, v1, Lcom/htc/service/DongleInfo;->lockType:I

    .line 3502
    :cond_d
    :goto_4
    const/4 v7, 0x0

    aget-object v7, v3, v7

    iput-object v7, v1, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    .line 3503
    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    .line 3506
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

    .line 3507
    :cond_f
    const-string v7, "WirelessDisplayService"

    const-string v8, "User Selected Dongle, Add Dongle to Dongle Cache"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3508
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    const/4 v8, 0x0

    aget-object v8, v3, v8

    invoke-virtual {v7, v8, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 3500
    :cond_10
    const/4 v7, -0x1

    iput v7, v1, Lcom/htc/service/DongleInfo;->wifiQuality:I

    goto :goto_4

    .line 3510
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
    .line 4897
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 4900
    .local v2, scale:F
    :goto_0
    iget-object v3, p0, Lcom/htc/server/WirelessDisplayService;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v3, p1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v1

    .line 4901
    .local v1, oldScale:F
    const/4 v0, 0x0

    .line 4902
    .local v0, key:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 4913
    const-string v3, "WirelessDisplayService"

    const-string v4, "Illegal animation parameter!!"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4924
    .end local v0           #key:Ljava/lang/String;
    .end local v1           #oldScale:F
    .end local v2           #scale:F
    :goto_1
    return-void

    .line 4897
    :cond_0
    const/high16 v2, 0x3f80

    goto :goto_0

    .line 4904
    .restart local v0       #key:Ljava/lang/String;
    .restart local v1       #oldScale:F
    .restart local v2       #scale:F
    :pswitch_0
    const-string v0, "htc_window_animation_scale"

    .line 4917
    :goto_2
    iget-object v3, p0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 4921
    iget-object v3, p0, Lcom/htc/server/WirelessDisplayService;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v3, p1, v2}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    goto :goto_1

    .line 4922
    .end local v0           #key:Ljava/lang/String;
    .end local v1           #oldScale:F
    .end local v2           #scale:F
    :catch_0
    move-exception v3

    goto :goto_1

    .line 4907
    .restart local v0       #key:Ljava/lang/String;
    .restart local v1       #oldScale:F
    .restart local v2       #scale:F
    :pswitch_1
    const-string v0, "htc_transition_animation_scale"

    .line 4908
    goto :goto_2

    .line 4910
    :pswitch_2
    const-string v0, "htc_animator_duration_scale"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4911
    goto :goto_2

    .line 4902
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

    .line 3533
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

    .line 3534
    .local v2, mConcurrent_AP_MAC_FilePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v7, "/data/misc/wifidisplay.conf"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3535
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1b6

    invoke-static {v7, v8, v9, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 3536
    const/4 v5, 0x0

    .line 3537
    .local v5, writer:Ljava/io/FileWriter;
    const/4 v4, 0x0

    .line 3539
    .local v4, ret:Z
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 3540
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 3541
    new-instance v6, Ljava/io/FileWriter;

    const/4 v7, 0x1

    invoke-direct {v6, v1, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3542
    .end local v5           #writer:Ljava/io/FileWriter;
    .local v6, writer:Ljava/io/FileWriter;
    :try_start_1
    invoke-direct {p0, v2}, Lcom/htc/server/WirelessDisplayService;->readConfigFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;

    .line 3543
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

    .line 3544
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 3545
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 3547
    :cond_0
    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 3548
    invoke-virtual {v6}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v5, v6

    .line 3553
    .end local v6           #writer:Ljava/io/FileWriter;
    .restart local v5       #writer:Ljava/io/FileWriter;
    :goto_0
    const/4 v4, 0x1

    .line 3554
    :try_start_2
    const-string v7, "WirelessDisplayService"

    const-string v8, "writeConcurrentAPMacAddress() done."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3562
    :goto_1
    return v4

    .line 3550
    :cond_1
    const-string v7, "/data/misc/wifidisplay.conf"

    invoke-direct {p0, v7}, Lcom/htc/server/WirelessDisplayService;->readConfigFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3551
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

    .line 3555
    .end local v3           #previousResult:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3556
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

    .line 3557
    const/4 v4, 0x0

    .line 3561
    goto :goto_1

    .line 3558
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 3559
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

    .line 3560
    const/4 v4, 0x0

    goto :goto_1

    .line 3558
    .end local v0           #e:Ljava/io/IOException;
    .end local v5           #writer:Ljava/io/FileWriter;
    .restart local v6       #writer:Ljava/io/FileWriter;
    :catch_2
    move-exception v0

    move-object v5, v6

    .end local v6           #writer:Ljava/io/FileWriter;
    .restart local v5       #writer:Ljava/io/FileWriter;
    goto :goto_3

    .line 3555
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

    .line 3566
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService;->mUsedDongleList_FilePath:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3567
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1b6

    invoke-static {v5, v6, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 3568
    const/4 v3, 0x0

    .line 3569
    .local v3, writer:Ljava/io/FileWriter;
    const/4 v2, 0x0

    .line 3571
    .local v2, ret:Z
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3572
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 3573
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

    .line 3575
    :cond_0
    new-instance v4, Ljava/io/FileWriter;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3576
    .end local v3           #writer:Ljava/io/FileWriter;
    .local v4, writer:Ljava/io/FileWriter;
    if-eqz p1, :cond_1

    .line 3577
    :try_start_1
    invoke-virtual {v4, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 3579
    :cond_1
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 3580
    invoke-virtual {v4}, Ljava/io/FileWriter;->flush()V

    .line 3581
    const/4 v2, 0x1

    .line 3582
    const-string v5, "WirelessDisplayService"

    const-string v6, "write UsedDongleList done."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    .line 3590
    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    :goto_0
    return v2

    .line 3583
    :catch_0
    move-exception v0

    .line 3584
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

    .line 3585
    const/4 v2, 0x0

    .line 3589
    goto :goto_0

    .line 3586
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 3587
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

    .line 3588
    const/4 v2, 0x0

    goto :goto_0

    .line 3586
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v4       #writer:Ljava/io/FileWriter;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    goto :goto_2

    .line 3583
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
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 4047
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    const-string v12, "android.permission.DUMP"

    invoke-virtual {v11, v12}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_0

    .line 4048
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

    .line 4083
    :goto_0
    return-void

    .line 4052
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4054
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 4055
    .local v2, dataTimeStamp:Ljava/util/Date;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 4058
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

    .line 4062
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/server/WirelessDisplayService;->mHtcDebugMessage:Ljava/util/Hashtable;

    monitor-enter v12

    .line 4063
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/server/WirelessDisplayService;->mHtcDebugMessage:Ljava/util/Hashtable;

    invoke-virtual {v11}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v7

    .line 4064
    .local v7, logKeys:Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 4065
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4066
    .local v6, logKey:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/server/WirelessDisplayService;->mHtcDebugMessage:Ljava/util/Hashtable;

    invoke-virtual {v11, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/server/WirelessDisplayService$HtcWDSrvHistory;

    .line 4067
    .local v4, hist:Lcom/htc/server/WirelessDisplayService$HtcWDSrvHistory;
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    sub-long/2addr v13, v8

    iget-wide v15, v4, Lcom/htc/server/WirelessDisplayService$HtcWDSrvHistory;->timeStamp:J

    add-long/2addr v13, v15

    invoke-direct {v3, v13, v14}, Ljava/util/Date;-><init>(J)V

    .line 4068
    .local v3, date:Ljava/util/Date;
    invoke-virtual {v4}, Lcom/htc/server/WirelessDisplayService$HtcWDSrvHistory;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4069
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

    .line 4073
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

    .line 4074
    const-string v11, "Used Dongle List:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4075
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/server/WirelessDisplayService;->mUsedDongleCache:Ljava/util/Hashtable;

    monitor-enter v12

    .line 4076
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/server/WirelessDisplayService;->mUsedDongleCache:Ljava/util/Hashtable;

    invoke-virtual {v11}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v10

    .line 4077
    .local v10, usedDongleCacheKeys:Ljava/util/Enumeration;
    :goto_2
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 4078
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4079
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

    .line 4081
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
    .line 4849
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v1

    .line 4850
    .local v1, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v0

    .line 4851
    .local v0, pid:I
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifidisplayApEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4852
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

    .line 4853
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->cancelTurnOffConcurrentHotspot()V

    .line 4854
    const-wide/32 v2, 0x927c0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/htc/server/WirelessDisplayService;->turnOffConcurrentHotspot(J)V

    .line 4856
    :cond_0
    return-void
.end method

.method public getConnectedDongleIP()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4038
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4041
    :goto_0
    return-object v0

    .line 4040
    :cond_0
    sget-object v1, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    monitor-enter v1

    .line 4041
    :try_start_0
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    .line 4042
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
    .line 4090
    const-string v9, "WirelessDisplayService"

    const-string v10, "getConnectedDongleIPLong"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4091
    const-wide/16 v2, 0x0

    .line 4093
    .local v2, num:J
    sget-object v9, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    if-nez v9, :cond_0

    move-wide v4, v2

    .line 4116
    .end local v2           #num:J
    .local v4, num:J
    :goto_0
    return-wide v4

    .line 4095
    .end local v4           #num:J
    .restart local v2       #num:J
    :cond_0
    sget-object v10, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    monitor-enter v10

    .line 4097
    :try_start_0
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 4098
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;

    const-string v11, "\\."

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4099
    .local v0, addrArray:[Ljava/lang/String;
    const/16 v6, 0x20

    .line 4100
    .local v6, offset:I
    array-length v9, v0

    add-int/lit8 v1, v9, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_3

    .line 4101
    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v9, :cond_1

    .line 4102
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

    .line 4103
    :cond_1
    add-int/lit8 v6, v6, -0x8

    .line 4104
    aget-object v9, v0, v1

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 4107
    .local v7, token:J
    const-wide/16 v11, 0x0

    cmp-long v9, v7, v11

    if-ltz v9, :cond_2

    const-wide/16 v11, 0x100

    cmp-long v9, v7, v11

    if-ltz v9, :cond_5

    .line 4108
    :cond_2
    const-wide/16 v2, -0x1

    .line 4113
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

    .line 4115
    .end local v0           #addrArray:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v6           #offset:I
    :cond_4
    monitor-exit v10

    move-wide v4, v2

    .line 4116
    .end local v2           #num:J
    .restart local v4       #num:J
    goto :goto_0

    .line 4111
    .end local v4           #num:J
    .restart local v0       #addrArray:[Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #num:J
    .restart local v6       #offset:I
    .restart local v7       #token:J
    :cond_5
    shl-long v11, v7, v6

    add-long/2addr v2, v11

    .line 4100
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 4115
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
    .line 4826
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v2

    .line 4827
    .local v2, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v1

    .line 4828
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

    .line 4829
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

    .line 4830
    iget-object v3, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/DongleInfo;

    .line 4833
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDLNAPreloadEnable()Z
    .locals 3

    .prologue
    .line 4777
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

    .line 4778
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->preload_DLNA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public getDefaultDongle()Lcom/htc/service/DongleInfo;
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 4430
    const/4 v1, 0x0

    .line 4432
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

    .line 4433
    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4434
    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/htc/service/DongleInfo;

    move-object v1, v0

    .line 4435
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

    .line 4492
    :goto_0
    return-object v4

    .line 4438
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

    .line 4439
    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/service/DongleInfo;

    .line 4440
    .local v4, tempLastDongle:Lcom/htc/service/DongleInfo;
    if-eqz v4, :cond_2

    .line 4442
    iget v6, v4, Lcom/htc/service/DongleInfo;->status:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    iget v6, v4, Lcom/htc/service/DongleInfo;->status:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 4443
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

    .line 4488
    .end local v4           #tempLastDongle:Lcom/htc/service/DongleInfo;
    :catch_0
    move-exception v3

    .line 4489
    .local v3, npe:Ljava/lang/NullPointerException;
    const-string v6, "WirelessDisplayService"

    const-string v7, "NullPointerException, getDefaultDongle : null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4490
    const/4 v4, 0x0

    goto :goto_0

    .line 4449
    .end local v3           #npe:Ljava/lang/NullPointerException;
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->getUsedDongleList()Ljava/util/List;

    move-result-object v5

    .line 4450
    .local v5, usedDongleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    invoke-virtual {p0}, Lcom/htc/server/WirelessDisplayService;->getDiscoveryDongleList()Ljava/util/List;

    move-result-object v2

    .line 4451
    .local v2, dongleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v9, :cond_3

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 4452
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/htc/service/DongleInfo;

    move-object v1, v0

    .line 4453
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

    .line 4454
    goto/16 :goto_0

    .line 4455
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v9, :cond_4

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 4456
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/htc/service/DongleInfo;

    move-object v1, v0

    .line 4457
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

    .line 4458
    goto/16 :goto_0

    .line 4485
    :cond_4
    if-nez v1, :cond_5

    .line 4486
    const-string v6, "WirelessDisplayService"

    const-string v7, "getDefaultDongle : null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    move-object v4, v1

    .line 4492
    goto/16 :goto_0
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
    .line 4176
    const-string v4, "WirelessDisplayService"

    const-string v5, "getDiscoveryDongleList"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4177
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4178
    .local v3, sendToAPP:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    monitor-enter v5

    .line 4179
    :try_start_0
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 4180
    .local v2, macs:Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4181
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4182
    .local v1, mac:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/DongleInfo;

    .line 4183
    .local v0, dongle:Lcom/htc/service/DongleInfo;
    if-eqz v0, :cond_0

    .line 4184
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4188
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

    .line 4189
    return-object v3
.end method

.method public getDonglePattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "dongleStaBssid"

    .prologue
    .line 4814
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v1

    .line 4815
    .local v1, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v0

    .line 4817
    .local v0, pid:I
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mUsedDongleCache:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4819
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mUsedDongleCache:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4821
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getFingerGestureEnable()Z
    .locals 3

    .prologue
    .line 4757
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

    .line 4758
    sget-object v0, Lcom/htc/server/WirelessDisplayService;->finger_gesture_enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public getInterface()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4497
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getMirrorDisplayStatus()Z
    .locals 5

    .prologue
    .line 4023
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 4024
    .local v0, curstate:I
    const/4 v1, 0x0

    .line 4025
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

    .line 4026
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 4027
    :cond_0
    const/4 v1, 0x0

    .line 4034
    :goto_0
    return v1

    .line 4029
    :cond_1
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4030
    const/4 v1, 0x1

    goto :goto_0

    .line 4032
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMirrorModeState()I
    .locals 1

    .prologue
    .line 4120
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
    .line 4196
    const-string v3, "WirelessDisplayService"

    const-string v4, "getunConfigDongleList()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4197
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4198
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

    .line 4199
    .local v1, info:Lcom/htc/service/DongleInfo;
    iget v3, v1, Lcom/htc/service/DongleInfo;->status:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    iget v3, v1, Lcom/htc/service/DongleInfo;->status:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 4200
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4203
    .end local v1           #info:Lcom/htc/service/DongleInfo;
    :cond_2
    return-object v2
.end method

.method public mirrorModeStartStop(Z)Z
    .locals 10
    .parameter "enable"

    .prologue
    const/4 v6, 0x1

    .line 4131
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v5

    .line 4132
    .local v5, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v3

    .line 4133
    .local v3, pid:I
    sget-object v7, Lcom/htc/server/WirelessDisplayService;->mHdmiPlug:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4134
    const-string v6, "WirelessDisplayService"

    const-string v7, "MHL/HDMI is Plugged"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4135
    invoke-virtual {p0}, Lcom/htc/server/WirelessDisplayService;->msgHDMIToast()V

    .line 4136
    const/4 v6, 0x0

    .line 4168
    :cond_0
    :goto_0
    return v6

    .line 4138
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

    .line 4139
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

    .line 4141
    :cond_3
    const-string v7, "WirelessDisplayService"

    const-string v8, "Already in the target state"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4144
    :cond_4
    const/4 v4, -0x1

    .line 4148
    .local v4, ret:I
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4149
    sget-object v7, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    if-eqz v7, :cond_6

    .line 4151
    const/4 v0, -0x1

    .line 4153
    .local v0, arg:I
    if-eqz p1, :cond_5

    .line 4154
    const/4 v0, 0x1

    .line 4155
    :cond_5
    sget-object v7, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v8, 0x1f

    const/16 v9, 0x21

    invoke-virtual {v7, v8, v9, v0}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 4156
    .local v1, m:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4157
    sget-object v7, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v7, v6}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 4160
    .end local v0           #arg:I
    .end local v1           #m:Landroid/os/Message;
    :cond_6
    if-nez p1, :cond_7

    .line 4161
    sget-object v7, Lcom/htc/server/WirelessDisplayService;->isPopDialog:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4163
    :cond_7
    if-nez p1, :cond_0

    .line 4164
    const-string v7, "WirelessDisplayService"

    const-string v8, "Notify DLNA Service mirror mode off"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4165
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.htc.intent.action.NOTIFY_DLNA_WIRELESS_DISPLAY_MIRROR_OFF"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4166
    .local v2, notifyDLNA:Landroid/content/Intent;
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public mirrorNow()V
    .locals 7

    .prologue
    .line 4793
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v1

    .line 4794
    .local v1, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v0

    .line 4795
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

    .line 4796
    sget-object v2, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    sget-object v3, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v4, 0x6f

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 4797
    return-void
.end method

.method public msgHDMIToast()V
    .locals 2

    .prologue
    .line 4411
    const-string v0, "WirelessDisplayService"

    const-string v1, "msgHDMIToast"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4417
    return-void
.end method

.method public notifyUserUnConfigDoneleResult(Z)V
    .locals 14
    .parameter "result"

    .prologue
    .line 2818
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v7

    .line 2819
    .local v7, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v6

    .line 2820
    .local v6, pid:I
    invoke-virtual {p0}, Lcom/htc/server/WirelessDisplayService;->getunConfigDongleList()Ljava/util/List;

    move-result-object v9

    .line 2822
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

    .line 2823
    if-eqz p1, :cond_2

    .line 2824
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 2825
    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/service/DongleInfo;

    if-eqz v10, :cond_0

    .line 2826
    new-instance v4, Landroid/content/Intent;

    const-string v10, "com.htc.wifidisplay.CONFIGURE_MODE_NOTIFICATION_CONFIG"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2827
    .local v4, notifyConfigToolToConfig:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/server/WirelessDisplayService;->getunConfigDongleList()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/service/DongleInfo;

    .line 2828
    .local v8, unConfigDongle:Lcom/htc/service/DongleInfo;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2829
    .local v1, bundle:Landroid/os/Bundle;
    const-string v10, "DONGLE_MAC"

    iget-object v11, v8, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2830
    invoke-virtual {v4, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2831
    const/high16 v10, 0x1000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2833
    :try_start_0
    iget-object v10, p0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2853
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v4           #notifyConfigToolToConfig:Landroid/content/Intent;
    .end local v8           #unConfigDongle:Lcom/htc/service/DongleInfo;
    :cond_0
    :goto_0
    return-void

    .line 2834
    .restart local v1       #bundle:Landroid/os/Bundle;
    .restart local v4       #notifyConfigToolToConfig:Landroid/content/Intent;
    .restart local v8       #unConfigDongle:Lcom/htc/service/DongleInfo;
    :catch_0
    move-exception v0

    .line 2835
    .local v0, ae:Landroid/content/ActivityNotFoundException;
    const-string v10, "WirelessDisplayService"

    const-string v11, "ActivityNotFoundException, intent: notifyConfigToolToConfig"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2839
    .end local v0           #ae:Landroid/content/ActivityNotFoundException;
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v4           #notifyConfigToolToConfig:Landroid/content/Intent;
    .end local v8           #unConfigDongle:Lcom/htc/service/DongleInfo;
    :cond_1
    new-instance v5, Landroid/content/Intent;

    const-string v10, "com.htc.wifidisplay.CONFIGURE_MODE_NOTIFICATION_LIST"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2840
    .local v5, notifyConfigerTool:Landroid/content/Intent;
    const/high16 v10, 0x1000

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2842
    :try_start_1
    iget-object v10, p0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2843
    :catch_1
    move-exception v0

    .line 2844
    .restart local v0       #ae:Landroid/content/ActivityNotFoundException;
    const-string v10, "WirelessDisplayService"

    const-string v11, "ActivityNotFoundException, intent: notifyConfigerTool"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2848
    .end local v0           #ae:Landroid/content/ActivityNotFoundException;
    .end local v5           #notifyConfigerTool:Landroid/content/Intent;
    :cond_2
    sget-object v10, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v11, 0xb

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-virtual {v10, v11, v12, v13}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 2849
    .local v2, msgBindWfdService:Landroid/os/Message;
    sget-object v10, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v10, v2}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 2850
    sget-object v10, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v11, 0x70

    const/4 v12, 0x0

    const/4 v13, -0x1

    invoke-virtual {v10, v11, v12, v13}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 2851
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

    .line 3964
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v5

    .line 3965
    .local v5, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v2

    .line 3966
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

    .line 3968
    const/4 v4, -0x1

    .line 3969
    .local v4, ret:I
    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 3972
    .local v3, previousState:I
    if-ne v3, v9, :cond_1

    .line 3973
    const/4 v4, -0x1

    .line 4013
    :cond_0
    :goto_0
    return v4

    .line 3974
    :cond_1
    if-eqz p1, :cond_5

    .line 3975
    if-ne v3, v11, :cond_4

    .line 3977
    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService;->mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    const/16 v7, 0x49

    if-ne v6, v7, :cond_3

    .line 3978
    sget-object v6, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v7, 0x1f

    const/16 v8, 0x21

    invoke-virtual {v6, v7, v8, v9}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 3980
    .local v1, msg2:Landroid/os/Message;
    sget-object v6, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v6, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 3988
    .end local v1           #msg2:Landroid/os/Message;
    :cond_2
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 3985
    :cond_3
    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService;->mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    const/16 v7, 0x47

    if-ne v6, v7, :cond_2

    .line 3986
    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService;->mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v7, 0x48

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1

    .line 3989
    :cond_4
    if-ne v3, v10, :cond_0

    .line 3990
    const/4 v4, 0x0

    goto :goto_0

    .line 3993
    :cond_5
    const/4 v6, 0x3

    if-ne v3, v6, :cond_6

    .line 4002
    sget-object v6, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v7, 0x0

    invoke-virtual {v6, v9, v11, v7}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 4003
    .local v0, msg:Landroid/os/Message;
    sget-object v6, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v6, v0}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 4005
    .end local v0           #msg:Landroid/os/Message;
    :cond_6
    if-ne v3, v10, :cond_7

    .line 4007
    const/4 v4, 0x0

    goto :goto_0

    .line 4008
    :cond_7
    const/4 v6, 0x4

    if-ne v3, v6, :cond_0

    .line 4010
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public popDialog()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v9, -0x1

    .line 4704
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v4

    .line 4705
    .local v4, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v2

    .line 4706
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

    .line 4707
    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/internal/app/OutputTVActivity;->getDefaultOption(Landroid/content/Context;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 4739
    :goto_0
    return v5

    .line 4716
    :cond_0
    sget-object v6, Lcom/htc/server/WirelessDisplayService;->isPopDialog:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_1

    .line 4717
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->getDialogResult()Z

    move-result v5

    goto :goto_0

    .line 4720
    :cond_1
    iput v9, p0, Lcom/htc/server/WirelessDisplayService;->dialogResult:I

    .line 4722
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.htc.intent.action.WIRELESS_DISPLAY_OUTPUTTV_SHOW"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4723
    .local v3, popDialogIntent:Landroid/content/Intent;
    const-string v6, "WirelessDisplayService"

    const-string v7, "Sending intent: INTENT_WIRELESS_DISPLAY_OUTPUTTV_SHOW"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4724
    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4726
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/16 v6, 0x33

    if-ge v1, v6, :cond_2

    .line 4727
    iget v6, p0, Lcom/htc/server/WirelessDisplayService;->dialogResult:I

    if-eq v6, v9, :cond_3

    .line 4728
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

    .line 4738
    :cond_2
    :goto_2
    sget-object v6, Lcom/htc/server/WirelessDisplayService;->isPopDialog:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4739
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->getDialogResult()Z

    move-result v5

    goto :goto_0

    .line 4732
    :cond_3
    const-wide/16 v6, 0x64

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4726
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4733
    :catch_0
    move-exception v0

    .line 4734
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "WirelessDisplayService"

    const-string v7, "sleep() error"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public requestWivuDiscovery(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .parameter "nwif"
    .parameter "group"
    .parameter "auto"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4223
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v4

    .line 4224
    .local v4, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v3

    .line 4225
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

    .line 4226
    const/4 v0, -0x1

    .line 4227
    .local v0, arg2:I
    if-eqz p3, :cond_0

    .line 4228
    const-string v5, "WirelessDisplayService"

    const-string v6, "auto is TRUE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4229
    const/4 v0, 0x1

    .line 4230
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4234
    :cond_0
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    if-nez v5, :cond_2

    .line 4235
    new-instance v5, Lcom/htc/server/WirelessDisplayService$WivuThread;

    invoke-direct {v5, p0, p1, p2}, Lcom/htc/server/WirelessDisplayService$WivuThread;-><init>(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 4236
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    invoke-virtual {v5}, Lcom/htc/server/WirelessDisplayService$WivuThread;->wivuInit()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 4237
    const-string v5, "WirelessDisplayService"

    const-string v6, "Something Wrong with netHD initialization Delete mWivuThread"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4238
    const/4 v5, 0x0

    sput-object v5, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 4241
    :cond_1
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v6, 0x1f

    const/16 v7, 0x20

    invoke-virtual {v5, v6, v7, v0}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 4242
    .local v1, msg1:Landroid/os/Message;
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v1, v6, v7}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4266
    .end local v1           #msg1:Landroid/os/Message;
    :goto_0
    return-void

    .line 4245
    :cond_2
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    invoke-virtual {v5}, Lcom/htc/server/WirelessDisplayService$WivuThread;->getWivuInterfaceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 4246
    const-string v5, "WirelessDisplayService"

    const-string v6, "Re-create wivu thread due to different network interface detected."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4248
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v6, 0x15

    invoke-virtual {v5, v6}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 4249
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    invoke-virtual {v5}, Lcom/htc/server/WirelessDisplayService$WivuThread;->stopThread()V

    .line 4250
    const/4 v5, 0x0

    sput-object v5, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 4251
    new-instance v5, Lcom/htc/server/WirelessDisplayService$WivuThread;

    invoke-direct {v5, p0, p1, p2}, Lcom/htc/server/WirelessDisplayService$WivuThread;-><init>(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 4252
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    invoke-virtual {v5}, Lcom/htc/server/WirelessDisplayService$WivuThread;->wivuInit()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 4253
    const-string v5, "WirelessDisplayService"

    const-string v6, "Something Wrong with netHD initialization Delete mWivuThread"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4254
    const/4 v5, 0x0

    sput-object v5, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 4257
    :cond_3
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v6, 0x1f

    const/16 v7, 0x20

    invoke-virtual {v5, v6, v7, v0}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 4258
    .local v2, msg2:Landroid/os/Message;
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v2, v6, v7}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 4262
    .end local v2           #msg2:Landroid/os/Message;
    :cond_4
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v6, 0x1f

    const/16 v7, 0x20

    invoke-virtual {v5, v6, v7, v0}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 4263
    .restart local v1       #msg1:Landroid/os/Message;
    sget-object v5, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v5, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public selectDongle(Ljava/lang/String;)V
    .locals 17
    .parameter "staBssid"

    .prologue
    .line 4308
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v12

    .line 4309
    .local v12, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v9

    .line 4310
    .local v9, pid:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .line 4312
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

    .line 4313
    if-nez p1, :cond_0

    .line 4405
    :goto_0
    return-void

    .line 4315
    :cond_0
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mHdmiPlug:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 4316
    const-string v13, "WirelessDisplayService"

    const-string v14, "MHL/HDMI is Plugged"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4317
    invoke-virtual/range {p0 .. p0}, Lcom/htc/server/WirelessDisplayService;->msgHDMIToast()V

    goto :goto_0

    .line 4337
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

    .line 4338
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/service/DongleInfo;

    .line 4339
    .local v3, curDong:Lcom/htc/service/DongleInfo;
    if-nez v3, :cond_4

    .line 4340
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

    .line 4341
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/service/DongleInfo;

    .line 4342
    .local v5, don2:Lcom/htc/service/DongleInfo;
    if-nez v5, :cond_2

    .line 4343
    const-string v13, "WirelessDisplayService"

    const-string v14, "don2 is nULL why?"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4360
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

    .line 4363
    :cond_3
    const-string v13, "WirelessDisplayService"

    const-string v14, "selectDongle: Switching Dongle"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4364
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v14, 0x1f

    invoke-virtual {v13, v14}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 4365
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v14, 0x1f

    const/16 v15, 0x21

    const/16 v16, -0x1

    invoke-virtual/range {v13 .. v16}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    .line 4366
    .local v10, plug:Landroid/os/Message;
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 4367
    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    sput-object v13, Lcom/htc/server/WirelessDisplayService;->needToSwitch:Ljava/lang/Boolean;

    .line 4368
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;

    goto/16 :goto_0

    .line 4345
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

    .line 4346
    const/4 v13, 0x1

    if-ne v4, v13, :cond_5

    .line 4347
    const-string v13, "WirelessDisplayService"

    const-string v14, "selectDongle:Using MirrorStartStop"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4348
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/server/WirelessDisplayService;->mirrorModeStartStop(Z)Z

    .line 4350
    :cond_5
    const-string v13, "WirelessDisplayService"

    const-string v14, "Dongle is Already Selected"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4370
    .end local v3           #curDong:Lcom/htc/service/DongleInfo;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 4371
    const-string v13, "WirelessDisplayService"

    const-string v14, "selectDongle:wivulist contains the dongle"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4372
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4373
    .local v2, b:Landroid/os/Bundle;
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v14, 0x1f

    const/16 v15, 0x25

    const/16 v16, -0x1

    invoke-virtual/range {v13 .. v16}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    .line 4374
    .local v6, m:Landroid/os/Message;
    const-string v13, "dongle_staBssid"

    move-object/from16 v0, p1

    invoke-virtual {v2, v13, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4375
    invoke-virtual {v6, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 4376
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 4377
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v14, 0x1

    const/4 v15, 0x2

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    .line 4378
    .local v8, m2:Landroid/os/Message;
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 4379
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4381
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, -0x6

    invoke-virtual/range {v13 .. v16}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v11

    .line 4382
    .local v11, timeOut2:Landroid/os/Message;
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const-wide/32 v14, 0x15f90

    invoke-virtual {v13, v11, v14, v15}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 4389
    .end local v2           #b:Landroid/os/Bundle;
    .end local v6           #m:Landroid/os/Message;
    .end local v8           #m2:Landroid/os/Message;
    .end local v11           #timeOut2:Landroid/os/Message;
    :cond_7
    const-string v13, "WirelessDisplayService"

    const-string v14, "selectDongle: Dongle is not in Wivu List"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4390
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;

    .line 4391
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v14, 0x1

    const/16 v15, 0x8

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    .line 4392
    .local v7, m1:Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 4398
    const/16 v13, 0x8

    if-eq v4, v13, :cond_8

    .line 4399
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v13, v14, v0}, Lcom/htc/server/WirelessDisplayService$WivuThread;->changeInterface(Ljava/lang/String;Ljava/lang/String;)V

    .line 4402
    :cond_8
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, -0x6

    invoke-virtual/range {v13 .. v16}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    .line 4403
    .restart local v8       #m2:Landroid/os/Message;
    sget-object v13, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const-wide/32 v14, 0x15f90

    invoke-virtual {v13, v8, v14, v15}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method public setDLNAPreloadEnable(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    .line 4782
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v2

    .line 4783
    .local v2, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v1

    .line 4784
    .local v1, pid:I
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    .line 4785
    .local v0, debug:[Ljava/lang/Object;
    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v3

    .line 4786
    const-string v3, "setDLNAPreloadEnable"

    invoke-direct {p0, v3, v0}, Lcom/htc/server/WirelessDisplayService;->addToHtcWDSrvHistory(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4787
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

    .line 4788
    sget-object v3, Lcom/htc/server/WirelessDisplayService;->preload_DLNA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4789
    return-void
.end method

.method public setDonglePattern(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "dongleStaBssid"
    .parameter "pattern"

    .prologue
    .line 4800
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v1

    .line 4801
    .local v1, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v0

    .line 4802
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

    .line 4811
    :cond_0
    :goto_0
    return-void

    .line 4806
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

    .line 4807
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 4808
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService;->mUsedDongleCache:Ljava/util/Hashtable;

    invoke-virtual {v2, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4809
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
    .line 4762
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v2

    .line 4763
    .local v2, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v1

    .line 4764
    .local v1, pid:I
    sget-object v3, Lcom/htc/server/WirelessDisplayService;->mHdmiPlug:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4765
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

    .line 4774
    :goto_0
    return-void

    .line 4768
    :cond_0
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    .line 4769
    .local v0, debug:[Ljava/lang/Object;
    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v3

    .line 4770
    const-string v3, "setFingerGestureEnable"

    invoke-direct {p0, v3, v0}, Lcom/htc/server/WirelessDisplayService;->addToHtcWDSrvHistory(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4771
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

    .line 4772
    sget-object v3, Lcom/htc/server/WirelessDisplayService;->finger_gesture_enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4773
    sget-object v3, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v4, 0x73

    invoke-virtual {v3, v4}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    goto :goto_0
.end method

.method public setInterface(Ljava/lang/String;)V
    .locals 16
    .parameter "nwif"

    .prologue
    .line 4575
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v10

    .line 4576
    .local v10, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v8

    .line 4577
    .local v8, pid:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 4578
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

    .line 4579
    if-eqz p1, :cond_2

    .line 4580
    move-object/from16 v6, p1

    .line 4581
    .local v6, local:Ljava/lang/String;
    sget-object v12, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    if-nez v12, :cond_6

    .line 4582
    sget-object v12, Lcom/htc/server/WirelessDisplayService;->mIsHotspotIpAddressReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v12

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/server/WirelessDisplayService;->mSoftapInterface:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 4583
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    const/16 v12, 0xa

    if-ge v5, v12, :cond_0

    .line 4584
    sget-object v12, Lcom/htc/server/WirelessDisplayService;->mIsHotspotIpAddressReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 4585
    const-string v12, "WirelessDisplayService"

    const-string v13, "Get IP, Start setInterface"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4600
    .end local v5           #i:I
    :cond_0
    :goto_1
    sget-object v12, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 4602
    new-instance v12, Lcom/htc/server/WirelessDisplayService$WivuThread;

    const-string v13, "3655"

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v6, v13}, Lcom/htc/server/WirelessDisplayService$WivuThread;-><init>(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v12, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 4603
    const/4 v11, 0x0

    .line 4604
    .local v11, wivuInitSuccess:Z
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_2
    const/4 v12, 0x4

    if-ge v5, v12, :cond_1

    .line 4605
    sget-object v12, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    invoke-virtual {v12}, Lcom/htc/server/WirelessDisplayService$WivuThread;->wivuInit()I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_4

    .line 4606
    const/4 v11, 0x1

    .line 4617
    :cond_1
    if-nez v11, :cond_5

    .line 4618
    const-string v12, "WirelessDisplayService"

    const-string v13, "Something Wrong with netHD initialization Delete mWivuThread"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4619
    const/4 v12, 0x0

    sput-object v12, Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 4631
    :goto_3
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;

    .line 4683
    .end local v5           #i:I
    .end local v6           #local:Ljava/lang/String;
    .end local v11           #wivuInitSuccess:Z
    :cond_2
    :goto_4
    return-void

    .line 4589
    .restart local v5       #i:I
    .restart local v6       #local:Ljava/lang/String;
    :cond_3
    const-wide/16 v12, 0x1f4

    :try_start_0
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4583
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4590
    :catch_0
    move-exception v4

    .line 4591
    .local v4, e:Ljava/lang/Exception;
    const-string v12, "WirelessDisplayService"

    const-string v13, "sleep() error"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4610
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v11       #wivuInitSuccess:Z
    :cond_4
    :try_start_1
    const-string v12, "WirelessDisplayService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Something Wrong with netHD initialization, retry: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4611
    const-wide/16 v12, 0x1f4

    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4604
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 4612
    :catch_1
    move-exception v4

    .line 4613
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v12, "WirelessDisplayService"

    const-string v13, "sleep() error"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 4622
    .end local v4           #e:Ljava/lang/Exception;
    :cond_5
    const-string v12, "WirelessDisplayService"

    const-string v13, "setInterface: REQ_SET_MCAST_ROUTE"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4623
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4624
    .local v2, bundle:Landroid/os/Bundle;
    sget-object v12, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v13, 0x1f

    const/16 v14, 0x191

    const/4 v15, -0x1

    invoke-virtual {v12, v13, v14, v15}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    .line 4625
    .local v9, setif:Landroid/os/Message;
    const-string v12, "interfaceRoute"

    move-object/from16 v0, p1

    invoke-virtual {v2, v12, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4626
    invoke-virtual {v9, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 4627
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 4633
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v5           #i:I
    .end local v9           #setif:Landroid/os/Message;
    .end local v11           #wivuInitSuccess:Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;

    if-eqz v12, :cond_2

    .line 4634
    const-string v12, "WirelessDisplayService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setInterface:Interface change, mIsHotspotIpAddressReady: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/htc/server/WirelessDisplayService;->mIsHotspotIpAddressReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4635
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 4636
    sget-object v12, Lcom/htc/server/WirelessDisplayService;->mIsHotspotIpAddressReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v12

    if-nez v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/server/WirelessDisplayService;->mSoftapInterface:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 4637
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_6
    const/16 v12, 0xa

    if-ge v5, v12, :cond_7

    .line 4638
    sget-object v12, Lcom/htc/server/WirelessDisplayService;->mIsHotspotIpAddressReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 4639
    const-string v12, "WirelessDisplayService"

    const-string v13, "Get IP, Start setInterface"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4650
    .end local v5           #i:I
    :cond_7
    :goto_7
    const-string v12, "WirelessDisplayService"

    const-string v13, "setInterface:clearing dongle lists: Change in interface"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4651
    sget-object v12, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 4654
    sget-object v12, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 4659
    sget-object v12, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    .line 4660
    .local v7, msg:Landroid/os/Message;
    sget-object v12, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v12, v7}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 4662
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4663
    .local v1, b:Landroid/os/Bundle;
    sget-object v12, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v13, 0x1f

    const/16 v14, 0x27

    const/4 v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    .line 4664
    .restart local v9       #setif:Landroid/os/Message;
    const-string v12, "interface"

    invoke-virtual {v1, v12, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4665
    invoke-virtual {v9, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 4666
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 4668
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;

    .line 4673
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/WirelessDisplayService;->clearDongleCache()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 4674
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v12

    if-nez v12, :cond_8

    .line 4675
    const-string v12, "WirelessDisplayService"

    const-string v13, "wifi scan fail!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4677
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->clear()V

    goto/16 :goto_4

    .line 4643
    .end local v1           #b:Landroid/os/Bundle;
    .end local v7           #msg:Landroid/os/Message;
    .end local v9           #setif:Landroid/os/Message;
    .restart local v5       #i:I
    :cond_9
    const-wide/16 v12, 0x1f4

    :try_start_2
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 4637
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 4644
    :catch_2
    move-exception v4

    .line 4645
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v12, "WirelessDisplayService"

    const-string v13, "sleep() error"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public setL2peApInfo(Ljava/lang/String;)V
    .locals 5
    .parameter "ssid"

    .prologue
    .line 4501
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v1

    .line 4502
    .local v1, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v0

    .line 4503
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

    .line 4504
    const-string v2, "sys.wfd.ap"

    invoke-static {v2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4505
    return-void
.end method

.method public setMirrorDisplayOnOff(Z)I
    .locals 16
    .parameter "enable"

    .prologue
    .line 3809
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v10

    .line 3810
    .local v10, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v7

    .line 3811
    .local v7, pid:I
    const/4 v9, -0x1

    .line 3812
    .local v9, ret:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/server/WirelessDisplayService;->synchronize_lock:Ljava/lang/Object;

    monitor-enter v12

    .line 3813
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    .line 3814
    .local v8, previousState:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 3815
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

    .line 3816
    const/4 v11, 0x1

    if-ne v8, v11, :cond_1

    .line 3817
    const-string v11, "WirelessDisplayService"

    const-string v13, "Mirror is DISABLED already"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3818
    const/4 v9, -0x1

    .line 3939
    :cond_0
    :goto_0
    monitor-exit v12

    .line 3940
    return v9

    .line 3819
    :cond_1
    if-eqz p1, :cond_d

    .line 3820
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/htc/server/WirelessDisplayService;->app_req_status:Ljava/lang/Boolean;

    .line 3821
    const/4 v11, 0x7

    if-ne v8, v11, :cond_6

    .line 3822
    const/4 v11, 0x4

    if-ne v1, v11, :cond_3

    .line 3823
    sget-object v11, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v13, 0x1f

    const/16 v14, 0x21

    const/4 v15, 0x1

    invoke-virtual {v11, v13, v14, v15}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 3824
    .local v3, msg2:Landroid/os/Message;
    sget-object v11, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v11, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 3825
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3826
    const-string v11, "WirelessDisplayService"

    const-string v13, "setMirrorDisplayOnOff:mAppCallScreen:0"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3828
    sget-object v11, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v13, 0x14

    invoke-virtual {v11, v13}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 3829
    sget-object v11, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v13, 0x14

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v13, v14, v15}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 3830
    .local v4, msgFallBackfromAppPause:Landroid/os/Message;
    sget-object v11, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const-wide/16 v13, 0xbb8

    invoke-virtual {v11, v4, v13, v14}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3843
    .end local v3           #msg2:Landroid/os/Message;
    .end local v4           #msgFallBackfromAppPause:Landroid/os/Message;
    :cond_2
    :goto_1
    const/4 v9, 0x0

    goto :goto_0

    .line 3831
    :cond_3
    const/4 v11, 0x6

    if-ne v1, v11, :cond_4

    .line 3832
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v13, 0x2

    invoke-virtual {v11, v13}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3833
    const-string v11, "WirelessDisplayService"

    const-string v13, "setMirrorDisplayOnOff:mAppCallScreen:2"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3939
    .end local v1           #condState:I
    .end local v8           #previousState:I
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 3834
    .restart local v1       #condState:I
    .restart local v8       #previousState:I
    :cond_4
    const/4 v11, 0x7

    if-ne v1, v11, :cond_5

    .line 3835
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v13, 0x3

    invoke-virtual {v11, v13}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3836
    const-string v11, "WirelessDisplayService"

    const-string v13, "setMirrorDisplayOnOff:mAppCallScreen:3"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3837
    :cond_5
    const/4 v11, 0x5

    if-ne v1, v11, :cond_2

    .line 3838
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3839
    const-string v11, "WirelessDisplayService"

    const-string v13, "setMirrorDisplayOnOff:mAppCallScreen:1"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3840
    sget-object v11, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v13, 0x4

    invoke-virtual {v11, v13}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 3841
    .local v6, msgTimeOut:Landroid/os/Message;
    sget-object v11, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const-wide/32 v13, 0x1d4c0

    invoke-virtual {v11, v6, v13, v14}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 3844
    .end local v6           #msgTimeOut:Landroid/os/Message;
    :cond_6
    const/4 v11, 0x2

    if-ne v8, v11, :cond_7

    .line 3845
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 3846
    :cond_7
    const/4 v11, 0x4

    if-ne v8, v11, :cond_a

    .line 3847
    const/4 v11, 0x5

    if-ne v1, v11, :cond_8

    .line 3848
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3849
    const-string v11, "WirelessDisplayService"

    const-string v13, "setMirrorDisplayOnOff:mAppCallScreen:1"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3850
    :cond_8
    const/4 v11, 0x7

    if-ne v1, v11, :cond_9

    .line 3851
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v13, 0x3

    invoke-virtual {v11, v13}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3852
    const-string v11, "WirelessDisplayService"

    const-string v13, "setMirrorDisplayOnOff:mAppCallScreen:3"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3853
    :cond_9
    const/4 v11, 0x4

    if-ne v1, v11, :cond_0

    .line 3854
    sget-object v11, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v13, 0x29

    const/16 v14, 0x2a

    const/16 v15, 0x2d

    invoke-virtual {v11, v13, v14, v15}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 3855
    .local v2, msg:Landroid/os/Message;
    sget-object v11, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const-wide/16 v13, 0x1

    invoke-virtual {v11, v2, v13, v14}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3856
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3857
    const-string v11, "WirelessDisplayService"

    const-string v13, "setMirrorDisplayOnOff:mAppCallScreen:0"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3859
    .end local v2           #msg:Landroid/os/Message;
    :cond_a
    const/16 v11, 0x9

    if-ne v8, v11, :cond_0

    .line 3860
    const/4 v11, 0x6

    if-ne v1, v11, :cond_b

    .line 3861
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v13, 0x2

    invoke-virtual {v11, v13}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3862
    const-string v11, "WirelessDisplayService"

    const-string v13, "setMirrorDisplayOnOff:mAppCallScreen:2"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3863
    :cond_b
    const/4 v11, 0x7

    if-ne v1, v11, :cond_c

    .line 3864
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v13, 0x3

    invoke-virtual {v11, v13}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3865
    const-string v11, "WirelessDisplayService"

    const-string v13, "setMirrorDisplayOnOff:mAppCallScreen:3"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3866
    :cond_c
    const/4 v11, 0x4

    if-ne v1, v11, :cond_0

    .line 3867
    sget-object v11, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v13, 0x29

    const/16 v14, 0x2a

    const/16 v15, 0x2e

    invoke-virtual {v11, v13, v14, v15}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 3868
    .restart local v2       #msg:Landroid/os/Message;
    sget-object v11, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const-wide/16 v13, 0x1

    invoke-virtual {v11, v2, v13, v14}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3869
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3870
    const-string v11, "WirelessDisplayService"

    const-string v13, "setMirrorDisplayOnOff:mAppCallScreen:0"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3874
    .end local v2           #msg:Landroid/os/Message;
    :cond_d
    sget-object v11, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v13, 0x14

    invoke-virtual {v11, v13}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 3875
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/htc/server/WirelessDisplayService;->app_req_status:Ljava/lang/Boolean;

    .line 3876
    const/4 v11, 0x3

    if-ne v8, v11, :cond_e

    .line 3877
    sget-object v11, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v13, 0x1

    const/4 v14, 0x7

    const/4 v15, 0x0

    invoke-virtual {v11, v13, v14, v15}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 3878
    .restart local v2       #msg:Landroid/os/Message;
    sget-object v11, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    invoke-virtual {v11, v2}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 3883
    sget-object v11, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v13, 0x29

    const/16 v14, 0x2b

    const/16 v15, 0x2c

    invoke-virtual {v11, v13, v14, v15}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .line 3884
    .local v5, msgPause:Landroid/os/Message;
    sget-object v11, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v13, 0x29

    invoke-virtual {v11, v13}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 3887
    sget-object v11, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const-wide/16 v13, 0x3e8

    invoke-virtual {v11, v5, v13, v14}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3889
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/htc/server/WirelessDisplayService;->startStopVideo(Z)V

    .line 3890
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v13, 0x4

    invoke-virtual {v11, v13}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3891
    const-string v11, "WirelessDisplayService"

    const-string v13, "mAppCallScreen:4"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3901
    .end local v2           #msg:Landroid/os/Message;
    .end local v5           #msgPause:Landroid/os/Message;
    :cond_e
    const/4 v11, 0x2

    if-ne v8, v11, :cond_f

    .line 3903
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 3904
    :cond_f
    const/4 v11, 0x4

    if-ne v8, v11, :cond_12

    .line 3906
    const/4 v11, 0x1

    if-ne v1, v11, :cond_11

    .line 3907
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v13, 0x5

    invoke-virtual {v11, v13}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3908
    const-string v11, "WirelessDisplayService"

    const-string v13, "mAppCallScreen:5"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3913
    :cond_10
    :goto_2
    const-string v11, "WirelessDisplayService"

    const-string v13, "When screen is locked DLNA should not call any function"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3914
    const/4 v9, -0x1

    goto/16 :goto_0

    .line 3909
    :cond_11
    const/4 v11, 0x3

    if-ne v1, v11, :cond_10

    .line 3910
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v13, 0x7

    invoke-virtual {v11, v13}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3911
    const-string v11, "WirelessDisplayService"

    const-string v13, "mAppCallScreen:7"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3915
    :cond_12
    const/16 v11, 0x9

    if-ne v8, v11, :cond_15

    .line 3916
    const/4 v11, 0x2

    if-ne v1, v11, :cond_14

    .line 3917
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v13, 0x6

    invoke-virtual {v11, v13}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3918
    const-string v11, "WirelessDisplayService"

    const-string v13, "mAppCallScreen:6"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3923
    :cond_13
    :goto_3
    const-string v11, "WirelessDisplayService"

    const-string v13, "When in Call DLNA should not call any function"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3924
    const/4 v9, -0x1

    goto/16 :goto_0

    .line 3919
    :cond_14
    const/4 v11, 0x3

    if-ne v1, v11, :cond_13

    .line 3920
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v13, 0x7

    invoke-virtual {v11, v13}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3921
    const-string v11, "WirelessDisplayService"

    const-string v13, "mAppCallScreen:7"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3925
    :cond_15
    const/4 v11, 0x7

    if-ne v8, v11, :cond_0

    .line 3926
    if-nez v1, :cond_17

    .line 3927
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v13, 0x4

    invoke-virtual {v11, v13}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3936
    :cond_16
    :goto_4
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

    goto/16 :goto_0

    .line 3928
    :cond_17
    const/4 v11, 0x1

    if-ne v1, v11, :cond_18

    .line 3929
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v13, 0x5

    invoke-virtual {v11, v13}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_4

    .line 3930
    :cond_18
    const/4 v11, 0x2

    if-ne v1, v11, :cond_19

    .line 3931
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v13, 0x6

    invoke-virtual {v11, v13}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_4

    .line 3932
    :cond_19
    const/4 v11, 0x3

    if-ne v1, v11, :cond_16

    .line 3933
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v13, 0x7

    invoke-virtual {v11, v13}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method

.method public startPatternLockFakeMirror(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 4508
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v1

    .line 4509
    .local v1, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v0

    .line 4510
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

    .line 4511
    if-eqz p1, :cond_0

    .line 4512
    const-string v2, "sys.ml.uilock"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4516
    :goto_0
    return-void

    .line 4514
    :cond_0
    const-string v2, "sys.ml.uilock"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopWivuDiscovery()V
    .locals 8

    .prologue
    .line 4686
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v3

    .line 4687
    .local v3, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v1

    .line 4688
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

    .line 4693
    sget-object v4, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/16 v5, 0x1f

    const/16 v6, 0x21

    const/4 v7, -0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 4694
    .local v2, plug:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4696
    sget-object v4, Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4697
    .local v0, m:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4699
    return-void
.end method

.method public usedDongleFound()Z
    .locals 7

    .prologue
    .line 4837
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingUid()I

    move-result v2

    .line 4838
    .local v2, uid:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->getCallingPid()I

    move-result v1

    .line 4839
    .local v1, pid:I
    const/4 v0, 0x0

    .line 4840
    .local v0, found:Z
    invoke-direct {p0}, Lcom/htc/server/WirelessDisplayService;->getUsedDongleList()Ljava/util/List;

    move-result-object v3

    .line 4841
    .local v3, usedDongleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 4842
    const/4 v0, 0x1

    .line 4844
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

    .line 4845
    return v0
.end method
