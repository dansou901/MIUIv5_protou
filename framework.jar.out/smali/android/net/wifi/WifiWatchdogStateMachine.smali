.class public Landroid/net/wifi/WifiWatchdogStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiWatchdogStateMachine$4;,
        Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$RssiMonitoringState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x21000

.field private static final CMD_ARP_CHECK:I = 0x2100b

.field private static final CMD_DELAYED_WALLED_GARDEN_CHECK:I = 0x2100c

.field private static final CMD_RSSI_FETCH:I = 0x2100d

.field private static DBG:Z = false

.field private static final DEFAULT_ARP_CHECK_INTERVAL_MS:J = 0x1d4c0L

.field private static final DEFAULT_ARP_PING_TIMEOUT_MS:I = 0x64

.field private static final DEFAULT_MIN_ARP_RESPONSES:I = 0x1

.field private static final DEFAULT_NUM_ARP_PINGS:I = 0x5

.field private static final DEFAULT_RSSI_FETCH_INTERVAL_MS:J = 0x3e8L

.field private static final DEFAULT_WALLED_GARDEN_INTERVAL_MS:J = 0x1b7740L

.field private static final DEFAULT_WALLED_GARDEN_URL:Ljava/lang/String; = "http://clients3.google.com/generate_204"

.field private static final EVENT_NETWORK_STATE_CHANGE:I = 0x21002

.field private static final EVENT_RSSI_CHANGE:I = 0x21003

.field private static final EVENT_WATCHDOG_SETTINGS_CHANGE:I = 0x21006

.field private static final EVENT_WATCHDOG_TOGGLED:I = 0x21001

.field private static final EVENT_WIFI_RADIO_STATE_CHANGE:I = 0x21005

.field private static final FULL_ARP_CHECK:I = 0x1

.field static final GOOD_LINK_DETECTED:I = 0x21016

.field private static final MIN_INTERVAL_AVOID_BSSID_MS:[I = null

.field static final POOR_LINK_DETECTED:I = 0x21015

.field static final RSSI_FETCH:I = 0x21017

.field static final RSSI_FETCH_FAILED:I = 0x21019

.field static final RSSI_FETCH_SUCCEEDED:I = 0x21018

.field private static final RSSI_LEVEL_MONITOR:I = 0x0

.field private static final RSSI_MONITOR_COUNT:I = 0x5

.field private static final RSSI_MONITOR_THRESHOLD:I = -0x58

.field private static final SINGLE_ARP_CHECK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WifiWatchdogStateMachine"

.field private static final WALLED_GARDEN_NOTIFICATION_ID:Ljava/lang/String; = "WifiWatchdog.walledgarden"

.field private static final WALLED_GARDEN_SOCKET_TIMEOUT_MS:I = 0x2710

.field private static final WALLED_GARDEN_START_DELAY_MS:I = 0xbb8

.field private static sWifiOnly:Z


# instance fields
.field private mArpCheckIntervalMs:J

.field private mArpPingTimeoutMs:I

.field private mArpToken:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurrentSignalLevel:I

.field private mDefaultState:Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;

.field private mHtcLanDetectionEnabled:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLastBssidAvoidedTime:J

.field private mLastWalledGardenCheckTime:J

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mMinArpResponses:I

.field private mMinIntervalArrayIndex:I

.field private mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

.field private mNumArpPings:I

.field private mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

.field private mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

.field private mPoorNetworkDetectionEnabled:Z

.field private mRssiFetchIntervalMs:J

.field private mRssiFetchToken:I

.field private mRssiMonitorCount:I

.field private mRssiMonitoringState:Landroid/net/wifi/WifiWatchdogStateMachine$RssiMonitoringState;

.field private mVerifyingLinkState:Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

.field private mWalledGardenCheckState:Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;

.field private mWalledGardenIntervalMs:J

.field private mWalledGardenNotificationShown:Z

.field private mWalledGardenTestEnabled:Z

.field private mWalledGardenUrl:Ljava/lang/String;

.field private mWatchdogDisabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

.field private mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWsmChannel:Lcom/android/internal/util/AsyncChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    .line 120
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->MIN_INTERVAL_AVOID_BSSID_MS:[I

    .line 220
    const/4 v0, 0x0

    sput-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    return-void

    .line 120
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x30t 0x75t 0x0t 0x0t
        0x60t 0xeat 0x0t 0x0t
        0xe0t 0x93t 0x4t 0x0t
        0x40t 0x77t 0x1bt 0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 238
    const-string v0, "WifiWatchdogStateMachine"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 116
    iput v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiMonitorCount:I

    .line 123
    iput v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMinIntervalArrayIndex:I

    .line 187
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    .line 189
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDefaultState:Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;

    .line 190
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    .line 191
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    .line 192
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    .line 193
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    .line 194
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    .line 195
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenCheckState:Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;

    .line 197
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    .line 199
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$RssiMonitoringState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$RssiMonitoringState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiMonitoringState:Landroid/net/wifi/WifiWatchdogStateMachine$RssiMonitoringState;

    .line 201
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    .line 203
    iput v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mArpToken:I

    .line 205
    iput v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I

    .line 218
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLastWalledGardenCheckTime:J

    .line 224
    iput-boolean v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mHtcLanDetectionEnabled:Z

    .line 239
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    .line 240
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    .line 241
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 242
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiStateMachineMessenger()Landroid/os/Messenger;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    .line 245
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->setupNetworkReceiver()V

    .line 248
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->registerForSettingsChanges()V

    .line 249
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->registerForWatchdogToggle()V

    .line 250
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDefaultState:Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 251
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDefaultState:Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 252
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDefaultState:Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 253
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 254
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 255
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 256
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenCheckState:Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 257
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 258
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiMonitoringState:Landroid/net/wifi/WifiWatchdogStateMachine$RssiMonitoringState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 259
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 261
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->isWatchdogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 266
    :goto_0
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->updateSettings()V

    .line 267
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 93
    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    sput-boolean p0, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    return p0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-static {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1002(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object p1
.end method

.method static synthetic access$1200(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/net/wifi/WifiWatchdogStateMachine;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->doArpTest(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    return v0
.end method

.method static synthetic access$1900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->updateSettings()V

    return-void
.end method

.method static synthetic access$2000(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->shouldCheckWalledGarden()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenCheckState:Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2700(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2800(Landroid/net/wifi/WifiWatchdogStateMachine;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->setWalledGardenNotificationVisible(Z)V

    return-void
.end method

.method static synthetic access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mArpToken:I

    return v0
.end method

.method static synthetic access$2904(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mArpToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mArpToken:I

    return v0
.end method

.method static synthetic access$300(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I

    return v0
.end method

.method static synthetic access$3000(Landroid/net/wifi/WifiWatchdogStateMachine;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 93
    iget-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mArpCheckIntervalMs:J

    return-wide v0
.end method

.method static synthetic access$302(Landroid/net/wifi/WifiWatchdogStateMachine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I

    return p1
.end method

.method static synthetic access$3100(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    return-object v0
.end method

.method static synthetic access$3300(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3402(Landroid/net/wifi/WifiWatchdogStateMachine;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-wide p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLastWalledGardenCheckTime:J

    return-wide p1
.end method

.method static synthetic access$3500(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->isWalledGardenConnection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3700(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$RssiMonitoringState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiMonitoringState:Landroid/net/wifi/WifiWatchdogStateMachine$RssiMonitoringState;

    return-object v0
.end method

.method static synthetic access$3900(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$400(Landroid/net/wifi/WifiWatchdogStateMachine;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->calculateSignalLevel(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Landroid/net/wifi/WifiWatchdogStateMachine;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 93
    iget-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLastBssidAvoidedTime:J

    return-wide v0
.end method

.method static synthetic access$4100()[I
    .locals 1

    .prologue
    .line 93
    sget-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->MIN_INTERVAL_AVOID_BSSID_MS:[I

    return-object v0
.end method

.method static synthetic access$4200(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMinIntervalArrayIndex:I

    return v0
.end method

.method static synthetic access$4300(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I

    return v0
.end method

.method static synthetic access$4304(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I

    return v0
.end method

.method static synthetic access$4400(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4500(Landroid/net/wifi/WifiWatchdogStateMachine;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 93
    iget-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchIntervalMs:J

    return-wide v0
.end method

.method static synthetic access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiMonitorCount:I

    return v0
.end method

.method static synthetic access$4602(Landroid/net/wifi/WifiWatchdogStateMachine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiMonitorCount:I

    return p1
.end method

.method static synthetic access$4608(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiMonitorCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiMonitorCount:I

    return v0
.end method

.method static synthetic access$4700(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendPoorLinkDetected()V

    return-void
.end method

.method static synthetic access$500(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->isWatchdogEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    return-object v0
.end method

.method static synthetic access$800(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$900(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mHtcLanDetectionEnabled:Z

    return v0
.end method

.method private calculateSignalLevel(I)I
    .locals 3
    .parameter "rssi"

    .prologue
    .line 949
    const/4 v1, 0x4

    invoke-static {p1, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    .line 951
    .local v0, signalLevel:I
    sget-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RSSI current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V

    .line 952
    :cond_0
    return v0
.end method

.method private doArpTest(I)Z
    .locals 15
    .parameter "type"

    .prologue
    .line 898
    iget-object v13, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v13}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    .line 899
    .local v4, iface:Ljava/lang/String;
    iget-object v13, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v7

    .line 900
    .local v7, mac:Ljava/lang/String;
    const/4 v5, 0x0

    .line 901
    .local v5, inetAddress:Ljava/net/InetAddress;
    const/4 v1, 0x0

    .line 903
    .local v1, gateway:Ljava/net/InetAddress;
    iget-object v13, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v13}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/LinkAddress;

    .line 904
    .local v6, la:Landroid/net/LinkAddress;
    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    .line 908
    .end local v6           #la:Landroid/net/LinkAddress;
    :cond_0
    iget-object v13, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v13}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/RouteInfo;

    .line 909
    .local v10, route:Landroid/net/RouteInfo;
    invoke-virtual {v10}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    .line 913
    .end local v10           #route:Landroid/net/RouteInfo;
    :cond_1
    sget-boolean v13, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v13, :cond_2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ARP "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " addr: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mac: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " gw: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V

    .line 917
    :cond_2
    if-eqz v7, :cond_3

    if-nez v1, :cond_4

    .line 918
    :cond_3
    const/4 v12, 0x1

    .line 945
    :goto_0
    return v12

    .line 922
    :cond_4
    :try_start_0
    new-instance v8, Landroid/net/arp/ArpPeer;

    invoke-direct {v8, v4, v5, v7, v1}, Landroid/net/arp/ArpPeer;-><init>(Ljava/lang/String;Ljava/net/InetAddress;Ljava/lang/String;Ljava/net/InetAddress;)V

    .line 923
    .local v8, peer:Landroid/net/arp/ArpPeer;
    if-nez p1, :cond_7

    .line 924
    iget v13, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mArpPingTimeoutMs:I

    invoke-virtual {v8, v13}, Landroid/net/arp/ArpPeer;->doArp(I)[B

    move-result-object v13

    if-eqz v13, :cond_6

    const/4 v12, 0x1

    .line 925
    .local v12, success:Z
    :goto_1
    sget-boolean v13, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v13, :cond_5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "single ARP test result: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V

    .line 934
    :cond_5
    :goto_2
    invoke-virtual {v8}, Landroid/net/arp/ArpPeer;->close()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 935
    .end local v8           #peer:Landroid/net/arp/ArpPeer;
    .end local v12           #success:Z
    :catch_0
    move-exception v11

    .line 938
    .local v11, se:Ljava/net/SocketException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ARP test initiation failure: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    .line 939
    const/4 v12, 0x1

    .line 943
    .restart local v12       #success:Z
    goto :goto_0

    .line 924
    .end local v11           #se:Ljava/net/SocketException;
    .end local v12           #success:Z
    .restart local v8       #peer:Landroid/net/arp/ArpPeer;
    :cond_6
    const/4 v12, 0x0

    goto :goto_1

    .line 927
    :cond_7
    const/4 v9, 0x0

    .line 928
    .local v9, responses:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    :try_start_1
    iget v13, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNumArpPings:I

    if-ge v2, v13, :cond_9

    .line 929
    iget v13, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mArpPingTimeoutMs:I

    invoke-virtual {v8, v13}, Landroid/net/arp/ArpPeer;->doArp(I)[B

    move-result-object v13

    if-eqz v13, :cond_8

    add-int/lit8 v9, v9, 0x1

    .line 928
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 931
    :cond_9
    sget-boolean v13, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v13, :cond_a

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "full ARP test result: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNumArpPings:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V

    .line 932
    :cond_a
    iget v13, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMinArpResponses:I
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    if-lt v9, v13, :cond_b

    const/4 v12, 0x1

    .restart local v12       #success:Z
    :goto_4
    goto :goto_2

    .end local v12           #success:Z
    :cond_b
    const/4 v12, 0x0

    goto :goto_4

    .line 940
    .end local v2           #i:I
    .end local v8           #peer:Landroid/net/arp/ArpPeer;
    .end local v9           #responses:I
    :catch_1
    move-exception v0

    .line 942
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/4 v12, 0x1

    .restart local v12       #success:Z
    goto/16 :goto_0
.end method

.method private static getSettingsBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 3
    .parameter "cr"
    .parameter "name"
    .parameter "def"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1005
    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private static getSettingsStr(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 986
    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 987
    .local v0, v:Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0           #v:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #v:Ljava/lang/String;
    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method private isWalledGardenConnection()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 381
    const/4 v3, 0x0

    .line 383
    .local v3, urlConnection:Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenUrl:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 384
    .local v2, url:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 385
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 386
    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 387
    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 388
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 389
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 391
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/16 v6, 0xcc

    if-eq v4, v6, :cond_1

    const/4 v4, 0x1

    .line 398
    :goto_0
    if-eqz v3, :cond_0

    .line 399
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 396
    .end local v2           #url:Ljava/net/URL;
    :cond_0
    :goto_1
    return v4

    .restart local v2       #url:Ljava/net/URL;
    :cond_1
    move v4, v5

    .line 391
    goto :goto_0

    .line 392
    .end local v2           #url:Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 393
    .local v1, e:Ljava/io/IOException;
    :try_start_1
    sget-boolean v4, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v4, :cond_2

    .line 394
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Walled garden check - probably not a portal: exception "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    :cond_2
    if-eqz v3, :cond_3

    .line 399
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    move v4, v5

    .line 396
    goto :goto_1

    .line 398
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_4

    .line 399
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 398
    :cond_4
    throw v4
.end method

.method private isWatchdogEnabled()Z
    .locals 4

    .prologue
    .line 423
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "wifi_watchdog_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->getSettingsBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 425
    .local v0, ret:Z
    sget-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "watchdog enabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V

    .line 426
    :cond_0
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 1026
    const-string v0, "WifiWatchdogStateMachine"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 1030
    const-string v0, "WifiWatchdogStateMachine"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    return-void
.end method

.method public static makeWifiWatchdogStateMachine(Landroid/content/Context;)Landroid/net/wifi/WifiWatchdogStateMachine;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 270
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 272
    .local v1, contentResolver:Landroid/content/ContentResolver;
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 274
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    sput-boolean v3, Landroid/net/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    .line 281
    const-string/jumbo v3, "wifi_watchdog_on"

    invoke-static {v1, v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->putSettingsBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 285
    sget-boolean v3, Landroid/net/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    if-eqz v3, :cond_0

    .line 286
    const-string v3, "Disabling poor network avoidance for wi-fi only device"

    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V

    .line 287
    const-string/jumbo v3, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v1, v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->putSettingsBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 291
    :cond_0
    new-instance v2, Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {v2, p0}, Landroid/net/wifi/WifiWatchdogStateMachine;-><init>(Landroid/content/Context;)V

    .line 292
    .local v2, wwsm:Landroid/net/wifi/WifiWatchdogStateMachine;
    invoke-virtual {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->start()V

    .line 293
    return-object v2

    .end local v2           #wwsm:Landroid/net/wifi/WifiWatchdogStateMachine;
    :cond_1
    move v3, v4

    .line 274
    goto :goto_0
.end method

.method private static putSettingsBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1022
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerForSettingsChanges()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 341
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$3;

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$3;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;)V

    .line 348
    .local v0, contentObserver:Landroid/database/ContentObserver;
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_watchdog_arp_interval_ms"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 352
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_watchdog_walled_garden_interval_ms"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 355
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_watchdog_num_arp_pings"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 358
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_watchdog_min_arp_responses"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 361
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_watchdog_arp_ping_timeout_ms"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 364
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 367
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_watchdog_walled_garden_test_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 370
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_watchdog_walled_garden_url"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 373
    return-void
.end method

.method private registerForWatchdogToggle()V
    .locals 4

    .prologue
    .line 325
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$2;

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$2;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;)V

    .line 332
    .local v0, contentObserver:Landroid/database/ContentObserver;
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_watchdog_on"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 335
    return-void
.end method

.method private sendPoorLinkDetected()V
    .locals 6

    .prologue
    .line 956
    sget-boolean v2, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send POOR_LINK_DETECTED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V

    .line 957
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x21015

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 959
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 960
    .local v0, time:J
    iget-wide v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLastBssidAvoidedTime:J

    sub-long v2, v0, v2

    sget-object v4, Landroid/net/wifi/WifiWatchdogStateMachine;->MIN_INTERVAL_AVOID_BSSID_MS:[I

    sget-object v5, Landroid/net/wifi/WifiWatchdogStateMachine;->MIN_INTERVAL_AVOID_BSSID_MS:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 962
    const/4 v2, 0x1

    iput v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMinIntervalArrayIndex:I

    .line 963
    sget-boolean v2, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "set mMinIntervalArrayIndex to 1"

    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V

    .line 972
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLastBssidAvoidedTime:J

    .line 973
    return-void

    .line 966
    :cond_2
    iget v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMinIntervalArrayIndex:I

    sget-object v3, Landroid/net/wifi/WifiWatchdogStateMachine;->MIN_INTERVAL_AVOID_BSSID_MS:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_3

    .line 967
    iget v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMinIntervalArrayIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMinIntervalArrayIndex:I

    .line 969
    :cond_3
    sget-boolean v2, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mMinIntervalArrayIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMinIntervalArrayIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setWalledGardenNotificationVisible(Z)V
    .locals 11
    .parameter "visible"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 461
    if-nez p1, :cond_0

    iget-boolean v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenNotificationShown:Z

    if-nez v6, :cond_0

    .line 490
    :goto_0
    return-void

    .line 465
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 466
    .local v4, r:Landroid/content/res/Resources;
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 469
    .local v3, notificationManager:Landroid/app/NotificationManager;
    if-eqz p1, :cond_1

    .line 470
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenUrl:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 471
    .local v1, intent:Landroid/content/Intent;
    const/high16 v6, 0x1040

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 473
    const v6, 0x1040408

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 474
    .local v5, title:Ljava/lang/CharSequence;
    const v6, 0x1040409

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, details:Ljava/lang/CharSequence;
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 478
    .local v2, notification:Landroid/app/Notification;
    const-wide/16 v6, 0x0

    iput-wide v6, v2, Landroid/app/Notification;->when:J

    .line 479
    const v6, 0x108050d

    iput v6, v2, Landroid/app/Notification;->icon:I

    .line 480
    const/16 v6, 0x10

    iput v6, v2, Landroid/app/Notification;->flags:I

    .line 481
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v6, v9, v1, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 482
    iput-object v5, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 483
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    iget-object v7, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v6, v5, v0, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 485
    const-string v6, "WifiWatchdog.walledgarden"

    invoke-virtual {v3, v6, v10, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 489
    .end local v0           #details:Ljava/lang/CharSequence;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #notification:Landroid/app/Notification;
    .end local v5           #title:Ljava/lang/CharSequence;
    :goto_1
    iput-boolean p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenNotificationShown:Z

    goto :goto_0

    .line 487
    :cond_1
    const-string v6, "WifiWatchdog.walledgarden"

    invoke-virtual {v3, v6, v10}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private setupNetworkReceiver()V
    .locals 3

    .prologue
    .line 297
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$1;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$1;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 314
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    .line 315
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 319
    return-void
.end method

.method private shouldCheckWalledGarden()Z
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    const/4 v2, 0x0

    .line 877
    iget-boolean v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenTestEnabled:Z

    if-nez v3, :cond_1

    .line 878
    sget-boolean v3, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "Skipping walled garden check - disabled"

    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V

    .line 892
    :cond_0
    :goto_0
    return v2

    .line 882
    :cond_1
    iget-wide v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenIntervalMs:J

    iget-wide v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLastWalledGardenCheckTime:J

    add-long/2addr v3, v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 885
    .local v0, waitTime:J
    iget-wide v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLastWalledGardenCheckTime:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_2

    cmp-long v3, v0, v7

    if-lez v3, :cond_2

    .line 886
    sget-boolean v3, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v3, :cond_0

    .line 887
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping walled garden check - wait "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 892
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private updateSettings()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 430
    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Updating secure settings"

    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V

    .line 432
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "wifi_watchdog_arp_interval_ms"

    const-wide/32 v2, 0x1d4c0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mArpCheckIntervalMs:J

    .line 435
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "wifi_watchdog_rssi_fetch_interval_ms"

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchIntervalMs:J

    .line 438
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "wifi_watchdog_num_arp_pings"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNumArpPings:I

    .line 441
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "wifi_watchdog_min_arp_responses"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMinArpResponses:I

    .line 444
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "wifi_watchdog_arp_ping_timeout_ms"

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mArpPingTimeoutMs:I

    .line 447
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "wifi_watchdog_poor_network_test_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->getSettingsBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    .line 449
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "wifi_watchdog_walled_garden_test_enabled"

    invoke-static {v0, v1, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->getSettingsBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenTestEnabled:Z

    .line 451
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "wifi_watchdog_walled_garden_url"

    const-string v2, "http://clients3.google.com/generate_204"

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->getSettingsStr(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenUrl:Ljava/lang/String;

    .line 454
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "wifi_watchdog_walled_garden_interval_ms"

    const-wide/32 v2, 0x1b7740

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenIntervalMs:J

    .line 457
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .parameter "pw"

    .prologue
    .line 405
    const-string v0, "WatchdogStatus: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mWifiInfo: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLinkProperties: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentSignalLevel: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mArpCheckIntervalMs: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mArpCheckIntervalMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRssiFetchIntervalMs: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchIntervalMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mWalledGardenIntervalMs: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenIntervalMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mNumArpPings: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNumArpPings:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mMinArpResponses: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMinArpResponses:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mArpPingTimeoutMs: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mArpPingTimeoutMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPoorNetworkDetectionEnabled: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mWalledGardenTestEnabled: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenTestEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mWalledGardenUrl: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 419
    return-void
.end method
