.class public Landroid/net/wifi/WifiStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;,
        Landroid/net/wifi/WifiStateMachine$TetheredState;,
        Landroid/net/wifi/WifiStateMachine$TetheringState;,
        Landroid/net/wifi/WifiStateMachine$SoftApStartedState;,
        Landroid/net/wifi/WifiStateMachine$SoftApStartingState;,
        Landroid/net/wifi/WifiStateMachine$WpsRunningState;,
        Landroid/net/wifi/WifiStateMachine$DisconnectedState;,
        Landroid/net/wifi/WifiStateMachine$DisconnectingState;,
        Landroid/net/wifi/WifiStateMachine$ConnectedState;,
        Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;,
        Landroid/net/wifi/WifiStateMachine$ObtainingIpState;,
        Landroid/net/wifi/WifiStateMachine$L2ConnectedState;,
        Landroid/net/wifi/WifiStateMachine$ConnectModeState;,
        Landroid/net/wifi/WifiStateMachine$ScanModeState;,
        Landroid/net/wifi/WifiStateMachine$DriverStoppedState;,
        Landroid/net/wifi/WifiStateMachine$DriverStoppingState;,
        Landroid/net/wifi/WifiStateMachine$DriverStartedState;,
        Landroid/net/wifi/WifiStateMachine$DriverStartingState;,
        Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;,
        Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;,
        Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;,
        Landroid/net/wifi/WifiStateMachine$DriverFailedState;,
        Landroid/net/wifi/WifiStateMachine$DriverUnloadedState;,
        Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;,
        Landroid/net/wifi/WifiStateMachine$DriverLoadedState;,
        Landroid/net/wifi/WifiStateMachine$DriverLoadingState;,
        Landroid/net/wifi/WifiStateMachine$InitialState;,
        Landroid/net/wifi/WifiStateMachine$DefaultState;,
        Landroid/net/wifi/WifiStateMachine$CwHandler;,
        Landroid/net/wifi/WifiStateMachine$TetherStateChange;,
        Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;
    }
.end annotation


# static fields
.field private static final ACTION_DELAYED_DRIVER_STOP:Ljava/lang/String; = "com.android.server.WifiManager.action.DELAYED_DRIVER_STOP"

.field private static final ACTION_IPV6_RENEW:Ljava/lang/String; = "android.net.wifi.IPV6_RENEW"

.field private static final ACTION_START_SCAN:Ljava/lang/String; = "com.android.server.WifiManager.action.START_SCAN"

.field private static final ACTION_WIFI_AP_CONN_REQ_TIMEOUT:Ljava/lang/String; = "com.android.server.HotspotManager.action.WIFI_AP_CONN_REQ_TIMEOUT"

.field static final ARP_FILTER:I = 0x5

.field static final BASE:I = 0x20000

.field private static final BLACK_LIST_SIZE:I = 0x10

.field static final BLIST_FILTER:I = 0x9

.field static final BROADCAST_FILTER:I = 0x1

.field private static final BROADCAST_INTENT_ACTION_CUSTOMIZATION:Ljava/lang/String; = "com.htc.intent.action.CUSTOMIZATION_CHANGE"

.field static final CMD_ADD_OR_UPDATE_NETWORK:I = 0x20034

.field static final CMD_ASSOC_LIST_CHANGE:I = 0x2008e

.field static final CMD_BLACKLIST_NETWORK:I = 0x20038

.field static final CMD_BLUETOOTH_ADAPTER_STATE_CHANGE:I = 0x2001f

.field static final CMD_CLEAR_BLACKLIST:I = 0x20039

.field static final CMD_CLEAR_SUSPEND_OPTIMIZATIONS:I = 0x20057

.field static final CMD_CONNECTION_REQUESTS:I = 0x2008d

.field static final CMD_DELAYED_STOP_DRIVER:I = 0x20012

.field public static final CMD_DISABLE_P2P:I = 0x20084

.field public static final CMD_DISABLE_RECONNECT:I = 0x20087

.field public static final CMD_DISCONNECT:I = 0x2004a

.field static final CMD_DRIVER_START_TIMED_OUT:I = 0x20013

.field static final CMD_ENABLE_ALL_NETWORKS:I = 0x20037

.field static final CMD_ENABLE_BACKGROUND_SCAN:I = 0x2005b

.field static final CMD_ENABLE_NETWORK:I = 0x20036

.field public static final CMD_ENABLE_P2P:I = 0x20083

.field static final CMD_ENABLE_RSSI_POLL:I = 0x20052

.field static final CMD_GET_CONFIGURED_NETWORKS:I = 0x2003b

.field static final CMD_LOAD_DRIVER:I = 0x20001

.field static final CMD_LOAD_DRIVER_FAILURE:I = 0x20004

.field static final CMD_LOAD_DRIVER_SUCCESS:I = 0x20003

.field static final CMD_MAC_LIST_PROFILE_CHANGE:I = 0x2008f

.field static final CMD_NO_NETWORKS_PERIODIC_SCAN:I = 0x20058

.field static final CMD_PING_SUPPLICANT:I = 0x20033

.field static final CMD_REASSOCIATE:I = 0x2004c

.field public static final CMD_RECONNECT:I = 0x2004b

.field static final CMD_REMOVE_NETWORK:I = 0x20035

.field static final CMD_RENEW_IPV6:I = 0x20086

.field static final CMD_REQUEST_AP_CONFIG:I = 0x2001b

.field static final CMD_RESET_SUPPLICANT_STATE:I = 0x2006f

.field static final CMD_RESPONSE_AP_CONFIG:I = 0x2001c

.field static final CMD_RSSI_POLL:I = 0x20053

.field static final CMD_SAVE_CONFIG:I = 0x2003a

.field static final CMD_SET_AP_CONFIG:I = 0x20019

.field static final CMD_SET_AP_CONFIG_COMPLETED:I = 0x2001a

.field static final CMD_SET_COUNTRY_CODE:I = 0x20050

.field static final CMD_SET_FREQUENCY_BAND:I = 0x2005a

.field static final CMD_SET_HIGH_PERF_MODE:I = 0x2004d

.field static final CMD_SET_ROAMING_DISABLED:I = 0x20094

.field static final CMD_SET_RSSI_TO_WIFIINFO:I = 0x20092

.field static final CMD_SET_SCAN_MODE:I = 0x20048

.field static final CMD_SET_SCAN_TYPE:I = 0x20049

.field static final CMD_SET_SCREEN_ON:I = 0x20090

.field static final CMD_SET_SUSPEND_OPTIMIZATIONS:I = 0x20056

.field static final CMD_SET_WIFIDISPLAY_AP_CONFIG:I = 0x20091

.field static final CMD_START_AP:I = 0x20015

.field static final CMD_START_AP_FAILURE:I = 0x20017

.field static final CMD_START_AP_SUCCESS:I = 0x20016

.field static final CMD_START_DONGLE_SCAN:I = 0x20068

.field static final CMD_START_DONGLE_SINGLE_CSCAN:I = 0x20069

.field static final CMD_START_DONGLE_WAKEUP:I = 0x2006a

.field static final CMD_START_DRIVER:I = 0x2000d

.field static final CMD_START_PACKET_FILTERING:I = 0x20054

.field public static final CMD_START_SCAN:I = 0x20047

.field static final CMD_START_SUPPLICANT:I = 0x2000b

.field static final CMD_START_WPS_REGISTRAR:I = 0x20061

.field static final CMD_STATIC_IP_FAILURE:I = 0x20010

.field static final CMD_STATIC_IP_SUCCESS:I = 0x2000f

.field static final CMD_STOP_AP:I = 0x20018

.field static final CMD_STOP_DRIVER:I = 0x2000e

.field static final CMD_STOP_PACKET_FILTERING:I = 0x20055

.field static final CMD_STOP_SUPPLICANT:I = 0x2000c

.field static final CMD_STOP_SUPPLICANT_FAILED:I = 0x20011

.field static final CMD_STOP_WPS_REGISTRAR:I = 0x20062

.field static final CMD_TETHER_NOTIFICATION_TIMED_OUT:I = 0x2001e

.field static final CMD_TETHER_STATE_CHANGE:I = 0x2001d

.field static final CMD_UNLOAD_DRIVER:I = 0x20002

.field static final CMD_UNLOAD_DRIVER_FAILURE:I = 0x20006

.field static final CMD_UNLOAD_DRIVER_SUCCESS:I = 0x20005

.field static final CMD_UPDATE_IPV6_ADDRESSES:I = 0x20085

.field static final CMD_UPDATE_REQ_SCAHED_SCAN_INTERVAL:I = 0x20093

.field static final CMD_WIFIDISPLAY_MAC_LIST_PROFILE_CHANGE:I = 0x20080

.field private static final CONNECT_MODE:I = 0x1

.field private static final DBG:Z = true

#the value of this static final field might be set in the static constructor
.field private static final DBG_DETAIL:Z = false

.field private static final DEFAULT_DHCP_FAIL_WORKAROUND:I = 0x2

.field private static final DEFAULT_MAX_DHCP_RETRIES:I = 0x2

.field private static final DELAYED_STOP_COUNTER:Ljava/lang/String; = "DelayedStopCounter"

.field static final DHCPOFFER_FILTER:I = 0x4

.field private static final DRIVER_POWER_MODE_ACTIVE:I = 0x1

.field private static final DRIVER_POWER_MODE_AUTO:I = 0x0

.field private static final DRIVER_START_TIME_OUT_MSECS:I = 0x2710

.field private static final DRIVER_STOP_REQUEST:I = 0x0

.field private static final EVENTLOG_SUPPLICANT_STATE_CHANGED:I = 0xc367

.field private static final EVENTLOG_WIFI_EVENT_HANDLED:I = 0xc366

.field private static final EVENTLOG_WIFI_STATE_CHANGED:I = 0xc365

.field private static final EVENT_CW_DEREGISTER_START:I = 0x3ea

.field private static final EVENT_CW_REGISTER_EXPIRE_START:I = 0x3eb

.field private static final EVENT_CW_REGISTER_START:I = 0x3e9

.field static final EVENT_EAP_NOTIFICATION:I = 0x20021

.field static final EVENT_GET_AIRPLANE_MODE:I = 0x20020

.field private static final EVENT_HTC_BASE:I = 0x12c

.field public static final EVENT_HTC_STATE_UPDATE:I = 0x131

.field public static final EVENT_STATE_CHANGED:I = 0x1

.field private static final FAILURE:I = -0x1

.field private static final FLASHLIGHT_FILE:Ljava/lang/String; = "/sys/camera_led_status/led_hotspot_status"

.field static final HEXES:Ljava/lang/String; = "0123456789ABCDEF"

.field private static final HOTSPOT_REQUESTED_MILLIS:J = 0x1d4c0L

.field private static final ICON_WIFI_CONNECTION_REQUEST:I = 0x108050d

.field private static final IN_ECM_STATE:I = 0x1

.field private static final IPV6_RENEW:I = 0x0

.field static final L2PE_FAIL_EVENT:I = 0x20067

.field static final L2PE_SUCCESSFUL_EVENT:I = 0x20066

.field private static final MAX_IPV6_RENEWAL_TIME_MS:I = 0x1f40

.field private static final MAX_REQUESTED_NUMBER:I = 0x10

.field private static final MAX_RSSI:I = 0x100

.field private static final MIN_INTERVAL_ENABLE_ALL_NETWORKS_MS:I = 0x927c0

.field private static final MIN_RENEWAL_TIME_SECS:I = 0x12c

.field private static final MIN_RSSI:I = -0xc8

.field static final MULTICAST_V4:I = 0x2

.field static final MULTICAST_V6:I = 0x3

.field private static final NETWORKTYPE:Ljava/lang/String; = "WIFI"

.field private static final NOT_IN_ECM_STATE:I = 0x0

.field private static final POLL_RSSI_INTERVAL_MSECS:I = 0xbb8

.field private static final PROPERTY_WIFI_V6_SUPPORTED:Ljava/lang/String; = "persist.wifi.v6"

.field private static final SCAN_ACTIVE:I = 0x1

.field private static final SCAN_ONLY_MODE:I = 0x2

.field private static final SCAN_PASSIVE:I = 0x2

.field private static final SCAN_REQUEST:I = 0x0

.field private static final SCAN_RESULT_CACHE_SIZE:I = 0x50

.field static final SELF_FILTER:I = 0x0

.field private static final SOFTAP_IFACE:Ljava/lang/String; = "wlan0"

.field static final SSDP_FILTER:I = 0x6

.field private static final SUCCESS:I = 0x1

.field private static final SUPPLICANT_RESTART_INTERVAL_MSECS:I = 0x1388

.field private static final SUPPLICANT_RESTART_TRIES:I = 0x5

.field private static final TAG:Ljava/lang/String; = "WifiStateMachine"

.field private static final TETHER_NOTIFICATION_TIME_OUT_MSECS:I = 0x1388

.field private static final VZW_STATUS_AP_DETECTED_BUT_NOT_CONNECTED:I = 0x2

.field private static final VZW_STATUS_CONNECTED:I = 0x3

.field private static final VZW_STATUS_DO_WIFI_AGGREGATION:I = 0x4

.field private static final VZW_STATUS_NO_AP_DETECTED:I = 0x1

.field private static final VZW_STATUS_WIFI_OFF:I = 0x0

.field private static final WHITE_LIST_SIZE:I = 0x10

.field private static final WIFI_AP_CONN_REQ_TIMEOUT:I = 0x4

.field private static final WIFI_AP_IDLE:Ljava/lang/String; = "com.android.server.HotspotManager.action.DEVICE_IDLE"

.field private static final WIIF_AP_IDLE_REQUEST:I = 0x1

.field static final WIVU_FILTER:I = 0x7

.field static final WPS_REGISTRAR_FAIL_EVENT:I = 0x20065

.field static final WPS_REGISTRAR_START_EVENT:I = 0x20063

.field static final WPS_REGISTRAR_SUCCESSFUL_EVENT:I = 0x20064

.field private static WifiConnWaitP2pDiscon:Z

.field public static mCwRegistered:Z

.field private static mIsSupplicantActived:Z

.field private static mMessage:Landroid/os/Message;

.field private static mNeedConfig:Z

.field private static mNetId:I

.field private static mP2pConfig:Landroid/net/wifi/WifiConfiguration;

.field private static mSetAutoChannel:Z

.field private static mStopScheduleScan:Z

.field private static mWifidisplayApEnable:Z

.field private static mp2pdevicestate:I

.field private static final scanResultPattern:Ljava/util/regex/Pattern;


# instance fields
.field private final PROPERTY_SIM_ENABLED:Ljava/lang/String;

.field private final RESOURCE_PACKAGENAME:Ljava/lang/String;

.field private SameSignalLevelCount:I

.field private ScanBroadCastCounter:I

.field private WimaxStatus:Z

.field private cw_ssid_key:I

.field db:Landroid/net/wifi/WifiApDatabaseHandler;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAssociateManual:Z

.field private mAvgRSSI:I

.field private mAvgTxRate:I

.field private final mBackgroundScanSupported:Z

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothConnectionActive:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCTFinalPreConfigSsidList:[Ljava/lang/String;

.field private mCTPreConfigSsidList:[Ljava/lang/String;

.field private mCWRemoteConnection:Landroid/content/ServiceConnection;

.field private mCWService:Landroid/os/IBinder;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mConfigNoWps:Landroid/net/wifi/WifiConfiguration;

.field private mConnectModeState:Lcom/android/internal/util/State;

.field private mConnectedState:Lcom/android/internal/util/State;

.field private mContext:Landroid/content/Context;

.field private mCtNetworkInfo:Landroid/net/NetworkInfo;

.field private mCwRegisterCapability:Z

.field private mCwRetryCounter:I

.field private mCwTarget:Landroid/net/wifi/WifiStateMachine$CwHandler;

.field private final mDefaultFrameworkScanIntervalMs:I

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mDelayedStopCounter:I

.field private mDhcpFailWorkaround:I

.field private mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

.field private mDhcpStateMachine:Landroid/net/DhcpStateMachine;

.field private mDisconnectReason:I

.field private mDisconnectedState:Lcom/android/internal/util/State;

.field private mDisconnectingState:Lcom/android/internal/util/State;

.field private mDongleScanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mDriverFailedState:Lcom/android/internal/util/State;

.field private mDriverLoadedState:Lcom/android/internal/util/State;

.field private mDriverLoadingState:Lcom/android/internal/util/State;

.field private mDriverStartToken:I

.field private mDriverStartedState:Lcom/android/internal/util/State;

.field private mDriverStartingState:Lcom/android/internal/util/State;

.field private final mDriverStopDelayMs:I

.field private mDriverStopIntent:Landroid/app/PendingIntent;

.field private mDriverStoppedState:Lcom/android/internal/util/State;

.field private mDriverStoppingState:Lcom/android/internal/util/State;

.field private mDriverUnloadedState:Lcom/android/internal/util/State;

.field private mDriverUnloadingState:Lcom/android/internal/util/State;

.field private mEnableAPDatabase:Z

.field private mEnableBackgroundScan:Z

.field private mEnableFakeScanresult:Z

.field private mEnableImeiPassword:Z

.field private mEnableImeiSsid:Z

.field private mEnableMdnPassword:Z

.field private mEnableRssiPolling:Z

.field private mFakeScanCount:I

.field private mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mFinalPreConfigSsidList:[Ljava/lang/String;

.field private mFirstCustomizeSSID_IMEI:Z

.field private mFirstCustomizeSSID_NAME:Z

.field private mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mHaveIpAddress:Z

.field private mHaveIpAddressTime:J

.field private mHighPerfMode:Z

.field private mHtcNetworkSelectionFeature:Z

.field private mHtcNetworkSelectionRoamToOtherSsid:Z

.field private mInDelayedStop:Z

.field private mIndicateWepError:Z

.field private mInitialState:Lcom/android/internal/util/State;

.field private mInterfaceName:Ljava/lang/String;

.field private mIpv6RenewalIntent:Landroid/app/PendingIntent;

.field private mIsDongleScan:Z

.field private mIsRunning:Z

.field private mIsScanMode:Z

.field private mIsScreenOn:I

.field private mIsSsdpFilterRuleEnabled:Z

.field private mL2ConnectedState:Lcom/android/internal/util/State;

.field private final mLastApEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mLastBssid:Ljava/lang/String;

.field private mLastEnableAllNetworksTime:J

.field private final mLastEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mLastLinkspeed:I

.field private mLastNetworkId:I

.field private mLastRSSI:I

.field private final mLastRunningWifiUids:Landroid/os/WorkSource;

.field private mLastSignalLevel:I

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mLinkspeedCount:J

.field private mLinkspeedSum:J

.field private mMaxRSSI:I

.field private mMaxTxRate:I

.field private mMinRSSI:I

.field private mMinTxRate:I

.field private mMobileNetworkType:Ljava/lang/String;

.field private mMulticastEnabled:Z

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNwService:Landroid/os/INetworkManagementService;

.field private mObtainingIpState:Lcom/android/internal/util/State;

.field private final mP2pSupported:Z

.field private mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private mPerfWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPerfWakeLock_min_freq:Landroid/os/PowerManager$WakeLock;

.field private mPeriodicScanToken:I

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPowerModeRefCount:I

.field private mPowerSaveEnabled:Z

.field private mPreConfigSsidList:[Ljava/lang/String;

.field private final mPrimaryDeviceType:Ljava/lang/String;

.field private mRSSIRecords:[I

.field private mRSSIcount:I

.field private mReconnectCount:I

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mReportedRunning:Z

.field private mReqConnList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;",
            ">;"
        }
    .end annotation
.end field

.field private mReqSchedScanInteval:I

.field private mRes:Landroid/content/res/Resources;

.field private mResetWifiApSleepPolicy:Z

.field private mRoadmingDisabled:Z

.field private mRssiPollToken:I

.field private final mRunningWifiUids:Landroid/os/WorkSource;

.field private mScanIntent:Landroid/app/PendingIntent;

.field private mScanModeState:Lcom/android/internal/util/State;

.field private final mScanResultCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mScanResultIsPending:Z

.field private mScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenFilter:Landroid/content/IntentFilter;

.field private mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mSetScanActive:Z

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSoftApStartedState:Lcom/android/internal/util/State;

.field private mSoftApStartingState:Lcom/android/internal/util/State;

.field private mSoftApStoppingState:Lcom/android/internal/util/State;

.field private mSoftapMonitor:Landroid/net/hotspot/SoftapMonitor;

.field private mSupplicantReady:Z

.field private mSupplicantRestartCount:I

.field private mSupplicantScanIntervalMs:J

.field private mSupplicantStartedState:Lcom/android/internal/util/State;

.field private mSupplicantStartingState:Lcom/android/internal/util/State;

.field private mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;

.field private mSupplicantStopFailureToken:I

.field private mSupplicantStoppingState:Lcom/android/internal/util/State;

.field private mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mTetherInterfaceName:Ljava/lang/String;

.field private mTetherToken:I

.field private mTetheredState:Lcom/android/internal/util/State;

.field private mTetheringState:Lcom/android/internal/util/State;

.field private mUlogHotspotDuration:J

.field private mUlogHotspotStartTime:J

.field private mUloghotspotMaxUsers:I

.field private mUpdateV6Addresses:Z

.field private mUser:I

.field private mVerifyingLinkState:Lcom/android/internal/util/State;

.field private mVzwWifiAggregationFeature:Z

.field private mVzwWifiStatus:I

.field private mVzwWifiStatusFeature:Z

.field private mVzwWifiString:Ljava/lang/String;

.field private mWDManager:Lcom/htc/service/WirelessDisplayManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLock_DHCP:Landroid/os/PowerManager$WakeLock;

.field private mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiApConnReqTimeout:Landroid/app/PendingIntent;

.field private mWifiApNotification:Landroid/app/Notification;

.field private mWifiApNotificationShown:Z

.field private mWifiApSleepIntent:Landroid/app/PendingIntent;

.field private final mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

.field private mWifiConnected:Z

.field private mWifiDisplayConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiDisplayOn:Z

.field private mWifiDisplayUnscan:Z

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiMonitor:Landroid/net/wifi/WifiMonitor;

.field private mWifiNative:Landroid/net/wifi/WifiNative;

.field private mWifiOffloadEnabled:Z

.field private mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private final mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWifiV6Supported:Z

.field private mWifiWepErrorNotification:Landroid/app/Notification;

.field private mWifiWepErrorNotificationShown:Z

.field private final mWifidisplayApState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWpsRunningState:Lcom/android/internal/util/State;

.field private mfakeresult:Landroid/net/wifi/ScanResult;

.field private phoneManager:Landroid/telephony/TelephonyManager;

.field private roamToTopScoreAP_Time:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    sput-boolean v1, Landroid/net/wifi/WifiStateMachine;->mStopScheduleScan:Z

    sput-boolean v1, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApEnable:Z

    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    sput-boolean v1, Landroid/net/wifi/WifiStateMachine;->mSetAutoChannel:Z

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Landroid/net/wifi/WifiStateMachine;->DBG_DETAIL:Z

    const-string v0, "\t+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiStateMachine;->scanResultPattern:Ljava/util/regex/Pattern;

    sput-boolean v1, Landroid/net/wifi/WifiStateMachine;->WifiConnWaitP2pDiscon:Z

    const/4 v0, 0x3

    sput v0, Landroid/net/wifi/WifiStateMachine;->mp2pdevicestate:I

    const/4 v0, 0x0

    sput-object v0, Landroid/net/wifi/WifiStateMachine;->mP2pConfig:Landroid/net/wifi/WifiConfiguration;

    sput v1, Landroid/net/wifi/WifiStateMachine;->mNetId:I

    sput-boolean v1, Landroid/net/wifi/WifiStateMachine;->mCwRegistered:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 20
    .parameter "context"
    .parameter "wlanInterface"

    .prologue
    const-string v2, "WifiStateMachine"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mWifiOffloadEnabled:Z

    const-string v2, "UNINITIALIZED"

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mMobileNetworkType:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->WimaxStatus:Z

    new-instance v2, Landroid/telephony/SignalStrength;

    invoke-direct {v2}, Landroid/telephony/SignalStrength;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mSignalStrength:Landroid/telephony/SignalStrength;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mIsDongleScan:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mWifiDisplayUnscan:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mSupplicantReady:Z

    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mWifiDisplayConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/net/wifi/WifiStateMachine;->mUser:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mMulticastEnabled:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/net/wifi/WifiStateMachine;->mPowerModeRefCount:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/net/wifi/WifiStateMachine;->ScanBroadCastCounter:I

    const-string v2, "com.htc"

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->RESOURCE_PACKAGENAME:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/net/wifi/WifiStateMachine;->SameSignalLevelCount:I

    const-string v2, "wlan.sim.enabled"

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->PROPERTY_SIM_ENABLED:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatusFeature:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mWifiConnected:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiAggregationFeature:Z

    const-string v2, "VerizonWiFi"

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiString:Ljava/lang/String;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mAssociateManual:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mIndicateWepError:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mFirstCustomizeSSID_IMEI:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mFirstCustomizeSSID_NAME:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mEnableImeiPassword:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mEnableImeiSsid:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mEnableMdnPassword:Z

    new-instance v2, Landroid/net/wifi/ScanResult;

    const-string v3, "defaultfake"

    const-string v4, "11:22:33:44:55:66"

    const-string v5, "[WPA-EAP-TKIP]"

    const/16 v6, 0xa5

    const/16 v7, 0x96c

    invoke-direct/range {v2 .. v7}, Landroid/net/wifi/ScanResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mfakeresult:Landroid/net/wifi/ScanResult;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mEnableFakeScanresult:Z

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/net/wifi/WifiStateMachine;->mFakeScanCount:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/net/wifi/WifiStateMachine;->mUloghotspotMaxUsers:I

    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/net/wifi/WifiStateMachine;->mUlogHotspotDuration:J

    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/net/wifi/WifiStateMachine;->mUlogHotspotStartTime:J

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mWifiDisplayOn:Z

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    const/16 v2, -0xc8

    move-object/from16 v0, p0

    iput v2, v0, Landroid/net/wifi/WifiStateMachine;->mLastRSSI:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mHtcNetworkSelectionFeature:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mHtcNetworkSelectionRoamToOtherSsid:Z

    const v2, 0x1869f

    move-object/from16 v0, p0

    iput v2, v0, Landroid/net/wifi/WifiStateMachine;->mLastLinkspeed:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mEnableAPDatabase:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/net/wifi/WifiStateMachine;->mRSSIcount:I

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mRSSIRecords:[I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/net/wifi/WifiStateMachine;->mAvgRSSI:I

    const v2, -0x1869f

    move-object/from16 v0, p0

    iput v2, v0, Landroid/net/wifi/WifiStateMachine;->mMaxRSSI:I

    const v2, 0x1869f

    move-object/from16 v0, p0

    iput v2, v0, Landroid/net/wifi/WifiStateMachine;->mMinRSSI:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/net/wifi/WifiStateMachine;->mDisconnectReason:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z

    const/16 v2, 0xf

    move-object/from16 v0, p0

    iput v2, v0, Landroid/net/wifi/WifiStateMachine;->mReqSchedScanInteval:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mRoadmingDisabled:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/net/wifi/WifiStateMachine;->mDhcpFailWorkaround:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mIsScanMode:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mSetScanActive:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mHighPerfMode:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/net/wifi/WifiStateMachine;->mTetherToken:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/net/wifi/WifiStateMachine;->mDriverStartToken:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/net/wifi/WifiStateMachine;->mPeriodicScanToken:I

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/net/wifi/WifiStateMachine;->mIsScreenOn:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mPowerSaveEnabled:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z

    new-instance v2, Landroid/net/wifi/WifiStateMachine$DefaultState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/net/wifi/WifiStateMachine$DefaultState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    new-instance v2, Landroid/net/wifi/WifiStateMachine$InitialState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/net/wifi/WifiStateMachine$InitialState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;

    new-instance v2, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mDriverUnloadingState:Lcom/android/internal/util/State;

    new-instance v2, Landroid/net/wifi/WifiStateMachine$DriverUnloadedState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/net/wifi/WifiStateMachine$DriverUnloadedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mDriverUnloadedState:Lcom/android/internal/util/State;

    new-instance v2, Landroid/net/wifi/WifiStateMachine$DriverFailedState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/net/wifi/WifiStateMachine$DriverFailedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mDriverFailedState:Lcom/android/internal/util/State;

    new-instance v2, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mDriverLoadingState:Lcom/android/internal/util/State;

    new-instance v2, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mDriverLoadedState:Lcom/android/internal/util/State;

    new-instance v2, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;

    new-instance v2, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    new-instance v2, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;

    new-instance v2, Landroid/net/wifi/WifiStateMachine$DriverStartingState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/net/wifi/WifiStateMachine$DriverStartingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mDriverStartingState:Lcom/android/internal/util/State;

    new-instance v2, Landroid/net/wifi/WifiStateMachine$DriverStartedState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/net/wifi/WifiStateMachine$DriverStartedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    new-instance v2, Landroid/net/wifi/WifiStateMachine$DriverStoppingState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/net/wifi/WifiStateMachine$DriverStoppingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;

    new-instance v2, Landroid/net/wifi/WifiStateMachine$DriverStoppedState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/net/wifi/WifiStateMachine$DriverStoppedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;

    new-instance v2, Landroid/net/wifi/WifiStateMachine$ScanModeState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/net/wifi/WifiStateMachine$ScanModeState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;

    new-instance v2, Landroid/net/wifi/WifiStateMachine$ConnectModeState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/net/wifi/WifiStateMachine$ConnectModeState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    new-instance v2, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    new-instance v2, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;

    new-instance v2, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mVerifyingLinkState:Lcom/android/internal/util/State;

    new-instance v2, Landroid/net/wifi/WifiStateMachine$ConnectedState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/net/wifi/WifiStateMachine$ConnectedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    new-instance v2, Landroid/net/wifi/WifiStateMachine$DisconnectingState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/net/wifi/WifiStateMachine$DisconnectingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    new-instance v2, Landroid/net/wifi/WifiStateMachine$DisconnectedState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    new-instance v2, Landroid/net/wifi/WifiStateMachine$WpsRunningState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/net/wifi/WifiStateMachine$WpsRunningState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;

    new-instance v2, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartingState:Lcom/android/internal/util/State;

    new-instance v2, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    new-instance v2, Landroid/net/wifi/WifiStateMachine$TetheringState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/net/wifi/WifiStateMachine$TetheringState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mTetheringState:Lcom/android/internal/util/State;

    new-instance v2, Landroid/net/wifi/WifiStateMachine$TetheredState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/net/wifi/WifiStateMachine$TetheredState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    new-instance v2, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mSoftApStoppingState:Lcom/android/internal/util/State;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\"CMCC\""

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mPreConfigSsidList:[Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\"CMCC\""

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mFinalPreConfigSsidList:[Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\"ChinaNet\""

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "\"ChinaNet_CW\""

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "\"ChinaNet_HomeCW\""

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x0

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mCTPreConfigSsidList:[Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ChinaNet"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "ChinaNet_CW"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "ChinaNet_HomeCW"

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mCTFinalPreConfigSsidList:[Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/net/wifi/WifiStateMachine;->cw_ssid_key:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mCwRegisterCapability:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/net/wifi/WifiStateMachine;->mCwRetryCounter:I

    new-instance v2, Landroid/net/wifi/WifiStateMachine$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/net/wifi/WifiStateMachine$1;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mCWRemoteConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mConfigNoWps:Landroid/net/wifi/WifiConfiguration;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mLastEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mLastApEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mUpdateV6Addresses:Z

    const-string v2, "persist.wifi.v6"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mWifiV6Supported:Z

    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2}, Landroid/os/WorkSource;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2}, Landroid/os/WorkSource;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/net/wifi/WifiStateMachine;->roamToTopScoreAP_Time:J

    new-instance v2, Landroid/net/wifi/WifiStateMachine$15;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/net/wifi/WifiStateMachine$15;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v2, Landroid/net/wifi/WifiStateMachine$16;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/net/wifi/WifiStateMachine$16;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mHaveIpAddress:Z

    new-instance v2, Landroid/net/NetworkInfo;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "WIFI"

    const-string v6, ""

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    const-string v2, "batteryinfo"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    .local v9, b:Landroid/os/IBinder;
    invoke-static {v9}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.wifi.direct"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mP2pSupported:Z

    new-instance v2, Landroid/net/wifi/WifiNative;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/net/wifi/WifiNative;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    new-instance v2, Landroid/net/wifi/WifiConfigStore;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3}, Landroid/net/wifi/WifiConfigStore;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiNative;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    new-instance v2, Landroid/net/wifi/WifiMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Landroid/net/wifi/WifiMonitor;-><init>(Lcom/android/internal/util/StateMachine;Landroid/net/wifi/WifiNative;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;

    new-instance v2, Landroid/net/hotspot/SoftapMonitor;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/net/hotspot/SoftapMonitor;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mSoftapMonitor:Landroid/net/hotspot/SoftapMonitor;

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.htc"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mRes:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v19, Landroid/content/Intent;

    const-string v2, "com.android.server.HotspotManager.action.DEVICE_IDLE"

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v19, wifiApStopIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mWifiApSleepIntent:Landroid/app/PendingIntent;

    new-instance v18, Landroid/content/Intent;

    const-string v2, "com.android.server.HotspotManager.action.WIFI_AP_CONN_REQ_TIMEOUT"

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v18, wifiApConnReqTimeout:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const/4 v3, 0x4

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mWifiApConnReqTimeout:Landroid/app/PendingIntent;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mIsSsdpFilterRuleEnabled:Z

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatusFeature:Z

    const-string v2, "ro.st.agg"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiAggregationFeature:Z

    :cond_0
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x149

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mHtcNetworkSelectionFeature:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mHtcNetworkSelectionRoamToOtherSsid:Z

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mHtcNetworkSelectionFeature:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mEnableAPDatabase:Z

    if-eqz v2, :cond_2

    new-instance v2, Landroid/net/wifi/WifiApDatabaseHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/net/wifi/WifiApDatabaseHandler;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->db:Landroid/net/wifi/WifiApDatabaseHandler;

    const-string v2, "WifiStateMachine"

    const-string v3, "WifiApDatabaseHandler, Reading all connected AP.."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->db:Landroid/net/wifi/WifiApDatabaseHandler;

    invoke-virtual {v2}, Landroid/net/wifi/WifiApDatabaseHandler;->getAllConnectedAP()Ljava/util/List;

    move-result-object v15

    .local v15, records:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/APRecords;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/APRecords;

    .local v8, apr:Landroid/net/wifi/APRecords;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Landroid/net/wifi/APRecords;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,BSSID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Landroid/net/wifi/APRecords;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,FREQ: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Landroid/net/wifi/APRecords;->getFREQ()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,Security: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Landroid/net/wifi/APRecords;->getSecurity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .local v13, log:Ljava/lang/String;
    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiApDatabaseHandler, Name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v8           #apr:Landroid/net/wifi/APRecords;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v13           #log:Ljava/lang/String;
    .end local v15           #records:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/APRecords;>;"
    :cond_2
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x9b

    if-eq v2, v3, :cond_3

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x40

    if-ne v2, v3, :cond_d

    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mEnableImeiPassword:Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mEnableImeiSsid:Z

    :cond_4
    :goto_2
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_OFFLOAD_flag:Z

    if-eqz v2, :cond_5

    new-instance v11, Landroid/content/IntentFilter;

    const-string v2, "com.htc.net.wimax.WIMAX_ENABLED_CHANGED"

    invoke-direct {v11, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v11, intentFilter:Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->phoneManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->phoneManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x100

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .end local v11           #intentFilter:Landroid/content/IntentFilter;
    :cond_5
    new-instance v2, Landroid/net/DhcpInfoInternal;

    invoke-direct {v2}, Landroid/net/DhcpInfoInternal;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    new-instance v2, Landroid/net/wifi/WifiInfo;

    invoke-direct {v2}, Landroid/net/wifi/WifiInfo;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    new-instance v2, Landroid/net/wifi/SupplicantStateTracker;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/net/wifi/SupplicantStateTracker;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfigStore;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;

    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/net/wifi/WifiApConfigStore;->makeWifiApConfigStore(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/wifi/WifiApConfigStore;

    move-result-object v17

    .local v17, wifiApConfigStore:Landroid/net/wifi/WifiApConfigStore;
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiApConfigStore;->loadApConfiguration()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiApConfigStore;->getMessenger()Landroid/os/Messenger;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->clear()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    const/16 v2, -0xc8

    move-object/from16 v0, p0

    iput v2, v0, Landroid/net/wifi/WifiStateMachine;->mLastRSSI:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v16, Landroid/content/Intent;

    const-string v2, "com.android.server.WifiManager.action.START_SCAN"

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v16, scanIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mScanIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/net/wifi/WifiStateMachine;->mDefaultFrameworkScanIntervalMs:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/net/wifi/WifiStateMachine;->mDriverStopDelayMs:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mBackgroundScanSupported:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mPrimaryDeviceType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_auto_ip_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    const-string v2, "dhcp.wlan0.autoip"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/net/wifi/WifiStateMachine$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/net/wifi/WifiStateMachine$2;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x24

    if-eq v2, v3, :cond_6

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xe1

    if-eq v2, v3, :cond_6

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x49

    if-ne v2, v3, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/net/wifi/WifiStateMachine$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/net/wifi/WifiStateMachine$3;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/net/wifi/WifiStateMachine$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/net/wifi/WifiStateMachine$4;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.android.server.WifiManager.action.START_SCAN"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/net/wifi/WifiStateMachine$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/net/wifi/WifiStateMachine$5;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.htc.intent.action.CUSTOMIZATION_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mScreenFilter:Landroid/content/IntentFilter;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mScreenFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mScreenFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Landroid/net/wifi/WifiStateMachine$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/net/wifi/WifiStateMachine$6;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/net/wifi/WifiStateMachine$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/net/wifi/WifiStateMachine$7;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.android.server.WifiManager.action.DELAYED_DRIVER_STOP"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatusFeature:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiAggregationFeature:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/net/wifi/WifiStateMachine$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/net/wifi/WifiStateMachine$8;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.htc.wifi.PICK_VERIZON_WIFI_NETWORK"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/net/wifi/WifiStateMachine$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/net/wifi/WifiStateMachine$9;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/net/wifi/WifiStateMachine$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/net/wifi/WifiStateMachine$10;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.htc.MIRROR_DISPLAY_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/util/LruCache;

    const/16 v3, 0x50

    invoke-direct {v2, v3}, Landroid/util/LruCache;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/PowerManager;

    .local v14, powerManager:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "WifiStateMachine"

    invoke-virtual {v14, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x1

    const-string v3, "WifiStateMachine"

    invoke-virtual {v14, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mWakeLock_DHCP:Landroid/os/PowerManager$WakeLock;

    const/16 v2, 0x40

    const-string v3, "WifiStateMachine"

    invoke-virtual {v14, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mPerfWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x2d7

    if-ne v2, v3, :cond_9

    const/16 v2, 0x100

    const/4 v3, 0x5

    const-string v4, "WifiStateMachine"

    invoke-virtual {v14, v2, v3, v4}, Landroid/os/PowerManager;->newHtcCpuCtrl(IILjava/lang/String;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mPerfWakeLock_min_freq:Landroid/os/PowerManager$WakeLock;

    :cond_9
    const/4 v2, 0x1

    const-string v3, "WifiSuspend"

    invoke-virtual {v14, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mWifiV6Supported:Z

    if-eqz v2, :cond_a

    new-instance v12, Landroid/content/Intent;

    const-string v2, "android.net.wifi.IPV6_RENEW"

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v12, ipv6RenewalIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v12, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mIpv6RenewalIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/net/wifi/WifiStateMachine$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/net/wifi/WifiStateMachine$11;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.IPV6_RENEW"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .end local v12           #ipv6RenewalIntent:Landroid/content/Intent;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v3, "wireless_display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/service/WirelessDisplayManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mDriverUnloadingState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mDriverUnloadedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mDriverFailedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mDriverUnloadedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mDriverLoadingState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mDriverLoadedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mDriverStartingState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mVerifyingLinkState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartingState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mTetheringState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mSoftApStoppingState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd8

    if-ne v2, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mCTPreConfigSsidList:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mPreConfigSsidList:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mCTFinalPreConfigSsidList:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mFinalPreConfigSsidList:[Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine;->bindCWService()Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "WifiStateMachine"

    const-string v3, "[C+W]bindCWService failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_4
    const/16 v2, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiStateMachine;->setProcessedMessagesSize(I)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiStateMachine;->setDbg(Z)V

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xda

    if-eq v2, v3, :cond_c

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mAssociateManual:Z

    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine;->start()V

    return-void

    .end local v14           #powerManager:Landroid/os/PowerManager;
    .end local v16           #scanIntent:Landroid/content/Intent;
    .end local v17           #wifiApConfigStore:Landroid/net/wifi/WifiApConfigStore;
    :cond_d
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mEnableMdnPassword:Z

    goto/16 :goto_2

    .restart local v16       #scanIntent:Landroid/content/Intent;
    .restart local v17       #wifiApConfigStore:Landroid/net/wifi/WifiApConfigStore;
    :cond_e
    const-string v2, "dhcp.wlan0.autoip"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .restart local v14       #powerManager:Landroid/os/PowerManager;
    :cond_f
    const-string v2, "WifiStateMachine"

    const-string v3, "[C+W]bindCWService successfully in StateMachie constructer!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v14           #powerManager:Landroid/os/PowerManager;
    .end local v16           #scanIntent:Landroid/content/Intent;
    .end local v17           #wifiApConfigStore:Landroid/net/wifi/WifiApConfigStore;
    .end local v18           #wifiApConnReqTimeout:Landroid/content/Intent;
    .end local v19           #wifiApStopIntent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto/16 :goto_0

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private CustomizeSSIDbyCode()V
    .locals 11

    .prologue
    const/16 v10, 0xd

    const/4 v6, 0x2

    const/4 v9, 0x3

    const/4 v8, 0x5

    const/4 v7, 0x4

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x9b

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    const-string v5, "myTouch 4G Hotspot"

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x7b

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    const-string v5, "HTC Sensation"

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x89

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    const-string v5, "HTC Amaze 4G"

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0xe1

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    const-string v5, "HTC One S"

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto :goto_0

    :cond_3
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x40

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    const-string v5, "Iusacell 3.5G"

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .local v0, mac:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, macFileds:[Ljava/lang/String;
    array-length v4, v1

    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x91

    if-ne v4, v5, :cond_6

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x51

    if-eq v4, v5, :cond_5

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVO "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    const-string v5, "HTC network"

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x93

    if-ne v4, v5, :cond_7

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTC EVO Shift 4G "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x61

    if-ne v4, v5, :cond_8

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Verizon ADR6400L "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0xad

    if-ne v4, v5, :cond_9

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xa8

    if-ne v4, v5, :cond_9

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Verizon ADR6425LVW "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0xaa

    if-ne v4, v5, :cond_a

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Verizon ADR6350 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_b

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xa8

    if-ne v4, v5, :cond_b

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Verizon ADR6410LVW "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x3e

    if-ne v4, v5, :cond_c

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v4, v6, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "holiday"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/wifi/WifiStateMachine;->getRandomKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, randomssid:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v10, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .local v3, randomssid4:Ljava/lang/String;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTC Vivid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto/16 :goto_0

    .end local v2           #randomssid:Ljava/lang/String;
    .end local v3           #randomssid4:Ljava/lang/String;
    :cond_c
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x24

    if-ne v4, v5, :cond_d

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v4, v6, :cond_d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "evita"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/wifi/WifiStateMachine;->getRandomKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #randomssid:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v10, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #randomssid4:Ljava/lang/String;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTC EVA_UL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto/16 :goto_0

    .end local v2           #randomssid:Ljava/lang/String;
    .end local v3           #randomssid4:Ljava/lang/String;
    :cond_d
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x9f

    if-ne v4, v5, :cond_e

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v4, v6, :cond_e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "totem"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/wifi/WifiStateMachine;->getRandomKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #randomssid:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v10, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #randomssid4:Ljava/lang/String;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTC TOM_UL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto/16 :goto_0

    .end local v2           #randomssid:Ljava/lang/String;
    .end local v3           #randomssid4:Ljava/lang/String;
    :cond_e
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x95

    if-ne v4, v5, :cond_f

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVO 3D "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto/16 :goto_0

    :cond_f
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x21

    if-ne v4, v5, :cond_10

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVO View 4G "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto/16 :goto_0

    :cond_10
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x50

    if-ne v4, v5, :cond_11

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x94

    if-ne v4, v5, :cond_11

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PH44100 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto/16 :goto_0

    :cond_11
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x49

    if-ne v4, v5, :cond_0

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x94

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JEWEL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/IBinder;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCWService:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$002(Landroid/net/wifi/WifiStateMachine;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mCWService:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    sget v0, Landroid/net/wifi/WifiStateMachine;->mp2pdevicestate:I

    return v0
.end method

.method static synthetic access$1000(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mBackgroundScanSupported:Z

    return v0
.end method

.method static synthetic access$10000(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mHtcNetworkSelectionFeature:Z

    return v0
.end method

.method static synthetic access$10102(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectReason:I

    return p1
.end method

.method static synthetic access$102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    sput p0, Landroid/net/wifi/WifiStateMachine;->mp2pdevicestate:I

    return p0
.end method

.method static synthetic access$10200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$10300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10400(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V

    return-void
.end method

.method static synthetic access$10500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10600(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mIsDongleScan:Z

    return v0
.end method

.method static synthetic access$10602(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mIsDongleScan:Z

    return p1
.end method

.method static synthetic access$10700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setDongleScanList(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10800(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->sendDongleScanResultsAvailableBroadcast()V

    return-void
.end method

.method static synthetic access$10900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setScanResults(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$11000(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z

    return v0
.end method

.method static synthetic access$11002(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z

    return p1
.end method

.method static synthetic access$11100(Landroid/net/wifi/WifiStateMachine;)J
    .locals 2
    .parameter "x0"

    .prologue
    iget-wide v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastEnableAllNetworksTime:J

    return-wide v0
.end method

.method static synthetic access$11102(Landroid/net/wifi/WifiStateMachine;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastEnableAllNetworksTime:J

    return-wide p1
.end method

.method static synthetic access$11200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfigNoWps:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$11300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiDisplayConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$11400(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    return v0
.end method

.method static synthetic access$11404(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    return v0
.end method

.method static synthetic access$11502(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mHaveIpAddress:Z

    return p1
.end method

.method static synthetic access$11600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11800(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$11900(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartToken:I

    return v0
.end method

.method static synthetic access$11904(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartToken:I

    return v0
.end method

.method static synthetic access$1200(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12000(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$12300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$12500(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z

    return v0
.end method

.method static synthetic access$12502(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z

    return p1
.end method

.method static synthetic access$12600(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z

    return v0
.end method

.method static synthetic access$12602(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z

    return p1
.end method

.method static synthetic access$12700(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->setCountryCode()V

    return-void
.end method

.method static synthetic access$12800(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->ScanBroadCastCounter:I

    return v0
.end method

.method static synthetic access$12802(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->ScanBroadCastCounter:I

    return p1
.end method

.method static synthetic access$12808(Landroid/net/wifi/WifiStateMachine;)I
    .locals 2
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->ScanBroadCastCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->ScanBroadCastCounter:I

    return v0
.end method

.method static synthetic access$12900(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->setFrequencyBand()V

    return-void
.end method

.method static synthetic access$1300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    return-object v0
.end method

.method static synthetic access$13000(Landroid/net/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static synthetic access$13100(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->isMulticastEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$13200(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mPowerSaveEnabled:Z

    return v0
.end method

.method static synthetic access$13300(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mAssociateManual:Z

    return v0
.end method

.method static synthetic access$13400(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$13500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$13600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$13700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$13800(Landroid/net/wifi/WifiStateMachine;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$13900(Landroid/net/wifi/WifiStateMachine;)Landroid/content/IntentFilter;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mScreenFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    return-object v0
.end method

.method static synthetic access$14000(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mSetScanActive:Z

    return v0
.end method

.method static synthetic access$14002(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mSetScanActive:Z

    return p1
.end method

.method static synthetic access$14100(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$14200(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I

    return v0
.end method

.method static synthetic access$14208(Landroid/net/wifi/WifiStateMachine;)I
    .locals 2
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I

    return v0
.end method

.method static synthetic access$14300(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$14400(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$14500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$14700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$14802(Landroid/net/wifi/WifiStateMachine;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$14902(Landroid/net/wifi/WifiStateMachine;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mDongleScanList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1500(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatusFeature:Z

    return v0
.end method

.method static synthetic access$15000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$15100(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$15200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$15300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$15400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$15500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$15600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$15700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$15800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$15900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I

    return v0
.end method

.method static synthetic access$16000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1602(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I

    return p1
.end method

.method static synthetic access$16100()I
    .locals 1

    .prologue
    sget v0, Landroid/net/wifi/WifiStateMachine;->mNetId:I

    return v0
.end method

.method static synthetic access$16102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    sput p0, Landroid/net/wifi/WifiStateMachine;->mNetId:I

    return p0
.end method

.method static synthetic access$16200()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mP2pConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$16202(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .parameter "x0"

    .prologue
    sput-object p0, Landroid/net/wifi/WifiStateMachine;->mP2pConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p0
.end method

.method static synthetic access$16300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$16400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$16500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$16600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$16700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$16800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$16900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->sendVzwStatusNotification(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$17000(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->fetchRssiAndLinkSpeedNative()V

    return-void
.end method

.method static synthetic access$17100(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->fetchFrequency()I

    move-result v0

    return v0
.end method

.method static synthetic access$17200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17300(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mEnableAPDatabase:Z

    return v0
.end method

.method static synthetic access$17400(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->addNewDBRecord()V

    return-void
.end method

.method static synthetic access$17500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$17600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$17700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$17800(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mPerfWakeLock_min_freq:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$17900(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mPerfWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotificationShown:Z

    return v0
.end method

.method static synthetic access$18000(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I

    return v0
.end method

.method static synthetic access$18008(Landroid/net/wifi/WifiStateMachine;)I
    .locals 2
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I

    return v0
.end method

.method static synthetic access$18100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object v0
.end method

.method static synthetic access$18102(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object p1
.end method

.method static synthetic access$18200(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpInfoInternal;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->handleSuccessfulIpConfiguration(Landroid/net/DhcpInfoInternal;)V

    return-void
.end method

.method static synthetic access$18300(Landroid/net/wifi/WifiStateMachine;)J
    .locals 2
    .parameter "x0"

    .prologue
    iget-wide v0, p0, Landroid/net/wifi/WifiStateMachine;->mHaveIpAddressTime:J

    return-wide v0
.end method

.method static synthetic access$18302(Landroid/net/wifi/WifiStateMachine;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Landroid/net/wifi/WifiStateMachine;->mHaveIpAddressTime:J

    return-wide p1
.end method

.method static synthetic access$18400(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mVerifyingLinkState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$18500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$18600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$18800(Landroid/net/wifi/WifiStateMachine;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->handleFailedIpConfiguration(Z)V

    return-void
.end method

.method static synthetic access$18900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApNotificationShown:Z

    return v0
.end method

.method static synthetic access$19000(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$19100(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$19200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$19300(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->configureLinkProperties()V

    return-void
.end method

.method static synthetic access$19400(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->sendLinkConfigurationChangedBroadcast()V

    return-void
.end method

.method static synthetic access$19500(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastLinkspeed:I

    return v0
.end method

.method static synthetic access$19600(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mHtcNetworkSelectionRoamToOtherSsid:Z

    return v0
.end method

.method static synthetic access$19700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$19800(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$19900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->WifiConnWaitP2pDiscon:Z

    return v0
.end method

.method static synthetic access$2000(Landroid/net/wifi/WifiStateMachine;)Lcom/htc/service/WirelessDisplayManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    return-object v0
.end method

.method static synthetic access$20000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$20102(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConnected:Z

    return p1
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    sput-boolean p0, Landroid/net/wifi/WifiStateMachine;->WifiConnWaitP2pDiscon:Z

    return p0
.end method

.method static synthetic access$20200(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->isCT_CDMA_WIFI_SSID()Z

    move-result v0

    return v0
.end method

.method static synthetic access$20300(Landroid/net/wifi/WifiStateMachine;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->triggerCWRegister(J)V

    return-void
.end method

.method static synthetic access$20400(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiV6Supported:Z

    return v0
.end method

.method static synthetic access$20500(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mUpdateV6Addresses:Z

    return v0
.end method

.method static synthetic access$20502(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mUpdateV6Addresses:Z

    return p1
.end method

.method static synthetic access$20600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$20700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/LinkProperties;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$20800(Landroid/net/wifi/WifiStateMachine;Landroid/net/LinkProperties;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->updateV6AddressesWithAnotherThread(Landroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic access$20900(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    return-void
.end method

.method static synthetic access$2100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$21100(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$21200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$21300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$21400(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mScanIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$21500(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultFrameworkScanIntervalMs:I

    return v0
.end method

.method static synthetic access$21600(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mPeriodicScanToken:I

    return v0
.end method

.method static synthetic access$21604(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mPeriodicScanToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mPeriodicScanToken:I

    return v0
.end method

.method static synthetic access$21700()Z
    .locals 1

    .prologue
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->mStopScheduleScan:Z

    return v0
.end method

.method static synthetic access$21800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$21900(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->sendScanResultsAvailableBroadcast()V

    return-void
.end method

.method static synthetic access$22000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$22100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$22200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$22300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$22400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$22500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$22600(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$22700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$22800(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$22900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2300(Landroid/net/wifi/WifiStateMachine;Landroid/net/LinkProperties;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->updateV6Addresses(Landroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic access$23000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$23100(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->stopTethering()V

    return-void
.end method

.method static synthetic access$23200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$23300()Z
    .locals 1

    .prologue
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    return v0
.end method

.method static synthetic access$23302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    sput-boolean p0, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    return p0
.end method

.method static synthetic access$23400()Z
    .locals 1

    .prologue
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->mSetAutoChannel:Z

    return v0
.end method

.method static synthetic access$23402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    sput-boolean p0, Landroid/net/wifi/WifiStateMachine;->mSetAutoChannel:Z

    return p0
.end method

.method static synthetic access$23500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$23602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    sput-boolean p0, Landroid/net/wifi/WifiStateMachine;->mIsSupplicantActived:Z

    return p0
.end method

.method static synthetic access$23700(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->startTethering(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$23800(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mTetherToken:I

    return v0
.end method

.method static synthetic access$23804(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mTetherToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mTetherToken:I

    return v0
.end method

.method static synthetic access$23900(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->isWifiTethered(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mEnableImeiPassword:Z

    return v0
.end method

.method static synthetic access$24000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$24100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$24200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$24300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStoppingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$24400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$24500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$24600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$24700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$24802(Landroid/net/wifi/WifiStateMachine;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method static synthetic access$2500(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mEnableMdnPassword:Z

    return v0
.end method

.method static synthetic access$2600(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mEnableImeiSsid:Z

    return v0
.end method

.method static synthetic access$2700(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiDisplayUnscan:Z

    return v0
.end method

.method static synthetic access$3000(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->bindCWService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$3200(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    return v0
.end method

.method static synthetic access$3202(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    return p1
.end method

.method static synthetic access$3300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V

    return-void
.end method

.method static synthetic access$3400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3500(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    return v0
.end method

.method static synthetic access$3502(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    return p1
.end method

.method static synthetic access$3600(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z

    return v0
.end method

.method static synthetic access$3602(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z

    return p1
.end method

.method static synthetic access$3700(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mHighPerfMode:Z

    return v0
.end method

.method static synthetic access$3702(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mHighPerfMode:Z

    return p1
.end method

.method static synthetic access$3800(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mReqSchedScanInteval:I

    return v0
.end method

.method static synthetic access$3802(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mReqSchedScanInteval:I

    return p1
.end method

.method static synthetic access$3900(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mRoadmingDisabled:Z

    return v0
.end method

.method static synthetic access$3902(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mRoadmingDisabled:Z

    return p1
.end method

.method static synthetic access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$4000()Z
    .locals 1

    .prologue
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApEnable:Z

    return v0
.end method

.method static synthetic access$4002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    sput-boolean p0, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApEnable:Z

    return p0
.end method

.method static synthetic access$4100(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic access$4200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverLoadedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$4300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4400(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverUnloadedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$4500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$4602(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/p2p/WifiP2pManager;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object p1
.end method

.method static synthetic access$4700(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4800(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$4900(Landroid/net/wifi/WifiStateMachine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V

    return-void
.end method

.method static synthetic access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5000(Landroid/net/wifi/WifiStateMachine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V

    return-void
.end method

.method static synthetic access$5100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverFailedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$5300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverUnloadingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$5600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5700(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mP2pSupported:Z

    return v0
.end method

.method static synthetic access$5800(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;

    return-object v0
.end method

.method static synthetic access$5900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->getRandomKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6102(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mResetWifiApSleepPolicy:Z

    return p1
.end method

.method static synthetic access$6200(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->persistApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$6300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$6400(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mUser:I

    return v0
.end method

.method static synthetic access$6402(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mUser:I

    return p1
.end method

.method static synthetic access$6500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$6600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6700(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->checkSleepPolicy()V

    return-void
.end method

.method static synthetic access$6800(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mUloghotspotMaxUsers:I

    return v0
.end method

.method static synthetic access$6802(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mUloghotspotMaxUsers:I

    return p1
.end method

.method static synthetic access$6900(Landroid/net/wifi/WifiStateMachine;)J
    .locals 2
    .parameter "x0"

    .prologue
    iget-wide v0, p0, Landroid/net/wifi/WifiStateMachine;->mUlogHotspotDuration:J

    return-wide v0
.end method

.method static synthetic access$6902(Landroid/net/wifi/WifiStateMachine;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Landroid/net/wifi/WifiStateMachine;->mUlogHotspotDuration:J

    return-wide p1
.end method

.method static synthetic access$7000(Landroid/net/wifi/WifiStateMachine;)J
    .locals 2
    .parameter "x0"

    .prologue
    iget-wide v0, p0, Landroid/net/wifi/WifiStateMachine;->mUlogHotspotStartTime:J

    return-wide v0
.end method

.method static synthetic access$7002(Landroid/net/wifi/WifiStateMachine;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Landroid/net/wifi/WifiStateMachine;->mUlogHotspotStartTime:J

    return-wide p1
.end method

.method static synthetic access$702(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mFirstCustomizeSSID_NAME:Z

    return p1
.end method

.method static synthetic access$7100(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverLoadingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$7600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7700(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mPrimaryDeviceType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7800(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    return v0
.end method

.method static synthetic access$7802(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    return p1
.end method

.method static synthetic access$7804(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    return v0
.end method

.method static synthetic access$7900(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->setPreConfigAPHigherPriority()V

    return-void
.end method

.method static synthetic access$800(Landroid/net/wifi/WifiStateMachine;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->checkSSIDCustomization(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$8000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;

    return-object v0
.end method

.method static synthetic access$8100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiStateMachine$CwHandler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCwTarget:Landroid/net/wifi/WifiStateMachine$CwHandler;

    return-object v0
.end method

.method static synthetic access$8102(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiStateMachine$CwHandler;)Landroid/net/wifi/WifiStateMachine$CwHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mCwTarget:Landroid/net/wifi/WifiStateMachine$CwHandler;

    return-object p1
.end method

.method static synthetic access$8200(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8202(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$8300(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    return v0
.end method

.method static synthetic access$8302(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    return p1
.end method

.method static synthetic access$8402(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    return p1
.end method

.method static synthetic access$8502(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastRSSI:I

    return p1
.end method

.method static synthetic access$8600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$8700(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mIsScreenOn:I

    return v0
.end method

.method static synthetic access$8800(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiOffloadEnabled:Z

    return v0
.end method

.method static synthetic access$8802(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiOffloadEnabled:Z

    return p1
.end method

.method static synthetic access$8900(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->WimaxStatus:Z

    return v0
.end method

.method static synthetic access$8902(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->WimaxStatus:Z

    return p1
.end method

.method static synthetic access$900(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mFirstCustomizeSSID_IMEI:Z

    return v0
.end method

.method static synthetic access$9000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mMobileNetworkType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mFirstCustomizeSSID_IMEI:Z

    return p1
.end method

.method static synthetic access$9100(Landroid/net/wifi/WifiStateMachine;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->sendSupplicantConnectionChangedBroadcast(Z)V

    return-void
.end method

.method static synthetic access$9200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$9300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$9700(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mIsScanMode:Z

    return v0
.end method

.method static synthetic access$9702(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mIsScanMode:Z

    return p1
.end method

.method static synthetic access$9800(Landroid/net/wifi/WifiStateMachine;)J
    .locals 2
    .parameter "x0"

    .prologue
    iget-wide v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J

    return-wide v0
.end method

.method static synthetic access$9802(Landroid/net/wifi/WifiStateMachine;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J

    return-wide p1
.end method

.method static synthetic access$9902(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantReady:Z

    return p1
.end method

.method private addNewDBRecord()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v11, 0x0

    const-string v0, "WifiStateMachine"

    const-string v1, "WifiApDatabaseHandler, WiFi AP database Inserting .."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .local v6, t:Landroid/text/format/Time;
    invoke-virtual {v6}, Landroid/text/format/Time;->setToNow()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v6, Landroid/text/format/Time;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v6, Landroid/text/format/Time;->month:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v6, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v6, Landroid/text/format/Time;->hour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v6, Landroid/text/format/Time;->minute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, systemTime:Ljava/lang/String;
    new-instance v0, Landroid/net/wifi/WifiApDatabaseHandler;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiApDatabaseHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->db:Landroid/net/wifi/WifiApDatabaseHandler;

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->db:Landroid/net/wifi/WifiApDatabaseHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiApDatabaseHandler;->isDuplicate(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiStateMachine"

    const-string v1, "This record is existed, only update it..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->db:Landroid/net/wifi/WifiApDatabaseHandler;

    new-instance v0, Landroid/net/wifi/APRecords;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v3

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->fetchCapability()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/APRecords;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/net/wifi/WifiApDatabaseHandler;->updateConnectedAP(Landroid/net/wifi/APRecords;)I

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->db:Landroid/net/wifi/WifiApDatabaseHandler;

    new-instance v0, Landroid/net/wifi/APRecords;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v3

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->fetchCapability()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/APRecords;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/net/wifi/WifiApDatabaseHandler;->updateConnectedAP(Landroid/net/wifi/APRecords;)I

    :goto_0
    const v0, -0x1869f

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mMaxRSSI:I

    const v0, 0x1869f

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mMinRSSI:I

    iput v11, p0, Landroid/net/wifi/WifiStateMachine;->mAvgTxRate:I

    iput v11, p0, Landroid/net/wifi/WifiStateMachine;->mMinTxRate:I

    iput v11, p0, Landroid/net/wifi/WifiStateMachine;->mMaxTxRate:I

    iput v11, p0, Landroid/net/wifi/WifiStateMachine;->mRSSIcount:I

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mRSSIRecords:[I

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mRSSIRecords:[I

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mRSSIRecords:[I

    const/4 v4, 0x2

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mRSSIRecords:[I

    const/4 v8, 0x3

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mRSSIRecords:[I

    const/4 v10, 0x4

    aput v11, v9, v10

    aput v11, v7, v8

    aput v11, v3, v4

    aput v11, v1, v2

    aput v11, v0, v11

    iput v11, p0, Landroid/net/wifi/WifiStateMachine;->mAvgRSSI:I

    iput-wide v12, p0, Landroid/net/wifi/WifiStateMachine;->mLinkspeedCount:J

    iput-wide v12, p0, Landroid/net/wifi/WifiStateMachine;->mLinkspeedSum:J

    const/16 v0, 0x270f

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastLinkspeed:I

    return-void

    :cond_0
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->db:Landroid/net/wifi/WifiApDatabaseHandler;

    new-instance v0, Landroid/net/wifi/APRecords;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v3

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->fetchCapability()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/APRecords;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/net/wifi/WifiApDatabaseHandler;->addConnectedAP(Landroid/net/wifi/APRecords;)V

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->db:Landroid/net/wifi/WifiApDatabaseHandler;

    new-instance v0, Landroid/net/wifi/APRecords;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v3

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->fetchCapability()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/APRecords;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/net/wifi/WifiApDatabaseHandler;->addConnectedAP(Landroid/net/wifi/APRecords;)V

    goto/16 :goto_0
.end method

.method private bindCWService()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, ret:Z
    const-string v2, "WifiStateMachine"

    const-string v3, "[C+W] bind CW service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.cw.CWService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mCWRemoteConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v2, "WifiStateMachine"

    const-string v3, "[C+W] fail to bind CW service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v2, "WifiStateMachine"

    const-string v3, "[C+W] bind CW service successfully!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/SecurityException;
    const-string v2, "WifiStateMachine"

    const-string v3, "[C+W] no permission to bind CW service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private byte2String([B)Ljava/lang/String;
    .locals 7
    .parameter "byteArray"

    .prologue
    if-nez p1, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    const-string v0, "0123456789ABCDEF"

    .local v0, HEX:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    array-length v4, p1

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .local v3, sb:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_1

    aget-byte v1, p1, v2

    .local v1, b:B
    const-string v4, "0123456789ABCDEF"

    shr-int/lit8 v5, v1, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "0123456789ABCDEF"

    and-int/lit8 v6, v1, 0xf

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #b:B
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private byteArray2Bundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p1

    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v0

    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method private checkAndSetConnectivityInstance()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    :cond_0
    return-void
.end method

.method private checkSSIDCustomization(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const-string v1, "content://customization_settings/SettingTable/application_HotspotName"

    .local v1, customize_uri:Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Landroid/net/wifi/WifiStateMachine;->getCustomizationData(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bundle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1}, Landroid/net/wifi/WifiStateMachine;->parseBundle(Landroid/os/Bundle;Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->CustomizeSSIDbyCode()V

    goto :goto_0
.end method

.method private checkSleepPolicy()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    iget v3, p0, Landroid/net/wifi/WifiStateMachine;->mUser:I

    if-nez v3, :cond_4

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_4

    const-string v3, "WifiStateMachine"

    const-string v4, "set sleep policy"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mResetWifiApSleepPolicy:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApSleepIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    .local v0, idleTimeMin:I
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    if-nez v3, :cond_2

    const/4 v0, 0x5

    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set SoftAP sleep policy for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mins"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    mul-int/lit8 v5, v0, 0x3c

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    add-long v1, v3, v5

    .local v1, triggerTime:J
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApSleepIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v7, v1, v2, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .end local v0           #idleTimeMin:I
    .end local v1           #triggerTime:J
    :cond_1
    :goto_1
    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mResetWifiApSleepPolicy:Z

    :goto_2
    return-void

    .restart local v0       #idleTimeMin:I
    :cond_2
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    if-ne v3, v6, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_3
    const-string v3, "WifiStateMachine"

    const-string v4, "set SoftAP sleep policy to always on"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0           #idleTimeMin:I
    :cond_4
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancel SoftAP sleep policy: mUser="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/net/wifi/WifiStateMachine;->mUser:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", syncGetWifiApState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApSleepIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iput-boolean v6, p0, Landroid/net/wifi/WifiStateMachine;->mResetWifiApSleepPolicy:Z

    goto :goto_2
.end method

.method private checkVzwWifiAggregation(Ljava/util/List;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, scanList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v4, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiString:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, VzwWifiConfString:Ljava/lang/String;
    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiAggregationFeature:Z

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    return v3

    :cond_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .local v2, wifiConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v3, v3, v4

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiString:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v5, "[ESS]"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "WifiStateMachine"

    const-string v4, "VzwWifiInScanList is true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_0
.end method

.method private configureLinkProperties()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiConfigStore;->isUsingStaticIp(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiConfigStore;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persist.wifi.v6:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiV6Supported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiV6Supported:Z

    if-eqz v1, :cond_1

    const-string v1, "Need to update V6 addresses"

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mUpdateV6Addresses:Z

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "netId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Link configured: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v1}, Landroid/net/DhcpInfoInternal;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiConfigStore;->getProxyProperties(I)Landroid/net/ProxyProperties;

    move-result-object v0

    .local v0, proxy:Landroid/net/ProxyProperties;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v0}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    goto :goto_0

    .end local v0           #proxy:Landroid/net/ProxyProperties;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private fetchCapability()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, key:Ljava/lang/String;
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    invoke-virtual {v2, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .local v1, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    :goto_0
    return-object v2

    :cond_0
    const-string v2, "UNKNOWN"

    goto :goto_0
.end method

.method private fetchFrequency()I
    .locals 4

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, key:Ljava/lang/String;
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    invoke-virtual {v2, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .local v1, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/net/wifi/ScanResult;->frequency:I

    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private fetchRssiAndLinkSpeedNative()V
    .locals 24

    .prologue
    const/16 v17, -0x1

    .local v17, newRssi:I
    const/16 v16, -0x1

    .local v16, newLinkSpeed:I
    const/16 v21, 0x0

    .local v21, txper:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v2}, Landroid/net/wifi/WifiNative;->signalPoll()Ljava/lang/String;

    move-result-object v20

    .local v20, signalPoll:Ljava/lang/String;
    if-eqz v20, :cond_3

    const-string v2, "\n"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .local v15, lines:[Ljava/lang/String;
    move-object v8, v15

    .local v8, arr$:[Ljava/lang/String;
    array-length v13, v8

    .local v13, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_0
    if-ge v12, v13, :cond_3

    aget-object v14, v8, v12

    .local v14, line:Ljava/lang/String;
    const-string v2, "="

    invoke-virtual {v14, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .local v19, prop:[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v2, v0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v19, v2

    const-string v3, "RSSI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    aget-object v2, v19, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    aget-object v2, v19, v2

    const-string v3, "LINKSPEED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    aget-object v2, v19, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    goto :goto_1

    :catch_0
    move-exception v9

    .local v9, e:Ljava/lang/NumberFormatException;
    const-string v2, "WifiStateMachine"

    const-string v3, "fetchRssiAndLinkSpeedNative NumberFormatException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v8           #arr$:[Ljava/lang/String;
    .end local v9           #e:Ljava/lang/NumberFormatException;
    .end local v12           #i$:I
    .end local v13           #len$:I
    .end local v14           #line:Ljava/lang/String;
    .end local v15           #lines:[Ljava/lang/String;
    .end local v19           #prop:[Ljava/lang/String;
    :cond_3
    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetchRssiAndLinkSpeedNative RSSI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mHtcNetworkSelectionFeature:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/net/wifi/WifiStateMachine;->mLinkspeedCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/net/wifi/WifiStateMachine;->mLinkspeedCount:J

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/net/wifi/WifiStateMachine;->mLinkspeedSum:J

    move/from16 v0, v16

    int-to-long v4, v0

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/net/wifi/WifiStateMachine;->mLinkspeedSum:J

    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetchRssiAndLinkSpeedNative mLinkspeedCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/net/wifi/WifiStateMachine;->mLinkspeedCount:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mLinkspeedSum: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/net/wifi/WifiStateMachine;->mLinkspeedSum:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_12

    const/16 v2, -0xc8

    move/from16 v0, v17

    if-ge v2, v0, :cond_12

    const/16 v2, 0x100

    move/from16 v0, v17

    if-ge v0, v2, :cond_12

    if-lez v17, :cond_5

    move/from16 v0, v17

    add-int/lit16 v0, v0, -0x100

    move/from16 v17, v0

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_OFFLOAD_flag:Z

    if-eqz v2, :cond_7

    const/16 v22, 0x0

    .local v22, type:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine;->getMobileDataSettingEnabled()Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    iget-object v2, v2, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v11

    .local v11, gsmSignalStrength:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/net/wifi/WifiStateMachine;->setSignalStrength(I)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->phoneManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v22

    const-string v2, "UNKNOWN"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "gsm.network.type"

    const-string v3, "UNKNOWN"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .end local v11           #gsmSignalStrength:I
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mMobileNetworkType:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateMachine;->mMobileNetworkType:Ljava/lang/String;

    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WiFi offload: set mMobileNetworkType= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/net/wifi/WifiStateMachine;->mMobileNetworkType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mMobileNetworkType:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiStateMachine;->setMobileNetworkType(Ljava/lang/String;)Z

    .end local v22           #type:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v10

    .local v10, frequency:I
    const/4 v2, 0x4

    move/from16 v0, v17

    invoke-static {v0, v2, v10}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(III)I

    move-result v18

    .local v18, newSignalLevel:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/net/wifi/WifiStateMachine;->mLastRSSI:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->shouldBroadcastRSSIForIMS(II)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BroadcastRSSIForIMS, newrssi ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , oldRssi= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/net/wifi/WifiStateMachine;->mLastRSSI:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/net/wifi/WifiStateMachine;->SameSignalLevelCount:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v10}, Landroid/net/wifi/WifiStateMachine;->sendRssiChangeBroadcast(II)V

    :cond_8
    :goto_3
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateMachine;->mLastRSSI:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mHtcNetworkSelectionFeature:Z

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/net/wifi/WifiStateMachine;->mEnableAPDatabase:Z

    if-eqz v2, :cond_b

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateMachine;->mLastLinkspeed:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mRSSIRecords:[I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/net/wifi/WifiStateMachine;->mRSSIcount:I

    add-int/lit8 v4, v3, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/net/wifi/WifiStateMachine;->mRSSIcount:I

    aput v17, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Landroid/net/wifi/WifiStateMachine;->mRSSIcount:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_b

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/net/wifi/WifiStateMachine;->mRSSIcount:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/net/wifi/WifiStateMachine;->mMaxRSSI:I

    move/from16 v0, v17

    if-lt v0, v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Landroid/net/wifi/WifiStateMachine;->mMaxTxRate:I

    move/from16 v0, v16

    if-lt v0, v2, :cond_9

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateMachine;->mMaxRSSI:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateMachine;->mMaxTxRate:I

    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Landroid/net/wifi/WifiStateMachine;->mMinRSSI:I

    move/from16 v0, v17

    if-gt v0, v2, :cond_a

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateMachine;->mMinRSSI:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateMachine;->mMinTxRate:I

    :cond_a
    new-instance v2, Landroid/net/wifi/WifiApDatabaseHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/net/wifi/WifiApDatabaseHandler;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/wifi/WifiStateMachine;->db:Landroid/net/wifi/WifiApDatabaseHandler;

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/net/wifi/WifiStateMachine;->mLinkspeedSum:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/net/wifi/WifiStateMachine;->mLinkspeedCount:J

    div-long/2addr v2, v4

    long-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/net/wifi/WifiStateMachine;->mAvgTxRate:I

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/net/wifi/WifiStateMachine;->mLinkspeedCount:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/net/wifi/WifiStateMachine;->mLinkspeedSum:J

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mRSSIRecords:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mRSSIRecords:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mRSSIRecords:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mRSSIRecords:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mRSSIRecords:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/net/wifi/WifiStateMachine;->mAvgRSSI:I

    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetchRssiAndLinkSpeedNative: Update RSSI:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/net/wifi/WifiStateMachine;->mAvgRSSI:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and linkspeed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/net/wifi/WifiStateMachine;->mAvgTxRate:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in database"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/net/wifi/WifiStateMachine;->mAvgRSSI:I

    const/16 v3, -0x4b

    if-lt v2, v3, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine;->db:Landroid/net/wifi/WifiApDatabaseHandler;

    move-object/from16 v23, v0

    new-instance v2, Landroid/net/wifi/APRecords;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/net/wifi/WifiStateMachine;->mAvgRSSI:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/net/wifi/WifiStateMachine;->mAvgTxRate:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/net/wifi/WifiStateMachine;->mMaxRSSI:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/net/wifi/WifiStateMachine;->mMaxTxRate:I

    invoke-direct/range {v2 .. v7}, Landroid/net/wifi/APRecords;-><init>(Ljava/lang/String;IIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiApDatabaseHandler;->updateConnectedAP(Landroid/net/wifi/APRecords;)I

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v2}, Landroid/net/wifi/WifiNative;->getTXPER()I

    move-result v21

    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetchRssiAndLinkSpeedNative TXPER = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v10           #frequency:I
    .end local v18           #newSignalLevel:I
    :cond_b
    :goto_5
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V

    :cond_c
    return-void

    .restart local v22       #type:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    iget-object v2, v2, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    if-nez v2, :cond_e

    const-string v2, "WifiStateMachine"

    const-string v3, "Not get IP address yet, shall not do WiFi offload"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const-string v22, "NOT_AVAILABLE"

    goto/16 :goto_2

    .end local v22           #type:Ljava/lang/String;
    .restart local v10       #frequency:I
    .restart local v18       #newSignalLevel:I
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    move/from16 v0, v18

    if-eq v0, v2, :cond_10

    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetchRssiAndLinkSpeedNative send RSSIChange intent, newSignalLevel ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mLastSignalLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/net/wifi/WifiStateMachine;->SameSignalLevelCount:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v10}, Landroid/net/wifi/WifiStateMachine;->sendRssiChangeBroadcast(II)V

    goto/16 :goto_3

    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    move/from16 v0, v18

    if-ne v0, v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Landroid/net/wifi/WifiStateMachine;->SameSignalLevelCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/net/wifi/WifiStateMachine;->SameSignalLevelCount:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/net/wifi/WifiStateMachine;->SameSignalLevelCount:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_8

    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetchRssiAndLinkSpeedNative send RSSIChange intent, SameSignalLevelCount ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/net/wifi/WifiStateMachine;->SameSignalLevelCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v10}, Landroid/net/wifi/WifiStateMachine;->sendRssiChangeBroadcast(II)V

    goto/16 :goto_3

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine;->db:Landroid/net/wifi/WifiApDatabaseHandler;

    move-object/from16 v23, v0

    new-instance v2, Landroid/net/wifi/APRecords;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/net/wifi/WifiStateMachine;->mAvgRSSI:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/net/wifi/WifiStateMachine;->mAvgTxRate:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/net/wifi/WifiStateMachine;->mMinRSSI:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/net/wifi/WifiStateMachine;->mMinTxRate:I

    invoke-direct/range {v2 .. v7}, Landroid/net/wifi/APRecords;-><init>(Ljava/lang/String;IIII)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiApDatabaseHandler;->updateConnectedAP(Landroid/net/wifi/APRecords;)I

    goto/16 :goto_4

    .end local v10           #frequency:I
    .end local v18           #newSignalLevel:I
    :cond_12
    const-string v2, "WifiStateMachine"

    const-string v3, "fetchRssiAndLinkSpeedNative: Don\'t get new RSSI"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method private static findEndIP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "addrString"
    .parameter "maskString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x4

    if-nez p0, :cond_0

    new-instance v12, Ljava/net/UnknownHostException;

    invoke-direct {v12, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_0
    if-nez p1, :cond_1

    new-instance v12, Ljava/net/UnknownHostException;

    invoke-direct {v12, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_1
    :try_start_0
    const-string v12, "\\."

    invoke-virtual {p0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .local v10, parts:[Ljava/lang/String;
    array-length v12, v10

    if-eq v12, v13, :cond_2

    new-instance v12, Ljava/net/UnknownHostException;

    invoke-direct {v12, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v10           #parts:[Ljava/lang/String;
    :catch_0
    move-exception v5

    .local v5, ex:Ljava/lang/NumberFormatException;
    new-instance v12, Ljava/net/UnknownHostException;

    invoke-direct {v12, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v12

    .end local v5           #ex:Ljava/lang/NumberFormatException;
    .restart local v10       #parts:[Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v12, "\\."

    invoke-virtual {p1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .local v11, parts2:[Ljava/lang/String;
    array-length v12, v11

    if-eq v12, v13, :cond_3

    new-instance v12, Ljava/net/UnknownHostException;

    invoke-direct {v12, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_3
    const/4 v12, 0x0

    aget-object v12, v10, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .local v0, addr1:I
    const/4 v12, 0x1

    aget-object v12, v10, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .local v1, addr2:I
    const/4 v12, 0x2

    aget-object v12, v10, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .local v2, addr3:I
    const/4 v12, 0x3

    aget-object v12, v10, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .local v3, addr4:I
    const/4 v12, 0x0

    aget-object v12, v11, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .local v6, mask1:I
    const/4 v12, 0x1

    aget-object v12, v11, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .local v7, mask2:I
    const/4 v12, 0x2

    aget-object v12, v11, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .local v8, mask3:I
    const/4 v12, 0x3

    aget-object v12, v11, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .local v9, mask4:I
    xor-int/lit16 v12, v6, 0xff

    or-int/2addr v0, v12

    xor-int/lit16 v12, v7, 0xff

    or-int/2addr v1, v12

    xor-int/lit16 v12, v8, 0xff

    or-int/2addr v2, v12

    xor-int/lit16 v12, v9, 0xff

    or-int/2addr v3, v12

    if-eqz v3, :cond_4

    add-int/lit8 v3, v3, -0x1

    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .local v4, endingIP:Ljava/lang/String;
    return-object v4
.end method

.method private getBlackMacFilterString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 3
    .parameter "config"

    .prologue
    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .local v1, sbuilder:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v2, 0x10

    if-ge v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getConvertedNetworkInfo()Landroid/net/NetworkInfo;
    .locals 3

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->isCT_CDMA_WIFI_SSID()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCtNetworkInfo:Landroid/net/NetworkInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->cwhtcStateUpdate(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCtNetworkInfo:Landroid/net/NetworkInfo;

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCtNetworkInfo:Landroid/net/NetworkInfo;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    goto :goto_0
.end method

.method private getCustomizationData(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 11
    .parameter "context"
    .parameter "uriString"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .local v1, uri:Landroid/net/Uri;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_2

    const-string v0, "WifiStateMachine"

    const-string v3, "Failed to get cursor"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "WifiStateMachine"

    const-string v3, "cursor size is 0"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    :cond_4
    const-string v0, "value"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .local v10, nValueIdx:I
    const/4 v0, -0x1

    if-ne v0, v10, :cond_6

    const-string v0, "WifiStateMachine"

    const-string v3, "no customized data support"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    const/4 v7, 0x0

    goto :goto_0

    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v8, 0x0

    .local v8, data:[B
    const/4 v6, 0x0

    .local v6, bundle:Landroid/os/Bundle;
    :try_start_0
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/net/wifi/WifiStateMachine;->byteArray2Bundle([B)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_1
    const/4 v7, 0x0

    :cond_8
    move-object v2, v6

    goto :goto_0

    :catch_0
    move-exception v9

    .local v9, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load customize URI failed, get exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x0

    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v9           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_a

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_9
    const/4 v7, 0x0

    :cond_a
    throw v0
.end method

.method private getKey([B)[B
    .locals 6
    .parameter "seed"

    .prologue
    :try_start_0
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .local v1, keyGen:Ljavax/crypto/KeyGenerator;
    const-string v3, "SHA1PRNG"

    invoke-static {v3}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v2

    .local v2, random:Ljava/security/SecureRandom;
    invoke-virtual {v2, p1}, Ljava/security/SecureRandom;->setSeed([B)V

    const/16 v3, 0x80

    invoke-virtual {v1, v3, v2}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .end local v1           #keyGen:Ljavax/crypto/KeyGenerator;
    .end local v2           #random:Ljava/security/SecureRandom;
    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getKey() ERROR: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getMaxDhcpRetries()I
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_max_dhcp_retry_count"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    return-object v0
.end method

.method private getRandomKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "seed"

    .prologue
    if-nez p1, :cond_0

    const-string v2, "WifiStateMachine"

    const-string v3, "getRandomKey() ERROR: using default mac = 00:11:22:33:44:55"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "00:11:22:33:44:55"

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiStateMachine;->getKey([B)[B

    move-result-object v1

    .local v1, key:[B
    if-nez v1, :cond_1

    const-string v2, "WifiStateMachine"

    const-string v3, "() ERROR: getKey() fails!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "1234567890123"

    .end local v1           #key:[B
    :goto_0
    return-object v2

    .restart local v1       #key:[B
    :cond_1
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->byte2String([B)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xd

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .end local v1           #key:[B
    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRandomKey() ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "1234567890123"

    goto :goto_0
.end method

.method private getWhiteMacFilterString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 3
    .parameter "config"

    .prologue
    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .local v1, sbuilder:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v2, 0x10

    if-ge v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private handleFailedIpConfiguration(Z)V
    .locals 6
    .parameter "doReconnect"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, "IP configuration failed"

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiInfo;->setMeteredHint(Z)V

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->getMaxDhcpRetries()I

    move-result v0

    .local v0, maxRetries:I
    if-lez v0, :cond_0

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    if-le v1, v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " times, Disabling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v1, v2, v5}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(II)Z

    iput v3, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpFailWorkaround:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpFailWorkaround:I

    const/4 p1, 0x1

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1}, Landroid/net/wifi/WifiNative;->getIsWepCommand()Z

    move-result v1

    if-ne v1, v4, :cond_2

    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mIndicateWepError:Z

    if-nez v1, :cond_1

    invoke-virtual {p0, v4}, Landroid/net/wifi/WifiStateMachine;->setWepErrorNotificationVisible(Z)V

    const-string v1, "set WEP_ERROR icon"

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    iput-boolean v4, p0, Landroid/net/wifi/WifiStateMachine;->mIndicateWepError:Z

    :cond_1
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->sendErrorBroadcast(I)V

    :cond_2
    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpFailWorkaround:I

    if-le v1, v5, :cond_3

    const-string v1, "Get IP failed over 4.5 minutes, do dhcp workaround !!!"

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    iput v3, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpFailWorkaround:I

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiStateMachine;->setWifiEnabled(Z)V

    invoke-virtual {p0, v4}, Landroid/net/wifi/WifiStateMachine;->setWifiEnabled(Z)V

    :goto_0
    return-void

    :cond_3
    if-eqz p1, :cond_4

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1}, Landroid/net/wifi/WifiNative;->disconnect()Z

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1}, Landroid/net/wifi/WifiNative;->reconnect()Z

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->handleRestartDHCP()V

    goto :goto_0
.end method

.method private handleNetworkDisconnect()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x0

    const-string v5, "Stopping DHCP and clearing IP"

    invoke-direct {p0, v5}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->handlePostDhcpSetup()V

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    const v6, 0x30002

    invoke-virtual {v5, v6}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    invoke-virtual {v5}, Landroid/net/DhcpStateMachine;->quit()V

    iput-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    :cond_0
    :try_start_0
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->clearInterfaceAddresses(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->disableIpv6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0xd8

    if-ne v5, v6, :cond_1

    const-string v5, "WifiStateMachine"

    const-string v6, "[C+W] trigger deregister check"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCwRegisterState()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "WifiStateMachine"

    const-string v6, "[C+W] trigger deregister when disconnect"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->triggerCWDeRegister()V

    invoke-virtual {p0, v11}, Landroid/net/wifi/WifiStateMachine;->setCwRegisterState(Z)V

    :cond_1
    iget-boolean v5, p0, Landroid/net/wifi/WifiStateMachine;->mHtcNetworkSelectionFeature:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Landroid/net/wifi/WifiStateMachine;->mEnableAPDatabase:Z

    if-eqz v5, :cond_2

    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .local v3, t:Landroid/text/format/Time;
    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v3, Landroid/text/format/Time;->year:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/text/format/Time;->month:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/text/format/Time;->hour:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/text/format/Time;->minute:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, systemTime:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mRSSIRecords:[I

    aget v6, v6, v11

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mRSSIRecords:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mRSSIRecords:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mRSSIRecords:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mRSSIRecords:[I

    const/4 v7, 0x4

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, disconnectedRSSI:Ljava/lang/String;
    iget v5, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectReason:I

    packed-switch v5, :pswitch_data_0

    const-string v4, "By DRIVER"

    .local v4, whyDisconnected:Ljava/lang/String;
    :goto_1
    iput v11, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectReason:I

    const-string v5, "WifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WifiApDatabaseHandler, Update disconnected status in WiFi AP database, reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/net/wifi/WifiApDatabaseHandler;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/net/wifi/WifiApDatabaseHandler;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Landroid/net/wifi/WifiStateMachine;->db:Landroid/net/wifi/WifiApDatabaseHandler;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->db:Landroid/net/wifi/WifiApDatabaseHandler;

    new-instance v6, Landroid/net/wifi/APRecords;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0, v2, v4}, Landroid/net/wifi/APRecords;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiApDatabaseHandler;->updateConnectedAP(Landroid/net/wifi/APRecords;)I

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->db:Landroid/net/wifi/WifiApDatabaseHandler;

    new-instance v6, Landroid/net/wifi/APRecords;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0, v2, v4}, Landroid/net/wifi/APRecords;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiApDatabaseHandler;->updateConnectedAP(Landroid/net/wifi/APRecords;)I

    .end local v0           #disconnectedRSSI:Ljava/lang/String;
    .end local v2           #systemTime:Ljava/lang/String;
    .end local v3           #t:Landroid/text/format/Time;
    .end local v4           #whyDisconnected:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v5, v9}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v5, v9}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v5, v9}, Landroid/net/wifi/WifiInfo;->setSSID(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v5, v10}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/16 v6, -0xc8

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v5, v10}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v5, v10}, Landroid/net/wifi/WifiInfo;->setFrequency(I)V

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v5, v11}, Landroid/net/wifi/WifiInfo;->setMeteredHint(Z)V

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v5}, Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v6, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/WifiConfigStore;->updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-direct {p0, v5}, Landroid/net/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->clear()V

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v6, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiConfigStore;->isUsingStaticIp(I)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v6, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiConfigStore;->clearIpConfiguration(I)V

    :cond_3
    iput-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    iput v10, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    return-void

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to clear addresses or disable ipv6"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #disconnectedRSSI:Ljava/lang/String;
    .restart local v2       #systemTime:Ljava/lang/String;
    .restart local v3       #t:Landroid/text/format/Time;
    :pswitch_0
    const-string v4, "By DRIVER (beacon lost, switch AP)"

    .restart local v4       #whyDisconnected:Ljava/lang/String;
    goto/16 :goto_1

    .end local v4           #whyDisconnected:Ljava/lang/String;
    :pswitch_1
    const-string v4, "By USER (terminate, hotspot, airplane mode)"

    .restart local v4       #whyDisconnected:Ljava/lang/String;
    goto/16 :goto_1

    .end local v4           #whyDisconnected:Ljava/lang/String;
    :pswitch_2
    const-string v4, "By USER (forget network)"

    .restart local v4       #whyDisconnected:Ljava/lang/String;
    goto/16 :goto_1

    .end local v4           #whyDisconnected:Ljava/lang/String;
    :pswitch_3
    const-string v4, "By USER (change SSID)"

    .restart local v4       #whyDisconnected:Ljava/lang/String;
    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleRestartDHCP()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfigStore;->isUsingStaticIp(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    const v1, 0x30002

    invoke-virtual {v0, v1}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    invoke-virtual {v0}, Landroid/net/DhcpStateMachine;->quit()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Landroid/net/DhcpStateMachine;->makeDhcpStateMachine(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)Landroid/net/DhcpStateMachine;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    invoke-virtual {v0}, Landroid/net/DhcpStateMachine;->registerForPreDhcpNotification()V

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    const v1, 0x30001

    invoke-virtual {v0, v1}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    :cond_1
    return-void
.end method

.method private handleSuccessfulIpConfiguration(Landroid/net/DhcpInfoInternal;)V
    .locals 11
    .parameter "dhcpInfoInternal"

    .prologue
    const/16 v10, 0xb

    const/16 v9, 0xa

    const/4 v8, 0x0

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    monitor-enter v6

    :try_start_0
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, -0x1

    iput v5, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    const/16 v5, -0xc8

    iput v5, p0, Landroid/net/wifi/WifiStateMachine;->mLastRSSI:I

    iput v8, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    iput v8, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpFailWorkaround:I

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v6, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v5, v6, p1}, Landroid/net/wifi/WifiConfigStore;->setIpConfiguration(ILandroid/net/DhcpInfoInternal;)V

    iget-object v5, p1, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .local v0, addr:Ljava/net/InetAddress;
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v5, v0}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1}, Landroid/net/DhcpInfoInternal;->hasMeteredHint()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiInfo;->setMeteredHint(Z)V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->clearWepErrorNotification()V

    monitor-enter p0

    :try_start_1
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v6}, Landroid/net/DhcpInfoInternal;->makeDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v6

    iget v6, v6, Landroid/net/DhcpInfo;->gateway:I

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiNative;->addGatewayCommand(I)Z

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v6}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiNative;->setMirrorStatusCommand(Z)Z

    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->isMulticastEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_arp()V

    iget-boolean v5, p0, Landroid/net/wifi/WifiStateMachine;->mIsSsdpFilterRuleEnabled:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0, v8}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_ssdp(Z)V

    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v5

    if-eq v5, v10, :cond_2

    const-string v5, "WifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WifiDisplay: STA IP = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    iget-object v7, v7, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  ,Hotspot IP = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v7

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    iget-object v5, v5, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v10, :cond_2

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    iget-object v5, v5, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v6

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "WifiStateMachine"

    const-string v6, "STA got IP address and IP conflicts with hotspot setting, neet to reconfigure hotspot in APSTA concurrent case!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v5, 0x20018

    invoke-virtual {p0, v5}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    const v5, 0x20015

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x7d0

    invoke-virtual {p0, v5, v6, v7}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    :cond_2
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v5, v6, :cond_3

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCwRegisterState()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_3
    const-string v5, "WifiStateMachine"

    const-string v6, "renew IP when wif is already CONNECTED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/net/DhcpInfoInternal;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    .local v3, linkProperties:Landroid/net/LinkProperties;
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v6, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiConfigStore;->getProxyProperties(I)Landroid/net/ProxyProperties;

    move-result-object v4

    .local v4, proxy:Landroid/net/ProxyProperties;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5, v4}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    :cond_4
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3, v5}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Link configuration changed for netId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " old: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "new: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    iput-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->sendLinkConfigurationChangedBroadcast()V

    :cond_5
    :try_start_2
    new-instance v2, Landroid/net/InterfaceConfiguration;

    invoke-direct {v2}, Landroid/net/InterfaceConfiguration;-><init>()V

    .local v2, ifcg:Landroid/net/InterfaceConfiguration;
    invoke-virtual {p1}, Landroid/net/DhcpInfoInternal;->makeLinkAddress()Landroid/net/LinkAddress;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    invoke-virtual {v2}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v5, v6, v2}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v2           #ifcg:Landroid/net/InterfaceConfiguration;
    .end local v3           #linkProperties:Landroid/net/LinkProperties;
    .end local v4           #proxy:Landroid/net/ProxyProperties;
    :cond_6
    :goto_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCwRegisterState()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->configureLinkProperties()V

    :cond_7
    return-void

    .end local v0           #addr:Ljava/net/InetAddress;
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .restart local v0       #addr:Ljava/net/InetAddress;
    :catchall_1
    move-exception v5

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .restart local v3       #linkProperties:Landroid/net/LinkProperties;
    .restart local v4       #proxy:Landroid/net/ProxyProperties;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dhcpcd Failed to set interface up "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    .locals 11
    .parameter "message"

    .prologue
    const/4 v0, 0x0

    .local v0, bssidChanged:Z
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/StateChangeResult;

    .local v3, stateChangeResult:Landroid/net/wifi/StateChangeResult;
    iget-object v2, v3, Landroid/net/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .local v2, state:Landroid/net/wifi/SupplicantState;
    const v7, 0xc367

    invoke-virtual {v2}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v8

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(II)I

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7, v2}, Landroid/net/wifi/WifiInfo;->setSupplicantState(Landroid/net/wifi/SupplicantState;)V

    invoke-static {v2}, Landroid/net/wifi/SupplicantState;->isConnecting(Landroid/net/wifi/SupplicantState;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget v8, v3, Landroid/net/wifi/StateChangeResult;->networkId:I

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    :goto_0
    sget-object v7, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    if-ne v2, v7, :cond_1

    iget-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mHtcNetworkSelectionFeature:Z

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SupplicantState.ASSOCIATING "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Landroid/net/wifi/StateChangeResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v3, Landroid/net/wifi/StateChangeResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "BSSID was changed, update WiFi database"

    invoke-direct {p0, v7}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .local v5, t:Landroid/text/format/Time;
    invoke-virtual {v5}, Landroid/text/format/Time;->setToNow()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v5, Landroid/text/format/Time;->year:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Landroid/text/format/Time;->month:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Landroid/text/format/Time;->hour:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Landroid/text/format/Time;->minute:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, systemTime:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mRSSIRecords:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mRSSIRecords:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mRSSIRecords:[I

    const/4 v9, 0x2

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mRSSIRecords:[I

    const/4 v9, 0x3

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mRSSIRecords:[I

    const/4 v9, 0x4

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, disconnectedRSSI:Ljava/lang/String;
    const-string v6, "By DRIVER"

    .local v6, whyDisconnected:Ljava/lang/String;
    new-instance v7, Landroid/net/wifi/WifiApDatabaseHandler;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/net/wifi/WifiApDatabaseHandler;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->db:Landroid/net/wifi/WifiApDatabaseHandler;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->db:Landroid/net/wifi/WifiApDatabaseHandler;

    new-instance v8, Landroid/net/wifi/APRecords;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v1, v4, v6}, Landroid/net/wifi/APRecords;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiApDatabaseHandler;->updateConnectedAP(Landroid/net/wifi/APRecords;)I

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->db:Landroid/net/wifi/WifiApDatabaseHandler;

    new-instance v8, Landroid/net/wifi/APRecords;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v1, v4, v6}, Landroid/net/wifi/APRecords;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiApDatabaseHandler;->updateConnectedAP(Landroid/net/wifi/APRecords;)I

    .end local v1           #disconnectedRSSI:Ljava/lang/String;
    .end local v4           #systemTime:Ljava/lang/String;
    .end local v5           #t:Landroid/text/format/Time;
    .end local v6           #whyDisconnected:Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v8, v3, Landroid/net/wifi/StateChangeResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    :cond_1
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v8, v3, Landroid/net/wifi/StateChangeResult;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiInfo;->setSSID(Ljava/lang/String;)V

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(Landroid/os/Message;)V

    iget-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mHtcNetworkSelectionFeature:Z

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mEnableAPDatabase:Z

    if-eqz v7, :cond_2

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->addNewDBRecord()V

    :cond_2
    return-object v2

    :cond_3
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    goto/16 :goto_0
.end method

.method private hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .parameter "s"

    .prologue
    const/16 v6, 0x10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, len:I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .local v0, data:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private isCT_CDMA_WIFI_SSID()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .local v1, ssid:Ljava/lang/String;
    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v0, 0x0

    .local v0, j:I
    :goto_1
    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mCTFinalPreConfigSsidList:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[C+W] match Ssid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private isMulticastEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mMulticastEnabled:Z

    return v0
.end method

.method private isWifiTethered(Ljava/util/ArrayList;)Z
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v6

    .local v6, wifiRegexs:[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, intf:Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .local v5, regex:Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #intf:Ljava/lang/String;
    .end local v4           #len$:I
    .end local v5           #regex:Ljava/lang/String;
    :goto_1
    return v7

    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #intf:Ljava/lang/String;
    .restart local v4       #len$:I
    .restart local v5       #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #intf:Ljava/lang/String;
    .end local v4           #len$:I
    .end local v5           #regex:Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    const-string v0, "WifiStateMachine"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    const-string v0, "WifiStateMachine"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private obtainMessageWithArg2(Landroid/os/Message;)Landroid/os/Message;
    .locals 2
    .parameter "srcMsg"

    .prologue
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    return-object v0
.end method

.method private parseBundle(Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 14
    .parameter "bundle"
    .parameter "context"

    .prologue
    const-string v2, "device_name"

    .local v2, DEVICE_NAME:Ljava/lang/String;
    const-string v1, "additional_string"

    .local v1, ADDITIONAL_STRING:Ljava/lang/String;
    const-string v0, "additional_count"

    .local v0, ADDITIONAL_COUNT:Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2122

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .local v5, device_name:Ljava/lang/String;
    const-string v11, "WifiStateMachine"

    const-string v12, "get device_name"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, additional_string:Ljava/lang/String;
    const-string v11, "WifiStateMachine"

    const-string v12, "get additional_string"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getMacAddress()Ljava/lang/String;

    move-result-object v7

    .local v7, mac:Ljava/lang/String;
    if-eqz v7, :cond_1

    const-string v11, ":"

    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .local v8, macFileds:[Ljava/lang/String;
    array-length v11, v8

    const/4 v12, 0x6

    if-ne v11, v12, :cond_1

    const-string v11, "mac_address"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .local v3, additional_count:I
    const-string v11, "WifiStateMachine"

    const-string v12, "get additional_count"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v3

    .local v6, i:I
    :goto_0
    if-lez v6, :cond_1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    rsub-int/lit8 v12, v6, 0x5

    add-int/lit8 v12, v12, 0x1

    aget-object v12, v8, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .end local v3           #additional_count:I
    .end local v6           #i:I
    :cond_0
    const-string v11, "WifiStateMachine"

    const-string v12, "Can\'t get additional_count"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4           #additional_string:Ljava/lang/String;
    .end local v7           #mac:Ljava/lang/String;
    .end local v8           #macFileds:[Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v11

    iput-object v5, v11, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    .end local v5           #device_name:Ljava/lang/String;
    :goto_2
    return-void

    .restart local v4       #additional_string:Ljava/lang/String;
    .restart local v5       #device_name:Ljava/lang/String;
    .restart local v7       #mac:Ljava/lang/String;
    .restart local v8       #macFileds:[Ljava/lang/String;
    :cond_2
    const-string v11, "random"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .restart local v3       #additional_count:I
    const-string v11, "WifiStateMachine"

    const-string v12, "get additional_count"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Landroid/net/wifi/WifiStateMachine;->getRandomKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, randomssid:Ljava/lang/String;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0xd

    if-ne v11, v12, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v3

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .local v10, randomssidf:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .end local v3           #additional_count:I
    .end local v9           #randomssid:Ljava/lang/String;
    .end local v10           #randomssidf:Ljava/lang/String;
    :cond_3
    const-string v11, "WifiStateMachine"

    const-string v12, "Can\'t get additional_count"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string v11, "WifiStateMachine"

    const-string v12, "Can\'t get additional_string or IMEI"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v4           #additional_string:Ljava/lang/String;
    .end local v5           #device_name:Ljava/lang/String;
    .end local v7           #mac:Ljava/lang/String;
    .end local v8           #macFileds:[Ljava/lang/String;
    :cond_5
    const-string v11, "WifiStateMachine"

    const-string v12, "Can\'t get device_name"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->CustomizeSSIDbyCode()V

    goto :goto_2
.end method

.method private parseScanResult(Ljava/lang/String;)Landroid/net/wifi/ScanResult;
    .locals 13
    .parameter "line"

    .prologue
    const/4 v0, 0x0

    .local v0, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz p1, :cond_1

    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    monitor-enter v11

    :try_start_0
    sget-object v10, Landroid/net/wifi/WifiStateMachine;->scanResultPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v10, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v8

    .local v8, result:[Ljava/lang/String;
    const/4 v10, 0x3

    array-length v12, v8

    if-gt v10, v12, :cond_6

    array-length v10, v8

    const/4 v12, 0x5

    if-gt v10, v12, :cond_6

    const/4 v10, 0x0

    aget-object v2, v8, v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, bssid:Ljava/lang/String;
    const/4 v10, 0x1

    :try_start_1
    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .local v5, frequency:I
    const/4 v10, 0x2

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    .local v4, level:I
    if-lez v4, :cond_0

    add-int/lit16 v4, v4, -0x100

    :cond_0
    :goto_0
    :try_start_2
    array-length v10, v8

    const/4 v12, 0x4

    if-ne v10, v12, :cond_3

    const/4 v10, 0x3

    aget-object v10, v8, v10

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v12, 0x5b

    if-ne v10, v12, :cond_2

    const/4 v10, 0x3

    aget-object v3, v8, v10

    .local v3, flags:Ljava/lang/String;
    const-string v1, ""

    .local v1, ssid:Ljava/lang/String;
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, key:Ljava/lang/String;
    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    invoke-virtual {v10, v7}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/ScanResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0           #scanResult:Landroid/net/wifi/ScanResult;
    .local v9, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz v9, :cond_5

    :try_start_3
    iput v4, v9, Landroid/net/wifi/ScanResult;->level:I

    iput-object v1, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v3, v9, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    iput v5, v9, Landroid/net/wifi/ScanResult;->frequency:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v9

    .end local v1           #ssid:Ljava/lang/String;
    .end local v2           #bssid:Ljava/lang/String;
    .end local v3           #flags:Ljava/lang/String;
    .end local v4           #level:I
    .end local v5           #frequency:I
    .end local v7           #key:Ljava/lang/String;
    .end local v9           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v0       #scanResult:Landroid/net/wifi/ScanResult;
    :goto_2
    :try_start_4
    monitor-exit v11

    .end local v8           #result:[Ljava/lang/String;
    :cond_1
    return-object v0

    .restart local v2       #bssid:Ljava/lang/String;
    .restart local v8       #result:[Ljava/lang/String;
    :catch_0
    move-exception v6

    .local v6, e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    .restart local v5       #frequency:I
    const/4 v4, 0x0

    .restart local v4       #level:I
    goto :goto_0

    .end local v6           #e:Ljava/lang/NumberFormatException;
    :cond_2
    const-string v3, ""

    .restart local v3       #flags:Ljava/lang/String;
    const/4 v10, 0x3

    aget-object v1, v8, v10

    .restart local v1       #ssid:Ljava/lang/String;
    goto :goto_1

    .end local v1           #ssid:Ljava/lang/String;
    .end local v3           #flags:Ljava/lang/String;
    :cond_3
    array-length v10, v8

    const/4 v12, 0x5

    if-ne v10, v12, :cond_4

    const/4 v10, 0x3

    aget-object v3, v8, v10

    .restart local v3       #flags:Ljava/lang/String;
    const/4 v10, 0x4

    aget-object v1, v8, v10

    .restart local v1       #ssid:Ljava/lang/String;
    goto :goto_1

    .end local v1           #ssid:Ljava/lang/String;
    .end local v3           #flags:Ljava/lang/String;
    :cond_4
    const-string v3, ""

    .restart local v3       #flags:Ljava/lang/String;
    const-string v1, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local v1       #ssid:Ljava/lang/String;
    goto :goto_1

    .end local v0           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v7       #key:Ljava/lang/String;
    .restart local v9       #scanResult:Landroid/net/wifi/ScanResult;
    :cond_5
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_7

    new-instance v0, Landroid/net/wifi/ScanResult;

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/ScanResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v9           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v0       #scanResult:Landroid/net/wifi/ScanResult;
    :try_start_6
    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    invoke-virtual {v10, v7, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .end local v1           #ssid:Ljava/lang/String;
    .end local v2           #bssid:Ljava/lang/String;
    .end local v3           #flags:Ljava/lang/String;
    .end local v4           #level:I
    .end local v5           #frequency:I
    .end local v7           #key:Ljava/lang/String;
    .end local v8           #result:[Ljava/lang/String;
    :catchall_0
    move-exception v10

    :goto_3
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v10

    .restart local v8       #result:[Ljava/lang/String;
    :cond_6
    :try_start_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Misformatted scan result text with "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v12, v8

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " fields: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .end local v0           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v1       #ssid:Ljava/lang/String;
    .restart local v2       #bssid:Ljava/lang/String;
    .restart local v3       #flags:Ljava/lang/String;
    .restart local v4       #level:I
    .restart local v5       #frequency:I
    .restart local v7       #key:Ljava/lang/String;
    .restart local v9       #scanResult:Landroid/net/wifi/ScanResult;
    :catchall_1
    move-exception v10

    move-object v0, v9

    .end local v9           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v0       #scanResult:Landroid/net/wifi/ScanResult;
    goto :goto_3

    .end local v0           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v9       #scanResult:Landroid/net/wifi/ScanResult;
    :cond_7
    move-object v0, v9

    .end local v9           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v0       #scanResult:Landroid/net/wifi/ScanResult;
    goto :goto_2
.end method

.method private parseWifidisplayNoWpsApConfig(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 7
    .parameter "wifi"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const-string v2, "WifiStateMachine"

    const-string v3, "parseWifidisplayNoWpsApConfig+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    const-string v3, "MLHD_NOWPS:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    const-string v4, "MLHD_NOWPS:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .local v0, mlhd_ap:Ljava/lang/String;
    const-string v2, "MLHD_NOWPS:"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, mlhd_config:[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mConfigNoWps:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mConfigNoWps:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v1, v3

    iput-object v3, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mConfigNoWps:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    aget-object v3, v1, v5

    iput-object v3, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mConfigNoWps:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    const-string v3, "wpa2-psk"

    iput-object v3, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mConfigNoWps:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iput v6, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mConfigNoWps:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    iput v3, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mConfigNoWps:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iput v5, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mConfigNoWps:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iput v6, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxDhcpClients:I

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mConfigNoWps:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    iput-object v3, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mConfigNoWps:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    iput v3, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mConfigNoWps:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    iput-object v3, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mConfigNoWps:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    iput v3, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    .end local v0           #mlhd_ap:Ljava/lang/String;
    .end local v1           #mlhd_config:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private persistApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .parameter "wifiConfig"

    .prologue
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "WifiStateMachine"

    const-string v2, "persistApConfiguration..."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "WifiStateMachine"

    const-string v2, "wificonfig is null..."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->updateApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_ssid"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hotspot_hidden"

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget-boolean v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_security_type"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_password"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_macfilter_on"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_max_connection"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_connection_array"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_channel"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_dhcp_on"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_dhcp_max_connection"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxDhcpClients:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_dhcp_start_ip"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_5
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_subnet_mask"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_6
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_id_address"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_7
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_sleep_policy"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_black_list"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->getBlackMacFilterString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_white_list"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->getWhiteMacFilterString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method private replyToMessage(Landroid/os/Message;I)V
    .locals 2
    .parameter "msg"
    .parameter "what"

    .prologue
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessageWithArg2(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .local v0, dstMsg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private replyToMessage(Landroid/os/Message;II)V
    .locals 2
    .parameter "msg"
    .parameter "what"
    .parameter "arg1"

    .prologue
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessageWithArg2(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .local v0, dstMsg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    iput p3, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .locals 2
    .parameter "msg"
    .parameter "what"
    .parameter "obj"

    .prologue
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessageWithArg2(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .local v0, dstMsg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private sendDongleScanResultsAvailableBroadcast()V
    .locals 2

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.DONGLE_SCAN_RESULTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendErrorBroadcast(I)V
    .locals 2
    .parameter "errorCode"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "errorCode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendLinkConfigurationChangedBroadcast()V
    .locals 4

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "linkProperties"

    new-instance v2, Landroid/net/LinkProperties;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    .locals 4
    .parameter "bssid"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "networkInfo"

    new-instance v2, Landroid/net/NetworkInfo;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v2, v3}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "linkProperties"

    new-instance v2, Landroid/net/LinkProperties;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v1, "bssid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_2

    :cond_1
    const-string v1, "wifiInfo"

    new-instance v2, Landroid/net/wifi/WifiInfo;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {v2, v3}, Landroid/net/wifi/WifiInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xd8

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->isCT_CDMA_WIFI_SSID()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->cw_ssid_key:I

    const-string v1, "cw_ssid_key"

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->cw_ssid_key:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[sendNetworkStateChangeBroadcast] NetworkInfo state ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " wifi info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendRssiChangeBroadcast(II)V
    .locals 2
    .parameter "newRssi"
    .parameter "frequency"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "newRssi"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "frequency"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendScanResultsAvailableBroadcast()V
    .locals 2

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendSupplicantConnectionChangedBroadcast(Z)V
    .locals 2
    .parameter "connected"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "connected"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendVzwStatusNotification(I)I
    .locals 13
    .parameter "iVzwStatus"

    .prologue
    const/4 v12, 0x0

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v10, "notification"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .local v4, nm:Landroid/app/NotificationManager;
    const v1, 0x402007f

    .local v1, iID:I
    const-string v9, "WifiStateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendVzwStatusNotification iVzwStatus = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const v2, 0x402007f

    .local v2, iVzwStatusIcon:I
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x4070018

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .local v7, sTitle:Ljava/lang/String;
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x4070019

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .local v6, sText:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, show:Z
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v12, v10, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .local v5, pPendingIntent:Landroid/app/PendingIntent;
    :goto_0
    new-instance v9, Landroid/app/Notification$Builder;

    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v9

    const-wide/16 v10, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .local v3, n:Landroid/app/Notification;
    const v9, -0x7ffffffe

    iput v9, v3, Landroid/app/Notification;->flags:I

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    iget-object v10, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v9, v7, v6, v10}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, bundle:Landroid/os/Bundle;
    const-string v9, "show_power_saver_icon"

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v3, v0}, Landroid/app/Notification;->setHtcExtras(Landroid/os/Bundle;)V

    invoke-virtual {v4, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return v12

    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #iVzwStatusIcon:I
    .end local v3           #n:Landroid/app/Notification;
    .end local v5           #pPendingIntent:Landroid/app/PendingIntent;
    .end local v6           #sText:Ljava/lang/String;
    .end local v7           #sTitle:Ljava/lang/String;
    .end local v8           #show:Z
    :cond_0
    const/4 v9, 0x1

    if-ne p1, v9, :cond_1

    const v2, 0x4020083

    .restart local v2       #iVzwStatusIcon:I
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x407001a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #sTitle:Ljava/lang/String;
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x407001b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #sText:Ljava/lang/String;
    const/4 v8, 0x1

    .restart local v8       #show:Z
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v12, v10, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .restart local v5       #pPendingIntent:Landroid/app/PendingIntent;
    goto :goto_0

    .end local v2           #iVzwStatusIcon:I
    .end local v5           #pPendingIntent:Landroid/app/PendingIntent;
    .end local v6           #sText:Ljava/lang/String;
    .end local v7           #sTitle:Ljava/lang/String;
    .end local v8           #show:Z
    :cond_1
    const/4 v9, 0x2

    if-ne p1, v9, :cond_2

    const v2, 0x402007d

    .restart local v2       #iVzwStatusIcon:I
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x407001c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #sTitle:Ljava/lang/String;
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x407001d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #sText:Ljava/lang/String;
    const/4 v8, 0x1

    .restart local v8       #show:Z
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v12, v10, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .restart local v5       #pPendingIntent:Landroid/app/PendingIntent;
    goto/16 :goto_0

    .end local v2           #iVzwStatusIcon:I
    .end local v5           #pPendingIntent:Landroid/app/PendingIntent;
    .end local v6           #sText:Ljava/lang/String;
    .end local v7           #sTitle:Ljava/lang/String;
    .end local v8           #show:Z
    :cond_2
    const/4 v9, 0x3

    if-ne p1, v9, :cond_3

    const v2, 0x4020084

    .restart local v2       #iVzwStatusIcon:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x407001e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7       #sTitle:Ljava/lang/String;
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x407001f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #sText:Ljava/lang/String;
    const/4 v8, 0x0

    .restart local v8       #show:Z
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v12, v10, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .restart local v5       #pPendingIntent:Landroid/app/PendingIntent;
    goto/16 :goto_0

    .end local v2           #iVzwStatusIcon:I
    .end local v5           #pPendingIntent:Landroid/app/PendingIntent;
    .end local v6           #sText:Ljava/lang/String;
    .end local v7           #sTitle:Ljava/lang/String;
    .end local v8           #show:Z
    :cond_3
    const/4 v9, 0x4

    if-ne p1, v9, :cond_4

    const v2, 0x402007d

    .restart local v2       #iVzwStatusIcon:I
    const-string v7, "Click to Connect to VerizonWiFi"

    .restart local v7       #sTitle:Ljava/lang/String;
    const-string v6, "Click to Connect to VerizonWiFi"

    .restart local v6       #sText:Ljava/lang/String;
    const/4 v8, 0x1

    .restart local v8       #show:Z
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.htc.wifi.PICK_VERIZON_WIFI_NETWORK"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v12, v10, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .restart local v5       #pPendingIntent:Landroid/app/PendingIntent;
    goto/16 :goto_0

    .end local v2           #iVzwStatusIcon:I
    .end local v5           #pPendingIntent:Landroid/app/PendingIntent;
    .end local v6           #sText:Ljava/lang/String;
    .end local v7           #sTitle:Ljava/lang/String;
    .end local v8           #show:Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2       #iVzwStatusIcon:I
    const-string v7, "Title Error"

    .restart local v7       #sTitle:Ljava/lang/String;
    const-string v6, "Text Error"

    .restart local v6       #sText:Ljava/lang/String;
    const/4 v8, 0x1

    .restart local v8       #show:Z
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v12, v10, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .restart local v5       #pPendingIntent:Landroid/app/PendingIntent;
    goto/16 :goto_0
.end method

.method private setCountryCode()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_country_code"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, countryCode:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private setDongleScanList(Ljava/lang/String;)V
    .locals 9
    .parameter "scanResults"

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, scanList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v2, 0x0

    .local v2, lineCount:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .local v6, scanResultsLen:I
    const/4 v1, 0x0

    .local v1, lineBeg:I
    const/4 v3, 0x0

    .local v3, lineEnd:I
    :goto_1
    if-gt v3, v6, :cond_5

    if-eq v3, v6, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    const/4 v7, 0x1

    if-ne v2, v7, :cond_3

    add-int/lit8 v1, v3, 0x1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-le v3, v1, :cond_4

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .local v0, line:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->parseScanResult(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v5

    .local v5, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz v5, :cond_4

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v0           #line:Ljava/lang/String;
    .end local v5           #scanResult:Landroid/net/wifi/ScanResult;
    :cond_4
    add-int/lit8 v1, v3, 0x1

    goto :goto_2

    :cond_5
    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mDongleScanList:Ljava/util/List;

    goto :goto_0
.end method

.method private setFrequencyBand()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_frequency_band"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, band:I
    invoke-virtual {p0, v0, v3}, Landroid/net/wifi/WifiStateMachine;->setFrequencyBand(IZ)V

    return-void
.end method

.method private setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDetailed state, old ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and new state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, p1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setPreConfigAPHigherPriority()V
    .locals 17

    .prologue
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v14}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v12

    .local v12, wifiConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v14, 0x4

    new-array v11, v14, [Landroid/net/wifi/WifiConfiguration;

    .local v11, updatedwifiConfig:[Landroid/net/wifi/WifiConfiguration;
    const/4 v4, 0x0

    .local v4, maxPriority:I
    const/4 v1, 0x0

    .local v1, bMatch:Z
    const/4 v3, 0x0

    .local v3, j:I
    const/4 v8, 0x1

    .local v8, preConfigSsidListNum:I
    const/4 v6, -0x1

    .local v6, mostPreferredSsidPriority:I
    const/4 v10, 0x1

    .local v10, totalListNum:I
    sget-short v14, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v15, 0xd8

    if-ne v14, v15, :cond_0

    const/4 v8, 0x3

    const/4 v10, 0x3

    :cond_0
    const-string v14, "persist.sys.cw.ssid"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, mostPreferredSsid:Ljava/lang/String;
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[C+W] mostPreferredSsid is :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "persist.sys.cw.security"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, mostPreferredSsidSecurity:Ljava/lang/String;
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[C+W] mostPreferredSsidSecurity is :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, ""

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, ""

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mPreConfigSsidList:[Ljava/lang/String;

    aput-object v5, v14, v8

    add-int/lit8 v10, v8, 0x1

    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mostPreferredSsid = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine;->mPreConfigSsidList:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v16, v16, v8

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " security = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v13

    .local v13, wifiState:I
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[C+W] wifiState is :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x3

    if-eq v13, v14, :cond_3

    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "wifi state not enabled : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v2, v14, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_16

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .local v9, tmpWifiConfig:Landroid/net/wifi/WifiConfiguration;
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[C+W] tmpWifiConfig is:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_4

    iget-object v14, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v14, :cond_6

    :cond_4
    const-string v14, "WifiStateMachine"

    const-string v15, "get null wifi configuration"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v10, :cond_7

    iget-object v14, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mPreConfigSsidList:[Ljava/lang/String;

    aget-object v15, v15, v3

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "match preConfigSsidList = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine;->mPreConfigSsidList:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v16, v16, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "bMatch is :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz v1, :cond_14

    const-string v14, "WifiStateMachine"

    const-string v15, "[C+W] enter set maxPriority loop>>>>>>>>>>>"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v3, v8, :cond_b

    const-string v14, "open"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    iget-object v14, v9, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_8

    iget-object v14, v9, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    if-eqz v14, :cond_a

    :cond_8
    const/4 v1, 0x0

    iget v14, v9, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-gt v4, v14, :cond_5

    iget v14, v9, Landroid/net/wifi/WifiConfiguration;->priority:I

    add-int/lit8 v4, v14, 0x1

    goto :goto_2

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    const-string v14, "WifiStateMachine"

    const-string v15, "[open] mostPreferredSsid matched"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_4
    aput-object v9, v11, v3

    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_c
    const-string v14, "wep"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    iget-object v14, v9, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_d

    iget-object v14, v9, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    if-nez v14, :cond_e

    :cond_d
    const/4 v1, 0x0

    iget v14, v9, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-gt v4, v14, :cond_5

    iget v14, v9, Landroid/net/wifi/WifiConfiguration;->priority:I

    add-int/lit8 v4, v14, 0x1

    goto/16 :goto_2

    :cond_e
    const-string v14, "WifiStateMachine"

    const-string v15, "[wep] mostPreferredSsid matched"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_f
    const-string v14, "wpapsk"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    iget-object v14, v9, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_10

    const/4 v1, 0x0

    iget v14, v9, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-gt v4, v14, :cond_5

    iget v14, v9, Landroid/net/wifi/WifiConfiguration;->priority:I

    add-int/lit8 v4, v14, 0x1

    goto/16 :goto_2

    :cond_10
    const-string v14, "WifiStateMachine"

    const-string v15, "[wpapsk] mostPreferredSsid matched"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_11
    const-string v14, "eap"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    iget-object v14, v9, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_12

    iget-object v14, v9, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_12

    const/4 v1, 0x0

    iget v14, v9, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-gt v4, v14, :cond_5

    iget v14, v9, Landroid/net/wifi/WifiConfiguration;->priority:I

    add-int/lit8 v4, v14, 0x1

    goto/16 :goto_2

    :cond_12
    const-string v14, "WifiStateMachine"

    const-string v15, "[eap] mostPreferredSsid matched"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_13
    const-string v14, "WifiStateMachine"

    const-string v15, "no matched mostPreferredSsidSecurity"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_14
    iget v14, v9, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-gt v4, v14, :cond_15

    iget v14, v9, Landroid/net/wifi/WifiConfiguration;->priority:I

    add-int/lit8 v4, v14, 0x1

    :cond_15
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[C+W] maxPriority is :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v9           #tmpWifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_16
    sget-short v14, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v15, 0xd8

    if-ne v14, v15, :cond_1b

    const/4 v14, 0x0

    aget-object v14, v11, v14

    if-eqz v14, :cond_1a

    const/4 v14, 0x1

    aget-object v14, v11, v14

    if-eqz v14, :cond_1a

    const/4 v14, 0x2

    aget-object v14, v11, v14

    if-eqz v14, :cond_1a

    const/4 v14, 0x2

    aget-object v14, v11, v14

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-lt v14, v4, :cond_17

    const/4 v14, 0x1

    aget-object v14, v11, v14

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->priority:I

    const/4 v15, 0x0

    aget-object v15, v11, v15

    iget v15, v15, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-le v14, v15, :cond_17

    const/4 v14, 0x2

    aget-object v14, v11, v14

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->priority:I

    const/4 v15, 0x1

    aget-object v15, v11, v15

    iget v15, v15, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-le v14, v15, :cond_17

    const-string v14, "WifiStateMachine"

    const-string v15, "no need to update ssids priority"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    const/4 v14, 0x3

    aget-object v14, v11, v14

    if-eqz v14, :cond_2

    const/4 v14, 0x2

    aget-object v14, v11, v14

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->priority:I

    const/4 v15, 0x3

    aget-object v15, v11, v15

    iget v15, v15, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-lt v14, v15, :cond_2

    const/4 v14, 0x3

    aget-object v14, v11, v14

    const/4 v15, 0x2

    aget-object v15, v11, v15

    iget v15, v15, Landroid/net/wifi/WifiConfiguration;->priority:I

    add-int/lit8 v15, v15, 0x1

    iput v15, v14, Landroid/net/wifi/WifiConfiguration;->priority:I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    const/4 v15, 0x3

    aget-object v15, v11, v15

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_19

    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "user saved ssid priority updated, Priority : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x3

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v14}, Landroid/net/wifi/WifiConfigStore;->saveConfig()Z

    goto/16 :goto_0

    :cond_17
    const/4 v14, 0x0

    aget-object v14, v11, v14

    iput v4, v14, Landroid/net/wifi/WifiConfiguration;->priority:I

    const/4 v14, 0x1

    aget-object v14, v11, v14

    add-int/lit8 v15, v4, 0x1

    iput v15, v14, Landroid/net/wifi/WifiConfiguration;->priority:I

    const/4 v14, 0x2

    aget-object v14, v11, v14

    add-int/lit8 v15, v4, 0x2

    iput v15, v14, Landroid/net/wifi/WifiConfiguration;->priority:I

    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[C+W] after update updatedwifiConfig[0].priority is"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "updatedwifiConfig[1].priority is"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "updatedwifiConfig[2].priority is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x2

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    const/4 v15, 0x0

    aget-object v15, v11, v15

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_18

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    const/4 v15, 0x1

    aget-object v15, v11, v15

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_18

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    const/4 v15, 0x2

    aget-object v15, v11, v15

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_18

    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[C+W] after update updated>>>>updatedwifiConfig[0].priority is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "updatedwifiConfig[1].priority is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "updatedwifiConfig[2].priority is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x2

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "preconfig ssids priority updated, Priority : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v14}, Landroid/net/wifi/WifiConfigStore;->saveConfig()Z

    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[C+W] after saved configure>>>>updatedwifiConfig[0].priority is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "updatedwifiConfig[1].priority is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "updatedwifiConfig[2].priority is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x2

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "preconfig ssids priority updated, Priority : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_18
    const-string v14, "WifiStateMachine"

    const-string v15, "mWM.saveConfiguration failed#1"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_19
    const-string v14, "WifiStateMachine"

    const-string v15, "mWM.saveConfiguration failed#2"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1a
    const-string v14, "WifiStateMachine"

    const-string v15, "miss some preconfig ssids"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1b
    const/4 v14, 0x0

    aget-object v14, v11, v14

    if-eqz v14, :cond_23

    const/4 v14, 0x0

    aget-object v14, v11, v14

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-lt v14, v4, :cond_1c

    const-string v14, "WifiStateMachine"

    const-string v15, "no need to update ssids priority"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    const/4 v14, 0x1

    aget-object v14, v11, v14

    if-eqz v14, :cond_2

    const/4 v14, 0x1

    aget-object v14, v11, v14

    const/4 v15, 0x0

    aget-object v15, v11, v15

    iget v15, v15, Landroid/net/wifi/WifiConfiguration;->priority:I

    add-int/lit8 v15, v15, 0x1

    iput v15, v14, Landroid/net/wifi/WifiConfiguration;->priority:I

    sget-short v14, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v15, 0xda

    if-ne v14, v15, :cond_21

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/net/wifi/WifiStateMachine;->mAssociateManual:Z

    if-eqz v14, :cond_21

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    const/4 v14, 0x1

    aget-object v14, v11, v14

    invoke-static {v14}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetwork_CMCC(Landroid/net/wifi/WifiConfiguration;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_20

    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "user saved ssid priority updated, Priority : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v14}, Landroid/net/wifi/WifiConfigStore;->saveConfig()Z

    goto/16 :goto_0

    :cond_1c
    const/4 v14, 0x0

    aget-object v14, v11, v14

    iput v4, v14, Landroid/net/wifi/WifiConfiguration;->priority:I

    sget-short v14, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v15, 0xda

    if-ne v14, v15, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/net/wifi/WifiStateMachine;->mAssociateManual:Z

    if-eqz v14, :cond_1e

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    const/4 v14, 0x0

    aget-object v14, v11, v14

    invoke-static {v14}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetwork_CMCC(Landroid/net/wifi/WifiConfiguration;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1d

    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "preconfig ssids priority updated, Priority : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v14}, Landroid/net/wifi/WifiConfigStore;->saveConfig()Z

    goto/16 :goto_6

    :cond_1d
    const-string v14, "WifiStateMachine"

    const-string v15, "mWM.saveConfiguration failed#1"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_1e
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    const/4 v15, 0x0

    aget-object v15, v11, v15

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1f

    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "preconfig ssids priority updated, Priority : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v14}, Landroid/net/wifi/WifiConfigStore;->saveConfig()Z

    goto/16 :goto_6

    :cond_1f
    const-string v14, "WifiStateMachine"

    const-string v15, "mWM.saveConfiguration failed#1"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_20
    const-string v14, "WifiStateMachine"

    const-string v15, "mWM.saveConfiguration failed#2"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_21
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    const/4 v15, 0x1

    aget-object v15, v11, v15

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_22

    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "user saved ssid priority updated, Priority : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v14}, Landroid/net/wifi/WifiConfigStore;->saveConfig()Z

    goto/16 :goto_0

    :cond_22
    const-string v14, "WifiStateMachine"

    const-string v15, "mWM.saveConfiguration failed#2"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_23
    const-string v14, "WifiStateMachine"

    const-string v15, "miss some preconfig ssids"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private setScanResults(Ljava/lang/String;)V
    .locals 13
    .parameter "scanResults"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x1

    if-nez p1, :cond_1

    iget-boolean v8, p0, Landroid/net/wifi/WifiStateMachine;->mEnableFakeScanresult:Z

    if-nez v8, :cond_1

    iget-boolean v8, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatusFeature:Z

    if-eqz v8, :cond_0

    iget v8, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I

    if-eq v8, v10, :cond_0

    iget-boolean v8, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConnected:Z

    if-nez v8, :cond_0

    const-string v8, "WifiStateMachine"

    const-string v9, "VzwStatus[No APs detected]"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v10, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I

    invoke-direct {p0, v10}, Landroid/net/wifi/WifiStateMachine;->sendVzwStatusNotification(I)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, scanList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-boolean v8, p0, Landroid/net/wifi/WifiStateMachine;->mEnableFakeScanresult:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mfakeresult:Landroid/net/wifi/ScanResult;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-boolean v8, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatusFeature:Z

    if-eqz v8, :cond_9

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_9

    iget v8, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I

    if-eq v8, v10, :cond_9

    iget-boolean v8, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConnected:Z

    if-nez v8, :cond_9

    const-string v8, "WifiStateMachine"

    const-string v9, "VzwStatus[No APs detected]"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v10, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I

    invoke-direct {p0, v10}, Landroid/net/wifi/WifiStateMachine;->sendVzwStatusNotification(I)I

    :cond_3
    :goto_1
    iput-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    iget-boolean v8, p0, Landroid/net/wifi/WifiStateMachine;->mHtcNetworkSelectionFeature:Z

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/net/wifi/WifiStateMachine;->roamToTopScoreAP(Z)V

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_2

    const/4 v3, 0x0

    .local v3, lineCount:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    .local v7, scanResultsLen:I
    const/4 v2, 0x0

    .local v2, lineBeg:I
    const/4 v4, 0x0

    .local v4, lineEnd:I
    :goto_2
    if-gt v4, v7, :cond_2

    if-eq v4, v7, :cond_5

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_6

    :cond_5
    add-int/lit8 v3, v3, 0x1

    if-ne v3, v10, :cond_7

    add-int/lit8 v2, v4, 0x1

    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    if-le v4, v2, :cond_8

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->parseScanResult(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v6

    .local v6, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz v6, :cond_8

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v1           #line:Ljava/lang/String;
    .end local v6           #scanResult:Landroid/net/wifi/ScanResult;
    :cond_8
    add-int/lit8 v2, v4, 0x1

    goto :goto_3

    .end local v2           #lineBeg:I
    .end local v3           #lineCount:I
    .end local v4           #lineEnd:I
    .end local v7           #scanResultsLen:I
    :cond_9
    iget-boolean v8, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatusFeature:Z

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    iget-boolean v8, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConnected:Z

    if-nez v8, :cond_3

    invoke-direct {p0, v5}, Landroid/net/wifi/WifiStateMachine;->checkVzwWifiAggregation(Ljava/util/List;)Z

    move-result v0

    .local v0, doWifiAggregation:Z
    iget v8, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I

    if-eq v8, v11, :cond_a

    if-nez v0, :cond_a

    const-string v8, "WifiStateMachine"

    const-string v9, "VzwStatus[AP detected but not connected]"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v11, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I

    invoke-direct {p0, v11}, Landroid/net/wifi/WifiStateMachine;->sendVzwStatusNotification(I)I

    goto :goto_1

    :cond_a
    iget v8, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I

    if-eq v8, v12, :cond_3

    if-eqz v0, :cond_3

    const-string v8, "WifiStateMachine"

    const-string v9, "VzwStatus[Verizon AP detected but not connected]"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v12, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I

    invoke-direct {p0, v12}, Landroid/net/wifi/WifiStateMachine;->sendVzwStatusNotification(I)I

    goto :goto_1
.end method

.method private setTetheringSetting(Landroid/net/wifi/WifiConfiguration;)I
    .locals 9
    .parameter "config"

    .prologue
    const/4 v6, -0x1

    const/4 v0, 0x1

    const/4 v5, 0x0

    const-string v7, "WifiStateMachine"

    const-string v8, "setTetheringSetting"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v7

    iget v7, v7, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    if-ne v7, v0, :cond_1

    .local v0, dhcpEnable:Z
    :goto_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v7

    iget-object v4, v7, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    .local v4, startingIP:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v7

    iget-object v2, v7, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    .local v2, dhcpSubnetMask:Ljava/lang/String;
    if-nez p1, :cond_2

    move v5, v6

    :cond_0
    :goto_1
    return v5

    .end local v0           #dhcpEnable:Z
    .end local v2           #dhcpSubnetMask:Ljava/lang/String;
    .end local v4           #startingIP:Ljava/lang/String;
    :cond_1
    move v0, v5

    goto :goto_0

    .restart local v0       #dhcpEnable:Z
    .restart local v2       #dhcpSubnetMask:Ljava/lang/String;
    .restart local v4       #startingIP:Ljava/lang/String;
    :cond_2
    :try_start_0
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v7, v0}, Landroid/os/INetworkManagementService;->setTetheringDhcpEnabled(Z)V

    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    const/4 v6, 0x2

    new-array v1, v6, [Ljava/lang/String;

    .local v1, dhcpRange:[Ljava/lang/String;
    const/4 v6, 0x0

    aput-object v4, v1, v6

    const/4 v6, 0x1

    invoke-static {v4, v2}, Landroid/net/wifi/WifiStateMachine;->findEndIP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v6, v1}, Landroid/os/INetworkManagementService;->setTetheringHtcDhcpRange([Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, -0x2

    goto :goto_1

    .end local v1           #dhcpRange:[Ljava/lang/String;
    :cond_3
    move v5, v6

    goto :goto_1

    :catch_0
    move-exception v3

    .local v3, ee:Ljava/lang/Exception;
    const-string v5, "WifiStateMachine"

    const-string v6, "setTetheringSetting failed"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x3

    goto :goto_1
.end method

.method private setWifiApState(I)V
    .locals 7
    .parameter "wifiApState"

    .prologue
    const/high16 v6, 0x800

    const/16 v4, 0xd

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .local v2, previousWifiApState:I
    if-ne p1, v4, :cond_3

    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOn()V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->writeWifiApStatusForFlashlight(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/16 v3, 0xc

    if-ne p1, v3, :cond_4

    :try_start_1
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->setHotspotEnabled(Z)V

    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setHotspotEnabled: get value= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v4}, Landroid/os/INetworkManagementService;->getHotspotEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWifiApState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApStateByName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    sget-boolean v3, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApEnable:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v3, "send WIFIDISPLAY_AP_STATE_CHANGED_ACTION intent"

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.wifi.WIFIDISPLAY_AP_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "wifi_state"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "previous_wifi_state"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    :goto_3
    sget-boolean v3, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApEnable:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApStateByName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "disabled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WiFiDisplay: Got disabled state in concurrent, set mWifidisplayApEnable =false "

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApEnable:Z

    :cond_2
    return-void

    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    const/16 v3, 0xb

    if-ne p1, v3, :cond_0

    :try_start_2
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOff()V

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->writeWifiApStatusForFlashlight(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "Failed to note battery stats in wifi"

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_4
    if-eq p1, v4, :cond_1

    :try_start_3
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->setHotspotEnabled(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v3

    goto :goto_2

    :cond_5
    const-string v3, "send WIFI_AP_STATE_CHANGED_ACTION intent"

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "wifi_state"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "previous_wifi_state"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_3
.end method

.method private setWifiState(I)V
    .locals 5
    .parameter "wifiState"

    .prologue
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .local v2, previousWifiState:I
    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOn()V

    const/4 v3, 0x0

    iput v3, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpFailWorkaround:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWifiState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiStateByName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x800

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "wifi_state"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "previous_wifi_state"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void

    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    :try_start_1
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOff()V

    const/4 v3, 0x0

    iput v3, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpFailWorkaround:I

    const/4 v3, -0x1

    iput v3, p0, Landroid/net/wifi/WifiStateMachine;->mIsScreenOn:I

    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatusFeature:Z

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I

    if-eqz v3, :cond_0

    const-string v3, "WifiStateMachine"

    const-string v4, "VzwStatus[Wifi_off]"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iput v3, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConnected:Z

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->sendVzwStatusNotification(I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "Failed to note battery stats in wifi"

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private shouldBroadcastRSSIForIMS(II)Z
    .locals 6
    .parameter "newRSSI"
    .parameter "lastRSSI"

    .prologue
    const/4 v1, 0x0

    const/16 v5, -0x4b

    const/16 v4, -0x50

    const/16 v3, -0x55

    const/4 v0, 0x1

    if-eq p1, p2, :cond_5

    const/16 v2, -0xc8

    if-ne p2, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-le p1, v5, :cond_2

    if-le p2, v5, :cond_0

    :cond_2
    if-gt p1, v4, :cond_3

    if-gt p2, v4, :cond_0

    :cond_3
    if-gt p1, v3, :cond_4

    if-gt p2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .parameter "config"

    .prologue
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/net/wifi/WifiStateMachine$14;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiStateMachine$14;-><init>(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private startTethering(Ljava/util/ArrayList;)Z
    .locals 17
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .local v12, wifiAvailable:Z
    new-instance v11, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v11}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .local v11, wifiAPConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v14}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v13

    .local v13, wifiRegexs:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .local v7, intf:Ljava/lang/String;
    move-object v1, v13

    .local v1, arr$:[Ljava/lang/String;
    array-length v9, v1

    .local v9, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v9, :cond_0

    aget-object v10, v1, v4

    .local v10, regex:Ljava/lang/String;
    invoke-virtual {v7, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    const/4 v5, 0x0

    .local v5, ifcg:Landroid/net/InterfaceConfiguration;
    const-string v14, "wlan0"

    invoke-virtual {v7, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    sget-boolean v14, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApEnable:Z

    if-eqz v14, :cond_1

    const-string v14, "WifiStateMachine"

    const-string v15, "Skip wlan0 interface when concurrent mode"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x1

    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #ifcg:Landroid/net/InterfaceConfiguration;
    .end local v7           #intf:Ljava/lang/String;
    .end local v9           #len$:I
    .end local v10           #regex:Ljava/lang/String;
    :goto_1
    return v14

    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v5       #ifcg:Landroid/net/InterfaceConfiguration;
    .restart local v7       #intf:Ljava/lang/String;
    .restart local v9       #len$:I
    .restart local v10       #regex:Ljava/lang/String;
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v14, v7}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v14

    iget-object v14, v14, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    if-eqz v14, :cond_3

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v14

    iget-object v8, v14, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    .local v8, ipAddress:Ljava/lang/String;
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "starting Ipaddress = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Landroid/net/LinkAddress;

    invoke-static {v8}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v15

    const/16 v16, 0x18

    invoke-direct/range {v14 .. v16}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v5, v14}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    new-instance v6, Landroid/content/Intent;

    const-string v14, "com.htc.wifi.SET_HOTSPOT_INTERFACE_ADDRESS"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v6, intent:Landroid/content/Intent;
    const/high16 v14, 0x800

    invoke-virtual {v6, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v6           #intent:Landroid/content/Intent;
    .end local v8           #ipAddress:Ljava/lang/String;
    :goto_2
    invoke-virtual {v5}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v14, v7, v5}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v14, v11}, Landroid/os/INetworkManagementService;->setMACList(Landroid/net/wifi/WifiConfiguration;)V

    sget-boolean v14, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApEnable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v14, :cond_4

    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v14, v7}, Landroid/net/ConnectivityManager;->tether(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error tethering on "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_3
    :try_start_1
    const-string v14, "WifiStateMachine"

    const-string v15, "Ipaddress = 192.168.43.1"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Landroid/net/LinkAddress;

    const-string v15, "192.168.43.1"

    invoke-static {v15}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v15

    const/16 v16, 0x18

    invoke-direct/range {v14 .. v16}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v5, v14}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error configuring interface "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    const/4 v14, 0x0

    goto/16 :goto_1

    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_2
    const-string v14, "mWifidisplayApEnable is true, don\'t need to set ap country code again"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iput-object v7, v0, Landroid/net/wifi/WifiStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    const/4 v14, 0x1

    goto/16 :goto_1

    .end local v5           #ifcg:Landroid/net/InterfaceConfiguration;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v7           #intf:Ljava/lang/String;
    .end local v9           #len$:I
    .end local v10           #regex:Ljava/lang/String;
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_1
.end method

.method private stopTethering()V
    .locals 5

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    const/4 v1, 0x0

    .local v1, ifcg:Landroid/net/InterfaceConfiguration;
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/net/LinkAddress;

    const-string v3, "0.0.0.0"

    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v2}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Untether initiate failed!"

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error resetting interface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private string2Byte(Ljava/lang/String;)[B
    .locals 5
    .parameter "hexString"

    .prologue
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v2, v3, 0x2

    .local v2, len:I
    new-array v0, v2, [B

    .local v0, byteArray:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    mul-int/lit8 v3, v1, 0x2

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private triggerCWDeRegister()V
    .locals 2

    .prologue
    const-string v0, "WifiStateMachine"

    const-string v1, "[C+W] trigger C+W De-Register+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCwTarget:Landroid/net/wifi/WifiStateMachine$CwHandler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine$CwHandler;->sendEmptyMessage(I)Z

    const-string v0, "WifiStateMachine"

    const-string v1, "[C+W] trigger C+W De-Register-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private triggerCWRegister(J)V
    .locals 2
    .parameter "delayMillis"

    .prologue
    const-string v0, "WifiStateMachine"

    const-string v1, "[C+W] trigger C+W register+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCwTarget:Landroid/net/wifi/WifiStateMachine$CwHandler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1, p1, p2}, Landroid/net/wifi/WifiStateMachine$CwHandler;->sendEmptyMessageDelayed(IJ)Z

    const-string v0, "WifiStateMachine"

    const-string v1, "[C+W] trigger C+W register-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private triggerCWRegisterExpire(J)V
    .locals 2
    .parameter "delayMillis"

    .prologue
    const-string v0, "WifiStateMachine"

    const-string v1, "[C+W] trigger C+W CWRegisterExpire+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCwTarget:Landroid/net/wifi/WifiStateMachine$CwHandler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1, p1, p2}, Landroid/net/wifi/WifiStateMachine$CwHandler;->sendEmptyMessageDelayed(IJ)Z

    const-string v0, "WifiStateMachine"

    const-string v1, "[C+W] trigger C+W CWRegisterExpire-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 7
    .parameter "config"

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x1

    const/4 v3, 0x0

    sput-boolean v3, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    const-string v3, "WifiStateMachine"

    const-string v4, "updateApConfiguration..."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_0
    const-string v3, "WifiStateMachine"

    const-string v4, "[updateApConfiguration]mConfig is null..."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    if-nez v3, :cond_3

    const-string v3, "WifiStateMachine"

    const-string v4, "mConfig.getWifiApProfile().SSID is null, give temp default SSID..."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    const-string v4, "HTC Portable Hotspot"

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    :cond_3
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    :cond_4
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-boolean v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-boolean v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-boolean v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    iput-boolean v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    :cond_5
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    :cond_6
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_7
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    :cond_8
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    if-lt v3, v5, :cond_9

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    if-gt v3, v6, :cond_9

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    if-eq v3, v4, :cond_9

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    iput v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    :cond_9
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    if-lt v3, v5, :cond_a

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    if-gt v3, v6, :cond_a

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    if-eq v3, v4, :cond_a

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    iput v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    :cond_a
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    if-eq v3, v4, :cond_b

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    iput v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    :cond_b
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    if-eq v3, v4, :cond_c

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    iput v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    :cond_c
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxDhcpClients:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    if-eq v3, v4, :cond_d

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    iput v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxDhcpClients:I

    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    :cond_d
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    :cond_e
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    if-eqz v3, :cond_f

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    :cond_f
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    if-eqz v3, :cond_10

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    :cond_10
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr1:Ljava/lang/String;

    if-eqz v3, :cond_11

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr1:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr1:Ljava/lang/String;

    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    :cond_11
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr2:Ljava/lang/String;

    if-eqz v3, :cond_12

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr2:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr2:Ljava/lang/String;

    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    :cond_12
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    if-eq v3, v4, :cond_13

    iput-boolean v5, p0, Landroid/net/wifi/WifiStateMachine;->mResetWifiApSleepPolicy:Z

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    iput v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    :cond_13
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    if-eq v3, v4, :cond_14

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    iput v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    :cond_14
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->getBlackMacFilterString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v1

    .local v1, originalBlackList:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_15

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->getWhiteMacFilterString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v2

    .local v2, originalWhiteList:Ljava/lang/String;
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_16

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_16
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->getBlackMacFilterString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->getWhiteMacFilterString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_17
    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    goto/16 :goto_0
.end method

.method private updateBlackList(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V
    .locals 5
    .parameter "macStr"
    .parameter "config"

    .prologue
    const/4 v0, 0x0

    .local v0, count:I
    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .local v1, index:I
    if-ltz v1, :cond_0

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    :goto_0
    if-lez v1, :cond_0

    const-string v3, ","

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .local v2, lastindex:I
    if-ltz v2, :cond_0

    const/16 v3, 0xf

    if-gt v0, v3, :cond_0

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_0
.end method

.method private updateV6Addresses(Landroid/net/LinkProperties;)V
    .locals 25
    .parameter "linkProperties"

    .prologue
    const/4 v9, 0x0

    .local v9, broadcastRequired:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v22

    .local v22, wlanIf:Ljava/net/NetworkInterface;
    if-eqz v22, :cond_5

    invoke-virtual/range {v22 .. v22}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v18

    .local v18, interfaceAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InterfaceAddress;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interfaceAddresses:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/net/InterfaceAddress;

    .local v16, ia:Ljava/net/InterfaceAddress;
    invoke-virtual/range {v16 .. v16}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v3

    invoke-static {v2, v3}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v8

    .local v8, addr:Ljava/net/InetAddress;
    instance-of v2, v8, Ljava/net/Inet6Address;

    if-eqz v2, :cond_0

    invoke-virtual {v8}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/net/LinkAddress;

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Landroid/net/LinkAddress;-><init>(Ljava/net/InterfaceAddress;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V

    const/4 v9, 0x1

    goto :goto_0

    .end local v8           #addr:Ljava/net/InetAddress;
    .end local v16           #ia:Ljava/net/InterfaceAddress;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retrieving gateway for :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v13, 0x0

    .local v13, gatewayInfo:Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, gateway:Ljava/lang/String;
    const/16 v19, 0x0

    .local v19, ip6addr:Ljava/lang/String;
    const/16 v20, 0x0

    .local v20, lease:I
    const/4 v10, 0x0

    .local v10, dns:Ljava/lang/String;
    const/16 v21, 0x0

    .local v21, lifetime:I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->getIpv6Gateway(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v13

    const/16 v16, 0x0

    .local v16, ia:Ljava/net/InetAddress;
    const/16 v17, 0x0

    .local v17, ib:Ljava/net/InetAddress;
    :try_start_2
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .local v14, gatewayInfoTokens:[Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v19, v14, v2

    const/4 v2, 0x3

    aget-object v12, v14, v2

    const/4 v2, 0x4

    aget-object v2, v14, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    const/4 v2, 0x5

    aget-object v10, v14, v2

    const/4 v2, 0x6

    aget-object v2, v14, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ip: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", gateway: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lease: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dns: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    if-ltz v20, :cond_3

    const/16 v2, 0x12c

    move/from16 v0, v20

    if-ge v0, v2, :cond_2

    const/16 v20, 0x12c

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move/from16 v0, v20

    mul-int/lit16 v7, v0, 0x1e0

    int-to-long v0, v7

    move-wide/from16 v23, v0

    add-long v5, v5, v23

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/net/wifi/WifiStateMachine;->mIpv6RenewalIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v5, v6, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_3
    invoke-static {v12}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v16

    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v17

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adding gateway :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lease time in seconds:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Landroid/net/RouteInfo;

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    const/4 v9, 0x1

    :cond_4
    new-instance v2, Landroid/net/LinkAddress;

    const/16 v3, 0x80

    move-object/from16 v0, v17

    invoke-direct {v2, v0, v3}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isIpv4Connected()Z

    move-result v4

    .local v4, mIsIpv4Connected:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->setInterfaceNameV6(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adding ipv6 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lease time in seconds:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dns: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .end local v4           #mIsIpv4Connected:Z
    .end local v10           #dns:Ljava/lang/String;
    .end local v12           #gateway:Ljava/lang/String;
    .end local v13           #gatewayInfo:Ljava/lang/String;
    .end local v14           #gatewayInfoTokens:[Ljava/lang/String;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #ia:Ljava/net/InetAddress;
    .end local v17           #ib:Ljava/net/InetAddress;
    .end local v18           #interfaceAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InterfaceAddress;>;"
    .end local v19           #ip6addr:Ljava/lang/String;
    .end local v20           #lease:I
    .end local v21           #lifetime:I
    :cond_5
    if-eqz v9, :cond_6

    .end local v22           #wlanIf:Ljava/net/NetworkInterface;
    :goto_1
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine;->sendLinkConfigurationChangedBroadcast()V

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateV6Addresses(): linkProperties="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void

    .restart local v10       #dns:Ljava/lang/String;
    .restart local v12       #gateway:Ljava/lang/String;
    .restart local v13       #gatewayInfo:Ljava/lang/String;
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v18       #interfaceAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InterfaceAddress;>;"
    .restart local v19       #ip6addr:Ljava/lang/String;
    .restart local v20       #lease:I
    .restart local v21       #lifetime:I
    .restart local v22       #wlanIf:Ljava/net/NetworkInterface;
    :catch_0
    move-exception v11

    .local v11, e:Ljava/lang/Exception;
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in requestRtSol for interface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    if-eqz v9, :cond_7

    .end local v11           #e:Ljava/lang/Exception;
    :goto_3
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine;->sendLinkConfigurationChangedBroadcast()V

    goto :goto_2

    .restart local v16       #ia:Ljava/net/InetAddress;
    .restart local v17       #ib:Ljava/net/InetAddress;
    :catch_1
    move-exception v11

    .local v11, e:Ljava/lang/NullPointerException;
    :try_start_5
    const-string v2, "Null gateway info"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    if-eqz v9, :cond_7

    goto :goto_3

    .end local v11           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v11

    .local v11, e:Ljava/lang/NumberFormatException;
    const-string v2, "Invalid lease info"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    if-eqz v9, :cond_7

    goto :goto_3

    .end local v11           #e:Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v11

    .local v11, e:Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-numeric gateway addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    if-eqz v9, :cond_7

    goto :goto_3

    .end local v10           #dns:Ljava/lang/String;
    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    .end local v12           #gateway:Ljava/lang/String;
    .end local v13           #gatewayInfo:Ljava/lang/String;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #ia:Ljava/net/InetAddress;
    .end local v17           #ib:Ljava/net/InetAddress;
    .end local v18           #interfaceAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InterfaceAddress;>;"
    .end local v19           #ip6addr:Ljava/lang/String;
    .end local v20           #lease:I
    .end local v21           #lifetime:I
    .end local v22           #wlanIf:Ljava/net/NetworkInterface;
    :catch_4
    move-exception v11

    .local v11, e:Ljava/lang/Exception;
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v9, :cond_6

    goto/16 :goto_1

    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_8

    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine;->sendLinkConfigurationChangedBroadcast()V

    :cond_8
    throw v2
.end method

.method private updateV6AddressesWithAnotherThread(Landroid/net/LinkProperties;)V
    .locals 2
    .parameter "linkProperties"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AddressesWithAnotherThread() enter: linkProperties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/net/wifi/WifiStateMachine$13;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiStateMachine$13;-><init>(Landroid/net/wifi/WifiStateMachine;Landroid/net/LinkProperties;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AddressesWithAnotherThread() leave: linkProperties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method private updateWhiteList(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V
    .locals 5
    .parameter "macStr"
    .parameter "config"

    .prologue
    const/4 v0, 0x0

    .local v0, count:I
    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .local v1, index:I
    if-ltz v1, :cond_0

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    :goto_0
    if-lez v1, :cond_0

    const-string v3, ","

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .local v2, lastindex:I
    if-ltz v2, :cond_0

    const/16 v3, 0xf

    if-gt v0, v3, :cond_0

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_0
.end method

.method private writeWifiApStatusForFlashlight(Z)V
    .locals 8
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    .local v2, fWriter:Ljava/io/FileWriter;
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    const-string v4, "/sys/camera_led_status/led_hotspot_status"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .end local v2           #fWriter:Ljava/io/FileWriter;
    .local v3, fWriter:Ljava/io/FileWriter;
    :try_start_1
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set flash flag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const-string v4, "1\n"

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .end local v3           #fWriter:Ljava/io/FileWriter;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    .restart local v2       #fWriter:Ljava/io/FileWriter;
    return-void

    .end local v2           #fWriter:Ljava/io/FileWriter;
    .restart local v3       #fWriter:Ljava/io/FileWriter;
    :cond_1
    :try_start_3
    const-string v4, "0\n"

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v3

    .end local v3           #fWriter:Ljava/io/FileWriter;
    .local v0, e:Ljava/io/IOException;
    .restart local v2       #fWriter:Ljava/io/FileWriter;
    :goto_2
    :try_start_4
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1.set flash flag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .local v1, exception:Ljava/io/IOException;
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "2.set flash flag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #exception:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_2
    :goto_4
    const/4 v2, 0x0

    throw v4

    :catch_2
    move-exception v1

    .restart local v1       #exception:Ljava/io/IOException;
    const-string v5, "WifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "2.set flash flag="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "exception="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v1           #exception:Ljava/io/IOException;
    .end local v2           #fWriter:Ljava/io/FileWriter;
    .restart local v3       #fWriter:Ljava/io/FileWriter;
    :catch_3
    move-exception v1

    .restart local v1       #exception:Ljava/io/IOException;
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "2.set flash flag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v1           #exception:Ljava/io/IOException;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #fWriter:Ljava/io/FileWriter;
    .restart local v2       #fWriter:Ljava/io/FileWriter;
    goto :goto_3

    :catch_4
    move-exception v0

    goto/16 :goto_2
.end method


# virtual methods
.method public CancelNotifyWIFIAPreqtimer()V
    .locals 2

    .prologue
    const-string v0, "WifiStateMachine"

    const-string v1, "CancelNotifyWIFIAPreqtimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConnReqTimeout:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public SetNotifyWIFIAPreqtimer()V
    .locals 6

    .prologue
    const-string v2, "WifiStateMachine"

    const-string v3, "SetNotifyWIFIAPreqtimer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x1d4c0

    add-long v0, v2, v4

    .local v0, triggerTime:J
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConnReqTimeout:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public addToBlacklist(Ljava/lang/String;)V
    .locals 1
    .parameter "bssid"

    .prologue
    const v0, 0x20038

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public assignDongleIP(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "BSSID"

    .prologue
    const/4 v10, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    .local v5, hash:I
    const-string v7, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "assignDongleIP, hash = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "0.0.0.0"

    .local v2, dongleIP:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v7

    const/16 v8, 0xd

    if-ne v7, v8, :cond_0

    const-string v7, "WifiStateMachine"

    const-string v8, "assignDongleIP, Hotspot is ON, Use hotspot DHCP range for dongle..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v7

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    const-string v8, "\\."

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, IPStart:[Ljava/lang/String;
    const/4 v7, 0x3

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x3

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    rsub-int v8, v8, 0xfe

    rem-int v8, v5, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int v5, v7, v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    const-string v7, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dongleIP = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .end local v1           #IPStart:[Ljava/lang/String;
    .end local v2           #dongleIP:Ljava/lang/String;
    .local v3, dongleIP:Ljava/lang/String;
    :goto_1
    return-object v3

    .end local v3           #dongleIP:Ljava/lang/String;
    .restart local v2       #dongleIP:Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v7

    if-eq v7, v10, :cond_3

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v7, v8, :cond_3

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    iget-object v7, v7, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0xb

    if-lt v7, v8, :cond_2

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    iget-object v7, v7, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    const/4 v8, 0x0

    const/16 v9, 0xa

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "192.168.6.10"

    const/4 v9, 0x0

    const/16 v10, 0xa

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "hotspot_dhcp_start_ip"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, startingIP:Ljava/lang/String;
    if-nez v6, :cond_1

    sget-object v6, Landroid/net/hotspot/HotspotManager;->HOTSPOT_DEFAULT_DHCP_STARTING_IP:Ljava/lang/String;

    :cond_1
    const-string v7, "WifiStateMachine"

    const-string v8, "assignDongleIP, WiFi is connected and STA IP conflict with WiFi display IP, use original DHCP range for dongle..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "\\."

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .restart local v1       #IPStart:[Ljava/lang/String;
    const/4 v7, 0x3

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x3

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    rsub-int v8, v8, 0xfe

    rem-int v8, v5, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int v5, v7, v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .end local v1           #IPStart:[Ljava/lang/String;
    .end local v6           #startingIP:Ljava/lang/String;
    :cond_2
    const-string v7, "WifiStateMachine"

    const-string v8, "assignDongleIP, WiFi is connected, use WIFIDISPLAY DHCP range for dongle..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "192.168.6.10"

    const-string v8, "\\."

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .restart local v1       #IPStart:[Ljava/lang/String;
    const-string v7, "192.168.6.254"

    const-string v8, "\\."

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, IPEnd:[Ljava/lang/String;
    const/4 v7, 0x3

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x3

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x3

    aget-object v9, v1, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sub-int/2addr v8, v9

    rem-int v8, v5, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int v5, v7, v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .end local v0           #IPEnd:[Ljava/lang/String;
    .end local v1           #IPStart:[Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "hotspot_dhcp_start_ip"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #startingIP:Ljava/lang/String;
    if-nez v6, :cond_4

    sget-object v6, Landroid/net/hotspot/HotspotManager;->HOTSPOT_DEFAULT_DHCP_STARTING_IP:Ljava/lang/String;

    :cond_4
    const-string v7, "WifiStateMachine"

    const-string v8, "assignDongleIP, WiFi is disconnected, use original DHCP range for dongle..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "\\."

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .restart local v1       #IPStart:[Ljava/lang/String;
    const/4 v7, 0x3

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x3

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    rsub-int v8, v8, 0xfe

    rem-int v8, v5, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int v5, v7, v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto/16 :goto_0

    .end local v1           #IPStart:[Ljava/lang/String;
    .end local v6           #startingIP:Ljava/lang/String;
    :catch_0
    move-exception v4

    .local v4, e:Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error assign dongleIP: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    move-object v3, v2

    .end local v2           #dongleIP:Ljava/lang/String;
    .restart local v3       #dongleIP:Ljava/lang/String;
    goto/16 :goto_1
.end method

.method public byteArrayToHexString([B)Ljava/lang/String;
    .locals 8
    .parameter "raw"

    .prologue
    if-nez p1, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v5, p1

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v2, hex:Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, arr$:[B
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-byte v1, v0, v3

    .local v1, b:B
    const-string v5, "0123456789ABCDEF"

    and-int/lit16 v6, v1, 0xf0

    shr-int/lit8 v6, v6, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "0123456789ABCDEF"

    and-int/lit8 v7, v1, 0xf

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v1           #b:B
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public cWsetDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .parameter "state"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.CW_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[C+W][cW-fake wifi]Before WifiStateMachine send networkInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    const-string v1, "networkInfo"

    new-instance v2, Landroid/net/NetworkInfo;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v2, v3}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "linkProperties"

    new-instance v2, Landroid/net/LinkProperties;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_0

    const-string v1, "wifiInfo"

    new-instance v2, Landroid/net/wifi/WifiInfo;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {v2, v3}, Landroid/net/wifi/WifiInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[C+W][cW-fake wifi]after WifiStateMachine send intent action  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public checkWifiApPassword()V
    .locals 4

    .prologue
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCustomizedPassword()Ljava/lang/String;

    move-result-object v0

    .local v0, key:Ljava/lang/String;
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_password"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .end local v0           #key:Ljava/lang/String;
    :cond_0
    return-void

    .restart local v0       #key:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    const-string v2, "1234567890"

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    goto :goto_0
.end method

.method public checkWifiApSsid()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    if-nez v1, :cond_1

    iput-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->mFirstCustomizeSSID_IMEI:Z

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCustomizedSsid()Ljava/lang/String;

    move-result-object v0

    .local v0, ssidimei:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_ssid"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .end local v0           #ssidimei:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mFirstCustomizeSSID_NAME:Z

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mFirstCustomizeSSID_NAME:Z

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCustomizedSsid()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #ssidimei:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_ssid"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public clearBlacklist()V
    .locals 1

    .prologue
    const v0, 0x20039

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method clearWepErrorNotification()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mIndicateWepError:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiStateMachine;->setWepErrorNotificationVisible(Z)V

    iput-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->mIndicateWepError:Z

    const-string v0, "clear WEP_ERROR icon"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized ctrlMsg(Ljava/lang/String;)Z
    .locals 2
    .parameter "MsgDetail"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNative;->ctrlMsg(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cwhtcStateUpdate(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)Landroid/net/NetworkInfo;
    .locals 3
    .parameter "detailedState"
    .parameter "reason"
    .parameter "extraInfo"

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/net/NetworkInfo;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .local v0, netInfo:Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    const-string v1, "WifiStateMachine"

    const-string v2, "[C+W] can not get networkInfo*********,the networkIfo is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    monitor-exit p0

    .end local v0           #netInfo:Landroid/net/NetworkInfo;
    :goto_0
    return-object v0

    .restart local v0       #netInfo:Landroid/net/NetworkInfo;
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    goto :goto_0

    .end local v0           #netInfo:Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disableRoamingCommand(I)V
    .locals 2
    .parameter "roaming_disabled"

    .prologue
    const v0, 0x20094

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public disconnectCommand()V
    .locals 1

    .prologue
    const v0, 0x2004a

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    return-void
.end method

.method public enableAllNetworks()V
    .locals 1

    .prologue
    const v0, 0x20037

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    return-void
.end method

.method public enableBackgroundScanCommand(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    const v2, 0x2005b

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public enableFakeScanResult(Z)Z
    .locals 1
    .parameter "enableFake"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mEnableFakeScanresult:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mFakeScanCount:I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public enableRssiPolling(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    const v2, 0x20052

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public forceUpdateRSSI()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->fetchRssiAndLinkSpeedNative()V

    return-void
.end method

.method public getAssocListStr()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->getAssocList()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, assoclist:Ljava/lang/String;
    goto :goto_0

    .end local v0           #assoclist:Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to getAssocListStr(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getClientInfo()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->getLeasesList()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, clientinfo:Ljava/lang/String;
    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clientInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #clientinfo:Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to getClientInfo() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfigStore;->getConfigFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomizedPassword()Ljava/lang/String;
    .locals 6

    .prologue
    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mEnableMdnPassword:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .local v1, mTelephonyManager:Landroid/telephony/TelephonyManager;
    const/4 v2, 0x0

    .local v2, mdn:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCustomizedPassword mdn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #mTelephonyManager:Landroid/telephony/TelephonyManager;
    .end local v2           #mdn:Ljava/lang/String;
    :goto_0
    return-object v2

    .restart local v1       #mTelephonyManager:Landroid/telephony/TelephonyManager;
    .restart local v2       #mdn:Ljava/lang/String;
    :cond_1
    if-nez v2, :cond_3

    const-string v3, "WifiStateMachine"

    const-string v4, "getCustomizedPassword mdn is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #mTelephonyManager:Landroid/telephony/TelephonyManager;
    .end local v2           #mdn:Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .restart local v1       #mTelephonyManager:Landroid/telephony/TelephonyManager;
    .restart local v2       #mdn:Ljava/lang/String;
    :cond_3
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCustomizedPassword mdn length is not 10: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1           #mTelephonyManager:Landroid/telephony/TelephonyManager;
    .end local v2           #mdn:Ljava/lang/String;
    :cond_4
    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mEnableImeiPassword:Z

    if-eqz v3, :cond_2

    const-string v3, "ro.gsm.imei"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, imei:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_2

    move-object v2, v0

    goto :goto_0
.end method

.method public getCustomizedSsid()Ljava/lang/String;
    .locals 6

    .prologue
    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mEnableImeiSsid:Z

    if-eqz v3, :cond_1

    const-string v3, "ro.gsm.imei"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, imei:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_1

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x9b

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .local v1, imei2:Ljava/lang/String;
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCustomizedSsid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #imei:Ljava/lang/String;
    .end local v1           #imei2:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #imei:Ljava/lang/String;
    :cond_0
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x40

    if-ne v3, v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .local v2, imei4:Ljava/lang/String;
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCustomizedSsid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    goto :goto_0

    .end local v0           #imei:Ljava/lang/String;
    .end local v2           #imei4:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCwRegisterCapability()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mCwRegisterCapability:Z

    return v0
.end method

.method public getCwRegisterState()Z
    .locals 1

    .prologue
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->mCwRegistered:Z

    return v0
.end method

.method public getDongleScanList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDongleScanList:Ljava/util/List;

    return-object v0
.end method

.method public getFrequencyBand()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getMacAddress()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v9, 0x0

    monitor-enter p0

    const/4 v1, 0x0

    .local v1, bufferReader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    const-string v11, "/proc/calibration"

    invoke-direct {v10, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .local v2, bufferReader:Ljava/io/BufferedReader;
    if-nez v2, :cond_1

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .end local v2           #bufferReader:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .restart local v1       #bufferReader:Ljava/io/BufferedReader;
    monitor-exit p0

    return-object v9

    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .restart local v2       #bufferReader:Ljava/io/BufferedReader;
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, line:Ljava/lang/String;
    :goto_1
    if-eqz v8, :cond_2

    const-string v10, "macaddr"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_2
    if-eqz v8, :cond_4

    const-string v10, "macaddr"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "="

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    move-result v6

    .local v6, index:I
    if-gez v6, :cond_3

    const/4 v9, 0x0

    .end local v6           #index:I
    .local v9, tmpMac:Ljava/lang/String;
    :goto_2
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v10

    goto :goto_0

    .end local v9           #tmpMac:Ljava/lang/String;
    .restart local v6       #index:I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    :try_start_4
    invoke-virtual {v8, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9       #tmpMac:Ljava/lang/String;
    goto :goto_2

    .end local v6           #index:I
    .end local v9           #tmpMac:Ljava/lang/String;
    :cond_4
    const/16 v10, 0x20

    new-array v0, v10, [B

    .local v0, buffer:[B
    new-instance v4, Ljava/io/File;

    const-string v10, "/proc/calibration"

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v4, file:Ljava/io/File;
    const/4 v5, 0x0

    .local v5, in:Ljava/io/FileInputStream;
    if-nez v4, :cond_5

    const-string v10, "WifiStateMachine"

    const-string v11, "TI Open /proc/calibration fail, return MAC = NULL"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    if-eqz v2, :cond_0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v10

    goto :goto_0

    :cond_5
    :try_start_6
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #in:Ljava/io/FileInputStream;
    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v5       #in:Ljava/io/FileInputStream;
    if-nez v5, :cond_6

    const-string v10, "WifiStateMachine"

    const-string v11, "TI new FileInputStream fail, return MAC = NULL"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    if-eqz v2, :cond_0

    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    :catch_2
    move-exception v10

    goto :goto_0

    :cond_6
    const/4 v10, 0x0

    const/16 v11, 0xf

    :try_start_8
    invoke-virtual {v5, v0, v10, v11}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7

    .local v7, length:I
    const/4 v10, -0x1

    if-ne v7, v10, :cond_7

    const-string v10, "WifiStateMachine"

    const-string v11, "TI read file fail, return MAC = NULL"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    if-eqz v2, :cond_0

    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v10

    goto/16 :goto_0

    :cond_7
    :try_start_a
    const-string v10, "%02X:%02X:%02X:%02X:%02X:%02X"

    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/16 v13, 0xb

    aget-byte v13, v0, v13

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/16 v13, 0xa

    aget-byte v13, v0, v13

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const/4 v13, 0x6

    aget-byte v13, v0, v13

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const/4 v13, 0x5

    aget-byte v13, v0, v13

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    const/4 v13, 0x4

    aget-byte v13, v0, v13

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x5

    const/4 v13, 0x3

    aget-byte v13, v0, v13

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    move-result-object v9

    .restart local v9       #tmpMac:Ljava/lang/String;
    goto/16 :goto_2

    .end local v0           #buffer:[B
    .end local v2           #bufferReader:Ljava/io/BufferedReader;
    .end local v4           #file:Ljava/io/File;
    .end local v5           #in:Ljava/io/FileInputStream;
    .end local v7           #length:I
    .end local v8           #line:Ljava/lang/String;
    .end local v9           #tmpMac:Ljava/lang/String;
    .restart local v1       #bufferReader:Ljava/io/BufferedReader;
    :catch_4
    move-exception v3

    .local v3, e:Ljava/io/IOException;
    :goto_3
    const/4 v9, 0x0

    .restart local v9       #tmpMac:Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v10

    goto/16 :goto_0

    .end local v3           #e:Ljava/io/IOException;
    .end local v9           #tmpMac:Ljava/lang/String;
    :catchall_0
    move-exception v10

    :goto_4
    if-eqz v1, :cond_8

    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    :cond_8
    :goto_5
    const/4 v1, 0x0

    :try_start_d
    throw v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :catchall_1
    move-exception v10

    :goto_6
    monitor-exit p0

    throw v10

    :catch_6
    move-exception v11

    goto :goto_5

    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .restart local v2       #bufferReader:Ljava/io/BufferedReader;
    :catch_7
    move-exception v10

    goto/16 :goto_0

    :catchall_2
    move-exception v10

    move-object v1, v2

    .end local v2           #bufferReader:Ljava/io/BufferedReader;
    .restart local v1       #bufferReader:Ljava/io/BufferedReader;
    goto :goto_4

    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .restart local v2       #bufferReader:Ljava/io/BufferedReader;
    :catch_8
    move-exception v3

    move-object v1, v2

    .end local v2           #bufferReader:Ljava/io/BufferedReader;
    .restart local v1       #bufferReader:Ljava/io/BufferedReader;
    goto :goto_3

    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .restart local v2       #bufferReader:Ljava/io/BufferedReader;
    :catchall_3
    move-exception v10

    move-object v1, v2

    .end local v2           #bufferReader:Ljava/io/BufferedReader;
    .restart local v1       #bufferReader:Ljava/io/BufferedReader;
    goto :goto_6
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    new-instance v0, Landroid/os/Messenger;

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getMobileDataSettingEnabled()Z
    .locals 2

    .prologue
    :try_start_0
    const-string v1, "connectivity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getMobileDataEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMostPreferredNetwork()I
    .locals 10

    .prologue
    const/4 v5, -0x1

    const/4 v9, 0x0

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .local v4, wifiConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const-string v6, "persist.sys.cw.ssid"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, mostPreferredSsid:Ljava/lang/String;
    const-string v6, "persist.sys.cw.security"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, mostPreferredSsidSecurity:Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "WifiStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mostPreferredSsid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " security = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_7

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .local v3, tmpWifiConfig:Landroid/net/wifi/WifiConfiguration;
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "WifiStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mostPreferredSsid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " security = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "open"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v6, v6, v9

    if-nez v6, :cond_6

    const-string v5, "WifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[open] mostPreferredNetworkID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #i:I
    .end local v3           #tmpWifiConfig:Landroid/net/wifi/WifiConfiguration;
    :goto_1
    return v0

    :cond_0
    move v0, v5

    goto :goto_1

    .restart local v0       #i:I
    .restart local v3       #tmpWifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    const-string v6, "wep"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v6, v6, v9

    if-eqz v6, :cond_6

    const-string v5, "WifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[wep] mostPreferredNetworkID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v6, "wpapsk"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v5, "WifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[wpapsk] mostPreferredNetworkID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v6, "eap"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_4
    const-string v5, "WifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[[eap] mostPreferredNetworkID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5
    const-string v6, "WifiStateMachine"

    const-string v7, "no matched mostPreferredNetworkSecurity this time"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .end local v3           #tmpWifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_7
    const-string v6, "WifiStateMachine"

    const-string v7, "no matched mostPreferredNetworkSsid"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    goto/16 :goto_1
.end method

.method public getPendingRequestedList()Ljava/lang/String;
    .locals 13

    .prologue
    const/16 v12, 0x10

    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, ""

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .local v8, requestedlist:Ljava/lang/StringBuffer;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .local v6, recentTime:J
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    if-nez v9, :cond_0

    const-string v9, "WifiStateMachine"

    const-string v10, "getPendingRequestedList null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    :goto_0
    return-object v9

    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_1

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;

    invoke-virtual {v9}, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;->getMac()Ljava/lang/String;

    move-result-object v4

    .local v4, mac:Ljava/lang/String;
    if-nez v4, :cond_2

    const-string v9, "WifiStateMachine"

    const-string v10, "getPendingRequestedList should not go here"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4           #mac:Ljava/lang/String;
    :cond_1
    const-string v9, "WifiStateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getPendingRequestedList return: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .restart local v4       #mac:Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .local v5, pendingRequest:Z
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;

    invoke-virtual {v9}, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;->getTime()J

    move-result-wide v9

    sub-long v0, v6, v9

    .local v0, diffTime:J
    const-string v9, "WifiStateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getPendingRequestedList mac: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " diffTime: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v9, 0x1d4c0

    cmp-long v9, v0, v9

    if-lez v9, :cond_3

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    const/4 v5, 0x0

    :cond_3
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    if-ge v3, v12, :cond_5

    if-eqz v5, :cond_5

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v9

    iget-object v9, v9, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    aget-object v9, v9, v3

    if-eqz v9, :cond_4

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v9

    iget-object v9, v9, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v5, 0x0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v12, :cond_7

    if-eqz v5, :cond_7

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v9

    iget-object v9, v9, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    aget-object v9, v9, v3

    if-eqz v9, :cond_6

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v9

    iget-object v9, v9, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v5, 0x0

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    if-eqz v5, :cond_8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method public getRequestedList()Ljava/lang/String;
    .locals 10

    .prologue
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .local v6, requestedlist:Ljava/lang/StringBuffer;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .local v4, recentTime:J
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    if-nez v7, :cond_0

    const-string v7, "WifiStateMachine"

    const-string v8, "getRequestedList null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    :goto_0
    return-object v7

    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;

    invoke-virtual {v7}, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;->getMac()Ljava/lang/String;

    move-result-object v3

    .local v3, mac:Ljava/lang/String;
    if-eqz v3, :cond_2

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;

    invoke-virtual {v7}, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;->getTime()J

    move-result-wide v7

    sub-long v0, v4, v7

    .local v0, diffTime:J
    const-string v7, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRequestedList mac: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " diffTime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v7, 0x1d4c0

    cmp-long v7, v0, v7

    if-lez v7, :cond_1

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #diffTime:J
    :cond_2
    const-string v7, "WifiStateMachine"

    const-string v8, "getRequestedList should not go here"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3           #mac:Ljava/lang/String;
    :cond_3
    const-string v7, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRequestedList return: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0
.end method

.method public getSupplicantState()Landroid/net/wifi/SupplicantState;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    return-object v0
.end method

.method public getTetheringDhcpRange()[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v3, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    .local v3, startingIP:Ljava/lang/String;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v1, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    .local v1, dhcpSubnetMask:Ljava/lang/String;
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    const/4 v4, 0x2

    :try_start_0
    new-array v0, v4, [Ljava/lang/String;

    .local v0, dhcpRange:[Ljava/lang/String;
    const/4 v4, 0x0

    aput-object v3, v0, v4

    const/4 v4, 0x1

    invoke-static {v3, v1}, Landroid/net/wifi/WifiStateMachine;->findEndIP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTetheringDhcpRange dhcpRange[0]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "dhcpRange[1]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #dhcpRange:[Ljava/lang/String;
    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    new-array v0, v7, [Ljava/lang/String;

    goto :goto_0

    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    new-array v0, v7, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTopScoreApNetId(Ljava/util/List;Ljava/lang/String;)I
    .locals 10
    .parameter
    .parameter "ignore_SSID"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v7, -0x1

    const-string v6, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[ScoreAP] + getTopScoreApNetId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v6, "WifiStateMachine"

    const-string v8, "[ScoreAP] + list is null"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    :goto_0
    return v3

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "WifiStateMachine"

    const-string v8, "[ScoreAP] + list size is 0"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    goto :goto_0

    :cond_1
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .local v4, wifiConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v3, -0x1

    .local v3, topScoreApNetId:I
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v5

    .local v5, wifiState:I
    const-string v6, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[ScoreAP] + wifi state: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    const-string v6, "WifiStateMachine"

    const-string v8, "[ScoreAP] + wifi state is not enabled"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    goto :goto_0

    :cond_2
    const-string v6, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[ScoreAP] + wifiConfigs: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    if-le v3, v7, :cond_4

    :cond_3
    const-string v6, "WifiStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ScoreAP] + getTopScoreApNetId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, i:I
    :goto_2
    if-ltz v0, :cond_8

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .local v2, tmpWifiConfig:Landroid/net/wifi/WifiConfiguration;
    const-string v8, "WifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[ScoreAP] + tmpWifiConfig: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v6, :cond_6

    const-string v6, "WifiStateMachine"

    const-string v8, "[ScoreAP] + Got null wifi configuration"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_6
    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v8, "\""

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "WifiStateMachine"

    const-string v8, "[ScoreAP] + Same SSID. Skipping"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v8, "\""

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget-object v6, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget v3, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v6, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[ScoreAP] + tmpWifiConfig.networkId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2           #tmpWifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method

.method public getWifiApClients()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mUser:I

    return v0
.end method

.method public declared-synchronized getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "WifiStateMachine"

    const-string v1, "getWifiApConfiguration enter"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    const-string v1, "HTC Portable Hotspot"

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->CustomizeSSIDbyCode()V

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hotspot_ssid"

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    const-string v0, "wifi hotspot"

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiStateMachine;->printProfile(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWifiDisplayApConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "wifiDisplay hotspot"

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiDisplayConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiStateMachine;->printProfile(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiDisplayConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWifidisplayApEnabled()Z
    .locals 3

    .prologue
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WiFiDisplay: getWifidisplayApEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApEnable:Z

    return v0
.end method

.method public declared-synchronized getWirelessDisplayCommonApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "WifiStateMachine"

    const-string v1, "getWirelessDisplayApConfiguration enter"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfigNoWps:Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfigNoWps:Landroid/net/wifi/WifiConfiguration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getpersistWifiOffloadEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v3, "wifi_offload_enabled"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "wifi_offload_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v3, "WifiStateMachine"

    const-string v4, "WifiOffload: init WIFI_OFFLOAD_ENABLED to 1 in getpersistWifiOffloadEnabled"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method handlePostDhcpSetup()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock_DHCP:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiStateMachine"

    const-string v1, "handlePostDhcpSetup release wake lock during DHCP"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock_DHCP:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mPowerSaveEnabled:Z

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mPowerSaveEnabled:Z

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->setPowerSave(Z)V

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceMode(I)Z

    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mIsScreenOn:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->stopPacketFiltering_dhcpoffer()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method handlePreDhcpSetup()V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock_DHCP:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WifiStateMachine"

    const-string v1, "handlePreDhcpSetup Held wake lock during DHCP"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock_DHCP:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceMode(I)Z

    :cond_1
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mPowerSaveEnabled:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mPowerSaveEnabled:Z

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mPowerSaveEnabled:Z

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->setPowerSave(Z)V

    :cond_2
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mIsScreenOn:I

    if-nez v0, :cond_3

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->isMulticastEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_dhcpoffer()V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasIpAddress()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mHaveIpAddress:Z

    return v0
.end method

.method public htcSetDetailedState(Landroid/net/NetworkInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "info"
    .parameter "reason"
    .parameter "extraInfo"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .local v1, state:Landroid/net/NetworkInfo$DetailedState;
    sget-boolean v4, Landroid/net/wifi/WifiStateMachine;->DBG_DETAIL:Z

    if-eqz v4, :cond_0

    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDetailed state, old ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and new state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    if-ne v1, v4, :cond_1

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v4

    if-eq p2, v4, :cond_4

    :cond_1
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_2

    move v2, v3

    .local v2, wasConnecting:Z
    :cond_2
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v0

    .local v0, lastReason:Ljava/lang/String;
    if-eqz v2, :cond_3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v4, :cond_3

    if-nez p2, :cond_3

    if-eqz v0, :cond_3

    move-object p2, v0

    :cond_3
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4, v1, p2, p3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .end local v0           #lastReason:Ljava/lang/String;
    .end local v2           #wasConnecting:Z
    :cond_4
    return v2
.end method

.method public increseCwRetryCounter()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mCwRetryCounter:I

    .local v0, currentValue:I
    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mCwRetryCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mCwRetryCounter:I

    return v0
.end method

.method public isConnectionCompleted()Z
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSsdpFilterRuleEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mIsSsdpFilterRuleEnabled:Z

    return v0
.end method

.method public notifyAssocListChange()V
    .locals 1

    .prologue
    const v0, 0x2008e

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    return-void
.end method

.method public notifyConnectionRequest(Ljava/lang/String;)V
    .locals 1
    .parameter "mac"

    .prologue
    const v0, 0x2008d

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public notifyEapNotification(Ljava/lang/String;)V
    .locals 1
    .parameter "MsgDetail"

    .prologue
    const v0, 0x20021

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public notifyGetAirPlaneMode()V
    .locals 1

    .prologue
    const v0, 0x20020

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    return-void
.end method

.method public notifyL2peFail()V
    .locals 1

    .prologue
    const v0, 0x20067

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    return-void
.end method

.method public notifyL2peSuccessful()V
    .locals 1

    .prologue
    const v0, 0x20066

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    return-void
.end method

.method public declared-synchronized notifyPhoneCallStatus(I)Z
    .locals 3
    .parameter "phoneStatus"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyPhoneCallStatus: wifistate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNative;->notifyPhoneCallStatus(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notifyWpsRegistrarFail()V
    .locals 1

    .prologue
    const v0, 0x20065

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    return-void
.end method

.method public notifyWpsRegistrarStart()V
    .locals 1

    .prologue
    const v0, 0x20063

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    return-void
.end method

.method public notifyWpsRegistrarSuccessful()V
    .locals 1

    .prologue
    const v0, 0x20064

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    return-void
.end method

.method public printProfile(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .parameter "tag"
    .parameter "profile"

    .prologue
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "hiddenSSID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-boolean v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", secureType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enableMacFilter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxConns="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", channel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dhcpEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxDhcpClients="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxDhcpClients:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ipAddress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dhcpSubnetMask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", startingIP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dhsIPAddr1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dnsIPAddr2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sleepPolicy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reassociateCommand()V
    .locals 1

    .prologue
    const v0, 0x2004c

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    return-void
.end method

.method public reconnectCommand()V
    .locals 1

    .prologue
    const v0, 0x2004b

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    return-void
.end method

.method protected recordProcessedMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    if-ne v1, v2, :cond_1

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_1

    const/4 v0, 0x1

    :sswitch_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x20001 -> :sswitch_0
        0x2000b -> :sswitch_0
        0x2000d -> :sswitch_0
        0x20037 -> :sswitch_0
        0x20048 -> :sswitch_0
        0x2004d -> :sswitch_0
        0x20056 -> :sswitch_0
        0x20057 -> :sswitch_0
        0x2005b -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x20012 -> :sswitch_0
        0x20047 -> :sswitch_0
        0x20052 -> :sswitch_0
        0x20053 -> :sswitch_0
        0x21017 -> :sswitch_0
        0x24005 -> :sswitch_0
    .end sparse-switch
.end method

.method public resetCwRetryCounter()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mCwRetryCounter:I

    return-void
.end method

.method public resetDhcpConfig()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    iput v2, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hotspot_dhcp_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    sget-object v1, Landroid/net/hotspot/HotspotManager;->HOTSPOT_DEFAULT_DHCP_STARTING_IP:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hotspot_dhcp_start_ip"

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    const-string v1, "192.168.1.1"

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hotspot_id_address"

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    const-string v1, "255.255.255.0"

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hotspot_subnet_mask"

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public resetWifiDisplayDhcpConfig()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetWifiDisplayDhcpConfig, STA IP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    iget-object v2, v2, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "WIFIDISPLAY_IP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "192.168.6.10"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    iget-object v0, v0, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    iget-object v0, v0, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "192.168.6.10"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiStateMachine"

    const-string v1, "WiFi STA IP equals with WIFIDISPLAY_HOTSPOT_DEFAULT_DHCP_STARTING_IP, use original DHCP for hotspot!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "WifiStateMachine"

    const-string v1, "Use WIFIDISPLAY_HOTSPOT_DEFAULT_DHCP_STARTING_IP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    const-string v1, "192.168.6.10"

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    const-string v1, "192.168.6.1"

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    const-string v1, "255.255.255.0"

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    goto :goto_0
.end method

.method public roamToTopScoreAP(Z)V
    .locals 11
    .parameter "reconnect"

    .prologue
    const/4 v10, 0x0

    const-string v6, "WifiStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ScoreAP] + roamToTopScoreAP: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/net/wifi/WifiStateMachine;->roamToTopScoreAP_Time:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1770

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    const-string v6, "WifiStateMachine"

    const-string v7, "[ScoreAP] + Roaming too often. Comeback later..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->db:Landroid/net/wifi/WifiApDatabaseHandler;

    invoke-virtual {v6}, Landroid/net/wifi/WifiApDatabaseHandler;->getAllConnectedAP()Ljava/util/List;

    move-result-object v0

    .local v0, apRecords:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/APRecords;>;"
    new-instance v5, Landroid/net/wifi/ScoreHelper;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    invoke-direct {v5, v6, v0}, Landroid/net/wifi/ScoreHelper;-><init>(Ljava/util/List;Ljava/util/List;)V

    .local v5, score:Landroid/net/wifi/ScoreHelper;
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/ScoreHelper;->setWifiConfigurationList(Ljava/util/List;)V

    invoke-virtual {v5}, Landroid/net/wifi/ScoreHelper;->computeScore()Ljava/util/List;

    move-result-object v3

    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v3, :cond_0

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/ScoreHelper;->computeScore(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v6, "WifiStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ScoreAP] + No AP with SSID named "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is found."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz p1, :cond_0

    const-string v6, "WifiStateMachine"

    const-string v7, "[ScoreAP] + Force connect to top scored AP regardless SSID. Current AP sucks!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v5, Landroid/net/wifi/ScoreHelper;->m_ScoreResult:Ljava/util/List;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Landroid/net/wifi/WifiStateMachine;->getTopScoreApNetId(Ljava/util/List;Ljava/lang/String;)I

    move-result v4

    .local v4, netId:I
    const/4 v6, -0x1

    if-le v4, v6, :cond_9

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v6}, Landroid/net/wifi/WifiNative;->disconnect()Z

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v6, v4}, Landroid/net/wifi/WifiConfigStore;->selectNetwork(I)Z

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v6}, Landroid/net/wifi/WifiNative;->reconnect()Z

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .end local v4           #netId:I
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_4

    const-string v6, "WifiStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ScoreAP] + No alternative AP to roam except current AP ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget-object v6, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "WifiStateMachine"

    const-string v7, "[ScoreAP] + Current AP is not top scored. Checking the scores of top 2 AP."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v5, Landroid/net/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScoreChart;

    .local v1, chartCurrent:Landroid/net/wifi/ScoreChart;
    iget-object v7, v5, Landroid/net/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget-object v6, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget-object v6, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScoreChart;

    .local v2, chartTop:Landroid/net/wifi/ScoreChart;
    if-nez v1, :cond_5

    if-eqz v2, :cond_5

    const-string v7, "WifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ScoreAP] + Current AP is gone. Roaming to top scored AP: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget-object v6, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget-object v6, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v7, v6}, Landroid/net/wifi/WifiNative;->selectBSSIDCommand(Ljava/lang/String;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/net/wifi/WifiStateMachine;->roamToTopScoreAP_Time:J

    goto/16 :goto_0

    :cond_5
    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/net/wifi/ScoreChart;->Score()I

    move-result v6

    invoke-virtual {v1}, Landroid/net/wifi/ScoreChart;->Score()I

    move-result v7

    sub-int/2addr v6, v7

    const/4 v7, 0x6

    if-gt v6, v7, :cond_6

    const-string v6, "WifiStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ScoreAP] + Top 2 AP\'s scores are too close ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/net/wifi/ScoreChart;->Score()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " vs "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/net/wifi/ScoreChart;->Score()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "). Not going to roam."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    const-string v7, "WifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ScoreAP] + Roaming to top scored AP: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget-object v6, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget-object v6, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v7, v6}, Landroid/net/wifi/WifiNative;->selectBSSIDCommand(Ljava/lang/String;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/net/wifi/WifiStateMachine;->roamToTopScoreAP_Time:J

    goto/16 :goto_0

    :cond_7
    const-string v7, "WifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ScoreAP] + No score available to "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "] or "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget-object v6, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget-object v6, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v1           #chartCurrent:Landroid/net/wifi/ScoreChart;
    .end local v2           #chartTop:Landroid/net/wifi/ScoreChart;
    :cond_8
    const-string v6, "WifiStateMachine"

    const-string v7, "[ScoreAP] + No need to roam. Current AP is good."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .restart local v4       #netId:I
    :cond_9
    const-string v6, "WifiStateMachine"

    const-string v7, "[ScoreAP] + Cannot reconnect to any AP. Nothing match or nothing in configured AP List"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public sendBluetoothAdapterStateChange(I)V
    .locals 2
    .parameter "state"

    .prologue
    const v0, 0x2001f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public declared-synchronized setAssociationManual(Z)Z
    .locals 1
    .parameter "isManual"

    .prologue
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mAssociateManual:Z

    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mAssociateManual:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setConnectionReqNotificationVisible(Z)V
    .locals 7
    .parameter "visible"

    .prologue
    const/4 v6, 0x0

    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setConnectionReqNotificationVisible visible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApNotificationShown:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .local v1, notificationManager:Landroid/app/NotificationManager;
    if-eqz p1, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApNotification:Landroid/app/Notification;

    if-nez v2, :cond_1

    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x402007e

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.htc.hotspot.WIFI_CLIENT_MANAGEMENT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v6, v4, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApNotification:Landroid/app/Notification;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApNotification:Landroid/app/Notification;

    const/16 v3, 0x10

    iput v3, v2, Landroid/app/Notification;->flags:I

    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20401bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, details:Ljava/lang/CharSequence;
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApNotification:Landroid/app/Notification;

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApNotification:Landroid/app/Notification;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApNotification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v0, v0, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApNotification:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->icon:I

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApNotification:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .end local v0           #details:Ljava/lang/CharSequence;
    :goto_1
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApNotificationShown:Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApNotification:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->icon:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .locals 2
    .parameter "countryCode"
    .parameter "persist"

    .prologue
    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_country_code"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    const v0, 0x20050

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setCwRegisterCapability(Z)V
    .locals 0
    .parameter "capability"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mCwRegisterCapability:Z

    return-void
.end method

.method public setCwRegisterState(Z)V
    .locals 0
    .parameter "state"

    .prologue
    sput-boolean p1, Landroid/net/wifi/WifiStateMachine;->mCwRegistered:Z

    return-void
.end method

.method public setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd8

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->isCT_CDMA_WIFI_SSID()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/wifi/WifiStateMachine;->cwhtcStateUpdate(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCtNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0, p1, v2, v2}, Landroid/net/wifi/WifiStateMachine;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[C+W] DetailedState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ExtranIffo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mCtNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0, p1, v2, v2}, Landroid/net/wifi/WifiStateMachine;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v2, v2}, Landroid/net/wifi/WifiStateMachine;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "state"
    .parameter "reason"
    .parameter "extraInfo"

    .prologue
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/wifi/WifiStateMachine;->cwhtcStateUpdate(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)Landroid/net/NetworkInfo;

    move-result-object v0

    .local v0, mUpdatedNetworkInfo:Landroid/net/NetworkInfo;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-static {v1}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Landroid/net/wifi/WifiStateMachine;->DBG_DETAIL:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDetailed state, old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and new="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " extraInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v1, 0x131

    invoke-virtual {p0, v1, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    const-string v1, "WifiStateMachine"

    const-string v2, "[C+W] for message error>>>>>>>>>>>>"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, v0, p2, p3}, Landroid/net/wifi/WifiStateMachine;->htcSetDetailedState(Landroid/net/NetworkInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setDriverStart(ZZ)V
    .locals 3
    .parameter "enable"
    .parameter "ecm"

    .prologue
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const v0, 0x2000d

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    :goto_0
    return-void

    :cond_0
    const v2, 0x2000e

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public setFakeScanResult(Landroid/net/wifi/ScanResult;)Z
    .locals 2
    .parameter "fackScanResult"

    .prologue
    const-string v0, "WifiStateMachine"

    const-string v1, "setFakeScanResult"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mfakeresult:Landroid/net/wifi/ScanResult;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mfakeresult:Landroid/net/wifi/ScanResult;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mfakeresult:Landroid/net/wifi/ScanResult;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mfakeresult:Landroid/net/wifi/ScanResult;

    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v1, v0, Landroid/net/wifi/ScanResult;->level:I

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mfakeresult:Landroid/net/wifi/ScanResult;

    iget v1, p1, Landroid/net/wifi/ScanResult;->frequency:I

    iput v1, v0, Landroid/net/wifi/ScanResult;->frequency:I

    const/4 v0, 0x1

    return v0
.end method

.method public setFrequencyBand(IZ)V
    .locals 2
    .parameter "band"
    .parameter "persist"

    .prologue
    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_frequency_band"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    const v0, 0x2005a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setHighPerfModeEnabled(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v1, 0x0

    const v2, 0x2004d

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public declared-synchronized setHotspotAutoChannel(I)V
    .locals 2
    .parameter "autoChannel"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    iput p1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, "WifiStateMachine"

    const-string v1, "enable hotspot again for autoChannel"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/wifi/WifiStateMachine;->mSetAutoChannel:Z

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiStateMachine;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setInitialVzwStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatusFeature:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I

    if-nez v0, :cond_0

    const-string v0, "WifiStateMachine"

    const-string v1, "VzwStatus[Initial Wifi_off]"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I

    iput-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConnected:Z

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiStateMachine;->sendVzwStatusNotification(I)I

    :cond_0
    return-void
.end method

.method public declared-synchronized setMobileNetworkType(Ljava/lang/String;)Z
    .locals 2
    .parameter "mobileNetworkType"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNative;->setMobileNetworkType(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMostPreferredNetwork(I)Z
    .locals 7
    .parameter "networkId"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .local v1, wifiConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lt p1, v4, :cond_0

    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "networkId out of range, networkId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    if-gez p1, :cond_1

    const-string v2, "WifiStateMachine"

    const-string v4, "clear most preferred network"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "persist.sys.cw.ssid"

    const-string v4, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "persist.sys.cw.security"

    const-string v4, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->setPreConfigAPHigherPriority()V

    move v2, v3

    goto :goto_0

    :cond_1
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[C+W] networkId is :>>>>>>>>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .local v0, updatedwifiConfig:Landroid/net/wifi/WifiConfiguration;
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[C+W] setMostPreferredNetwork networkId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ssid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "persist.sys.cw.ssid"

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[C+W] persist.sys.cw.ssid is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "persist.sys.cw.ssid"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v4, v2

    if-nez v2, :cond_2

    const-string v2, "persist.sys.cw.security"

    const-string v4, "open"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->setPreConfigAPHigherPriority()V

    move v2, v3

    goto/16 :goto_0

    :cond_2
    const-string v2, "persist.sys.cw.security"

    const-string v4, "wep"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v2, "persist.sys.cw.security"

    const-string v4, "wpapsk"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    const-string v2, "persist.sys.cw.security"

    const-string v4, "eap"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v3, "WifiStateMachine"

    const-string v4, "no matched security in setMostPreferredNetwork"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "persist.sys.cw.ssid"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setMulticastEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mMulticastEnabled:Z

    return-void
.end method

.method public declared-synchronized setPowerMode(I)Z
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPowerMode: wifistate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    monitor-exit p0

    return v0

    :pswitch_0
    :try_start_1
    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mPowerModeRefCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mPowerModeRefCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    :try_start_2
    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mPowerModeRefCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mPowerModeRefCount:I

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mPowerModeRefCount:I

    if-gtz v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mPowerModeRefCount:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNative;->setPowerModeCommand(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized setRSSItoWifiInfo()Z
    .locals 14

    .prologue
    const/16 v13, -0xc8

    const/4 v10, 0x1

    const/4 v9, 0x0

    monitor-enter p0

    const/4 v6, -0x1

    .local v6, newRssi:I
    const/4 v5, -0x1

    .local v5, newLinkSpeed:I
    :try_start_0
    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_0

    iget-boolean v11, p0, Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z

    if-nez v11, :cond_1

    :cond_0
    const-string v10, "WifiStateMachine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setRSSItoWifiInfo: wifistate="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "mIsRunning="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v9

    :cond_1
    :try_start_1
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v11

    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v11, v12, :cond_2

    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/16 v11, -0xc8

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    const-string v10, "WifiStateMachine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setRSSItoWifiInfo: NetworkDetailedState="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    :cond_2
    :try_start_2
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v9}, Landroid/net/wifi/WifiNative;->signalPoll()Ljava/lang/String;

    move-result-object v8

    .local v8, signalPoll:Ljava/lang/String;
    if-eqz v8, :cond_6

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .local v4, lines:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_6

    aget-object v3, v0, v1

    .local v3, line:Ljava/lang/String;
    const-string v9, "="

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .local v7, prop:[Ljava/lang/String;
    array-length v9, v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v11, 0x2

    if-ge v9, v11, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    :try_start_3
    aget-object v9, v7, v9

    const-string v11, "RSSI"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    aget-object v9, v7, v9

    const-string v11, "LINKSPEED"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v5

    goto :goto_2

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #lines:[Ljava/lang/String;
    .end local v7           #prop:[Ljava/lang/String;
    :cond_6
    const/4 v9, -0x1

    if-eq v6, v9, :cond_8

    if-ge v13, v6, :cond_8

    const/16 v9, 0x100

    if-ge v6, v9, :cond_8

    if-lez v6, :cond_7

    add-int/lit16 v6, v6, -0x100

    :cond_7
    :try_start_4
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v9, v6}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    :goto_3
    move v9, v10

    goto/16 :goto_0

    :cond_8
    const-string v9, "WifiStateMachine"

    const-string v11, "setRSSItoWifiInfo: Don\'t get new RSSI"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #line:Ljava/lang/String;
    .restart local v4       #lines:[Ljava/lang/String;
    .restart local v7       #prop:[Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_2
.end method

.method public setRSSItoWifiInfoMessage()V
    .locals 1

    .prologue
    const v0, 0x20092

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    return-void
.end method

.method public setScanOnlyMode(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const v2, 0x20048

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setScanType(Z)V
    .locals 3
    .parameter "active"

    .prologue
    const v2, 0x20049

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setScreenOn(Z)V
    .locals 3
    .parameter "isScreenOn"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mIsScreenOn:I

    const v0, 0x20090

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public declared-synchronized setSignalStrength(I)Z
    .locals 2
    .parameter "SignalStrength"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNative;->setSignalStrength(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setVHScanCommand(Z)Z
    .locals 2
    .parameter "enabled"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNative;->setVHScanCommand(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setWepErrorNotificationVisible(Z)V
    .locals 8
    .parameter "visible"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWepErrorReqNotificationVisible visible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotificationShown:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .local v1, notificationManager:Landroid/app/NotificationManager;
    if-eqz p1, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotification:Landroid/app/Notification;

    if-nez v2, :cond_1

    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotification:Landroid/app/Notification;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotification:Landroid/app/Notification;

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Landroid/app/Notification;->when:J

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotification:Landroid/app/Notification;

    const v3, 0x402007c

    iput v3, v2, Landroid/app/Notification;->icon:I

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotification:Landroid/app/Notification;

    const/16 v3, 0x10

    iput v3, v2, Landroid/app/Notification;->flags:I

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotification:Landroid/app/Notification;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.WIFI_SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v6, v4, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2040247

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, details:Ljava/lang/String;
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotification:Landroid/app/Notification;

    iput-object v7, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotification:Landroid/app/Notification;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v7, v0, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotification:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->icon:I

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotification:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .end local v0           #details:Ljava/lang/String;
    :goto_1
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotificationShown:Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotification:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->icon:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1
.end method

.method public declared-synchronized setWiFiSIMAuthenticationEnabled(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_EAP_AKA_flag:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    const-string v0, "wlan.sim.enabled"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->disconnectSIMAuthenticationAP()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v0, "wlan.sim.enabled"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setWifiApConfig(Landroid/net/wifi/WifiConfiguration;)I
    .locals 3
    .parameter "config"

    .prologue
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v0, -0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->persistApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    sget-boolean v1, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    if-ne v1, v0, :cond_3

    invoke-virtual {p0, p1, v0}, Landroid/net/wifi/WifiStateMachine;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    :cond_3
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mResetWifiApSleepPolicy:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->checkSleepPolicy()V

    goto :goto_0
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .parameter "config"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x20019

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 3
    .parameter "wifiConfig"
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastApEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    if-eqz p2, :cond_0

    const v0, 0x20001

    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    const v0, 0x20015

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApEnable:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiStateMachine"

    const-string v1, "setWifiApEnabled, WiFiDisplay: reset AP setting to original"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->updateProfile()V

    :cond_1
    const v0, 0x20018

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    const v0, 0x20002

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setWifiApMacList(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .parameter "config"

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    const-string v0, "WifiStateMachine"

    const-string v1, "setWifiApMacList..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x2008f

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWifiDisplayApConfig(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .parameter "config"

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiDisplayConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setWifiDisplayApMacList(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .parameter "config"

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    const-string v0, "WifiStateMachine"

    const-string v1, "setWifiDisplayApMacList..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiDisplayConfig:Landroid/net/wifi/WifiConfiguration;

    const v0, 0x20080

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiDisplayConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWifiDisplayConfigure(ILjava/lang/String;)Z
    .locals 2
    .parameter "channel"
    .parameter "BSSID"

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->setWifiDisplayConfigureGuestKey(ILjava/lang/String;[BI)Z

    move-result v0

    return v0
.end method

.method public setWifiDisplayConfigureGuestKey(ILjava/lang/String;[BI)Z
    .locals 9
    .parameter "channel"
    .parameter "BSSID"
    .parameter "guest_key"
    .parameter "transId"

    .prologue
    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiStateMachine;->assignDongleIP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, dongleIP:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, language:Ljava/lang/String;
    rem-int/lit16 v0, p1, 0x100

    if-nez v0, :cond_0

    const-string v0, "WifiStateMachine"

    const-string v1, "setWifiDisplayConfigure, Auto channel in QCT projects, changed to 2.4GHz channel 6"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p1, p1, 0x6

    :cond_0
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiDisplayConfigure, device AP\'s channel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dongle\'s BSSID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,IP = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", language = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_3

    if-lez p4, :cond_3

    array-length v0, p3

    const/16 v1, 0x14

    if-ne v0, v1, :cond_2

    const-string v7, "0123456789ABCDEF"

    .local v7, hex:Ljava/lang/String;
    const-string v5, ""

    .local v5, str_guestKey:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v0, p3

    if-ge v8, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-byte v1, p3, v8

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-byte v1, p3, v8

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiDisplayConfigure byte string ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    move v1, p1

    move-object v2, p2

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/net/wifi/WifiNative;->setWifiDisplayConfigureGuestKey(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .end local v5           #str_guestKey:Ljava/lang/String;
    .end local v7           #hex:Ljava/lang/String;
    .end local v8           #i:I
    :goto_1
    return v0

    :cond_2
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiDisplayConfigure  guest_key size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0, p1, p2, v3, v4}, Landroid/net/wifi/WifiNative;->setWifiDisplayConfigure(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1
.end method

.method public setWifiDisplayOn(Z)V
    .locals 3
    .parameter "WifiDisplayOn"

    .prologue
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiDisplayOn WifiDisplayOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiDisplayOn:Z

    return-void
.end method

.method public setWifiDisplayUnscan(Z)Z
    .locals 4
    .parameter "disabled"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantReady:Z

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "WifiStateMachine"

    const-string v2, "[WFD] setWifiDisplayUnscan when WiFi is not enabled or supplicant is not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_1
    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWifiDisplayUnscan( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiNative;->setWifiDisplayUnscan(Z)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "WifiStateMachine"

    const-string v2, "Failed to restrict scan for WFD"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiDisplayUnscan:Z

    sput-boolean p1, Landroid/net/wifi/WifiStateMachine;->mStopScheduleScan:Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setWifiEnabled(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    if-eqz p1, :cond_0

    const v0, 0x20001

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    const v0, 0x2000b

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v1, "wireless_display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v0}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "WifiStateMachine"

    const-string v1, "[WFD] Mirror Mode is ON, force to stop Mirror mode when turn off wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v0, v2}, Lcom/htc/service/WirelessDisplayManager;->mirrorModeStartStop(Z)Z

    :cond_2
    const v0, 0x2000c

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    const v0, 0x20002

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public declared-synchronized setWifiOffloadEnabled(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_OFFLOAD_flag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiOffloadEnabled:Z

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNative;->setWifiOffloadEnabledCommand(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setWifidisplayApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 9
    .parameter "wifiConfig"
    .parameter "enable"

    .prologue
    const/16 v8, 0xc

    const v3, 0x20018

    const v7, 0x20015

    const/4 v6, 0x0

    const-wide/16 v4, 0xbb8

    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WiFiDisplay: setWifidisplayApEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastApEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    if-ne v0, v8, :cond_1

    :cond_0
    const-string v0, "WifiStateMachine"

    const-string v1, "WiFiDisplay:hotspot already ON, do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean p2, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApEnable:Z

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->parseWifidisplayNoWpsApConfig(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, v7, p1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, v7, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v5}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    if-nez v0, :cond_4

    const v0, 0x20001

    invoke-virtual {p0, v0, v8, v6}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v5}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    invoke-virtual {p0, v7, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v5}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    :cond_4
    const v0, 0x20001

    invoke-virtual {p0, v0, v8, v6}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    invoke-virtual {p0, v7, p1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfigNoWps:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfigNoWps:Landroid/net/wifi/WifiConfiguration;

    :cond_6
    const-string v0, "WifiStateMachine"

    const-string v1, "WiFiDisplay: reset AP setting to original"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->updateProfile()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v5}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v5}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    const v0, 0x20002

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1, v6}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v5}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    const v0, 0x20002

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1, v6}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method public setWifidisplayEnabled(Z)V
    .locals 9
    .parameter "enable"

    .prologue
    const/4 v8, 0x2

    const v7, 0x2000c

    const v6, 0x2000b

    const/4 v5, 0x0

    const-wide/16 v3, 0xbb8

    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WiFiDisplay: setWifidisplayEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    if-ne v0, v8, :cond_1

    :cond_0
    const-string v0, "WifiStateMachine"

    const-string v1, "WiFiDisplay: setWifidisplayEnabled, STA is already ON, do nothing!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    sput-boolean p1, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApEnable:Z

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.hotspot.ASSOCLIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_5

    sput-boolean p1, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApEnable:Z

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.hotspot.ASSOCLIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4
    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_6

    const v0, 0x20001

    invoke-virtual {p0, v0, v8, v5}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    :cond_6
    const v0, 0x20001

    invoke-virtual {p0, v0, v8, v5}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_8

    invoke-virtual {p0, v7}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_9

    invoke-virtual {p0, v7}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_a

    invoke-virtual {p0, v7}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    const v0, 0x20002

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v5}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0, v7}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    const v0, 0x20002

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v5}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method public declared-synchronized setWimaxStatus(Z)Z
    .locals 2
    .parameter "enabled"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNative;->setWimaxStatus(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setWirelessDisplayStarted(Z)V
    .locals 1
    .parameter "isStarted"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNative;->setWirelessDisplayStarted(Z)Z

    return-void
.end method

.method public startDongleScan()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->dongleScanCommand()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WifiStateMachine"

    const-string v1, "do dongle scan failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mIsDongleScan:Z

    goto :goto_0
.end method

.method public startDongleSingleCscan(I)V
    .locals 3
    .parameter "channel"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNative;->dongleSingleCscanCommand(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "do dongle scan at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mIsDongleScan:Z

    goto :goto_0
.end method

.method public startDongleWakeUp(Ljava/lang/String;)V
    .locals 1
    .parameter "bssid"

    .prologue
    const v0, 0x2006a

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public startFilteringMulticastV4Packets()V
    .locals 3

    .prologue
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x26

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiDisplayOn:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiStateMachine"

    const-string v1, "return startFilteringMulticastV4Packets directly if we are in concurrent mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const v0, 0x20054

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public startFilteringMulticastV6Packets()V
    .locals 3

    .prologue
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x26

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiDisplayOn:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiStateMachine"

    const-string v1, "return startFilteringMulticastV6Packets directly if we are in concurrent mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const v0, 0x20054

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public startPacketFiltering_arp()V
    .locals 3

    .prologue
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x26

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiDisplayOn:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiStateMachine"

    const-string v1, "return startPacketFiltering_arp directly if we are in concurrent mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const v0, 0x20054

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public startPacketFiltering_blist()V
    .locals 3

    .prologue
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x26

    if-ne v0, v1, :cond_2

    :cond_0
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiDisplayOn:Z

    if-eqz v0, :cond_2

    const-string v0, "WifiStateMachine"

    const-string v1, "return startPacketFiltering_self directly if we are in concurrent mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->isMulticastEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x20054

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public startPacketFiltering_dhcpoffer()V
    .locals 3

    .prologue
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x26

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiDisplayOn:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiStateMachine"

    const-string v1, "return startPacketFiltering_dhcpoffer directly if we are in concurrent mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const v0, 0x20054

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public startPacketFiltering_self()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x26

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiDisplayOn:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiStateMachine"

    const-string v1, "return startPacketFiltering_self directly if we are in concurrent mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const v0, 0x20054

    invoke-virtual {p0, v0, v2, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public startPacketFiltering_ssdp(Z)V
    .locals 3
    .parameter "force"

    .prologue
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x26

    if-ne v0, v1, :cond_2

    :cond_0
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiDisplayOn:Z

    if-eqz v0, :cond_2

    const-string v0, "WifiStateMachine"

    const-string v1, "return startPacketFiltering_ssdp directly if we are in concurrent mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p1, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mIsSsdpFilterRuleEnabled:Z

    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_4

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->isMulticastEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_4
    const v0, 0x20054

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public startPacketFiltering_wivu()V
    .locals 3

    .prologue
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x26

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiDisplayOn:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiStateMachine"

    const-string v1, "return startPacketFiltering_wivu directly if we are in concurrent mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const v0, 0x20054

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public startScan(Z)V
    .locals 4
    .parameter "forceActive"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const v2, 0x20047

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v2, v0, v3}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    const-string v0, "wlan.quick.scanresult"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/net/wifi/WifiStateMachine$12;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiStateMachine$12;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public startSoftapEventLoop()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSoftapMonitor:Landroid/net/hotspot/SoftapMonitor;

    invoke-virtual {v0}, Landroid/net/hotspot/SoftapMonitor;->startMonitoring()V

    return-void
.end method

.method public startWpsRegistrar(Landroid/net/wifi/WpsInfo;)V
    .locals 1
    .parameter "config"

    .prologue
    const v0, 0x20061

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public stopFilteringMulticastV4Packets()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x26

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiDisplayOn:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiStateMachine"

    const-string v1, "return stopFilteringMulticastV4Packets directly if we are in concurrent mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const v0, 0x20055

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public stopFilteringMulticastV6Packets()V
    .locals 3

    .prologue
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x26

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiDisplayOn:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiStateMachine"

    const-string v1, "return stopFilteringMulticastV6Packets directly if we are in concurrent mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const v0, 0x20055

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public stopPacketFiltering_arp()V
    .locals 3

    .prologue
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x26

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiDisplayOn:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiStateMachine"

    const-string v1, "return stopPacketFiltering_arp directly if we are in concurrent mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const v0, 0x20055

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public stopPacketFiltering_blist()V
    .locals 3

    .prologue
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x26

    if-ne v0, v1, :cond_2

    :cond_0
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiDisplayOn:Z

    if-eqz v0, :cond_2

    const-string v0, "WifiStateMachine"

    const-string v1, "return startPacketFiltering_self directly if we are in concurrent mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->isMulticastEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x20055

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public stopPacketFiltering_dhcpoffer()V
    .locals 3

    .prologue
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x26

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiDisplayOn:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiStateMachine"

    const-string v1, "return stopPacketFiltering_dhcpoffer directly if we are in concurrent mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const v0, 0x20055

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public stopPacketFiltering_self()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x26

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiDisplayOn:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiStateMachine"

    const-string v1, "return stopPacketFiltering_self directly if we are in concurrent mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const v0, 0x20055

    invoke-virtual {p0, v0, v2, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public stopPacketFiltering_ssdp(Z)V
    .locals 3
    .parameter "force"

    .prologue
    const/4 v2, 0x0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x26

    if-ne v0, v1, :cond_2

    :cond_0
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiDisplayOn:Z

    if-eqz v0, :cond_2

    const-string v0, "WifiStateMachine"

    const-string v1, "return stopPacketFiltering_ssdp directly if we are in concurrent mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p1, :cond_3

    iput-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->mIsSsdpFilterRuleEnabled:Z

    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_4

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->isMulticastEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_4
    const v0, 0x20055

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public stopPacketFiltering_wivu()V
    .locals 3

    .prologue
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x26

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiDisplayOn:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiStateMachine"

    const-string v1, "return stopPacketFiltering_wivu directly if we are in concurrent mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const v0, 0x20055

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public stopSoftapEventLoop()V
    .locals 2

    .prologue
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x26

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSoftapMonitor:Landroid/net/hotspot/SoftapMonitor;

    invoke-virtual {v0}, Landroid/net/hotspot/SoftapMonitor;->stopMonitoring()V

    :cond_1
    return-void
.end method

.method public stopWpsRegistrar()V
    .locals 1

    .prologue
    const v0, 0x20062

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    return-void
.end method

.method public syncAddOrUpdateNetwork(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiConfiguration;)I
    .locals 3
    .parameter "channel"
    .parameter "config"

    .prologue
    const v2, 0x20034

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .local v1, resultMsg:Landroid/os/Message;
    iget v0, v1, Landroid/os/Message;->arg1:I

    .local v0, result:I
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    return v0
.end method

.method public syncDisableNetwork(Lcom/android/internal/util/AsyncChannel;I)Z
    .locals 4
    .parameter "channel"
    .parameter "netId"

    .prologue
    const v2, 0x25011

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v1

    .local v1, resultMsg:Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const v3, 0x25012

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .local v0, result:Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    return v0

    .end local v0           #result:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public syncEnableNetwork(Lcom/android/internal/util/AsyncChannel;IZ)Z
    .locals 6
    .parameter "channel"
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const v5, 0x20036

    if-eqz p3, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {p1, v5, p2, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(III)Landroid/os/Message;

    move-result-object v1

    .local v1, resultMsg:Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    move v0, v3

    .local v0, result:Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    return v0

    .end local v0           #result:Z
    .end local v1           #resultMsg:Landroid/os/Message;
    :cond_0
    move v2, v4

    goto :goto_0

    .restart local v1       #resultMsg:Landroid/os/Message;
    :cond_1
    move v0, v4

    goto :goto_1
.end method

.method public syncGetConfiguredNetworks(Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;
    .locals 3
    .parameter "channel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/AsyncChannel;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    const v2, 0x2003b

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v1

    .local v1, resultMsg:Landroid/os/Message;
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .local v0, result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    return-object v0
.end method

.method public syncGetDhcpInfo()Landroid/net/DhcpInfo;
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v0}, Landroid/net/DhcpInfoInternal;->makeDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public syncGetScanResultsList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mEnableFakeScanresult:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mFakeScanCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mFakeScanCount:I

    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mFakeScanCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mEnableFakeScanresult:Z

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    return-object v0
.end method

.method public syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 4

    .prologue
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x2001b

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .local v0, resultMsg:Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .local v1, ret:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    return-object v1
.end method

.method public syncGetWifiApState()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public syncGetWifiApStateByName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "[invalid state]"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "disabling"

    goto :goto_0

    :pswitch_1
    const-string v0, "disabled"

    goto :goto_0

    :pswitch_2
    const-string v0, "enabling"

    goto :goto_0

    :pswitch_3
    const-string v0, "enabled"

    goto :goto_0

    :pswitch_4
    const-string v0, "failed"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public syncGetWifiState()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public syncGetWifiStateByName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "[invalid state]"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "disabling"

    goto :goto_0

    :pswitch_1
    const-string v0, "disabled"

    goto :goto_0

    :pswitch_2
    const-string v0, "enabling"

    goto :goto_0

    :pswitch_3
    const-string v0, "enabled"

    goto :goto_0

    :pswitch_4
    const-string v0, "unknown state"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public syncGetWifidisplayApState()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public syncPingSupplicant(Lcom/android/internal/util/AsyncChannel;)Z
    .locals 4
    .parameter "channel"

    .prologue
    const v2, 0x20033

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v1

    .local v1, resultMsg:Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .local v0, result:Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    return v0

    .end local v0           #result:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public syncRemoveNetwork(Lcom/android/internal/util/AsyncChannel;I)Z
    .locals 4
    .parameter "channel"
    .parameter "networkId"

    .prologue
    const v2, 0x20035

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v1

    .local v1, resultMsg:Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .local v0, result:Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    return v0

    .end local v0           #result:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->setRSSItoWifiInfoMessage()V

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method public syncSaveConfig(Lcom/android/internal/util/AsyncChannel;)Z
    .locals 4
    .parameter "channel"

    .prologue
    const v2, 0x2003a

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v1

    .local v1, resultMsg:Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .local v0, result:Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    return v0

    .end local v0           #result:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, LS:Ljava/lang/String;
    const-string v2, "current HSM state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mLinkProperties "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mWifiInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mDhcpInfoInternal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mNetworkInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mLastSignalLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mLastBssid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mLastNetworkId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mReconnectCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mIsScanMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mIsScanMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "Supplicant status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v3}, Landroid/net/wifi/WifiNative;->status()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfigStore;->dump()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public tryToStartCWRegister()V
    .locals 3

    .prologue
    const-string v0, "WifiStateMachine"

    const-string v1, "[C+W] call in the tryToStartCWRegister++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->isCT_CDMA_WIFI_SSID()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->isConnectionCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->hasIpAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCwRegisterState()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, v0, v1}, Landroid/net/wifi/WifiStateMachine;->triggerCWRegister(J)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[C+W] call in the tryToStartCWRegister++but not run isCT_CDMA_WIFI_SSID is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->isCT_CDMA_WIFI_SSID()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isConnectionCompleted is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->isConnectionCompleted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "getCwRegisterState is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCwRegisterState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public tryToTriggerCWReregister()V
    .locals 2

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->isCT_CDMA_WIFI_SSID()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->isConnectionCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->hasIpAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiStateMachine"

    const-string v1, "[C+W] trigger re-register"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/net/wifi/WifiStateMachine;->triggerCWRegister(J)V

    :cond_0
    return-void
.end method

.method public tryToTriggerCWReregisterExpire()V
    .locals 2

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->isCT_CDMA_WIFI_SSID()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->isConnectionCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->hasIpAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiStateMachine"

    const-string v1, "[C+W] trigger re-register"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/net/wifi/WifiStateMachine;->triggerCWRegisterExpire(J)V

    :cond_0
    return-void
.end method

.method public tryTostartCWDeRegister()V
    .locals 3

    .prologue
    const-string v1, "WifiStateMachine"

    const-string v2, "[C+W] call in tryTostartCWDeRegister"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCwRegisterState()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->triggerCWDeRegister()V

    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCwRegisterState()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "WifiStateMachine"

    const-string v2, "[C+W] got de-register"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public updateBatteryWorkSource(Landroid/os/WorkSource;)V
    .locals 4
    .parameter "newSource"

    .prologue
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, p1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    :cond_0
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v0, v2, v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock_DHCP:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mPerfWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x2d7

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mPerfWakeLock_min_freq:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_3
    :try_start_2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v0, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiRunning(Landroid/os/WorkSource;)V

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v0, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiStopped(Landroid/os/WorkSource;)V

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public updateConnectionList(Ljava/lang/String;J)V
    .locals 3
    .parameter "mac"
    .parameter "time"

    .prologue
    const-string v1, "WifiStateMachine"

    const-string v2, "updateConnection List "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .local v0, client:Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;

    .end local v0           #client:Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;-><init>(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;J)V

    .restart local v0       #client:Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;
    :cond_0
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->updateConnectionReq(Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;)V

    return-void
.end method

.method public updateConnectionReq(Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;)V
    .locals 5
    .parameter "client"

    .prologue
    const-string v2, "WifiStateMachine"

    const-string v3, "update connection Req"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;->getMac()Ljava/lang/String;

    move-result-object v1

    .local v1, mac:Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;

    invoke-virtual {p1}, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;->setLastestReqTime(J)V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #mac:Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    const-string v2, "WifiStateMachine"

    const-string v3, "update connection Req add client"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public updateProfile()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v4, "WifiStateMachine"

    const-string v7, "WIFIAP:updateProfile"

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "hotspot_ssid"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    :try_start_0
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v7

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "hotspot_hidden"

    invoke-static {v4, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_7

    move v4, v5

    :goto_0
    iput-boolean v4, v7, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "hotspot_security_type"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    sget-object v7, Landroid/net/hotspot/HotspotManager;->HOTSPOT_DEFAULT_SECURITY_TYPE:Ljava/lang/String;

    iput-object v7, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "hotspot_security_type"

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v8

    iget-object v8, v8, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "hotspot_password"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    if-nez v4, :cond_3

    iget-boolean v4, p0, Landroid/net/wifi/WifiStateMachine;->mEnableImeiPassword:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Landroid/net/wifi/WifiStateMachine;->mEnableMdnPassword:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    const-string v7, "1234567890"

    iput-object v7, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/wifi/WifiStateMachine;->getRandomKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, randomKey:Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v7, 0xd

    if-ne v4, v7, :cond_2

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v7, 0x2

    if-ne v4, v7, :cond_1

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_1
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iput-object v2, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    :cond_2
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "hotspot_password"

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v8

    iget-object v8, v8, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .end local v2           #randomKey:Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "hotspot_macfilter_on"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "hotspot_max_connection"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "hotspot_connection_array"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "hotspot_channel"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I
    :try_end_4
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    :try_start_5
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "hotspot_dhcp_on"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I
    :try_end_5
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_6
    :try_start_6
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "hotspot_dhcp_max_connection"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxDhcpClients:I
    :try_end_6
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    :goto_7
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "hotspot_id_address"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    if-nez v4, :cond_4

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    const-string v6, "192.168.1.1"

    iput-object v6, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "hotspot_id_address"

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v7

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "hotspot_subnet_mask"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    if-nez v4, :cond_5

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    const-string v6, "255.255.255.0"

    iput-object v6, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "hotspot_subnet_mask"

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v7

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_5
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "hotspot_dhcp_start_ip"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    if-nez v4, :cond_6

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    sget-object v6, Landroid/net/hotspot/HotspotManager;->HOTSPOT_DEFAULT_DHCP_STARTING_IP:Ljava/lang/String;

    iput-object v6, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "hotspot_dhcp_start_ip"

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v7

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_6
    :try_start_7
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "hotspot_sleep_policy"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I
    :try_end_7
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    :goto_8
    iput-boolean v5, p0, Landroid/net/wifi/WifiStateMachine;->mResetWifiApSleepPolicy:Z

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hotspot_white_list"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, whiteListStr:Ljava/lang/String;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v3, v4}, Landroid/net/wifi/WifiStateMachine;->updateWhiteList(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hotspot_black_list"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, blockListStr:Ljava/lang/String;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0, v4}, Landroid/net/wifi/WifiStateMachine;->updateBlackList(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    return-void

    .end local v0           #blockListStr:Ljava/lang/String;
    .end local v3           #whiteListStr:Ljava/lang/String;
    :cond_7
    move v4, v6

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iput-boolean v6, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    goto/16 :goto_1

    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :catch_1
    move-exception v1

    .restart local v1       #e:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iput v6, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    goto/16 :goto_2

    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :catch_2
    move-exception v1

    .restart local v1       #e:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    const/4 v7, 0x5

    iput v7, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    goto/16 :goto_3

    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :catch_3
    move-exception v1

    .restart local v1       #e:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iput v9, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    goto/16 :goto_4

    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :catch_4
    move-exception v1

    .restart local v1       #e:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iput v6, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    goto/16 :goto_5

    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :catch_5
    move-exception v1

    .restart local v1       #e:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iput v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    goto/16 :goto_6

    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :catch_6
    move-exception v1

    .restart local v1       #e:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v6

    iget v6, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    iput v6, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxDhcpClients:I

    goto/16 :goto_7

    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :catch_7
    move-exception v1

    .restart local v1       #e:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iput v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    goto/16 :goto_8
.end method

.method public updateSchedScanInterval(I)V
    .locals 2
    .parameter "scanPeriod"

    .prologue
    const v0, 0x20093

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method
