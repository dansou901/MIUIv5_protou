.class Lcom/htc/server/WfdStateMachine;
.super Lcom/htc/server/StateMachine;
.source "WfdStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/WfdStateMachine$WifiServiceHandler;,
        Lcom/htc/server/WfdStateMachine$LinkResetState;,
        Lcom/htc/server/WfdStateMachine$DiscoverWivuState;,
        Lcom/htc/server/WfdStateMachine$LinkDiscoverState;,
        Lcom/htc/server/WfdStateMachine$LinkOnState;,
        Lcom/htc/server/WfdStateMachine$ControlWpsState;,
        Lcom/htc/server/WfdStateMachine$ControlApState;,
        Lcom/htc/server/WfdStateMachine$ControlWifiState;,
        Lcom/htc/server/WfdStateMachine$ScanDongleState;,
        Lcom/htc/server/WfdStateMachine$LinkInitState;,
        Lcom/htc/server/WfdStateMachine$DefaultState;
    }
.end annotation


# static fields
.field private static final APH_RSSI_THRESHOLD:I = -0x4b

.field private static final AP_INTERFACE_NAME:Ljava/lang/String; = "wlan1"

.field private static final AUTO_TESTING_INTERVAL:I = 0x249f0

.field private static final CMD_ATTEMPT_TO_SETTING:I = 0x2e

.field private static final CMD_BACK_TO_SCAN:I = 0x2c

.field private static final CMD_CONNECT_TO_NON_LOCK_DONGLE:I = 0x44

.field private static final CMD_DISABLE_AP:I = 0x9

.field private static final CMD_DISABLE_WIFI:I = 0x5

.field private static final CMD_DISPLAY_SETTINGS:I = 0x2f

.field private static final CMD_DISPLAY_TUTORIAL:I = 0x31

.field private static final CMD_ENABLE_AP:I = 0x7

.field private static final CMD_ENABLE_WIFI:I = 0x3

.field private static final CMD_FINISH_IN_BACKGROUND:I = 0x38

.field private static final CMD_FINISH_SERVICE:I = 0x32

.field private static final CMD_HANDLE_BACK_KEY:I = 0x28

.field private static final CMD_L2PE_TIMEOUT:I = 0x2b

.field private static final CMD_NOTIFY_DISABLE_AP_SUCCESS:I = 0xa

.field private static final CMD_NOTIFY_DISABLE_WIFI_SUCCESS:I = 0x6

.field private static final CMD_NOTIFY_DONGLE_CONNECTED_TO_APM:I = 0x3c

.field private static final CMD_NOTIFY_DONGLE_RESET_COMPLETE:I = 0x3f

.field private static final CMD_NOTIFY_DONGLE_UNLOCK_FAIL:I = 0x42

.field private static final CMD_NOTIFY_DONGLE_UNLOCK_SUCCESS:I = 0x41

.field private static final CMD_NOTIFY_DONGLE_UNLOCK_TIMEOUT:I = 0x43

.field private static final CMD_NOTIFY_DONGLE_WPS_TRIGGERED:I = 0x3a

.field private static final CMD_NOTIFY_ENABLE_AP_SUCCESS:I = 0x8

.field private static final CMD_NOTIFY_ENABLE_WIFI_SUCCESS:I = 0x4

.field private static final CMD_NOTIFY_L2PE_FAIL:I = 0x24

.field private static final CMD_NOTIFY_L2PE_SUCCESS:I = 0x23

.field private static final CMD_NOTIFY_MIRROR_DISPLAY_READY:I = 0x22

.field private static final CMD_NOTIFY_MIRROR_DISPLAY_START:I = 0x20

.field private static final CMD_NOTIFY_MIRROR_DISPLAY_STOP:I = 0x21

.field private static final CMD_NOTIFY_NETWORK_CHANGE:I = 0x1f

.field private static final CMD_NOTIFY_SCAN_DONGLE_COMPLETE:I = 0x25

.field private static final CMD_NOTIFY_SCAN_DONGLE_NONE:I = 0x26

.field private static final CMD_NOTIFY_WIVU_FAIL:I = 0x30

.field private static final CMD_NOTIFY_WIVU_LIST_CHANGED:I = 0x2d

.field private static final CMD_NOTIFY_WPS_FAILURE:I = 0xf

.field private static final CMD_NOTIFY_WPS_START:I = 0x10

.field private static final CMD_NOTIFY_WPS_SUCCESS:I = 0xe

.field private static final CMD_QUIT_CMD:I = -0x1

.field private static final CMD_READ_DONGLE_CONFIG:I = 0x1b

.field private static final CMD_REQUEST_RESET_DONGLE_ON_DEMAND:I = 0x3e

.field private static final CMD_REQUEST_SCAN:I = 0x18

.field private static final CMD_REQUEST_SCAN_QUIET:I = 0x19

.field private static final CMD_REQUEST_SOFT_RESET_DONGLE:I = 0x3d

.field private static final CMD_REQUEST_SWITCH_TO_APM:I = 0x36

.field private static final CMD_REQUEST_UNLOCK_ON_DEMAND:I = 0x40

.field private static final CMD_RESET_STATE_MACHINE:I = 0x64

.field private static final CMD_RETRY_CONFIGURE_WITH_DONGLE_RESET:I = 0x47

.field private static final CMD_RETRY_WPS_ON_DEMAND:I = 0x11

.field private static final CMD_START_CONFIGURE:I = 0x1

.field private static final CMD_START_CONFIGURE_DFS:I = 0x33

.field private static final CMD_START_DISCOVERY:I = 0x2

.field private static final CMD_START_DISCOVERY_DFS:I = 0x34

.field private static final CMD_START_DISCOVERY_RESUME:I = 0x37

.field private static final CMD_START_RECONFIGURE:I = 0x27

.field private static final CMD_START_UNLOCK_DFS:I = 0x45

.field private static final CMD_START_WIVU_DISCOVERY:I = 0x1c

.field private static final CMD_START_WPS:I = 0xb

.field private static final CMD_STOP_SCANNING_DONGLE:I = 0x46

.field private static final CMD_STOP_WIVU_DISCOVERY:I = 0x1d

.field private static final CMD_STOP_WPS:I = 0xc

.field private static final CMD_UPDATE_WIVU_PROGRESS:I = 0x35

.field private static final CMD_WAIT_MIRROR_STOP:I = 0x39

.field private static final CMD_WIVU_DISCOVERY_FOR_CONNECTION_REQUEST:I = 0x3b

.field private static final CMD_WIVU_DISCOVERY_TIMEOUT:I = 0x1e

.field private static final CMD_WPS_TIMEOUT:I = 0xd

.field private static final DBG:Z = true

.field private static final L2PE_TIMEOUT:I = 0x4e20

.field private static final NOISE_RSSI_THRESHOLD:I = -0x58

.field private static final NOTIFY_CONFIGURING_PROGRESS_CHANGE:I = 0x2

.field private static final NOTIFY_MIRROR_DISPLAY_STATE_CHANGE:I = 0x1

.field private static final NOTIFY_STATE_CHANGE:I = 0x0

.field private static final PATTERN_UNLOCK_TIMEOUT:I = 0x7530

.field private static final STA_INTERFACE_NAME:Ljava/lang/String; = "wlan0"

.field private static final TAG:Ljava/lang/String; = "WfdStateMachine"

.field private static final WIVU_DISCOVERY_TIMEOUT_LONG:I = 0x15f90

.field private static final WIVU_DISCOVERY_TIMEOUT_QUICK:I = 0x4e20

.field private static final WIVU_DISCOVERY_TIMEOUT_SHORT:I = 0x9c40

.field private static final WPS_TIMEOUT:I = 0x7530


# instance fields
.field mAutoTestContinouslyErrorCount:I

.field final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/htc/wfdservice/IWfdServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field mCommonProfileApKey:Ljava/lang/String;

.field mCommonProfileApSsid:Ljava/lang/String;

.field mConfigProgress:I

.field mConnManager:Landroid/net/ConnectivityManager;

.field mConnectableAphBeforeSsid:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mControlApState:Lcom/htc/server/State;

.field mControlWifiState:Lcom/htc/server/State;

.field mControlWpsState:Lcom/htc/server/State;

.field mCurrentDongle:Lcom/htc/service/DongleInfo;

.field mCurrentPage:I

.field mDefaultState:Lcom/htc/server/State;

.field mDfsSsid:Ljava/lang/String;

.field mDiscoverWivuState:Lcom/htc/server/State;

.field mEntryMode:I

.field mFixedModeProperty:Ljava/lang/String;

.field mIfDfsAvailable:Ljava/lang/String;

.field mIsAphConnectable:Z

.field mIsAphConnectableBefore:Z

.field mIsAutoTestConfiguring:Z

.field mIsCancelConfiguring:Z

.field mIsChangingProfile:Z

.field mIsConfiguring:Z

.field mIsConnectionRequest:Z

.field mIsDeferConfigure:Z

.field mIsDeferDiscovery:Z

.field mIsDfsChannel:Z

.field mIsDiscovering:Z

.field mIsFixedCT1:Z

.field mIsHardReset:Z

.field mIsMultipleWpsDongles:Z

.field mIsOldCaviumDongle:Z

.field mIsP2pSet:Z

.field mIsQuickScanning:Z

.field mIsReConfiguring:Z

.field mIsRequestScanning:Z

.field mIsResetting:Z

.field mIsResettingDongle:Z

.field mIsScanComplete:Z

.field mIsScanning:Z

.field mIsShowScanning:Z

.field mIsSwitchingAph:Z

.field mIsSwitchingDongles:Z

.field mIsUnlockDongle:Z

.field mIsUnlockSucceed:Z

.field mIsWivuTimeout:Z

.field mIsWpsStart:Z

.field mLinkDiscoverState:Lcom/htc/server/State;

.field mLinkInitState:Lcom/htc/server/State;

.field mLinkOnState:Lcom/htc/server/State;

.field mLinkResetState:Lcom/htc/server/State;

.field mNeedSwitchingAph:Z

.field mNetworkInfo:Landroid/net/NetworkInfo;

.field mNetworkType:I

.field private final mNotificationHandler:Landroid/os/Handler;

.field mNotificationManager:Landroid/app/NotificationManager;

.field mNotificationState:I

.field mPreviousPage:I

.field mResetBit:Ljava/util/BitSet;

.field mResetDongleCount:I

.field mScanDongleState:Lcom/htc/server/State;

.field mSenseVersion:Ljava/lang/String;

.field private final mSoftapInterface:Ljava/lang/String;

.field private final mStaInterface:Ljava/lang/String;

.field private mStaticAPKey:[Ljava/lang/String;

.field private mTargetAutoTestDongleSSID:Ljava/lang/String;

.field mUnlockDongle:Lcom/htc/service/DongleInfo;

.field mUnlockPattern:[B

.field mUnlockTransactionID:I

.field mWDManager:Lcom/htc/service/WirelessDisplayManager;

.field mWifiApState:I

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field mWifiState:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/16 v4, 0x38

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 280
    const-string v0, "WfdStateMachine"

    invoke-direct {p0, v0}, Lcom/htc/server/StateMachine;-><init>(Ljava/lang/String;)V

    .line 182
    new-instance v0, Lcom/htc/server/WfdStateMachine$DefaultState;

    invoke-direct {v0, p0}, Lcom/htc/server/WfdStateMachine$DefaultState;-><init>(Lcom/htc/server/WfdStateMachine;)V

    iput-object v0, p0, Lcom/htc/server/WfdStateMachine;->mDefaultState:Lcom/htc/server/State;

    .line 183
    new-instance v0, Lcom/htc/server/WfdStateMachine$LinkInitState;

    invoke-direct {v0, p0}, Lcom/htc/server/WfdStateMachine$LinkInitState;-><init>(Lcom/htc/server/WfdStateMachine;)V

    iput-object v0, p0, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    .line 184
    new-instance v0, Lcom/htc/server/WfdStateMachine$ScanDongleState;

    invoke-direct {v0, p0}, Lcom/htc/server/WfdStateMachine$ScanDongleState;-><init>(Lcom/htc/server/WfdStateMachine;)V

    iput-object v0, p0, Lcom/htc/server/WfdStateMachine;->mScanDongleState:Lcom/htc/server/State;

    .line 185
    new-instance v0, Lcom/htc/server/WfdStateMachine$ControlWifiState;

    invoke-direct {v0, p0}, Lcom/htc/server/WfdStateMachine$ControlWifiState;-><init>(Lcom/htc/server/WfdStateMachine;)V

    iput-object v0, p0, Lcom/htc/server/WfdStateMachine;->mControlWifiState:Lcom/htc/server/State;

    .line 186
    new-instance v0, Lcom/htc/server/WfdStateMachine$ControlApState;

    invoke-direct {v0, p0}, Lcom/htc/server/WfdStateMachine$ControlApState;-><init>(Lcom/htc/server/WfdStateMachine;)V

    iput-object v0, p0, Lcom/htc/server/WfdStateMachine;->mControlApState:Lcom/htc/server/State;

    .line 187
    new-instance v0, Lcom/htc/server/WfdStateMachine$ControlWpsState;

    invoke-direct {v0, p0}, Lcom/htc/server/WfdStateMachine$ControlWpsState;-><init>(Lcom/htc/server/WfdStateMachine;)V

    iput-object v0, p0, Lcom/htc/server/WfdStateMachine;->mControlWpsState:Lcom/htc/server/State;

    .line 188
    new-instance v0, Lcom/htc/server/WfdStateMachine$LinkOnState;

    invoke-direct {v0, p0}, Lcom/htc/server/WfdStateMachine$LinkOnState;-><init>(Lcom/htc/server/WfdStateMachine;)V

    iput-object v0, p0, Lcom/htc/server/WfdStateMachine;->mLinkOnState:Lcom/htc/server/State;

    .line 189
    new-instance v0, Lcom/htc/server/WfdStateMachine$LinkDiscoverState;

    invoke-direct {v0, p0}, Lcom/htc/server/WfdStateMachine$LinkDiscoverState;-><init>(Lcom/htc/server/WfdStateMachine;)V

    iput-object v0, p0, Lcom/htc/server/WfdStateMachine;->mLinkDiscoverState:Lcom/htc/server/State;

    .line 190
    new-instance v0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;

    invoke-direct {v0, p0}, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;-><init>(Lcom/htc/server/WfdStateMachine;)V

    iput-object v0, p0, Lcom/htc/server/WfdStateMachine;->mDiscoverWivuState:Lcom/htc/server/State;

    .line 191
    new-instance v0, Lcom/htc/server/WfdStateMachine$LinkResetState;

    invoke-direct {v0, p0}, Lcom/htc/server/WfdStateMachine$LinkResetState;-><init>(Lcom/htc/server/WfdStateMachine;)V

    iput-object v0, p0, Lcom/htc/server/WfdStateMachine;->mLinkResetState:Lcom/htc/server/State;

    .line 199
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/server/WfdStateMachine;->mNetworkType:I

    .line 209
    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsScanning:Z

    .line 210
    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    .line 211
    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsReConfiguring:Z

    .line 212
    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsDiscovering:Z

    .line 213
    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsAphConnectable:Z

    .line 214
    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsResetting:Z

    .line 215
    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsMultipleWpsDongles:Z

    .line 217
    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsQuickScanning:Z

    .line 218
    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsWpsStart:Z

    .line 220
    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsShowScanning:Z

    .line 221
    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsDeferConfigure:Z

    .line 222
    iput-boolean v2, p0, Lcom/htc/server/WfdStateMachine;->mIsScanComplete:Z

    .line 223
    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsDfsChannel:Z

    .line 224
    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsWivuTimeout:Z

    .line 225
    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsDeferDiscovery:Z

    .line 226
    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsSwitchingDongles:Z

    .line 227
    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mNeedSwitchingAph:Z

    .line 228
    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsP2pSet:Z

    .line 229
    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsSwitchingAph:Z

    .line 230
    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsResettingDongle:Z

    .line 231
    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsCancelConfiguring:Z

    .line 232
    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsUnlockDongle:Z

    .line 233
    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsUnlockSucceed:Z

    .line 234
    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsRequestScanning:Z

    .line 239
    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsAphConnectableBefore:Z

    .line 240
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/server/WfdStateMachine;->mConnectableAphBeforeSsid:Ljava/lang/String;

    .line 243
    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsConnectionRequest:Z

    .line 245
    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    .line 248
    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsChangingProfile:Z

    .line 252
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/server/WfdStateMachine;->mFixedModeProperty:Ljava/lang/String;

    .line 253
    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsFixedCT1:Z

    .line 256
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/server/WfdStateMachine;->mIfDfsAvailable:Ljava/lang/String;

    .line 259
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/server/WfdStateMachine;->mCommonProfileApSsid:Ljava/lang/String;

    .line 260
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/server/WfdStateMachine;->mCommonProfileApKey:Ljava/lang/String;

    .line 262
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/server/WfdStateMachine;->mDfsSsid:Ljava/lang/String;

    .line 267
    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsAutoTestConfiguring:Z

    .line 268
    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsHardReset:Z

    .line 269
    iput v3, p0, Lcom/htc/server/WfdStateMachine;->mAutoTestContinouslyErrorCount:I

    .line 275
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/server/WfdStateMachine;->mSenseVersion:Ljava/lang/String;

    .line 277
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/htc/server/WfdStateMachine;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 2219
    const/16 v0, 0x64

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "3dg6789kht"

    aput-object v1, v0, v3

    const-string v1, "8uikn3yhe1"

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "Adj8ikwld9"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ndk39qi3pL"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "skl20O9ue3"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "12kl8dh36s"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mkaj30P9h3"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "8376yhj2md"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "LK0987opK3"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "K18hn3789j"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "nahdc0wuh4"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "0pnabhe6t3"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "KKLan378k7"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "10pLmk37dh"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Isk918jey6"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "low9hb1z6t"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "0okmeng67s"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "k16278902h"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "sneif0i1b6"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "lp1mn3gd98"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "01b467eyhh"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "0pakdmne88"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "lkiqud781h"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "10pkyh35yu"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "01plskmcxz"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "638djkmeos"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "0pl3omnc36"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "qazplmwer7"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "n8u260zq1s"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "ncmwldkif0"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "ml01ij2f6t"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "nzbxv36g6t"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "1q2w3e4rkh"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "0oplmn5r3f"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "0ikegy47i9"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "kand2567w4"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "ghjs2678uv"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "0plame67qw"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "09wuklapmn"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "3456sghjk6"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "0oksw6yh88"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "slo01673rf"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "mwuet87619"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "p01jw7yeh1"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "njs6782456"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "sko2ieuje7"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "1bnehags56"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "0po2wsy76r"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "km1qu73egb"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "78nm3edf5r"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "12hj6t5sfe"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "nj0o17yhd4"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "09k2he75te"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "nm2jasq5g7"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "jwnc9oe8u3"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "gh1q3t7b7y"

    aput-object v2, v0, v1

    const-string v1, "plw18hb3e6"

    aput-object v1, v0, v4

    const/16 v1, 0x39

    const-string v2, "2swuhc76t3"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "0akeln3ue7"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "1uj3u8u3u3"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "nae7773ye8"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "anmk3o9u4h"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "akm3hfu39r"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "mnhjy6rfde"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "lpokg54edd"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "ujuyhgtr4e"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "jmnbvcer5t"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "lmw1qasd4r"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "lmnbhgt6y6"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "okoi89iu87"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "0o01lmnbvc"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "njhy65tr45"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "kmjnhgtre4"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "7u7y6thy66"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "ikjhuy667y"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "kmnbegdtr6"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "mwnej198u3"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "0p01ikjeg7"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "9iue76yht5"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "162yhgtrf5"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "0olkmjh267"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "9ij36y8i1e"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "ju87ygt56t"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "kjnmbght56"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "sjhu7ygfr4"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "8ijhyw6t54"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "jhnbvfr45r"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "8ujheyt6g5"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "0olkmnb1g6"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "hnbegt67y6"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "nbhgtrfde4"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "plmnbc4re3"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "zcvbr54e3e"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "9okjhy6765"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "jnbgfre45r"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "ikju6y5tr4"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "7yhgt555t6"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "i9io0plkj7"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "1234tgfr4e"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "jk56yt3r4e"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/server/WfdStateMachine;->mStaticAPKey:[Ljava/lang/String;

    .line 2452
    new-instance v0, Lcom/htc/server/WfdStateMachine$1;

    invoke-direct {v0, p0}, Lcom/htc/server/WfdStateMachine$1;-><init>(Lcom/htc/server/WfdStateMachine;)V

    iput-object v0, p0, Lcom/htc/server/WfdStateMachine;->mNotificationHandler:Landroid/os/Handler;

    .line 281
    iput-object p1, p0, Lcom/htc/server/WfdStateMachine;->mContext:Landroid/content/Context;

    .line 283
    new-instance v0, Lcom/htc/service/DongleInfo;

    invoke-direct {v0}, Lcom/htc/service/DongleInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    .line 285
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/htc/server/WfdStateMachine;->mConnManager:Landroid/net/ConnectivityManager;

    .line 286
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 287
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/htc/server/WfdStateMachine$WifiServiceHandler;

    invoke-direct {v2, p0}, Lcom/htc/server/WfdStateMachine$WifiServiceHandler;-><init>(Lcom/htc/server/WfdStateMachine;)V

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->asyncConnect(Landroid/net/wifi/WifiManager;Landroid/content/Context;Landroid/os/Handler;)V

    .line 288
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/htc/server/WfdStateMachine;->mNotificationManager:Landroid/app/NotificationManager;

    .line 289
    iput v3, p0, Lcom/htc/server/WfdStateMachine;->mNotificationState:I

    .line 290
    iput v3, p0, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    .line 291
    const-string v0, "wireless_display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    iput-object v0, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    .line 292
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/server/WfdStateMachine;->mSenseVersion:Ljava/lang/String;

    .line 294
    const-string v0, "wifi.interface"

    const-string v1, "wlan0"

    invoke-static {v0, v1}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/server/WfdStateMachine;->mStaInterface:Ljava/lang/String;

    .line 295
    const-string v0, "wifi.softapconcurrent.interface"

    const-string v1, "wlan1"

    invoke-static {v0, v1}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/server/WfdStateMachine;->mSoftapInterface:Ljava/lang/String;

    .line 296
    const-string v0, "WfdStateMachine"

    const-string v1, ">>>> 20120816_P2P_FW_001<<<<< "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const-string v0, "WfdStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Station interface = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mStaInterface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Softap Interface = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mSoftapInterface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    .line 311
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mDefaultState:Lcom/htc/server/State;

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->addState(Lcom/htc/server/State;)V

    .line 313
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mDefaultState:Lcom/htc/server/State;

    invoke-virtual {p0, v0, v1}, Lcom/htc/server/WfdStateMachine;->addState(Lcom/htc/server/State;Lcom/htc/server/State;)V

    .line 314
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mScanDongleState:Lcom/htc/server/State;

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {p0, v0, v1}, Lcom/htc/server/WfdStateMachine;->addState(Lcom/htc/server/State;Lcom/htc/server/State;)V

    .line 315
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mControlWifiState:Lcom/htc/server/State;

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {p0, v0, v1}, Lcom/htc/server/WfdStateMachine;->addState(Lcom/htc/server/State;Lcom/htc/server/State;)V

    .line 316
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mControlApState:Lcom/htc/server/State;

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {p0, v0, v1}, Lcom/htc/server/WfdStateMachine;->addState(Lcom/htc/server/State;Lcom/htc/server/State;)V

    .line 317
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mControlWpsState:Lcom/htc/server/State;

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {p0, v0, v1}, Lcom/htc/server/WfdStateMachine;->addState(Lcom/htc/server/State;Lcom/htc/server/State;)V

    .line 319
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mLinkOnState:Lcom/htc/server/State;

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mDefaultState:Lcom/htc/server/State;

    invoke-virtual {p0, v0, v1}, Lcom/htc/server/WfdStateMachine;->addState(Lcom/htc/server/State;Lcom/htc/server/State;)V

    .line 321
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mLinkDiscoverState:Lcom/htc/server/State;

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mDefaultState:Lcom/htc/server/State;

    invoke-virtual {p0, v0, v1}, Lcom/htc/server/WfdStateMachine;->addState(Lcom/htc/server/State;Lcom/htc/server/State;)V

    .line 322
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mDiscoverWivuState:Lcom/htc/server/State;

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mLinkDiscoverState:Lcom/htc/server/State;

    invoke-virtual {p0, v0, v1}, Lcom/htc/server/WfdStateMachine;->addState(Lcom/htc/server/State;Lcom/htc/server/State;)V

    .line 324
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mLinkResetState:Lcom/htc/server/State;

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mDefaultState:Lcom/htc/server/State;

    invoke-virtual {p0, v0, v1}, Lcom/htc/server/WfdStateMachine;->addState(Lcom/htc/server/State;Lcom/htc/server/State;)V

    .line 326
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->setInitialState(Lcom/htc/server/State;)V

    .line 327
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine;->start()V

    .line 329
    const-string v0, "WfdStateMachine"

    const-string v1, "Adding and initialize state machine finished."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :goto_0
    invoke-virtual {p0, v4}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 335
    return-void

    .line 331
    :cond_0
    const-string v0, "WfdStateMachine"

    const-string v1, "Cannot get WirelessDisplaySerivce instance, do not start WfdStateMachine."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/server/WfdStateMachine;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mStaInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/server/WfdStateMachine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/server/WfdStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->checkIfDfsAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/server/WfdStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->saveLimitedApInfo()V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/server/WfdStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->requestCT2OnDemand()V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/server/WfdStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->preloadDlnaService()V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/server/WfdStateMachine;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mSoftapInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/server/WfdStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->finish()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/server/WfdStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->requestResetOnDemand()V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/server/WfdStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->requestUnlockOnDemand()V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/server/WfdStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->forceDisableAp()V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/server/WfdStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->setL2peApInfo()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/server/WfdStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->requestWpsOnDemand()V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/server/WfdStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/htc/server/WfdStateMachine;->getNoWpsApSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/server/WfdStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/htc/server/WfdStateMachine;->getNoWpsApKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/server/WfdStateMachine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/htc/server/WfdStateMachine;->sendConfiguringProgress(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/server/WfdStateMachine;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/htc/server/WfdStateMachine;->reportErrorCode(IZ)V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/server/WfdStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->forceUpdateDongles()V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/server/WfdStateMachine;Lcom/htc/service/DongleInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/htc/server/WfdStateMachine;->updatePairedDongle(Lcom/htc/service/DongleInfo;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/server/WfdStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->notifyDfsReconnect()V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/server/WfdStateMachine;ZLcom/htc/service/DongleInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/htc/server/WfdStateMachine;->showConnectingDialog(ZLcom/htc/service/DongleInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/server/WfdStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->isCommonProfileAPEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/htc/server/WfdStateMachine;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/htc/server/WfdStateMachine;->notifyConcurrentEnabled(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/server/WfdStateMachine;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/htc/server/WfdStateMachine;->isAphConnectable(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/htc/server/WfdStateMachine;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/htc/server/WfdStateMachine;->isDglConnToSameAphOrUncfg(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/htc/server/WfdStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->isAphSignalPoor()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/htc/server/WfdStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->isNoisyEnv()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/htc/server/WfdStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->isConnectToDfsChannels()Z

    move-result v0

    return v0
.end method

.method private checkIfDfsAvailable()Z
    .locals 4

    .prologue
    .line 2409
    const/4 v0, 0x0

    .line 2410
    .local v0, result:Z
    const-string v1, "WfdStateMachine"

    const-string v2, "[WFD]===>checkIfDfsAvailable()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2411
    const-string v1, "persist.sys.wfd.dfsavailable"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/server/WfdStateMachine;->mIfDfsAvailable:Ljava/lang/String;

    .line 2412
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mIfDfsAvailable:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2413
    const/4 v0, 0x1

    .line 2416
    :goto_0
    const-string v1, "WfdStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WFD]===> persist.sys.wfd.dfsavailable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    return v0

    .line 2415
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearLimitedApInfo()V
    .locals 5

    .prologue
    .line 2046
    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 2047
    .local v1, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2048
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->getCurrentNetwork()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2049
    .local v0, network:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getLimited(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2050
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->setLimited(Landroid/net/wifi/WifiConfiguration;I)V

    .line 2051
    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 2052
    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 2053
    const-string v2, "WfdStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[WFD]===>Clear limited AP info, ssid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    .end local v0           #network:Landroid/net/wifi/WifiConfiguration;
    :cond_0
    return-void
.end method

.method private finish()V
    .locals 2

    .prologue
    .line 2572
    const-string v0, "WfdStateMachine"

    const-string v1, "finish()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 2574
    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 2575
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    .line 2576
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    .line 2577
    return-void
.end method

.method private forceDisableAp()V
    .locals 2

    .prologue
    .line 2599
    const-string v0, "WfdStateMachine"

    const-string v1, "forceDisableAp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    new-instance v0, Lcom/htc/server/WfdStateMachine$3;

    invoke-direct {v0, p0}, Lcom/htc/server/WfdStateMachine$3;-><init>(Lcom/htc/server/WfdStateMachine;)V

    invoke-virtual {v0}, Lcom/htc/server/WfdStateMachine$3;->start()V

    .line 2617
    return-void
.end method

.method private forceUpdateDongles()V
    .locals 2

    .prologue
    .line 2587
    const-string v0, "WfdStateMachine"

    const-string v1, "forceUpdateDongles()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2588
    new-instance v0, Lcom/htc/server/WfdStateMachine$2;

    invoke-direct {v0, p0}, Lcom/htc/server/WfdStateMachine$2;-><init>(Lcom/htc/server/WfdStateMachine;)V

    invoke-virtual {v0}, Lcom/htc/server/WfdStateMachine$2;->start()V

    .line 2596
    return-void
.end method

.method private freqToChannel(I)I
    .locals 2
    .parameter "freq"

    .prologue
    .line 2352
    const/4 v0, 0x0

    .line 2353
    .local v0, outchannel:I
    const/16 v1, 0x96c

    if-lt p1, v1, :cond_0

    const/16 v1, 0x9a8

    if-gt p1, v1, :cond_0

    .line 2354
    add-int/lit16 v1, p1, -0x967

    div-int/lit8 v0, v1, 0x5

    .line 2362
    :goto_0
    return v0

    .line 2355
    :cond_0
    const/16 v1, 0x1432

    if-lt p1, v1, :cond_1

    const/16 v1, 0x16c1

    if-gt p1, v1, :cond_1

    .line 2356
    add-int/lit16 v1, p1, -0x1388

    div-int/lit8 v0, v1, 0x5

    goto :goto_0

    .line 2357
    :cond_1
    const/16 v1, 0x9b4

    if-ne p1, v1, :cond_2

    .line 2358
    const/16 v0, 0xe

    goto :goto_0

    .line 2360
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCurrentNetwork()Landroid/net/wifi/WifiConfiguration;
    .locals 9

    .prologue
    .line 2059
    iget-object v6, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    .line 2060
    .local v5, wifiInfo:Landroid/net/wifi/WifiInfo;
    const/4 v1, 0x0

    .line 2061
    .local v1, currentNetwork:Landroid/net/wifi/WifiConfiguration;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 2062
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    .line 2063
    .local v3, netid:I
    iget-object v6, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .line 2064
    .local v4, networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v4, :cond_1

    .line 2065
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

    .line 2066
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v6, v3, :cond_0

    .line 2067
    move-object v1, v0

    .line 2068
    const-string v6, "WfdStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[WFD]===>Current network, ssid = "

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

    invoke-static {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getLimited(Landroid/net/wifi/WifiConfiguration;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2074
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #netid:I
    .end local v4           #networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_1
    return-object v1
.end method

.method private getCurrentWifiSsid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2126
    const-string v0, ""

    .line 2127
    .local v0, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 2128
    .local v1, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2129
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 2131
    :cond_0
    return-object v0
.end method

.method private getNoWpsApKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "defaultValue"

    .prologue
    const/16 v6, 0x11

    const/16 v5, 0x10

    .line 2260
    const-string v3, "WfdStateMachine"

    const-string v4, "[WFD]===>getNoWpsApSsid()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    const-string v0, ""

    .line 2262
    .local v0, SoftapKey:Ljava/lang/String;
    const-string v1, ""

    .line 2264
    .local v1, WiFiMacAddr:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine;->mCommonProfileApKey:Ljava/lang/String;

    const-string v4, ""

    if-ne v3, v4, :cond_2

    .line 2265
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->readWiFiMacAddr()Ljava/lang/String;

    move-result-object v1

    .line 2266
    const-string v3, ""

    if-eq v1, v3, :cond_1

    .line 2267
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 2268
    const/16 v3, 0xc

    const/16 v4, 0xe

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v4, 0xf

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    add-int/2addr v3, v4

    rem-int/lit8 v2, v3, 0x64

    .line 2271
    .local v2, keyIndex:I
    const-string v3, "WfdStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WFD]===>keyIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine;->mStaticAPKey:[Ljava/lang/String;

    aget-object v3, v3, v2

    iput-object v3, p0, Lcom/htc/server/WfdStateMachine;->mCommonProfileApKey:Ljava/lang/String;

    .line 2273
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mCommonProfileApKey:Ljava/lang/String;

    .line 2282
    .end local v2           #keyIndex:I
    :cond_0
    :goto_0
    const-string v3, "WfdStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WFD]===>===>getNoWpsApKey: = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    return-object v0

    .line 2276
    :cond_1
    move-object v0, p1

    .line 2277
    const-string v3, "WfdStateMachine"

    const-string v4, "[WFD]===>getNoWpsApKey: WiFiMacAddr is empty! SoftapKey: user profile!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2280
    :cond_2
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mCommonProfileApKey:Ljava/lang/String;

    goto :goto_0
.end method

.method private getNoWpsApSsid(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "defaultValue"

    .prologue
    const/16 v6, 0x11

    .line 2233
    const-string v3, "WfdStateMachine"

    const-string v4, "[WFD]===>getNoWpsApSsid()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    const-string v2, "MLHD_APM_"

    .line 2235
    .local v2, mStaticAPSSID:Ljava/lang/String;
    const-string v0, ""

    .line 2236
    .local v0, SoftapSsid:Ljava/lang/String;
    const-string v1, ""

    .line 2238
    .local v1, WiFiMacAddr:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine;->mCommonProfileApSsid:Ljava/lang/String;

    const-string v4, ""

    if-ne v3, v4, :cond_2

    .line 2239
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->readWiFiMacAddr()Ljava/lang/String;

    move-result-object v1

    .line 2240
    const-string v3, ""

    if-eq v1, v3, :cond_1

    .line 2241
    const-string v3, "WfdStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WFD]===>getNoWpsApSsid()...WiFiMacAddr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 2243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xc

    const/16 v5, 0xe

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xf

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/server/WfdStateMachine;->mCommonProfileApSsid:Ljava/lang/String;

    .line 2246
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mCommonProfileApSsid:Ljava/lang/String;

    .line 2255
    :cond_0
    :goto_0
    const-string v3, "WfdStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WFD]===>===>getNoWpsApSsid: = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    return-object v0

    .line 2249
    :cond_1
    move-object v0, p1

    .line 2250
    const-string v3, "WfdStateMachine"

    const-string v4, "[WFD]===>getNoWpsApSsid: WiFiMacAddr is empty! SoftapSsid: user profile!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2253
    :cond_2
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mCommonProfileApSsid:Ljava/lang/String;

    goto :goto_0
.end method

.method private isAllowToGoBack(I)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 2580
    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    const/16 v0, 0x38

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3c

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAphConnectable(Z)Z
    .locals 6
    .parameter "checkLimited"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2311
    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 2312
    .local v1, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2314
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->getCurrentNetwork()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2315
    .local v0, current:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getLimited(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    if-eq v2, v4, :cond_1

    .line 2317
    :cond_0
    iput-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsAphConnectable:Z

    .line 2318
    const-string v2, "WfdStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AP_H is connectable, SSID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n    , bssid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    .end local v0           #current:Landroid/net/wifi/WifiConfiguration;
    :goto_0
    const-string v2, "WfdStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[WFD]===>isAphConnectable() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsAphConnectable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2332
    iget-boolean v2, p0, Lcom/htc/server/WfdStateMachine;->mIsAphConnectable:Z

    return v2

    .line 2321
    .restart local v0       #current:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    const-string v2, "WfdStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AP_H is not connectable, SSID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    iput-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsAphConnectable:Z

    goto :goto_0

    .line 2324
    .end local v0           #current:Landroid/net/wifi/WifiConfiguration;
    :cond_2
    sget-boolean v2, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/htc/server/WfdStateMachine;->mIsAphConnectableBefore:Z

    if-eqz v2, :cond_3

    .line 2325
    const-string v2, "WfdStateMachine"

    const-string v3, "Concurrent isn\'t support, assume AP_H is connectable."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    iput-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsAphConnectable:Z

    goto :goto_0

    .line 2328
    :cond_3
    iput-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsAphConnectable:Z

    goto :goto_0
.end method

.method private isAphSignalPoor()Z
    .locals 7

    .prologue
    const/16 v5, -0x4b

    .line 2336
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 2337
    .local v3, wifiInfo:Landroid/net/wifi/WifiInfo;
    const/4 v1, -0x1

    .line 2338
    .local v1, handsetRssi:I
    const/4 v0, -0x1

    .line 2339
    .local v0, dongleRssi:I
    const/4 v2, 0x0

    .line 2340
    .local v2, isPoor:Z
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2341
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    .line 2344
    :cond_0
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    if-eqz v4, :cond_1

    .line 2345
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget v4, v4, Lcom/htc/service/DongleInfo;->rssi:I

    neg-int v0, v4

    .line 2346
    :cond_1
    if-lt v1, v5, :cond_2

    if-ge v0, v5, :cond_3

    :cond_2
    const/4 v2, 0x1

    .line 2347
    :goto_0
    const-string v4, "WfdStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WFD]===>isAphSignalPoor() isPoor = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", handset = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", dongle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    return v2

    .line 2346
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isCommonProfileAPEnabled()Z
    .locals 5

    .prologue
    .line 2287
    const-string v2, "WfdStateMachine"

    const-string v3, "[WFD]===>isCommonProfileAPEnabled()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    const/4 v0, 0x0

    .line 2291
    .local v0, ret:Z
    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWirelessDisplayCommonApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 2293
    .local v1, wifiApConfig:Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_0

    .line 2304
    const/4 v0, 0x1

    .line 2306
    :cond_0
    const-string v2, "WfdStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[WFD]===>isCommonProfileAPEnabled()...ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    return v0
.end method

.method private isConnectToDfsChannels()Z
    .locals 10

    .prologue
    .line 2421
    const/4 v5, 0x0

    .line 2422
    .local v5, result:Z
    iget-object v7, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    .line 2423
    .local v6, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 2424
    invoke-virtual {p0, v6}, Lcom/htc/server/WfdStateMachine;->getAphFrequency(Landroid/net/wifi/WifiInfo;)I

    move-result v2

    .line 2425
    .local v2, freq:I
    const-string v7, "WfdStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Check if station in DFS channel = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2426
    sget-object v0, Lcom/htc/server/WfdUtils;->DFS_CHANNELS:[I

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v1, v0, v3

    .line 2427
    .local v1, channel:I
    if-ne v2, v1, :cond_1

    .line 2428
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/server/WfdStateMachine;->mDfsSsid:Ljava/lang/String;

    .line 2429
    const/4 v5, 0x1

    .line 2434
    .end local v0           #arr$:[I
    .end local v1           #channel:I
    .end local v2           #freq:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    return v5

    .line 2426
    .restart local v0       #arr$:[I
    .restart local v1       #channel:I
    .restart local v2       #freq:I
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private isDglConnToSameAphOrUncfg(Z)Z
    .locals 9
    .parameter "checkAph"

    .prologue
    .line 2136
    const/4 v4, 0x0

    .line 2137
    .local v4, result:Z
    iget-object v6, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v6}, Lcom/htc/service/WirelessDisplayManager;->getInterface()Ljava/lang/String;

    move-result-object v3

    .line 2138
    .local v3, iface:Ljava/lang/String;
    const/4 v0, 0x1

    .line 2139
    .local v0, currentIsSta:Z
    if-eqz v3, :cond_0

    .line 2140
    const-string v6, "WfdStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current wivu interface is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    iget-object v6, p0, Lcom/htc/server/WfdStateMachine;->mStaInterface:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v0, 0x1

    .line 2143
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    if-eqz v6, :cond_3

    .line 2144
    const-string v6, "WfdStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Check dongle aph = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    invoke-virtual {v8}, Lcom/htc/service/DongleInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    iget-object v6, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v6, v6, Lcom/htc/service/DongleInfo;->pairedApm:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v6, v6, Lcom/htc/service/DongleInfo;->pairedApm:Ljava/lang/String;

    const-string v7, "00:00:00:00:00:00"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    iget-object v6, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget v6, v6, Lcom/htc/service/DongleInfo;->status:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_2

    iget-boolean v6, p0, Lcom/htc/server/WfdStateMachine;->mIsReConfiguring:Z

    if-eqz v6, :cond_5

    .line 2147
    :cond_2
    const/4 v4, 0x1

    .line 2148
    const-string v6, "WfdStateMachine"

    const-string v7, "Dongle is unconfigured, do not check aph"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    :cond_3
    :goto_1
    const-string v6, "WfdStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[WFD]===>isDongleConnectToSameAph() result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    return v4

    .line 2141
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 2149
    :cond_5
    iget-object v6, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-boolean v6, v6, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    if-nez v6, :cond_6

    .line 2150
    iget-object v6, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v1, v6, Lcom/htc/service/DongleInfo;->currentAph:Ljava/lang/String;

    .line 2151
    .local v1, dongleAph:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    .line 2152
    .local v5, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    if-eqz v1, :cond_3

    .line 2153
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    .line 2154
    .local v2, handsetAph:Ljava/lang/String;
    const-string v6, "WfdStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[WFD]===>handset aph = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", dongle aph = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 2156
    if-nez v4, :cond_3

    if-eqz p1, :cond_3

    invoke-direct {p0, v1}, Lcom/htc/server/WfdStateMachine;->isDongleAphAvailable(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2157
    const/4 v4, 0x1

    goto :goto_1

    .line 2160
    .end local v1           #dongleAph:Ljava/lang/String;
    .end local v2           #handsetAph:Ljava/lang/String;
    .end local v5           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_6
    iget-object v6, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-boolean v6, v6, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    if-eqz v6, :cond_3

    if-eqz v0, :cond_3

    .line 2161
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private isDongleAlive()Z
    .locals 7

    .prologue
    .line 2438
    const/4 v4, 0x1

    .line 2439
    .local v4, result:Z
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    .line 2440
    .local v0, dongle:Lcom/htc/service/DongleInfo;
    if-eqz v0, :cond_1

    .line 2441
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v5}, Lcom/htc/service/WirelessDisplayManager;->getDiscoveryDongleList()Ljava/util/List;

    move-result-object v1

    .line 2442
    .local v1, donglelist:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/service/DongleInfo;

    .line 2443
    .local v3, info:Lcom/htc/service/DongleInfo;
    iget-object v5, v3, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    iget-object v6, v0, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    if-ne v5, v6, :cond_0

    .line 2444
    const/4 v4, 0x0

    .line 2445
    iput-object v3, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    goto :goto_0

    .line 2449
    .end local v1           #donglelist:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #info:Lcom/htc/service/DongleInfo;
    :cond_1
    return v4
.end method

.method private isDongleAphAvailable(Ljava/lang/String;)Z
    .locals 14
    .parameter "aphMac"

    .prologue
    .line 2078
    const-string v11, "WfdStateMachine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[WFD]===>isDongleAphAvailable() "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    const-string v11, "00:00:00:00:00:00"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2080
    const/4 v11, 0x0

    .line 2122
    :goto_0
    return v11

    .line 2082
    :cond_0
    :try_start_0
    iget-object v11, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    .line 2083
    .local v6, networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v11, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v9

    .line 2085
    .local v9, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const-string v1, ""

    .line 2086
    .local v1, currentSsid:Ljava/lang/String;
    const/4 v7, 0x1

    .line 2087
    .local v7, noMoreNetwork:Z
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2088
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 2089
    .local v5, netId:I
    const-string v11, "WfdStateMachine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[WFD]===>Configured network, ssid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", network ID = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", limited = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getLimited(Landroid/net/wifi/WifiConfiguration;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->getCurrentWifiSsid()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2093
    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 2095
    const/4 v7, 0x0

    .line 2096
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    .line 2098
    .local v8, result:Landroid/net/wifi/ScanResult;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2099
    .local v10, ssid:Ljava/lang/String;
    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, v8, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getLimited(Landroid/net/wifi/WifiConfiguration;)I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_2

    .line 2100
    const-string v11, "WfdStateMachine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[WFD]===>Enable network, ssid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", bssid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v8, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    invoke-virtual {p0, v5}, Lcom/htc/server/WfdStateMachine;->connectNetwork(I)V

    .line 2102
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/htc/server/WfdStateMachine;->mNeedSwitchingAph:Z

    .line 2103
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/htc/server/WfdStateMachine;->mIsSwitchingAph:Z

    .line 2104
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2109
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #netId:I
    .end local v8           #result:Landroid/net/wifi/ScanResult;
    .end local v10           #ssid:Ljava/lang/String;
    :cond_3
    if-nez v7, :cond_4

    iget-boolean v11, p0, Lcom/htc/server/WfdStateMachine;->mNeedSwitchingAph:Z

    if-nez v11, :cond_4

    iget-object v11, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2110
    const-string v11, "WfdStateMachine"

    const-string v12, "[WFD]===>Trigger scanning...Defer discovery..."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/htc/server/WfdStateMachine;->mNeedSwitchingAph:Z

    .line 2113
    const/16 v11, 0x37

    const-wide/16 v12, 0x2710

    invoke-virtual {p0, v11, v12, v13}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    .line 2114
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2117
    :cond_4
    iget-boolean v11, p0, Lcom/htc/server/WfdStateMachine;->mNeedSwitchingAph:Z

    if-eqz v11, :cond_5

    .line 2118
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/htc/server/WfdStateMachine;->mNeedSwitchingAph:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2122
    .end local v1           #currentSsid:Ljava/lang/String;
    .end local v6           #networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v7           #noMoreNetwork:Z
    .end local v9           #results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_5
    :goto_1
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 2119
    :catch_0
    move-exception v2

    .line 2120
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private isNoisyEnv()Z
    .locals 13

    .prologue
    .line 2366
    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    .line 2367
    .local v2, dongle:Lcom/htc/service/DongleInfo;
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    .line 2368
    .local v9, wifiInfo:Landroid/net/wifi/WifiInfo;
    const/4 v4, 0x0

    .line 2369
    .local v4, handsetRssi:I
    const/4 v1, 0x0

    .line 2370
    .local v1, curfreq:I
    const-string v0, ""

    .line 2371
    .local v0, curSsid:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2372
    .local v6, isNoise:Z
    const-string v10, "WfdStateMachine"

    const-string v11, "[WFD]===>isNoisyEnv()"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 2375
    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v4

    .line 2376
    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 2377
    invoke-virtual {p0, v9}, Lcom/htc/server/WfdStateMachine;->getAphFrequency(Landroid/net/wifi/WifiInfo;)I

    move-result v1

    .line 2379
    const-string v10, "WfdStateMachine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[WFD]===> ( noise) main, ssid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", frequency = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", signal level = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2382
    iget-object v10, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v8

    .line 2384
    .local v8, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :try_start_0
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    .line 2385
    .local v7, result:Landroid/net/wifi/ScanResult;
    iget-object v10, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v11, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v11, v11, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 2387
    iget v10, v7, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-direct {p0, v10}, Lcom/htc/server/WfdStateMachine;->freqToChannel(I)I

    move-result v10

    invoke-direct {p0, v1}, Lcom/htc/server/WfdStateMachine;->freqToChannel(I)I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/4 v11, 0x1

    if-gt v10, v11, :cond_0

    iget v10, v7, Landroid/net/wifi/ScanResult;->level:I

    const/16 v11, -0x58

    if-le v10, v11, :cond_0

    .line 2388
    const-string v10, "WfdStateMachine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[WFD]===> ( noise) Result, ssid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", frequency = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", ch= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-direct {p0, v12}, Lcom/htc/server/WfdStateMachine;->freqToChannel(I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", signal level = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2390
    const/4 v6, 0x1

    .line 2399
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #result:Landroid/net/wifi/ScanResult;
    .end local v8           #results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_1
    :goto_0
    iget-boolean v10, p0, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    if-eqz v10, :cond_2

    .line 2400
    const/4 v6, 0x0

    .line 2404
    :goto_1
    const-string v10, "WfdStateMachine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[WFD]===>isNoisyEnv()...isNoise = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2405
    return v6

    .line 2394
    .restart local v8       #results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :catch_0
    move-exception v3

    .line 2395
    .local v3, ex:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2402
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v8           #results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_2
    const/4 v6, 0x1

    goto :goto_1
.end method

.method private notifyConcurrentEnabled(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 2638
    const-string v1, "WfdStateMachine"

    const-string v2, "notifyConcurrentEnabled()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2639
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.wifidisplay.NOTIFY_CONCURRENT_MODE_ENABLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2640
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 2641
    const-string v1, "ENABLED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2644
    :goto_0
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2645
    return-void

    .line 2643
    :cond_0
    const-string v1, "ENABLED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method private notifyDfsReconnect()V
    .locals 3

    .prologue
    .line 2632
    const-string v1, "WfdStateMachine"

    const-string v2, "notifyDfsReconnect()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2633
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.wifidisplay.NOTIFY_RECONNECT_DFS_WIFI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2634
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2635
    return-void
.end method

.method private preloadDlnaService()V
    .locals 1

    .prologue
    .line 2824
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2825
    new-instance v0, Lcom/htc/server/WfdStateMachine$8;

    invoke-direct {v0, p0}, Lcom/htc/server/WfdStateMachine$8;-><init>(Lcom/htc/server/WfdStateMachine;)V

    invoke-virtual {v0}, Lcom/htc/server/WfdStateMachine$8;->start()V

    .line 2832
    :cond_0
    return-void
.end method

.method private readConfigFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "filePath"

    .prologue
    .line 2169
    const-string v7, "WfdStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[WFD]===>readConfigFile(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 2171
    .local v6, result:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 2172
    .local v1, in:Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 2173
    .local v4, reader:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 2176
    .local v3, line:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2177
    .end local v1           #in:Ljava/io/FileInputStream;
    .local v2, in:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    .line 2178
    .end local v4           #reader:Ljava/io/BufferedReader;
    .local v5, reader:Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2179
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2180
    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2181
    const-string v7, "WfdStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Reading config is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a

    goto :goto_0

    .line 2183
    :catch_0
    move-exception v0

    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    move-object v1, v2

    .line 2184
    .end local v2           #in:Ljava/io/FileInputStream;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v1       #in:Ljava/io/FileInputStream;
    :goto_1
    :try_start_3
    const-string v7, "WfdStateMachine"

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
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2188
    if-eqz v1, :cond_0

    .line 2190
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 2194
    :cond_0
    :goto_2
    if-eqz v4, :cond_1

    .line 2196
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 2201
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_1
    :goto_3
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 2188
    .end local v1           #in:Ljava/io/FileInputStream;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/FileInputStream;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :cond_2
    if-eqz v2, :cond_3

    .line 2190
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 2194
    :cond_3
    :goto_4
    if-eqz v5, :cond_4

    .line 2196
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    :cond_4
    :goto_5
    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    move-object v1, v2

    .line 2200
    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_3

    .line 2185
    :catch_1
    move-exception v0

    .line 2186
    .local v0, e:Ljava/io/IOException;
    :goto_6
    :try_start_8
    const-string v7, "WfdStateMachine"

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
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2188
    if-eqz v1, :cond_5

    .line 2190
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 2194
    :cond_5
    :goto_7
    if-eqz v4, :cond_1

    .line 2196
    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_3

    .line 2197
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v7

    goto :goto_3

    .line 2188
    :catchall_0
    move-exception v7

    :goto_8
    if-eqz v1, :cond_6

    .line 2190
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 2194
    :cond_6
    :goto_9
    if-eqz v4, :cond_7

    .line 2196
    :try_start_c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 2188
    :cond_7
    :goto_a
    throw v7

    .line 2191
    :catch_3
    move-exception v8

    goto :goto_9

    .line 2197
    :catch_4
    move-exception v8

    goto :goto_a

    .line 2191
    .local v0, e:Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v7

    goto :goto_2

    .local v0, e:Ljava/io/IOException;
    :catch_6
    move-exception v7

    goto :goto_7

    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #in:Ljava/io/FileInputStream;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/FileInputStream;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catch_7
    move-exception v7

    goto :goto_4

    .line 2197
    :catch_8
    move-exception v7

    goto :goto_5

    .line 2188
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_8

    .end local v1           #in:Ljava/io/FileInputStream;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/FileInputStream;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_8

    .line 2185
    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    :catch_9
    move-exception v0

    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_6

    .end local v1           #in:Ljava/io/FileInputStream;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/FileInputStream;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catch_a
    move-exception v0

    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_6

    .line 2183
    :catch_b
    move-exception v0

    goto/16 :goto_1

    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    :catch_c
    move-exception v0

    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method private readWiFiMacAddr()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2205
    const-string v3, "WfdStateMachine"

    const-string v4, "[WFD]===>readWiFiMacAddr()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sys/class/net/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine;->mStaInterface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/address"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2207
    .local v1, WiFiMacAddr_FilePath:Ljava/lang/String;
    const-string v0, ""

    .line 2210
    .local v0, WiFiMacAddr:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v1}, Lcom/htc/server/WfdStateMachine;->readConfigFile(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2214
    :goto_0
    const-string v3, "WfdStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WFD]===>readWiFiMacAddr(), WiFi MAC = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    return-object v0

    .line 2211
    :catch_0
    move-exception v2

    .line 2212
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private reportErrorCode(IZ)V
    .locals 8
    .parameter "error"
    .parameter "updateUI"

    .prologue
    const/16 v7, 0x27

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2736
    const-string v1, "WfdStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WFD]===>reportErrorCode() error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2741
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.INTENT_NOTIFY_DONGLE_CONNECTION_FAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2742
    .local v0, notify_connection_fail:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2744
    iput-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsReConfiguring:Z

    .line 2745
    iput-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    .line 2746
    iput-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsDiscovering:Z

    .line 2747
    iput-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsShowScanning:Z

    .line 2748
    iput-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsDeferConfigure:Z

    .line 2749
    iput-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsDeferDiscovery:Z

    .line 2750
    iput-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mNeedSwitchingAph:Z

    .line 2751
    iput-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsSwitchingDongles:Z

    .line 2752
    iput-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsUnlockDongle:Z

    .line 2753
    iput-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsUnlockSucceed:Z

    .line 2755
    const-string v1, "WfdStateMachine"

    const-string v2, "Enable scan....@reportError"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2756
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v1, v4}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setWifiDisplayUnscan(Landroid/net/wifi/WifiManager;Z)Z

    .line 2757
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v1, v4}, Lcom/htc/service/WirelessDisplayManager;->setWifiNetworkLimit(Z)V

    .line 2759
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    if-eq p1, v6, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 2761
    :cond_0
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->forceUpdateDongles()V

    .line 2763
    :cond_1
    if-nez p2, :cond_2

    .line 2789
    :goto_0
    return-void

    .line 2766
    :cond_2
    iget-boolean v1, p0, Lcom/htc/server/WfdStateMachine;->mIsAutoTestConfiguring:Z

    if-nez v1, :cond_6

    .line 2767
    iget v1, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-nez v1, :cond_3

    .line 2768
    const/16 v1, 0x26

    invoke-direct {p0, v1}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    goto :goto_0

    .line 2769
    :cond_3
    iget v1, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-ne v1, v5, :cond_4

    .line 2770
    invoke-direct {p0, v7}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    goto :goto_0

    .line 2771
    :cond_4
    iget v1, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-ne v1, v6, :cond_5

    .line 2772
    invoke-direct {p0, v7}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    .line 2773
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    invoke-direct {p0, v4, v1}, Lcom/htc/server/WfdStateMachine;->showConnectingDialog(ZLcom/htc/service/DongleInfo;)V

    goto :goto_0

    .line 2775
    :cond_5
    const/16 v1, 0x28

    invoke-direct {p0, v1}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    goto :goto_0

    .line 2777
    :cond_6
    iget v1, p0, Lcom/htc/server/WfdStateMachine;->mAutoTestContinouslyErrorCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/server/WfdStateMachine;->mAutoTestContinouslyErrorCount:I

    .line 2778
    const-string v1, "WfdStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WFD]===>reportErrorCode() mAutoTestContinouslyErrorCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/server/WfdStateMachine;->mAutoTestContinouslyErrorCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2780
    iget v1, p0, Lcom/htc/server/WfdStateMachine;->mAutoTestContinouslyErrorCount:I

    const/16 v2, 0xa

    if-lt v1, v2, :cond_7

    .line 2781
    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine;->retryConfigure()V

    .line 2782
    iput-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsHardReset:Z

    .line 2783
    const-string v1, "WfdStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mAutoTestContinouslyErrorCount >= 10, mIsHardReset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsHardReset:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    iput v4, p0, Lcom/htc/server/WfdStateMachine;->mAutoTestContinouslyErrorCount:I

    .line 2786
    :cond_7
    const/16 v1, 0x36

    invoke-direct {p0, v1}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    .line 2787
    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    goto :goto_0
.end method

.method private requestCT2OnDemand()V
    .locals 2

    .prologue
    .line 2666
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v0, v0, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2667
    new-instance v0, Lcom/htc/server/WfdStateMachine$5;

    invoke-direct {v0, p0}, Lcom/htc/server/WfdStateMachine$5;-><init>(Lcom/htc/server/WfdStateMachine;)V

    invoke-virtual {v0}, Lcom/htc/server/WfdStateMachine$5;->start()V

    .line 2683
    :goto_0
    return-void

    .line 2681
    :cond_0
    const-string v0, "WfdStateMachine"

    const-string v1, "[WFD]===>requestCT2OnDemand() mCurrentDongle is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private requestResetOnDemand()V
    .locals 2

    .prologue
    .line 2686
    const-string v0, "WfdStateMachine"

    const-string v1, "[WFD]===>requestResetOnDemand()+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v0, v0, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2688
    new-instance v0, Lcom/htc/server/WfdStateMachine$6;

    invoke-direct {v0, p0}, Lcom/htc/server/WfdStateMachine$6;-><init>(Lcom/htc/server/WfdStateMachine;)V

    invoke-virtual {v0}, Lcom/htc/server/WfdStateMachine$6;->start()V

    .line 2712
    :goto_0
    return-void

    .line 2710
    :cond_0
    const-string v0, "WfdStateMachine"

    const-string v1, "[WFD]===>requestResetOnDemand() mCurrentDongle is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private requestUnlockOnDemand()V
    .locals 2

    .prologue
    .line 2715
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mUnlockDongle:Lcom/htc/service/DongleInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mUnlockDongle:Lcom/htc/service/DongleInfo;

    iget-object v0, v0, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2716
    new-instance v0, Lcom/htc/server/WfdStateMachine$7;

    invoke-direct {v0, p0}, Lcom/htc/server/WfdStateMachine$7;-><init>(Lcom/htc/server/WfdStateMachine;)V

    invoke-virtual {v0}, Lcom/htc/server/WfdStateMachine$7;->start()V

    .line 2733
    :goto_0
    return-void

    .line 2731
    :cond_0
    const-string v0, "WfdStateMachine"

    const-string v1, "[WFD]===>requestUnlockOnDemand() mUnlockDongle is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private requestWpsOnDemand()V
    .locals 2

    .prologue
    .line 2648
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v0, v0, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2649
    new-instance v0, Lcom/htc/server/WfdStateMachine$4;

    invoke-direct {v0, p0}, Lcom/htc/server/WfdStateMachine$4;-><init>(Lcom/htc/server/WfdStateMachine;)V

    invoke-virtual {v0}, Lcom/htc/server/WfdStateMachine$4;->start()V

    .line 2663
    :goto_0
    return-void

    .line 2661
    :cond_0
    const-string v0, "WfdStateMachine"

    const-string v1, "[WFD]===>requestWpsOnDemand() mCurrentDongle is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetConfigurationFile()V
    .locals 2

    .prologue
    .line 2508
    const-string v0, "WfdStateMachine"

    const-string v1, "resetConfigurationFile()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mContext:Landroid/content/Context;

    const-string v1, "/data/misc/wifidisplay.conf"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 2510
    return-void
.end method

.method private saveLimitedApInfo()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 2033
    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 2034
    .local v1, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2035
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->getCurrentNetwork()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2036
    .local v0, network:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getLimited(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 2037
    invoke-static {v0, v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->setLimited(Landroid/net/wifi/WifiConfiguration;I)V

    .line 2038
    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 2039
    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 2040
    const-string v2, "WfdStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[WFD]===>Save limited AP info, ssid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    .end local v0           #network:Landroid/net/wifi/WifiConfiguration;
    :cond_0
    return-void
.end method

.method private sendConfigureStateChanged(I)V
    .locals 4
    .parameter "status"

    .prologue
    .line 2815
    const-string v1, "WfdStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WFD]===>sendConfigStateChanged() status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2816
    if-lez p1, :cond_0

    .line 2817
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.wifidisplay.CONFIGURE_STATE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2818
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "config_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2819
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2821
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private sendConfiguringProgress(I)V
    .locals 4
    .parameter "progress"

    .prologue
    .line 2513
    const-string v1, "WfdStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendConfiguringProgress() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2514
    iput p1, p0, Lcom/htc/server/WfdStateMachine;->mConfigProgress:I

    .line 2515
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mNotificationHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2516
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2517
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mNotificationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2518
    return-void
.end method

.method private sendNotificationState(I)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, 0x0

    .line 2521
    const-string v2, "WfdStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendNotificationState() state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2522
    invoke-direct {p0, p1}, Lcom/htc/server/WfdStateMachine;->isAllowToGoBack(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2523
    iget v2, p0, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    iput v2, p0, Lcom/htc/server/WfdStateMachine;->mPreviousPage:I

    .line 2524
    iput p1, p0, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    .line 2525
    const-string v2, "WfdStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update pages: current = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", previous = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/server/WfdStateMachine;->mPreviousPage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    :cond_0
    iget v2, p0, Lcom/htc/server/WfdStateMachine;->mNotificationState:I

    if-ne p1, v2, :cond_1

    const/16 v2, 0xa

    if-ne p1, v2, :cond_5

    .line 2528
    :cond_1
    const/16 v2, 0x2e

    if-eq p1, v2, :cond_2

    const/16 v2, 0x31

    if-eq p1, v2, :cond_2

    const/16 v2, 0x32

    if-eq p1, v2, :cond_2

    const/16 v2, 0x34

    if-eq p1, v2, :cond_2

    const/16 v2, 0x35

    if-eq p1, v2, :cond_2

    const/16 v2, 0x2a

    if-eq p1, v2, :cond_2

    const/16 v2, 0x2b

    if-eq p1, v2, :cond_2

    const/16 v2, 0x27

    if-eq p1, v2, :cond_2

    const/16 v2, 0x28

    if-ne p1, v2, :cond_3

    .line 2537
    :cond_2
    iput v5, p0, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    .line 2539
    :cond_3
    iput p1, p0, Lcom/htc/server/WfdStateMachine;->mNotificationState:I

    .line 2540
    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mNotificationHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2541
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2542
    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mNotificationHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2544
    iget v2, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 2545
    const/4 v1, -0x1

    .line 2546
    .local v1, status:I
    sparse-switch p1, :sswitch_data_0

    .line 2564
    :goto_0
    invoke-direct {p0, v1}, Lcom/htc/server/WfdStateMachine;->sendConfigureStateChanged(I)V

    .line 2569
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #status:I
    :cond_4
    :goto_1
    return-void

    .line 2548
    .restart local v0       #msg:Landroid/os/Message;
    .restart local v1       #status:I
    :sswitch_0
    const/4 v1, 0x1

    .line 2549
    goto :goto_0

    .line 2551
    :sswitch_1
    const/4 v1, 0x2

    .line 2552
    goto :goto_0

    .line 2555
    :sswitch_2
    const/4 v1, 0x3

    .line 2556
    goto :goto_0

    .line 2558
    :sswitch_3
    const/4 v1, 0x4

    .line 2559
    goto :goto_0

    .line 2561
    :sswitch_4
    const/4 v1, 0x5

    goto :goto_0

    .line 2567
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #status:I
    :cond_5
    const-string v2, "WfdStateMachine"

    const-string v3, "Dropped the unchanged notification state."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2546
    nop

    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_4
        0x20 -> :sswitch_2
        0x27 -> :sswitch_3
        0x2e -> :sswitch_0
        0x31 -> :sswitch_1
        0x37 -> :sswitch_2
    .end sparse-switch
.end method

.method private setL2peApInfo()V
    .locals 6

    .prologue
    .line 2009
    const-string v1, ""

    .line 2010
    .local v1, currentSsid:Ljava/lang/String;
    const-string v0, ""

    .line 2011
    .local v0, apmSsid:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "hotspot_ssid"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2013
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/htc/server/WfdStateMachine;->isAphConnectable(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/htc/server/WfdStateMachine;->isDglConnToSameAphOrUncfg(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsWivuTimeout:Z

    if-nez v3, :cond_2

    .line 2014
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 2015
    .local v2, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2016
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 2019
    :cond_0
    sget-boolean v3, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsAphConnectableBefore:Z

    if-eqz v3, :cond_1

    .line 2020
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine;->mConnectableAphBeforeSsid:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 2021
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mConnectableAphBeforeSsid:Ljava/lang/String;

    .line 2028
    .end local v2           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_1
    :goto_0
    const-string v3, "WfdStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WFD]===>setL2peInfo() ssid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v3, v1}, Lcom/htc/service/WirelessDisplayManager;->setL2peApInfo(Ljava/lang/String;)V

    .line 2030
    return-void

    .line 2024
    :cond_2
    if-eqz v0, :cond_1

    .line 2025
    move-object v1, v0

    goto :goto_0
.end method

.method private showConnectingDialog(ZLcom/htc/service/DongleInfo;)V
    .locals 4
    .parameter "visible"
    .parameter "info"

    .prologue
    .line 2792
    const-string v1, "WfdStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WFD]===>showConnectingDialog() visible = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2793
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.WIRELESS_DISPLAY_CONNECTING_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2794
    .local v0, intent:Landroid/content/Intent;
    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2795
    const-string v1, "device"

    iget-object v2, p2, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2796
    :cond_0
    const-string v1, "visible"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2797
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2798
    return-void
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 6
    .parameter "ary"

    .prologue
    .line 3641
    const-string v0, "0123456789ABCDEF"

    .line 3642
    .local v0, hex:Ljava/lang/String;
    const-string v2, ""

    .line 3643
    .local v2, ret:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 3644
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3645
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3643
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3647
    :cond_0
    return-object v2
.end method

.method private updatePairedDongle(Lcom/htc/service/DongleInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 2802
    const-string v1, "WfdStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WFD]===>updatePairedDongle(), Dongle staBssid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2803
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.NOTIFY_UPDATE_DONGLE_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2804
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "dongleStaBssid"

    iget-object v2, p1, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2805
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2806
    return-void
.end method

.method private writeDongleConfig()V
    .locals 5

    .prologue
    .line 2620
    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v2, v2, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2621
    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v0, v2, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    .line 2622
    .local v0, config:Ljava/lang/String;
    const-string v2, "WfdStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeDongleConfig() config = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2623
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.wifidisplay.CONFIG_FILE_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2624
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "dongle_mac"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2625
    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2629
    .end local v0           #config:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 2627
    :cond_0
    const-string v2, "WfdStateMachine"

    const-string v3, "[WFD]===>writeDongleConfig() mCurrentDongle is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method addCallback(Lcom/htc/wfdservice/IWfdServiceCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 3050
    const-string v0, "WfdStateMachine"

    const-string v1, "addCallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3051
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 3052
    :cond_0
    return-void
.end method

.method attemptToConfigure(Lcom/htc/service/DongleInfo;)V
    .locals 13
    .parameter "info"

    .prologue
    const/16 v5, 0x2e

    const/16 v4, 0x2d

    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 3220
    const-string v6, "WfdStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[WFD]===>attemptToConfigure()...mode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/htc/server/WfdUtils;->modeNames:[Ljava/lang/String;

    iget v9, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3222
    :try_start_0
    const-string v6, "WfdStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[WFD]===>Dongle status = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/htc/service/DongleInfo;->getStateName:[Ljava/lang/String;

    iget v9, p1, Lcom/htc/service/DongleInfo;->status:I

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isDiscoveredByWivu = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p1, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isConnectable = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p1, Lcom/htc/service/DongleInfo;->isConnectable:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n[WFD]===>, apm = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/htc/service/DongleInfo;->pairedApm:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", aph = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/htc/service/DongleInfo;->currentAph:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n[WFD]===>, bssid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", lockType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/htc/service/DongleInfo;->lockType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3231
    :goto_0
    iget-boolean v6, p1, Lcom/htc/service/DongleInfo;->isConnectable:Z

    if-eqz v6, :cond_1

    .line 3232
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.htc.intent.action.WIRELESS_DISPLAY_SHOW_DONGLE_CONNECTED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3233
    .local v1, dongleConnectedIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3404
    .end local v1           #dongleConnectedIntent:Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 3226
    :catch_0
    move-exception v2

    .line 3227
    .local v2, e:Ljava/lang/Exception;
    const/4 v6, 0x5

    invoke-direct {p0, v6, v11}, Lcom/htc/server/WfdStateMachine;->reportErrorCode(IZ)V

    .line 3228
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 3236
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    const/16 v6, 0x38

    invoke-virtual {p0, v6}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 3238
    iget-object v6, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v6}, Lcom/htc/service/WirelessDisplayManager;->extendTurnOffHotspotTimer()V

    .line 3239
    iget-object v6, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v6, v10}, Lcom/htc/service/WirelessDisplayManager;->setWifiNetworkLimit(Z)V

    .line 3240
    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine;->checkIfFixedMode()V

    .line 3242
    invoke-virtual {p0, p1}, Lcom/htc/server/WfdStateMachine;->isCaviumDongle(Lcom/htc/service/DongleInfo;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    .line 3243
    const-string v6, "WfdStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[WFD]===>attemptToConfigure()...mIsOldCaviumDongle = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3244
    const-string v6, "WfdStateMachine"

    const-string v7, "Disable scan....@attemptToConfigure"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3245
    iget-object v6, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v6, v10}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setWifiDisplayUnscan(Landroid/net/wifi/WifiManager;Z)Z

    .line 3247
    if-nez p1, :cond_2

    .line 3248
    const/4 v4, 0x5

    invoke-direct {p0, v4, v11}, Lcom/htc/server/WfdStateMachine;->reportErrorCode(IZ)V

    goto :goto_1

    .line 3256
    :cond_2
    iget v6, p0, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    const/16 v7, 0x38

    if-ne v6, v7, :cond_3

    iget v6, p0, Lcom/htc/server/WfdStateMachine;->mNotificationState:I

    const/16 v7, 0x26

    if-ne v6, v7, :cond_3

    .line 3257
    const-string v4, "WfdStateMachine"

    const-string v5, "PBC failed case, retry to configure."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3258
    invoke-virtual {p0, p1}, Lcom/htc/server/WfdStateMachine;->attemptToReConfigure(Lcom/htc/service/DongleInfo;)V

    goto :goto_1

    .line 3277
    :cond_3
    const-string v6, "sys.wfd.targetdongle"

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/server/WfdStateMachine;->mTargetAutoTestDongleSSID:Ljava/lang/String;

    .line 3279
    iget-object v6, p0, Lcom/htc/server/WfdStateMachine;->mTargetAutoTestDongleSSID:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 3280
    iget-object v6, p0, Lcom/htc/server/WfdStateMachine;->mTargetAutoTestDongleSSID:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/htc/server/WfdStateMachine;->selectedTargetTestDongle(Ljava/lang/String;)Lcom/htc/service/DongleInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    .line 3281
    iput-boolean v10, p0, Lcom/htc/server/WfdStateMachine;->mIsAutoTestConfiguring:Z

    .line 3284
    :cond_4
    iget-object v6, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    if-nez v6, :cond_5

    .line 3285
    iput-object p1, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    .line 3286
    iput-boolean v11, p0, Lcom/htc/server/WfdStateMachine;->mIsAutoTestConfiguring:Z

    .line 3292
    :goto_2
    iput-boolean v11, p0, Lcom/htc/server/WfdStateMachine;->mIsScanning:Z

    .line 3293
    iget-boolean v6, p1, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    if-eqz v6, :cond_c

    .line 3294
    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine;->isMirrorModeEnable()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 3297
    iget-object v6, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v6}, Lcom/htc/service/WirelessDisplayManager;->getCurrentDongle()Lcom/htc/service/DongleInfo;

    move-result-object v0

    .line 3298
    .local v0, currentDongle:Lcom/htc/service/DongleInfo;
    if-eqz v0, :cond_7

    iget-object v6, v0, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    iget-object v7, p1, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 3299
    iget v6, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-nez v6, :cond_6

    :goto_3
    invoke-direct {p0, v4}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    .line 3301
    iput-boolean v10, p0, Lcom/htc/server/WfdStateMachine;->mIsSwitchingDongles:Z

    .line 3302
    const/16 v4, 0x39

    invoke-virtual {p0, v4}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    .line 3303
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v4, v11}, Lcom/htc/service/WirelessDisplayManager;->mirrorModeStartStop(Z)Z

    .line 3304
    const-string v4, "WfdStateMachine"

    const-string v5, "Select a new dongle while mirroring, stop mirror mode first."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3288
    .end local v0           #currentDongle:Lcom/htc/service/DongleInfo;
    :cond_5
    iget-object p1, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    goto :goto_2

    .restart local v0       #currentDongle:Lcom/htc/service/DongleInfo;
    :cond_6
    move v4, v5

    .line 3299
    goto :goto_3

    .line 3306
    :cond_7
    iget v4, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-nez v4, :cond_8

    const/16 v4, 0x1f

    :goto_4
    invoke-direct {p0, v4}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    goto/16 :goto_1

    :cond_8
    const/16 v4, 0x20

    goto :goto_4

    .line 3310
    .end local v0           #currentDongle:Lcom/htc/service/DongleInfo;
    :cond_9
    iget v6, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-ne v6, v12, :cond_a

    .line 3311
    iget-object v6, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    invoke-direct {p0, v10, v6}, Lcom/htc/server/WfdStateMachine;->showConnectingDialog(ZLcom/htc/service/DongleInfo;)V

    .line 3312
    :cond_a
    iget v6, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-nez v6, :cond_b

    :goto_5
    invoke-direct {p0, v4}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    .line 3314
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_1

    :cond_b
    move v4, v5

    .line 3312
    goto :goto_5

    .line 3316
    :cond_c
    iget v6, p1, Lcom/htc/service/DongleInfo;->status:I

    if-eq v6, v10, :cond_d

    iget v6, p1, Lcom/htc/service/DongleInfo;->status:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_18

    .line 3317
    :cond_d
    iget-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsMultipleWpsDongles:Z

    if-eqz v4, :cond_e

    .line 3318
    const-string v4, "WfdStateMachine"

    const-string v5, "Multiple WPS dongles detected."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3320
    :cond_e
    iget-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsAutoTestConfiguring:Z

    if-nez v4, :cond_f

    .line 3321
    iget v4, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-nez v4, :cond_10

    .line 3322
    const/16 v4, 0x30

    invoke-direct {p0, v4}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    .line 3328
    :cond_f
    :goto_6
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->isConnectToDfsChannels()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->checkIfDfsAvailable()Z

    move-result v4

    if-nez v4, :cond_13

    .line 3329
    const/16 v4, 0x33

    invoke-virtual {p0, v4}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    .line 3353
    :goto_7
    const-string v4, "WfdStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Check if need to defer configure = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/htc/server/WfdStateMachine;->mIsDeferConfigure:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3354
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->clearLimitedApInfo()V

    goto/16 :goto_1

    .line 3323
    :cond_10
    iget v4, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-eq v4, v10, :cond_11

    iget v4, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-ne v4, v12, :cond_12

    .line 3324
    :cond_11
    const/16 v4, 0x31

    invoke-direct {p0, v4}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    goto :goto_6

    .line 3326
    :cond_12
    const/16 v4, 0x32

    invoke-direct {p0, v4}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    goto :goto_6

    .line 3330
    :cond_13
    iget-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsScanComplete:Z

    if-nez v4, :cond_14

    .line 3331
    iput-boolean v10, p0, Lcom/htc/server/WfdStateMachine;->mIsDeferConfigure:Z

    goto :goto_7

    .line 3333
    :cond_14
    const/16 v4, 0x19

    invoke-virtual {p0, v4}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 3334
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->requestWpsOnDemand()V

    .line 3335
    sget-boolean v4, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-eqz v4, :cond_15

    .line 3336
    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v10, v4, v5}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_7

    .line 3338
    :cond_15
    invoke-direct {p0, v10}, Lcom/htc/server/WfdStateMachine;->isAphConnectable(Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsAphConnectableBefore:Z

    .line 3340
    iget-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsAphConnectableBefore:Z

    if-eqz v4, :cond_16

    .line 3341
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 3342
    .local v3, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v3, :cond_16

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_16

    .line 3343
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/server/WfdStateMachine;->mConnectableAphBeforeSsid:Ljava/lang/String;

    .line 3347
    .end local v3           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_16
    iget v4, p1, Lcom/htc/service/DongleInfo;->status:I

    if-ne v4, v10, :cond_17

    .line 3348
    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v10, v4, v5}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_7

    .line 3350
    :cond_17
    const/16 v4, 0x11

    const-wide/16 v5, 0xbb8

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_7

    .line 3355
    :cond_18
    iget v6, p1, Lcom/htc/service/DongleInfo;->status:I

    if-eq v6, v12, :cond_19

    iget v6, p1, Lcom/htc/service/DongleInfo;->status:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_22

    iget-boolean v6, p0, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    if-nez v6, :cond_22

    .line 3359
    :cond_19
    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine;->isMirrorModeEnable()Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 3362
    iget-object v6, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v6}, Lcom/htc/service/WirelessDisplayManager;->getCurrentDongle()Lcom/htc/service/DongleInfo;

    move-result-object v0

    .line 3363
    .restart local v0       #currentDongle:Lcom/htc/service/DongleInfo;
    if-eqz v0, :cond_1b

    iget-object v6, v0, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    iget-object v7, p1, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b

    .line 3364
    iget v6, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-nez v6, :cond_1a

    :goto_8
    invoke-direct {p0, v4}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    .line 3366
    iput-boolean v10, p0, Lcom/htc/server/WfdStateMachine;->mIsSwitchingDongles:Z

    .line 3367
    const/16 v4, 0x39

    invoke-virtual {p0, v4}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    .line 3368
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v4, v11}, Lcom/htc/service/WirelessDisplayManager;->mirrorModeStartStop(Z)Z

    .line 3369
    const-string v4, "WfdStateMachine"

    const-string v5, "Select a new paired dongle while mirroring, stop mirror mode first."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1a
    move v4, v5

    .line 3364
    goto :goto_8

    .line 3371
    :cond_1b
    iget v4, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-nez v4, :cond_1c

    const/16 v4, 0x1f

    :goto_9
    invoke-direct {p0, v4}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    goto/16 :goto_1

    :cond_1c
    const/16 v4, 0x20

    goto :goto_9

    .line 3376
    .end local v0           #currentDongle:Lcom/htc/service/DongleInfo;
    :cond_1d
    sget-boolean v6, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-nez v6, :cond_1e

    iget-boolean v6, p1, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    if-nez v6, :cond_1e

    .line 3377
    invoke-virtual {p0, p1}, Lcom/htc/server/WfdStateMachine;->attemptToReConfigure(Lcom/htc/service/DongleInfo;)V

    goto/16 :goto_1

    .line 3380
    :cond_1e
    iget v6, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-ne v6, v12, :cond_1f

    .line 3381
    iget-object v6, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    invoke-direct {p0, v10, v6}, Lcom/htc/server/WfdStateMachine;->showConnectingDialog(ZLcom/htc/service/DongleInfo;)V

    .line 3382
    :cond_1f
    iget v6, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-nez v6, :cond_20

    :goto_a
    invoke-direct {p0, v4}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    .line 3384
    iget-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsScanComplete:Z

    if-nez v4, :cond_21

    .line 3385
    iput-boolean v10, p0, Lcom/htc/server/WfdStateMachine;->mIsDeferDiscovery:Z

    goto/16 :goto_1

    :cond_20
    move v4, v5

    .line 3382
    goto :goto_a

    .line 3387
    :cond_21
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 3391
    :cond_22
    iget-boolean v4, p1, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    if-eqz v4, :cond_0

    .line 3401
    invoke-virtual {p0, p1}, Lcom/htc/server/WfdStateMachine;->attemptToReConfigure(Lcom/htc/service/DongleInfo;)V

    goto/16 :goto_1
.end method

.method attemptToReConfigure(Lcom/htc/service/DongleInfo;)V
    .locals 10
    .parameter "info"

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x3

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 3407
    const-string v4, "WfdStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WFD]===>attemptToReConfigure()...mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/server/WfdUtils;->modeNames:[Ljava/lang/String;

    iget v7, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3408
    const/16 v4, 0x38

    invoke-virtual {p0, v4}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 3410
    invoke-virtual {p0, p1}, Lcom/htc/server/WfdStateMachine;->isCaviumDongle(Lcom/htc/service/DongleInfo;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    .line 3411
    const-string v4, "WfdStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WFD]===>attemptToReConfigure()...mIsOldCaviumDongle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3412
    const-string v4, "WfdStateMachine"

    const-string v5, "Disable scan....@attemptToReConfigure"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3413
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v4, v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setWifiDisplayUnscan(Landroid/net/wifi/WifiManager;Z)Z

    .line 3415
    if-nez p1, :cond_1

    .line 3416
    invoke-direct {p0, v9, v1}, Lcom/htc/server/WfdStateMachine;->reportErrorCode(IZ)V

    .line 3479
    :cond_0
    :goto_0
    return-void

    .line 3421
    :cond_1
    :try_start_0
    const-string v4, "WfdStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WFD]===>Reconfigure Dongle status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/service/DongleInfo;->getStateName:[Ljava/lang/String;

    iget v7, p1, Lcom/htc/service/DongleInfo;->status:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isDiscoveredByWivu = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p1, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n[WFD]===>, apm = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/htc/service/DongleInfo;->pairedApm:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", aph = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/htc/service/DongleInfo;->currentAph:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n[WFD]===>, bssid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3430
    :goto_1
    iget-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    if-nez v4, :cond_2

    .line 3431
    const-string v3, "WfdStateMachine"

    const-string v4, "[WFD]===> Check Dongle version. Not start with \'1\' or Not start with \'M\'"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3432
    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine;->retryConfigure()V

    goto :goto_0

    .line 3425
    :catch_0
    move-exception v0

    .line 3426
    .local v0, e:Ljava/lang/Exception;
    invoke-direct {p0, v9, v1}, Lcom/htc/server/WfdStateMachine;->reportErrorCode(IZ)V

    .line 3427
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 3434
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    iget-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsReConfiguring:Z

    if-nez v4, :cond_0

    .line 3435
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->clearLimitedApInfo()V

    .line 3436
    iput-object p1, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    .line 3438
    iget v4, p0, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    const/16 v5, 0xb

    if-ne v4, v5, :cond_3

    move v1, v3

    .line 3439
    .local v1, isEnterFromList:Z
    :cond_3
    iget v4, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-nez v4, :cond_4

    .line 3440
    const/16 v4, 0x29

    invoke-direct {p0, v4}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    .line 3446
    :goto_2
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->requestWpsOnDemand()V

    .line 3447
    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsReConfiguring:Z

    .line 3450
    sget-boolean v4, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-eqz v4, :cond_8

    .line 3451
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->isConnectToDfsChannels()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->checkIfDfsAvailable()Z

    move-result v4

    if-nez v4, :cond_7

    .line 3452
    const/16 v3, 0x33

    invoke-virtual {p0, v3}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 3441
    :cond_4
    iget v4, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-eq v4, v3, :cond_5

    iget v4, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-ne v4, v8, :cond_6

    .line 3442
    :cond_5
    const/16 v4, 0x2a

    invoke-direct {p0, v4}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    goto :goto_2

    .line 3444
    :cond_6
    const/16 v4, 0x2b

    invoke-direct {p0, v4}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    goto :goto_2

    .line 3454
    :cond_7
    invoke-virtual {p0, v3}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 3457
    :cond_8
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v4}, Lcom/htc/service/WirelessDisplayManager;->stopWivuDiscovery()V

    .line 3459
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-nez v4, :cond_a

    .line 3460
    invoke-virtual {p0, v8}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    .line 3472
    :cond_9
    :goto_3
    iget v4, p1, Lcom/htc/service/DongleInfo;->status:I

    if-ne v4, v3, :cond_b

    .line 3473
    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 3462
    :cond_a
    invoke-direct {p0, v3}, Lcom/htc/server/WfdStateMachine;->isAphConnectable(Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsAphConnectableBefore:Z

    .line 3464
    iget-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsAphConnectableBefore:Z

    if-eqz v4, :cond_9

    .line 3465
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 3466
    .local v2, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 3467
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/server/WfdStateMachine;->mConnectableAphBeforeSsid:Ljava/lang/String;

    goto :goto_3

    .line 3475
    .end local v2           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_b
    const/16 v3, 0x11

    const-wide/16 v4, 0xbb8

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0
.end method

.method attemptToRequestDongleToAPM(Lcom/htc/service/DongleInfo;)V
    .locals 8
    .parameter "info"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3153
    const-string v1, "WfdStateMachine"

    const-string v2, "[WFD]===>attemptToRequestDongleToAPM()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3155
    invoke-virtual {p0, p1}, Lcom/htc/server/WfdStateMachine;->isCaviumDongle(Lcom/htc/service/DongleInfo;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    .line 3156
    const-string v1, "WfdStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WFD]===>attemptToRequestDongleToAPM()...mIsOldCaviumDongle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3158
    if-nez p1, :cond_1

    .line 3159
    invoke-direct {p0, v7, v5}, Lcom/htc/server/WfdStateMachine;->reportErrorCode(IZ)V

    .line 3194
    :cond_0
    :goto_0
    return-void

    .line 3164
    :cond_1
    :try_start_0
    const-string v1, "WfdStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WFD]===>Dongle status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/service/DongleInfo;->getStateName:[Ljava/lang/String;

    iget v4, p1, Lcom/htc/service/DongleInfo;->status:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isDiscoveredByWivu = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n[WFD]===>, apm = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/htc/service/DongleInfo;->pairedApm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", aph = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/htc/service/DongleInfo;->currentAph:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n[WFD]===>, bssid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3172
    :goto_1
    iput-object p1, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    .line 3173
    iput-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsScanning:Z

    .line 3174
    iget-boolean v1, p1, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    if-eqz v1, :cond_2

    .line 3175
    const-string v1, "WfdStateMachine"

    const-string v2, "info.isDiscoveredByWivu is true. Dongle should have IP address."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3168
    :catch_0
    move-exception v0

    .line 3169
    .local v0, e:Ljava/lang/Exception;
    invoke-direct {p0, v7, v5}, Lcom/htc/server/WfdStateMachine;->reportErrorCode(IZ)V

    .line 3170
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 3177
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    iget v1, p1, Lcom/htc/service/DongleInfo;->status:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 3178
    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine;->isMirrorModeEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3179
    const-string v1, "WfdStateMachine"

    const-string v2, "isMirrorModeEnable() is true."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3183
    :cond_3
    iput-boolean v6, p0, Lcom/htc/server/WfdStateMachine;->mIsConnectionRequest:Z

    .line 3185
    iget-boolean v1, p0, Lcom/htc/server/WfdStateMachine;->mIsScanComplete:Z

    if-nez v1, :cond_4

    .line 3186
    iput-boolean v6, p0, Lcom/htc/server/WfdStateMachine;->mIsDeferDiscovery:Z

    goto/16 :goto_0

    .line 3188
    :cond_4
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 3191
    :cond_5
    iget-boolean v1, p1, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    if-nez v1, :cond_0

    .line 3192
    invoke-virtual {p0, p1}, Lcom/htc/server/WfdStateMachine;->attemptToReConfigure(Lcom/htc/service/DongleInfo;)V

    goto/16 :goto_0
.end method

.method attemptToUnlock(Lcom/htc/service/DongleInfo;[B)V
    .locals 4
    .parameter "info"
    .parameter "pattern"

    .prologue
    const/4 v1, 0x0

    .line 3580
    if-nez p1, :cond_0

    .line 3581
    const/4 v0, 0x5

    invoke-direct {p0, v0, v1}, Lcom/htc/server/WfdStateMachine;->reportErrorCode(IZ)V

    .line 3599
    :goto_0
    return-void

    .line 3585
    :cond_0
    iget v0, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-nez v0, :cond_1

    const/16 v0, 0x2d

    :goto_1
    invoke-direct {p0, v0}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    .line 3588
    iput-boolean v1, p0, Lcom/htc/server/WfdStateMachine;->mIsUnlockSucceed:Z

    .line 3589
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x40c3878000000000L

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/htc/server/WfdStateMachine;->mUnlockTransactionID:I

    .line 3590
    iput-object p2, p0, Lcom/htc/server/WfdStateMachine;->mUnlockPattern:[B

    .line 3591
    iput-object p1, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    .line 3592
    iput-object p1, p0, Lcom/htc/server/WfdStateMachine;->mUnlockDongle:Lcom/htc/service/DongleInfo;

    .line 3593
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/server/WfdStateMachine;->mIsUnlockDongle:Z

    .line 3594
    const-string v0, "WfdStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WFD]===attemptToUnlock() donlge = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\npattern = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/htc/server/WfdStateMachine;->toHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", transactID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/server/WfdStateMachine;->mUnlockTransactionID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3597
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    .line 3598
    const/16 v0, 0x43

    const-wide/16 v1, 0x7530

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0

    .line 3585
    :cond_1
    const/16 v0, 0x2e

    goto :goto_1
.end method

.method cancel()V
    .locals 3

    .prologue
    .line 3482
    const-string v0, "WfdStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel() current = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", previous = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/server/WfdStateMachine;->mPreviousPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3484
    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine;->isMirrorModeEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3485
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->finish()V

    .line 3488
    :goto_0
    return-void

    .line 3487
    :cond_0
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method cancelConnectingDialog()V
    .locals 2

    .prologue
    .line 3602
    const-string v0, "WfdStateMachine"

    const-string v1, "Cancel connecting dialog."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3603
    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    .line 3604
    return-void
.end method

.method checkIfFixedMode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3133
    const-string v0, "WfdStateMachine"

    const-string v1, "[WFD]===>checkIfFixedMode()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3134
    const-string v0, "persist.sys.wfd.targetmode"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/server/WfdStateMachine;->mFixedModeProperty:Ljava/lang/String;

    .line 3136
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mFixedModeProperty:Ljava/lang/String;

    const-string v1, "ap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mFixedModeProperty:Ljava/lang/String;

    const-string v1, "AP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3137
    :cond_0
    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsFixedCT1:Z

    .line 3138
    iput-boolean v2, p0, Lcom/htc/server/WfdStateMachine;->mIsP2pSet:Z

    .line 3146
    :goto_0
    const-string v0, "WfdStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WFD]===> persist.sys.wfd.targetmode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mFixedModeProperty:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n        mIsFixedCT1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/server/WfdStateMachine;->mIsFixedCT1:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n        mIsP2pSet = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/server/WfdStateMachine;->mIsP2pSet:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3149
    return-void

    .line 3139
    :cond_1
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mFixedModeProperty:Ljava/lang/String;

    const-string v1, "p2p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mFixedModeProperty:Ljava/lang/String;

    const-string v1, "P2P"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3140
    :cond_2
    iput-boolean v2, p0, Lcom/htc/server/WfdStateMachine;->mIsFixedCT1:Z

    .line 3141
    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine;->mIsP2pSet:Z

    goto :goto_0

    .line 3143
    :cond_3
    iput-boolean v2, p0, Lcom/htc/server/WfdStateMachine;->mIsFixedCT1:Z

    .line 3144
    iput-boolean v2, p0, Lcom/htc/server/WfdStateMachine;->mIsP2pSet:Z

    goto :goto_0
.end method

.method connectNetwork(I)V
    .locals 7
    .parameter "netId"

    .prologue
    .line 3626
    :try_start_0
    const-class v2, Landroid/net/wifi/WifiManager;

    const-string v3, "connectNetwork"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 3627
    .local v1, mthd:Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3628
    const-string v2, "WfdStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectNetwork id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 3638
    .end local v1           #mthd:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 3629
    :catch_0
    move-exception v0

    .line 3630
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 3631
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 3632
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 3633
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 3634
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 3635
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 3636
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method finishService()V
    .locals 3

    .prologue
    .line 3496
    const-string v0, "WfdStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishService() notification = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/server/WfdStateMachine;->mNotificationState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3497
    iget v0, p0, Lcom/htc/server/WfdStateMachine;->mNotificationState:I

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/server/WfdStateMachine;->mNotificationState:I

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine;->isMirrorModeEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3500
    :cond_0
    invoke-direct {p0}, Lcom/htc/server/WfdStateMachine;->finish()V

    .line 3504
    :goto_0
    return-void

    .line 3502
    :cond_1
    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine;->resetStateMachine()V

    goto :goto_0
.end method

.method getAphFrequency(Landroid/net/wifi/WifiInfo;)I
    .locals 7
    .parameter "wifiInfo"

    .prologue
    .line 3607
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3609
    .local v3, output:Ljava/lang/Integer;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getFrequency"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3610
    .local v2, mthd:Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    .line 3611
    const-string v4, "WfdStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAphFrequency = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 3621
    .end local v2           #mthd:Ljava/lang/reflect/Method;
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    return v4

    .line 3612
    :catch_0
    move-exception v1

    .line 3613
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 3614
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 3615
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 3616
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 3617
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 3618
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 3619
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method getNotificationState()I
    .locals 1

    .prologue
    .line 3060
    iget v0, p0, Lcom/htc/server/WfdStateMachine;->mNotificationState:I

    return v0
.end method

.method isCaviumDongle(Lcom/htc/service/DongleInfo;)Z
    .locals 3
    .parameter "info"

    .prologue
    .line 3123
    const-string v0, "WfdStateMachine"

    const-string v1, "[WFD]===>isCaviumDongle()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3124
    iget-object v0, p1, Lcom/htc/service/DongleInfo;->version:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/htc/service/DongleInfo;->version:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/htc/service/DongleInfo;->version:Ljava/lang/String;

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3125
    :cond_0
    const-string v0, "WfdStateMachine"

    const-string v1, "[WFD]===> Check Dongle version. Start with \'1\' or Start with \'M\'"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3126
    const-string v0, "WfdStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "info.version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/service/DongleInfo;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3127
    const/4 v0, 0x1

    .line 3129
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isMirrorModeEnable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3551
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    if-eqz v1, :cond_1

    .line 3552
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v1}, Lcom/htc/service/WirelessDisplayManager;->getMirrorModeState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v1}, Lcom/htc/service/WirelessDisplayManager;->getMirrorModeState()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 3555
    :cond_1
    return v0
.end method

.method notifyApClientChanged()V
    .locals 4

    .prologue
    .line 2863
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getClientInfo(Landroid/net/wifi/WifiManager;)Ljava/lang/String;

    move-result-object v0

    .line 2864
    .local v0, ipInfo:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "NO_DATA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2865
    const-string v1, "WfdStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyApClientChanged()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2867
    :cond_0
    return-void
.end method

.method notifyDongleScanResultsAvailable()V
    .locals 11

    .prologue
    .line 2909
    const-string v7, "WfdStateMachine"

    const-string v8, "notifyDongleScanResultsAvailable()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2910
    const/4 v6, 0x0

    .local v6, size:I
    const/4 v0, 0x0

    .line 2912
    .local v0, count:I
    iget-boolean v7, p0, Lcom/htc/server/WfdStateMachine;->mNeedSwitchingAph:Z

    if-eqz v7, :cond_0

    .line 2913
    const-string v7, "WfdStateMachine"

    const-string v8, "[WFD]===>Defer discovery is done."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2914
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    .line 2916
    :cond_0
    iget-object v7, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v7}, Lcom/htc/service/WirelessDisplayManager;->getDiscoveryDongleList()Ljava/util/List;

    move-result-object v1

    .line 2917
    .local v1, donglelist:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .line 2918
    const-string v7, "WfdStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dongle length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2919
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/service/DongleInfo;

    .line 2921
    .local v4, info:Lcom/htc/service/DongleInfo;
    :try_start_0
    const-string v7, "WfdStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found dongle: Ssid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/service/DongleInfo;->getStateName:[Ljava/lang/String;

    iget v10, v4, Lcom/htc/service/DongleInfo;->status:I

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n            , version = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/htc/service/DongleInfo;->version:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", wivu = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, v4, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n            , apm = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/htc/service/DongleInfo;->pairedApm:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", aph = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/htc/service/DongleInfo;->currentAph:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n            , lockType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/htc/service/DongleInfo;->lockType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", lockStatus = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/htc/service/DongleInfo;->lockStatus:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2928
    :goto_1
    iget v7, v4, Lcom/htc/service/DongleInfo;->status:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 2929
    add-int/lit8 v0, v0, 0x1

    .line 2933
    :cond_2
    iget-object v7, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v7, v7, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    if-eqz v7, :cond_4

    sget-boolean v7, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v7, v7, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    iget-object v8, v4, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2936
    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine;->isMirrorModeEnable()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2937
    iget-boolean v7, p0, Lcom/htc/server/WfdStateMachine;->mIsReConfiguring:Z

    if-eqz v7, :cond_3

    .line 2939
    iget v7, v4, Lcom/htc/service/DongleInfo;->status:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    iget v7, v4, Lcom/htc/service/DongleInfo;->status:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_1

    .line 2940
    const/16 v7, 0x3a

    const-wide/16 v8, 0x1770

    invoke-virtual {p0, v7, v8, v9}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 2925
    :catch_0
    move-exception v2

    .line 2926
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2942
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_3
    iget v7, v4, Lcom/htc/service/DongleInfo;->status:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    .line 2943
    const/16 v7, 0x3a

    const-wide/16 v8, 0x1770

    invoke-virtual {p0, v7, v8, v9}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 2946
    :cond_4
    iget-boolean v7, p0, Lcom/htc/server/WfdStateMachine;->mIsResettingDongle:Z

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v7, v7, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    iget-object v8, v4, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2947
    const-string v7, "WfdStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dongle status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/service/DongleInfo;->getStateName:[Ljava/lang/String;

    iget v10, v4, Lcom/htc/service/DongleInfo;->status:I

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", bssid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2948
    iget v7, v4, Lcom/htc/service/DongleInfo;->status:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_5

    iget v7, v4, Lcom/htc/service/DongleInfo;->status:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 2949
    :cond_5
    iput-object v4, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    .line 2950
    iget-boolean v7, p0, Lcom/htc/server/WfdStateMachine;->mIsAutoTestConfiguring:Z

    if-nez v7, :cond_6

    .line 2951
    const/16 v7, 0x3f

    invoke-virtual {p0, v7}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 2953
    :cond_6
    const-string v7, "WfdStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mIsAutoTestConfiguring = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/htc/server/WfdStateMachine;->mIsAutoTestConfiguring:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n mIsHardReset ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/htc/server/WfdStateMachine;->mIsHardReset:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n mResetDongleCount ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/server/WfdStateMachine;->mResetDongleCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2956
    iget-boolean v7, p0, Lcom/htc/server/WfdStateMachine;->mIsHardReset:Z

    if-eqz v7, :cond_7

    .line 2957
    iget v7, p0, Lcom/htc/server/WfdStateMachine;->mResetDongleCount:I

    if-gtz v7, :cond_1

    .line 2958
    const/16 v7, 0x19

    invoke-virtual {p0, v7}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 2959
    const/16 v7, 0x3f

    const-wide/16 v8, 0x4e20

    invoke-virtual {p0, v7, v8, v9}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    .line 2960
    const/16 v7, 0x47

    const-wide/32 v8, 0x29810

    invoke-virtual {p0, v7, v8, v9}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 2963
    :cond_7
    const/16 v7, 0x3f

    invoke-virtual {p0, v7}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 2967
    :cond_8
    iget-boolean v7, p0, Lcom/htc/server/WfdStateMachine;->mIsResettingDongle:Z

    if-eqz v7, :cond_9

    iget-boolean v7, p0, Lcom/htc/server/WfdStateMachine;->mIsAutoTestConfiguring:Z

    if-eqz v7, :cond_9

    iget-boolean v7, p0, Lcom/htc/server/WfdStateMachine;->mIsHardReset:Z

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v7, v7, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    iget-object v8, v4, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2968
    const-string v7, "WfdStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dongle status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/service/DongleInfo;->getStateName:[Ljava/lang/String;

    iget v10, v4, Lcom/htc/service/DongleInfo;->status:I

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", bssid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2969
    iget v7, v4, Lcom/htc/service/DongleInfo;->status:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    .line 2970
    const-string v7, "WfdStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mIsAutoTestConfiguring = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/htc/server/WfdStateMachine;->mIsAutoTestConfiguring:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mResetDongleCount ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/server/WfdStateMachine;->mResetDongleCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    const/4 v7, 0x5

    iput v7, p0, Lcom/htc/server/WfdStateMachine;->mResetDongleCount:I

    .line 2972
    const/16 v7, 0x3d

    invoke-virtual {p0, v7}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 2974
    :cond_9
    iget-boolean v7, p0, Lcom/htc/server/WfdStateMachine;->mIsUnlockDongle:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/htc/server/WfdStateMachine;->mUnlockDongle:Lcom/htc/service/DongleInfo;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/htc/server/WfdStateMachine;->mUnlockDongle:Lcom/htc/service/DongleInfo;

    iget-object v7, v7, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    iget-object v8, v4, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2975
    iget-object v7, v4, Lcom/htc/service/DongleInfo;->lockStatus:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2976
    .local v5, rspId:I
    const-string v7, "WfdStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unlock dongle status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/htc/service/DongleInfo;->lockStatus:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", transaction ID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", target = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/server/WfdStateMachine;->mUnlockTransactionID:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2978
    iget v7, p0, Lcom/htc/server/WfdStateMachine;->mUnlockTransactionID:I

    if-ne v5, v7, :cond_1

    .line 2979
    iget-object v7, v4, Lcom/htc/service/DongleInfo;->lockStatus:Ljava/lang/String;

    const-string v8, "Y"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/16 v7, 0x41

    :goto_2
    invoke-virtual {p0, v7}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    :cond_a
    const/16 v7, 0x42

    goto :goto_2

    .line 2984
    .end local v4           #info:Lcom/htc/service/DongleInfo;
    .end local v5           #rspId:I
    :cond_b
    const/4 v7, 0x1

    if-le v0, v7, :cond_f

    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, p0, Lcom/htc/server/WfdStateMachine;->mIsMultipleWpsDongles:Z

    .line 2986
    iget-boolean v7, p0, Lcom/htc/server/WfdStateMachine;->mIsDeferConfigure:Z

    if-nez v7, :cond_c

    iget-boolean v7, p0, Lcom/htc/server/WfdStateMachine;->mIsDeferDiscovery:Z

    if-eqz v7, :cond_d

    .line 2987
    :cond_c
    const/16 v7, 0x25

    invoke-virtual {p0, v7}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    .line 2989
    :cond_d
    iget-boolean v7, p0, Lcom/htc/server/WfdStateMachine;->mIsScanning:Z

    if-eqz v7, :cond_e

    iget v7, p0, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    const/16 v8, 0x38

    if-eq v7, v8, :cond_e

    iget v7, p0, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    const/16 v8, 0x3a

    if-eq v7, v8, :cond_e

    iget v7, p0, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    const/16 v8, 0x3c

    if-ne v7, v8, :cond_10

    .line 3006
    :cond_e
    :goto_4
    return-void

    .line 2984
    :cond_f
    const/4 v7, 0x0

    goto :goto_3

    .line 2993
    :cond_10
    const-string v7, "WfdStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notifyDongleScanResultsAvailable() count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2994
    if-lez v6, :cond_13

    .line 2995
    iget v7, p0, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    const/16 v8, 0xb

    if-ne v7, v8, :cond_12

    .line 2996
    const/16 v7, 0xa

    invoke-direct {p0, v7}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    .line 2997
    const-string v7, "WfdStateMachine"

    const-string v8, "Notify refreshing the dongle list(Wifi)."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3005
    :cond_11
    :goto_5
    const/16 v7, 0x25

    invoke-virtual {p0, v7}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto :goto_4

    .line 2999
    :cond_12
    const/16 v7, 0xb

    invoke-direct {p0, v7}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    goto :goto_5

    .line 3001
    :cond_13
    iget-boolean v7, p0, Lcom/htc/server/WfdStateMachine;->mIsQuickScanning:Z

    if-nez v7, :cond_11

    .line 3002
    const/16 v7, 0x26

    invoke-virtual {p0, v7}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    .line 3003
    const/16 v7, 0x8

    invoke-direct {p0, v7}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    goto :goto_5
.end method

.method notifyL2PEChangeEvent(Z)V
    .locals 1
    .parameter "succeed"

    .prologue
    .line 3009
    if-eqz p1, :cond_0

    .line 3010
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    .line 3014
    :goto_0
    return-void

    .line 3012
    :cond_0
    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method notifyMirrorDisplayStateChanged(I)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 2889
    const-string v1, "WfdStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WFD]===>Notify mirror display state is changed, state ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2890
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 2891
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    .line 2903
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mNotificationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2904
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2905
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine;->mNotificationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2906
    return-void

    .line 2892
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    if-ne p1, v4, :cond_3

    .line 2893
    iget-boolean v1, p0, Lcom/htc/server/WfdStateMachine;->mIsResetting:Z

    if-eqz v1, :cond_2

    .line 2894
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 2896
    :cond_2
    const/16 v1, 0x21

    invoke-virtual {p0, v1}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 2897
    :cond_3
    if-ne p1, v5, :cond_4

    iget v1, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-ne v1, v5, :cond_4

    .line 2899
    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 2900
    :cond_4
    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    goto :goto_0
.end method

.method notifyNetworkInfoChanged(Landroid/net/NetworkInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 2870
    if-nez p1, :cond_0

    .line 2876
    :goto_0
    return-void

    .line 2872
    :cond_0
    iput-object p1, p0, Lcom/htc/server/WfdStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 2873
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    iput v0, p0, Lcom/htc/server/WfdStateMachine;->mNetworkType:I

    .line 2874
    const-string v0, "WfdStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WFD]===>Active network ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2875
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method notifyWifiApStateChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 2854
    iput p1, p0, Lcom/htc/server/WfdStateMachine;->mWifiApState:I

    .line 2855
    iget v0, p0, Lcom/htc/server/WfdStateMachine;->mWifiApState:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 2856
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    .line 2860
    :cond_0
    :goto_0
    return-void

    .line 2857
    :cond_1
    iget v0, p0, Lcom/htc/server/WfdStateMachine;->mWifiApState:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 2858
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method notifyWifiStateChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 2845
    iput p1, p0, Lcom/htc/server/WfdStateMachine;->mWifiState:I

    .line 2846
    iget v0, p0, Lcom/htc/server/WfdStateMachine;->mWifiState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2847
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    .line 2851
    :cond_0
    :goto_0
    return-void

    .line 2848
    :cond_1
    iget v0, p0, Lcom/htc/server/WfdStateMachine;->mWifiState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2849
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method notifyWivuListChanged()V
    .locals 9

    .prologue
    .line 3017
    const-string v5, "WfdStateMachine"

    const-string v6, "notifyWivuListChanged()"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3018
    iget v5, p0, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    const/16 v6, 0xb

    if-ne v5, v6, :cond_0

    .line 3019
    const/16 v5, 0xa

    invoke-direct {p0, v5}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    .line 3020
    const-string v5, "WfdStateMachine"

    const-string v6, "Notify refreshing the dongle list(Wivu)."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3023
    :cond_0
    const/4 v4, 0x0

    .line 3024
    .local v4, size:I
    iget-boolean v5, p0, Lcom/htc/server/WfdStateMachine;->mIsConnectionRequest:Z

    if-eqz v5, :cond_2

    .line 3025
    const-string v5, "WfdStateMachine"

    const-string v6, "[WFD]===>mIsConnectionRequest is true."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3027
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v5}, Lcom/htc/service/WirelessDisplayManager;->getDiscoveryDongleList()Ljava/util/List;

    move-result-object v0

    .line 3028
    .local v0, donglelist:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 3029
    const-string v5, "WfdStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dongle length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3031
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/service/DongleInfo;

    .line 3032
    .local v3, info:Lcom/htc/service/DongleInfo;
    const-string v5, "WfdStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found dongle: Ssid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/service/DongleInfo;->getStateName:[Ljava/lang/String;

    iget v8, v3, Lcom/htc/service/DongleInfo;->status:I

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n\t\t\t , version = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/htc/service/DongleInfo;->version:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", wivu = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v3, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n\t\t\t , apm = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/htc/service/DongleInfo;->pairedApm:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", aph = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/htc/service/DongleInfo;->currentAph:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3036
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v5, v5, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-boolean v5, v3, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v5, v5, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    iget-object v6, v3, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3038
    const/16 v5, 0x3c

    invoke-virtual {p0, v5}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3041
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #info:Lcom/htc/service/DongleInfo;
    :catch_0
    move-exception v1

    .line 3042
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3046
    .end local v0           #donglelist:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method notifyWpsEvent(I)V
    .locals 1
    .parameter "event"

    .prologue
    .line 2879
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2880
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    .line 2886
    :cond_0
    :goto_0
    return-void

    .line 2881
    :cond_1
    if-nez p1, :cond_2

    .line 2882
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 2883
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2884
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method removeCallback(Lcom/htc/wfdservice/IWfdServiceCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 3055
    const-string v0, "WfdStateMachine"

    const-string v1, "removeCallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3056
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 3057
    :cond_0
    return-void
.end method

.method resetStateMachine()V
    .locals 2

    .prologue
    .line 2835
    const-string v0, "WfdStateMachine"

    const-string v1, "Reset state machine."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2836
    iget-boolean v0, p0, Lcom/htc/server/WfdStateMachine;->mIsResetting:Z

    if-nez v0, :cond_0

    .line 2837
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/server/WfdStateMachine;->mIsResetting:Z

    .line 2838
    :cond_0
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    .line 2839
    return-void
.end method

.method retryConfigure()V
    .locals 2

    .prologue
    .line 3573
    const-string v0, "WfdStateMachine"

    const-string v1, "[WFD]===>retryConfigure()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3574
    const-string v0, "WfdStateMachine"

    const-string v1, "Disable scan....@retryConfigure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3575
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setWifiDisplayUnscan(Landroid/net/wifi/WifiManager;Z)Z

    .line 3576
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    .line 3577
    return-void
.end method

.method selectedTargetTestDongle(Ljava/lang/String;)Lcom/htc/service/DongleInfo;
    .locals 8
    .parameter "mTargetAutoTestDongleSSID"

    .prologue
    .line 3198
    const-string v4, "WfdStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WFD]===>selectedTargetTestDongle...mTargetAutoTestDongleSSID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3199
    const/4 v3, 0x0

    .line 3201
    .local v3, size:I
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v4}, Lcom/htc/service/WirelessDisplayManager;->getDiscoveryDongleList()Ljava/util/List;

    move-result-object v0

    .line 3202
    .local v0, donglelist:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 3203
    const-string v4, "WfdStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dongle length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3204
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/service/DongleInfo;

    .line 3205
    .local v2, info:Lcom/htc/service/DongleInfo;
    const-string v4, "WfdStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found dongle: Ssid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/service/DongleInfo;->getStateName:[Ljava/lang/String;

    iget v7, v2, Lcom/htc/service/DongleInfo;->status:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n            , version = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/htc/service/DongleInfo;->version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", wivu = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v2, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n            , apm = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/htc/service/DongleInfo;->pairedApm:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", aph = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/htc/service/DongleInfo;->currentAph:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3209
    iget-object v4, v2, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3210
    const-string v4, "WfdStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Matched dongle: Ssid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/service/DongleInfo;->getStateName:[Ljava/lang/String;

    iget v7, v2, Lcom/htc/service/DongleInfo;->status:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\t\t\t , version = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/htc/service/DongleInfo;->version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", wivu = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v2, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\t\t\t , apm = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/htc/service/DongleInfo;->pairedApm:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", aph = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/htc/service/DongleInfo;->currentAph:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    .end local v2           #info:Lcom/htc/service/DongleInfo;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method setMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 3064
    const-string v0, "WfdStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMode() mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/server/WfdUtils;->modeNames:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine;->getCurrentState()Lcom/htc/server/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/server/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3065
    iput p1, p0, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    .line 3066
    return-void
.end method

.method setWhdmiForeground(Z)V
    .locals 4
    .parameter "flag"

    .prologue
    const/16 v3, 0x38

    .line 3559
    const-string v0, "WfdStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WFD]===>setWhdmiForeground() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", configuring = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", discovering = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/server/WfdStateMachine;->mIsDiscovering:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3561
    if-eqz p1, :cond_0

    .line 3562
    invoke-virtual {p0, v3}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 3570
    :goto_0
    return-void

    .line 3563
    :cond_0
    iget-boolean v0, p0, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    if-eqz v0, :cond_1

    .line 3564
    const-wide/32 v0, 0x493e0

    invoke-virtual {p0, v3, v0, v1}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0

    .line 3565
    :cond_1
    iget-boolean v0, p0, Lcom/htc/server/WfdStateMachine;->mIsDiscovering:Z

    if-eqz v0, :cond_2

    .line 3566
    const-wide/32 v0, 0x249f0

    invoke-virtual {p0, v3, v0, v1}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0

    .line 3568
    :cond_2
    const-wide/16 v0, 0x7530

    invoke-virtual {p0, v3, v0, v1}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0
.end method

.method startScanDongles(Z)V
    .locals 10
    .parameter "singleChannelScan"

    .prologue
    const/16 v9, 0x19

    const/4 v8, 0x1

    .line 3069
    const-string v4, "WfdStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startScanDongles() current = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3071
    sget-boolean v4, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-nez v4, :cond_1

    .line 3072
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    if-eqz v4, :cond_1

    .line 3073
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v4}, Lcom/htc/service/WirelessDisplayManager;->getDiscoveryDongleList()Ljava/util/List;

    move-result-object v0

    .line 3075
    .local v0, donglelist:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/service/DongleInfo;

    .line 3076
    .local v3, info:Lcom/htc/service/DongleInfo;
    sget-object v4, Lcom/htc/service/DongleInfo;->getStateName:[Ljava/lang/String;

    iget v5, v3, Lcom/htc/service/DongleInfo;->status:I

    aget-object v4, v4, v5

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 3077
    const-string v4, "WfdStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WFD]===>Dongle status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/service/DongleInfo;->getStateName:[Ljava/lang/String;

    iget v7, v3, Lcom/htc/service/DongleInfo;->status:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3078
    const-string v4, "WfdStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WFD_DBG]===> info.bssid ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3079
    const-string v4, "WfdStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WFD_DBG]===> info.isDiscoveredByWivu ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v3, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3080
    const-string v4, "WfdStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WFD_DBG]===> info.isConnectable ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v3, Lcom/htc/service/DongleInfo;->isConnectable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    const-string v4, "WfdStateMachine"

    const-string v5, "[WFD_DBG]===> --- "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3084
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #info:Lcom/htc/service/DongleInfo;
    :catch_0
    move-exception v1

    .line 3085
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3091
    .end local v0           #donglelist:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_1
    iput-boolean v8, p0, Lcom/htc/server/WfdStateMachine;->mIsRequestScanning:Z

    .line 3093
    const/16 v4, 0xb

    iput v4, p0, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    .line 3094
    const-string v4, "WfdStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update mCurrentPage = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3096
    iget-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsScanning:Z

    if-nez v4, :cond_2

    .line 3097
    iput-boolean v8, p0, Lcom/htc/server/WfdStateMachine;->mIsScanning:Z

    .line 3099
    :cond_2
    iget-boolean v4, p0, Lcom/htc/server/WfdStateMachine;->mIsCancelConfiguring:Z

    if-eqz v4, :cond_3

    .line 3111
    :goto_1
    return-void

    .line 3103
    :cond_3
    if-eqz p1, :cond_4

    .line 3104
    const/16 v4, 0x18

    invoke-virtual {p0, v4}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto :goto_1

    .line 3106
    :cond_4
    invoke-virtual {p0, v9}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 3107
    invoke-virtual {p0, v9}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    .line 3108
    iput-boolean v8, p0, Lcom/htc/server/WfdStateMachine;->mIsShowScanning:Z

    .line 3109
    const/4 v4, 0x7

    invoke-direct {p0, v4}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    goto :goto_1
.end method

.method stopScanDongles()V
    .locals 3

    .prologue
    .line 3115
    const-string v0, "WfdStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopScanDongles() current = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/server/WfdStateMachine;->mIsRequestScanning:Z

    .line 3117
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 3118
    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 3119
    const/16 v0, 0x46

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    .line 3120
    return-void
.end method

.method switchOnOffMirrorMode(Z)V
    .locals 9
    .parameter "autoEnable"

    .prologue
    const/16 v8, 0xb

    .line 3507
    const-string v5, "WfdStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "switchOnOffMirrorMode() auto = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3508
    const/16 v5, 0x38

    invoke-virtual {p0, v5}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 3509
    if-eqz p1, :cond_5

    .line 3511
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v5}, Lcom/htc/service/WirelessDisplayManager;->getDiscoveryDongleList()Ljava/util/List;

    move-result-object v0

    .line 3512
    .local v0, donglelist:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    const/4 v2, 0x0

    .line 3516
    .local v2, found:Z
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v5}, Lcom/htc/service/WirelessDisplayManager;->getCurrentDongle()Lcom/htc/service/DongleInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    .line 3517
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    if-eqz v5, :cond_1

    .line 3518
    const/4 v2, 0x1

    .line 3535
    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    .line 3536
    const-string v5, "WfdStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[WFD]===>switchOnOffMirrorMode() dongle ssid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v7, v7, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3537
    const/16 v5, 0x2e

    invoke-direct {p0, v5}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    .line 3538
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    .line 3548
    .end local v0           #donglelist:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    .end local v2           #found:Z
    :goto_1
    return-void

    .line 3521
    .restart local v0       #donglelist:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    .restart local v2       #found:Z
    :cond_1
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/service/DongleInfo;

    .line 3522
    .local v4, info:Lcom/htc/service/DongleInfo;
    iget v5, v4, Lcom/htc/service/DongleInfo;->status:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    iget-boolean v5, v4, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    if-eqz v5, :cond_2

    .line 3523
    :cond_3
    const-string v5, "WfdStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found ready to use dongle: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3524
    iput-object v4, p0, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3525
    const/4 v2, 0x1

    .line 3526
    goto :goto_0

    .line 3530
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #info:Lcom/htc/service/DongleInfo;
    :catch_0
    move-exception v1

    .line 3531
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 3540
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_4
    invoke-direct {p0, v8}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    goto :goto_1

    .line 3545
    .end local v0           #donglelist:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    .end local v2           #found:Z
    :cond_5
    invoke-direct {p0, v8}, Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V

    goto :goto_1
.end method

.method wpsTimeout()V
    .locals 2

    .prologue
    .line 3491
    const-string v0, "WfdStateMachine"

    const-string v1, "wpsTimeout()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3492
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    .line 3493
    return-void
.end method
