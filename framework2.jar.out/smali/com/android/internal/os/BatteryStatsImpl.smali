.class public final Lcom/android/internal/os/BatteryStatsImpl;
.super Landroid/os/BatteryStats;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsImpl$Uid;,
        Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;,
        Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;,
        Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;,
        Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;,
        Lcom/android/internal/os/BatteryStatsImpl$Timer;,
        Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;,
        Lcom/android/internal/os/BatteryStatsImpl$Counter;,
        Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;,
        Lcom/android/internal/os/BatteryStatsImpl$WakelockHistoryComparator;,
        Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;,
        Lcom/android/internal/os/BatteryStatsImpl$MyHandler;,
        Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;
    }
.end annotation


# static fields
.field private static final BATCHED_WAKELOCK_NAME:Ljava/lang/String; = "*overflow*"

.field private static final BATTERY_PLUGGED_NONE:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEBUG_GPU:Z = false

.field private static final DEBUG_HISTORY:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DEBUG_ON:Z = false

.field private static final DEBUG_SECURITY:Z = false

.field static final DELAY_UPDATE_WAKELOCKS:J = 0x1388L

.field private static final MAGIC:I = -0x458a8b8b

.field private static final MAX_GPU_SPEED_NUM:I = 0x14

.field static final MAX_HISTORY_BUFFER:I = 0x20000

.field private static final MAX_HISTORY_ITEMS:I = 0x7d0

.field static final MAX_MAX_HISTORY_BUFFER:I = 0x24000

.field private static final MAX_MAX_HISTORY_ITEMS:I = 0xbb8

.field private static final MAX_NETWORK_DELAY_MSTIME:I = 0x1388

.field private static final MAX_WAKELOCKS_PER_UID:I = 0x1e

.field private static final MAX_WAKELOCKS_PER_UID_IN_SYSTEM:I = 0x32

.field static final MSG_REPORT_POWER_CHANGE:I = 0x2

.field static final MSG_UPDATE_WAKELOCKS:I = 0x1

.field private static final PROC_WAKELOCKS_FORMAT:[I = null

.field private static final TAG:Ljava/lang/String; = "BatteryStatsImpl"

.field private static final USE_OLD_HISTORY:Z = false

.field private static final VERSION:I = 0x40

.field private static sKernelWakelockUpdateVersion:I

.field private static final sLockObject:Ljava/lang/Object;

.field private static final sLockPlug:Ljava/lang/Object;

.field private static sNumGpuSpeedSteps:I

.field private static sNumSpeedSteps:I

.field private static sWakelockHistoryComparator:Lcom/android/internal/os/BatteryStatsImpl$WakelockHistoryComparator;


# instance fields
.field private final BATTERY_MAX_RUN_TIME_100MS:I

.field private final BATTERY_MAX_RUN_TIME_1S:I

.field private final BATTERY_MAX_RUN_TIME_300MS:I

.field private final BATTERY_MAX_RUN_TIME_30MS:I

.field private final UID_NUM_DEL_COUNT_TO_SLEEP:I

.field private final UID_TIME_DEL_COUNT_TO_SLEEP:I

.field mAudioOn:Z

.field mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mBatteryLastRealtime:J

.field mBatteryLastUptime:J

.field mBatteryRealtime:J

.field private mBatteryStatusList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mBatteryStatusTimeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mBatteryUptime:J

.field mBluetoothOn:Z

.field mBluetoothOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field private mBluetoothPingCount:I

.field private mBluetoothPingStart:I

.field mBtHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mCallback:Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;

.field private mCallbackCount:I

.field mChangedBufferStates:I

.field mChangedStates:I

.field mDischargeAmountScreenOff:I

.field mDischargeAmountScreenOffSinceCharge:I

.field mDischargeAmountScreenOn:I

.field mDischargeAmountScreenOnSinceCharge:I

.field mDischargeCurrentLevel:I

.field mDischargeScreenOffUnplugLevel:I

.field mDischargeScreenOnUnplugLevel:I

.field mDischargeStartLevel:I

.field mDischargeUnplugLevel:I

.field mDisplayUid:I

.field private final mFile:Lcom/android/internal/util/JournaledFile;

.field final mFullTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field final mFullWifiLockTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mGlobalWifiRunning:Z

.field mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mGpsNesting:I

.field private final mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

.field mHaveBatteryLevel:Z

.field mHighDischargeAmountSinceCharge:I

.field mHistory:Landroid/os/BatteryStats$HistoryItem;

.field mHistoryBaseTime:J

.field final mHistoryBuffer:Landroid/os/Parcel;

.field mHistoryBufferLastPos:I

.field mHistoryCache:Landroid/os/BatteryStats$HistoryItem;

.field final mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

.field mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

.field mHistoryFileTime:J

.field private mHistoryIterator:Landroid/os/BatteryStats$HistoryItem;

.field mHistoryLastEnd:Landroid/os/BatteryStats$HistoryItem;

.field final mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

.field final mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

.field mHistoryOverflow:Z

.field final mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

.field mHistoryShutdownTime:J

.field private mHistoryStartTimeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mInputEventCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

.field private mIteratingHistory:Z

.field private final mKernelWakelockStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastGetNetworkDetailTime:J

.field private mLastGetNetworkSummaryTime:J

.field mLastHistoryTime:J

.field final mLastPartialTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mLastRealtime:J

.field mLastUptime:J

.field mLastWriteTime:J

.field mLowDischargeAmountSinceCharge:I

.field private mMobileDataRx:[J

.field private mMobileDataTx:[J

.field private mMobileIfaces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkDetailCache:Landroid/net/NetworkStats;

.field private final mNetworkStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

.field private mNetworkSummaryCache:Landroid/net/NetworkStats;

.field mNumHistoryItems:I

.field mOnBattery:Z

.field mOnBatteryInternal:Z

.field final mPartialTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mPendingWrite:Landroid/os/Parcel;

.field mPhoneDataConnectionType:I

.field final mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mPhoneOn:Z

.field mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field private mPhoneServiceState:I

.field private mPhoneServiceStateRaw:I

.field mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mPhoneSignalStrengthBin:I

.field mPhoneSignalStrengthBinRaw:I

.field final mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field private mPhoneSimStateRaw:I

.field private final mProcWakelockFileStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcWakelocksData:[J

.field private final mProcWakelocksName:[Ljava/lang/String;

.field private mRadioDataStart:J

.field private mRadioDataUptime:J

.field private mReadOverflow:Z

.field mRealtime:J

.field mRealtimeStart:J

.field mRecordingHistory:Z

.field final mScanWifiLockTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mScreenBrightnessBin:I

.field final mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mScreenOn:Z

.field mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mSensorNesting:I

.field final mSensorTimers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;>;"
        }
    .end annotation
.end field

.field mShuttingDown:Z

.field mStartCount:I

.field private mTotalDataRx:[J

.field private mTotalDataTx:[J

.field mTrackBatteryPastRealtime:J

.field mTrackBatteryPastUptime:J

.field mTrackBatteryRealtimeStart:J

.field mTrackBatteryUptimeStart:J

.field private mUidCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mUidStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid;",
            ">;"
        }
    .end annotation
.end field

.field private mUidStatsDel:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid;",
            ">;"
        }
    .end annotation
.end field

.field final mUnpluggables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;",
            ">;"
        }
    .end annotation
.end field

.field mUnpluggedBatteryRealtime:J

.field mUnpluggedBatteryUptime:J

.field mUptime:J

.field mUptimeStart:J

.field mVideoOn:Z

.field mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mWakeLockNesting:I

.field private mWakelockHistory:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;",
            ">;"
        }
    .end annotation
.end field

.field mWifiFullLockNesting:I

.field mWifiMulticastNesting:I

.field final mWifiMulticastTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mWifiOn:Z

.field mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mWifiOnUid:I

.field final mWifiRunningTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mWifiScanLockNesting:I

.field final mWindowTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field final mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    .line 139
    sput v1, Lcom/android/internal/os/BatteryStatsImpl;->sNumGpuSpeedSteps:I

    .line 382
    sput v1, Lcom/android/internal/os/BatteryStatsImpl;->sKernelWakelockUpdateVersion:I

    .line 384
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/os/BatteryStatsImpl;->PROC_WAKELOCKS_FORMAT:[I

    .line 431
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistoryComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistoryComparator;-><init>(Lcom/android/internal/os/BatteryStatsImpl$1;)V

    sput-object v0, Lcom/android/internal/os/BatteryStatsImpl;->sWakelockHistoryComparator:Lcom/android/internal/os/BatteryStatsImpl$WakelockHistoryComparator;

    .line 438
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/os/BatteryStatsImpl;->sLockObject:Ljava/lang/Object;

    .line 439
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/os/BatteryStatsImpl;->sLockPlug:Ljava/lang/Object;

    .line 8297
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$2;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl$2;-><init>()V

    sput-object v0, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 384
    nop

    :array_0
    .array-data 0x4
        0x9t 0x10t 0x0t 0x0t
        0x9t 0x20t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x20t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x4

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 444
    invoke-direct {p0}, Landroid/os/BatteryStats;-><init>()V

    .line 143
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCallbackCount:I

    .line 196
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    .line 206
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScanWifiLockTimers:Ljava/util/ArrayList;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    .line 223
    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHaveBatteryLevel:Z

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    .line 229
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    .line 230
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 231
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 232
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    .line 233
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    .line 234
    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryOverflow:Z

    .line 235
    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryTime:J

    .line 237
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    .line 265
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    .line 266
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 279
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    .line 280
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBinRaw:I

    .line 281
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 286
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    .line 287
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 292
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnUid:I

    .line 332
    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    .line 335
    new-array v0, v5, [J

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileDataTx:[J

    .line 336
    new-array v0, v5, [J

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileDataRx:[J

    .line 337
    new-array v0, v5, [J

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTotalDataTx:[J

    .line 338
    new-array v0, v5, [J

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTotalDataRx:[J

    .line 344
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothPingStart:I

    .line 346
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceState:I

    .line 347
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceStateRaw:I

    .line 348
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSimStateRaw:I

    .line 351
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDisplayUid:I

    .line 355
    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryFileTime:J

    .line 359
    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryShutdownTime:J

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryStartTimeList:Ljava/util/ArrayList;

    .line 364
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->BATTERY_MAX_RUN_TIME_1S:I

    .line 365
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->BATTERY_MAX_RUN_TIME_300MS:I

    .line 366
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->BATTERY_MAX_RUN_TIME_100MS:I

    .line 367
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->BATTERY_MAX_RUN_TIME_30MS:I

    .line 368
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->UID_NUM_DEL_COUNT_TO_SLEEP:I

    .line 369
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->UID_TIME_DEL_COUNT_TO_SLEEP:I

    .line 375
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    .line 393
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mProcWakelocksName:[Ljava/lang/String;

    .line 394
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mProcWakelocksData:[J

    .line 400
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mProcWakelockFileStats:Ljava/util/Map;

    .line 403
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidCache:Ljava/util/HashMap;

    .line 405
    new-instance v0, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v0}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    .line 408
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:Ljava/util/HashSet;

    .line 430
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakelockHistory:Ljava/util/HashMap;

    .line 433
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryStatusList:Ljava/util/ArrayList;

    .line 434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryStatusTimeList:Ljava/util/ArrayList;

    .line 440
    iput-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStatsDel:Landroid/util/SparseArray;

    .line 2066
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedBufferStates:I

    .line 2153
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedStates:I

    .line 3215
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    .line 3239
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanLockNesting:I

    .line 3263
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    .line 7154
    iput-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    .line 7155
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 8513
    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastGetNetworkSummaryTime:J

    .line 8514
    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastGetNetworkDetailTime:J

    .line 445
    iput-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    .line 446
    iput-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    .line 447
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .parameter "p"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x4

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 6037
    invoke-direct {p0}, Landroid/os/BatteryStats;-><init>()V

    .line 143
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCallbackCount:I

    .line 196
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    .line 206
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScanWifiLockTimers:Ljava/util/ArrayList;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    .line 223
    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHaveBatteryLevel:Z

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    .line 229
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    .line 230
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 231
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 232
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    .line 233
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    .line 234
    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryOverflow:Z

    .line 235
    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryTime:J

    .line 237
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    .line 265
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    .line 266
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 279
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    .line 280
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBinRaw:I

    .line 281
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 286
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    .line 287
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 292
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnUid:I

    .line 332
    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    .line 335
    new-array v0, v5, [J

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileDataTx:[J

    .line 336
    new-array v0, v5, [J

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileDataRx:[J

    .line 337
    new-array v0, v5, [J

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTotalDataTx:[J

    .line 338
    new-array v0, v5, [J

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTotalDataRx:[J

    .line 344
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothPingStart:I

    .line 346
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceState:I

    .line 347
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceStateRaw:I

    .line 348
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSimStateRaw:I

    .line 351
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDisplayUid:I

    .line 355
    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryFileTime:J

    .line 359
    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryShutdownTime:J

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryStartTimeList:Ljava/util/ArrayList;

    .line 364
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->BATTERY_MAX_RUN_TIME_1S:I

    .line 365
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->BATTERY_MAX_RUN_TIME_300MS:I

    .line 366
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->BATTERY_MAX_RUN_TIME_100MS:I

    .line 367
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->BATTERY_MAX_RUN_TIME_30MS:I

    .line 368
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->UID_NUM_DEL_COUNT_TO_SLEEP:I

    .line 369
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->UID_TIME_DEL_COUNT_TO_SLEEP:I

    .line 375
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    .line 393
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mProcWakelocksName:[Ljava/lang/String;

    .line 394
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mProcWakelocksData:[J

    .line 400
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mProcWakelockFileStats:Ljava/util/Map;

    .line 403
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidCache:Ljava/util/HashMap;

    .line 405
    new-instance v0, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v0}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    .line 408
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:Ljava/util/HashSet;

    .line 430
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakelockHistory:Ljava/util/HashMap;

    .line 433
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryStatusList:Ljava/util/ArrayList;

    .line 434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryStatusTimeList:Ljava/util/ArrayList;

    .line 440
    iput-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStatsDel:Landroid/util/SparseArray;

    .line 2066
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedBufferStates:I

    .line 2153
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedStates:I

    .line 3215
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    .line 3239
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanLockNesting:I

    .line 3263
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    .line 7154
    iput-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    .line 7155
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 8513
    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastGetNetworkSummaryTime:J

    .line 8514
    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastGetNetworkDetailTime:J

    .line 6038
    iput-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    .line 6039
    iput-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    .line 6040
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->clearHistoryLocked()V

    .line 6041
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->readFromParcel(Landroid/os/Parcel;)V

    .line 6042
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 11
    .parameter "filename"

    .prologue
    const/4 v2, 0x4

    const-wide/16 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 5993
    invoke-direct {p0}, Landroid/os/BatteryStats;-><init>()V

    .line 143
    iput v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCallbackCount:I

    .line 196
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    .line 203
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    .line 204
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    .line 205
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    .line 206
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    .line 208
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    .line 209
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    .line 210
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScanWifiLockTimers:Ljava/util/ArrayList;

    .line 211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    .line 214
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    .line 218
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    .line 223
    iput-boolean v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHaveBatteryLevel:Z

    .line 224
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    .line 229
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    .line 230
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 231
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 232
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    .line 233
    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    .line 234
    iput-boolean v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryOverflow:Z

    .line 235
    iput-wide v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryTime:J

    .line 237
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    .line 265
    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    .line 266
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 279
    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    .line 280
    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBinRaw:I

    .line 281
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 286
    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    .line 287
    const/16 v1, 0x10

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 292
    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnUid:I

    .line 332
    iput-wide v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    .line 335
    new-array v1, v2, [J

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileDataTx:[J

    .line 336
    new-array v1, v2, [J

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileDataRx:[J

    .line 337
    new-array v1, v2, [J

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTotalDataTx:[J

    .line 338
    new-array v1, v2, [J

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTotalDataRx:[J

    .line 344
    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothPingStart:I

    .line 346
    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceState:I

    .line 347
    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceStateRaw:I

    .line 348
    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSimStateRaw:I

    .line 351
    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDisplayUid:I

    .line 355
    iput-wide v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryFileTime:J

    .line 359
    iput-wide v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryShutdownTime:J

    .line 360
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryStartTimeList:Ljava/util/ArrayList;

    .line 364
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->BATTERY_MAX_RUN_TIME_1S:I

    .line 365
    const/16 v1, 0x12c

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->BATTERY_MAX_RUN_TIME_300MS:I

    .line 366
    const/16 v1, 0x64

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->BATTERY_MAX_RUN_TIME_100MS:I

    .line 367
    const/16 v1, 0x1e

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->BATTERY_MAX_RUN_TIME_30MS:I

    .line 368
    const/16 v1, 0x19

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->UID_NUM_DEL_COUNT_TO_SLEEP:I

    .line 369
    const/16 v1, 0x64

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->UID_TIME_DEL_COUNT_TO_SLEEP:I

    .line 375
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    .line 393
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mProcWakelocksName:[Ljava/lang/String;

    .line 394
    const/4 v1, 0x3

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mProcWakelocksData:[J

    .line 400
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mProcWakelockFileStats:Ljava/util/Map;

    .line 403
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidCache:Ljava/util/HashMap;

    .line 405
    new-instance v1, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v1}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    .line 408
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:Ljava/util/HashSet;

    .line 430
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakelockHistory:Ljava/util/HashMap;

    .line 433
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryStatusList:Ljava/util/ArrayList;

    .line 434
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryStatusTimeList:Ljava/util/ArrayList;

    .line 440
    iput-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStatsDel:Landroid/util/SparseArray;

    .line 2066
    iput v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedBufferStates:I

    .line 2153
    iput v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedStates:I

    .line 3215
    iput v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    .line 3239
    iput v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanLockNesting:I

    .line 3263
    iput v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    .line 7154
    iput-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    .line 7155
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 8513
    iput-wide v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastGetNetworkSummaryTime:J

    .line 8514
    iput-wide v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastGetNetworkDetailTime:J

    .line 5994
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    .line 5995
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    invoke-direct {v1, p0}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;-><init>(Lcom/android/internal/os/BatteryStatsImpl;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    .line 5996
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    .line 5997
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, v6, v8, v6, v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5998
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 5999
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    rsub-int/lit8 v3, v0, -0x64

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v2, v6, v3, v6, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    aput-object v2, v1, v0

    .line 5998
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6001
    :cond_0
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInputEventCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 6002
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v2, -0x2

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, v6, v2, v6, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6003
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 6004
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    rsub-int v3, v0, -0xc8

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v2, v6, v3, v6, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    aput-object v2, v1, v0

    .line 6003
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6006
    :cond_1
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v2, -0xc7

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, v6, v2, v6, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6007
    const/4 v0, 0x0

    :goto_2
    const/16 v1, 0x10

    if-ge v0, v1, :cond_2

    .line 6008
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    rsub-int v3, v0, -0x12c

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v2, v6, v3, v6, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    aput-object v2, v1, v0

    .line 6007
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6010
    :cond_2
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v2, -0x3

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, v6, v2, v6, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6011
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v2, -0x4

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, v6, v2, v6, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6012
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v2, -0x5

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, v6, v2, v6, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6013
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v2, -0x6

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, v6, v2, v6, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6014
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v2, -0x7

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, v6, v2, v6, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6015
    iput-boolean v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    iput-boolean v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    .line 6017
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileDebugWakelock()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6018
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryStatusList:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6019
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryStatusTimeList:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6023
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->initTimes()V

    .line 6024
    iput-wide v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryPastUptime:J

    .line 6025
    iput-wide v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryPastRealtime:J

    .line 6026
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryUptimeStart:J

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUptimeStart:J

    .line 6027
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryRealtimeStart:J

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    .line 6028
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUptimeStart:J

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked(J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedBatteryUptime:J

    .line 6029
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryRealtimeLocked(J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedBatteryRealtime:J

    .line 6030
    iput v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStartLevel:I

    .line 6031
    iput v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    .line 6032
    iput v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    .line 6033
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->initDischarge()V

    .line 6034
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->clearHistoryLocked()V

    .line 6035
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCallback:Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 91
    sget-boolean v0, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/os/BatteryStatsImpl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCallbackCount:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/os/BatteryStatsImpl;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCallbackCount:I

    return p1
.end method

.method static synthetic access$208(Lcom/android/internal/os/BatteryStatsImpl;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCallbackCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCallbackCount:I

    return v0
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/android/internal/os/BatteryStatsImpl;->sLockPlug:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/os/BatteryStatsImpl;)Landroid/net/NetworkStats;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getNetworkStatsDetailGroupedByUid()Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/os/BatteryStatsImpl;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakelockHistory:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/android/internal/os/BatteryStatsImpl;->sLockObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/os/BatteryStatsImpl;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStatsDel:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/internal/os/BatteryStatsImpl;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStatsDel:Landroid/util/SparseArray;

    return-object p1
.end method

.method private doDataPlug([JJ)V
    .locals 4
    .parameter "dataTransfer"
    .parameter "currentBytes"

    .prologue
    const/4 v3, 0x3

    .line 1994
    const/4 v0, 0x1

    aget-wide v1, p1, v3

    aput-wide v1, p1, v0

    .line 1995
    const-wide/16 v0, -0x1

    aput-wide v0, p1, v3

    .line 1996
    return-void
.end method

.method private doDataUnplug([JJ)V
    .locals 1
    .parameter "dataTransfer"
    .parameter "currentBytes"

    .prologue
    .line 1999
    const/4 v0, 0x3

    aput-wide p2, p1, v0

    .line 2000
    return-void
.end method

.method private fixPhoneServiceState(II)I
    .locals 2
    .parameter "state"
    .parameter "signalBin"

    .prologue
    const/4 v1, 0x1

    .line 2857
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSimStateRaw:I

    if-ne v0, v1, :cond_0

    .line 2860
    if-ne p1, v1, :cond_0

    if-lez p2, :cond_0

    .line 2862
    const/4 p1, 0x0

    .line 2866
    :cond_0
    return p1
.end method

.method private static final formatTimeMs(Ljava/lang/StringBuilder;J)V
    .locals 4
    .parameter "sb"
    .parameter "time"

    .prologue
    const-wide/16 v2, 0x3e8

    .line 8351
    div-long v0, p1, v2

    .line 8352
    .local v0, sec:J
    invoke-static {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    .line 8353
    mul-long/2addr v2, v0

    sub-long v2, p1, v2

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->toThreeDigits(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8354
    const-string v2, "ms "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8355
    return-void
.end method

.method private static final formatTimeRaw(Ljava/lang/StringBuilder;J)V
    .locals 12
    .parameter "out"
    .parameter "seconds"

    .prologue
    .line 8328
    const-wide/32 v8, 0x15180

    div-long v0, p1, v8

    .line 8329
    .local v0, days:J
    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->toTwoDigits(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8330
    const-string v8, "d "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8332
    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v0

    const-wide/16 v10, 0x3c

    mul-long/2addr v8, v10

    const-wide/16 v10, 0x18

    mul-long v6, v8, v10

    .line 8334
    .local v6, used:J
    sub-long v8, p1, v6

    const-wide/16 v10, 0xe10

    div-long v2, v8, v10

    .line 8335
    .local v2, hours:J
    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->toTwoDigits(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8336
    const-string v8, "h "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8338
    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v2

    const-wide/16 v10, 0x3c

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    .line 8340
    sub-long v8, p1, v6

    const-wide/16 v10, 0x3c

    div-long v4, v8, v10

    .line 8341
    .local v4, mins:J
    invoke-static {v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->toTwoDigits(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8342
    const-string v8, "m "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8344
    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v4

    add-long/2addr v6, v8

    .line 8346
    sub-long v8, p1, v6

    invoke-static {v8, v9}, Lcom/android/internal/os/BatteryStatsImpl;->toTwoDigits(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8347
    const-string v8, "s "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8348
    return-void
.end method

.method private getCurrentBluetoothPingCount()I
    .locals 3

    .prologue
    .line 2041
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBtHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_0

    .line 2042
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBtHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 2043
    .local v0, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2044
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBtHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothHeadset;->getBatteryUsageHint(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 2047
    .end local v0           #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private getCurrentRadioDataUptime()J
    .locals 7

    .prologue
    const-wide/16 v3, 0x0

    .line 2008
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v5, "/sys/devices/virtual/net/rmnet0/awake_time_ms"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2009
    .local v0, awakeTimeFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2019
    .end local v0           #awakeTimeFile:Ljava/io/File;
    :goto_0
    return-wide v3

    .line 2010
    .restart local v0       #awakeTimeFile:Ljava/io/File;
    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2011
    .local v1, br:Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 2012
    .local v2, line:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 2013
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    goto :goto_0

    .line 2016
    .end local v0           #awakeTimeFile:Ljava/io/File;
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v2           #line:Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 2014
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method public static getGpuSpeedSteps()I
    .locals 3

    .prologue
    const/16 v1, 0x14

    const/4 v0, 0x1

    .line 7010
    sget v2, Lcom/android/internal/os/BatteryStatsImpl;->sNumGpuSpeedSteps:I

    if-gt v2, v0, :cond_0

    .line 7018
    :goto_0
    return v0

    .line 7014
    :cond_0
    sget v0, Lcom/android/internal/os/BatteryStatsImpl;->sNumGpuSpeedSteps:I

    if-lt v0, v1, :cond_1

    move v0, v1

    .line 7015
    goto :goto_0

    .line 7018
    :cond_1
    sget v0, Lcom/android/internal/os/BatteryStatsImpl;->sNumGpuSpeedSteps:I

    goto :goto_0
.end method

.method private getNetworkStatsDetailGroupedByUid()Landroid/net/NetworkStats;
    .locals 8

    .prologue
    .line 8562
    monitor-enter p0

    .line 8564
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 8565
    .local v0, currentTime:J
    const/4 v3, 0x0

    .line 8567
    .local v3, needUpdate:Z
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastGetNetworkDetailTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x1388

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastGetNetworkDetailTime:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    .line 8569
    :cond_0
    const/4 v3, 0x1

    .line 8573
    :cond_1
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkDetailCache:Landroid/net/NetworkStats;

    if-eqz v4, :cond_2

    if-eqz v3, :cond_5

    .line 8578
    :cond_2
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkDetailCache:Landroid/net/NetworkStats;

    .line 8580
    const-string v4, "net.qtaguid_enabled"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_3

    .line 8582
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    invoke-virtual {v4}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail()Landroid/net/NetworkStats;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkStats;->groupedByUid()Landroid/net/NetworkStats;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkDetailCache:Landroid/net/NetworkStats;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 8592
    :cond_3
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkDetailCache:Landroid/net/NetworkStats;

    if-nez v4, :cond_4

    .line 8593
    new-instance v4, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkDetailCache:Landroid/net/NetworkStats;

    .line 8596
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastGetNetworkDetailTime:J

    .line 8599
    :cond_5
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkDetailCache:Landroid/net/NetworkStats;

    monitor-exit p0

    return-object v4

    .line 8584
    :catch_0
    move-exception v2

    .line 8587
    .local v2, e:Ljava/lang/IllegalStateException;
    const-string v4, "BatteryStatsImpl"

    const-string v5, "problem reading network stats"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 8600
    .end local v0           #currentTime:J
    .end local v2           #e:Ljava/lang/IllegalStateException;
    .end local v3           #needUpdate:Z
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method private getNetworkStatsSummary()Landroid/net/NetworkStats;
    .locals 8

    .prologue
    .line 8519
    monitor-enter p0

    .line 8521
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 8522
    .local v0, currentTime:J
    const/4 v3, 0x0

    .line 8524
    .local v3, needUpdate:Z
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastGetNetworkSummaryTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x1388

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastGetNetworkSummaryTime:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    .line 8527
    :cond_0
    const/4 v3, 0x1

    .line 8531
    :cond_1
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkSummaryCache:Landroid/net/NetworkStats;

    if-eqz v4, :cond_2

    if-eqz v3, :cond_5

    .line 8536
    :cond_2
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkSummaryCache:Landroid/net/NetworkStats;

    .line 8538
    const-string v4, "net.qtaguid_enabled"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_3

    .line 8540
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    invoke-virtual {v4}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsSummaryDev()Landroid/net/NetworkStats;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkSummaryCache:Landroid/net/NetworkStats;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 8549
    :cond_3
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkSummaryCache:Landroid/net/NetworkStats;

    if-nez v4, :cond_4

    .line 8550
    new-instance v4, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkSummaryCache:Landroid/net/NetworkStats;

    .line 8553
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastGetNetworkSummaryTime:J

    .line 8556
    :cond_5
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkSummaryCache:Landroid/net/NetworkStats;

    monitor-exit p0

    return-object v4

    .line 8541
    :catch_0
    move-exception v2

    .line 8544
    .local v2, e:Ljava/lang/IllegalStateException;
    const-string v4, "BatteryStatsImpl"

    const-string v5, "problem reading network stats"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 8557
    .end local v0           #currentTime:J
    .end local v2           #e:Ljava/lang/IllegalStateException;
    .end local v3           #needUpdate:Z
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method private getTcpBytes(J[JI)J
    .locals 6
    .parameter "current"
    .parameter "dataBytes"
    .parameter "which"

    .prologue
    const/4 v0, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 6874
    if-ne p4, v4, :cond_0

    .line 6875
    aget-wide v0, p3, v4

    .line 6886
    :goto_0
    return-wide v0

    .line 6877
    :cond_0
    if-ne p4, v5, :cond_2

    .line 6878
    aget-wide v0, p3, v5

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 6879
    aget-wide v0, p3, v4

    goto :goto_0

    .line 6881
    :cond_1
    aget-wide v0, p3, v5

    sub-long v0, p1, v0

    goto :goto_0

    .line 6883
    :cond_2
    if-nez p4, :cond_3

    .line 6884
    aget-wide v0, p3, v0

    sub-long v0, p1, v0

    const/4 v2, 0x0

    aget-wide v2, p3, v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 6886
    :cond_3
    aget-wide v0, p3, v0

    sub-long v0, p1, v0

    goto :goto_0
.end method

.method private final parseProcWakelocks([BI)Ljava/util/Map;
    .locals 24
    .parameter "wlBuffer"
    .parameter "len"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1895
    const/16 v20, 0x0

    .line 1899
    .local v20, numUpdatedWlNames:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    move/from16 v0, p2

    if-ge v14, v0, :cond_0

    aget-byte v2, p1, v14

    const/16 v5, 0xa

    if-eq v2, v5, :cond_0

    aget-byte v2, p1, v14

    if-eqz v2, :cond_0

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1900
    :cond_0
    add-int/lit8 v4, v14, 0x1

    .local v4, endIndex:I
    move v3, v4

    .line 1902
    .local v3, startIndex:I
    monitor-enter p0

    .line 1903
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mProcWakelockFileStats:Ljava/util/Map;

    move-object/from16 v18, v0

    .line 1905
    .local v18, m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;>;"
    sget v2, Lcom/android/internal/os/BatteryStatsImpl;->sKernelWakelockUpdateVersion:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/internal/os/BatteryStatsImpl;->sKernelWakelockUpdateVersion:I

    .line 1906
    :goto_1
    move/from16 v0, p2

    if-ge v4, v0, :cond_8

    .line 1907
    move v4, v3

    .line 1908
    :goto_2
    move/from16 v0, p2

    if-ge v4, v0, :cond_1

    aget-byte v2, p1, v4

    const/16 v5, 0xa

    if-eq v2, v5, :cond_1

    aget-byte v2, p1, v4

    if-eqz v2, :cond_1

    .line 1909
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1910
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 1913
    add-int/lit8 v2, p2, -0x1

    if-lt v4, v2, :cond_2

    .line 1914
    monitor-exit p0

    .line 1963
    :goto_3
    return-object v18

    .line 1917
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mProcWakelocksName:[Ljava/lang/String;

    .line 1918
    .local v6, nameStringArray:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl;->mProcWakelocksData:[J

    .line 1922
    .local v7, wlData:[J
    move/from16 v16, v3

    .local v16, j:I
    :goto_4
    move/from16 v0, v16

    if-ge v0, v4, :cond_4

    .line 1923
    aget-byte v2, p1, v16

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_3

    const/16 v2, 0x3f

    aput-byte v2, p1, v16

    .line 1922
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 1925
    :cond_4
    sget-object v5, Lcom/android/internal/os/BatteryStatsImpl;->PROC_WAKELOCKS_FORMAT:[I

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Landroid/os/Process;->parseProcLine([BII[I[Ljava/lang/String;[J[F)Z

    move-result v21

    .line 1928
    .local v21, parsed:Z
    const/4 v2, 0x0

    aget-object v19, v6, v2

    .line 1929
    .local v19, name:Ljava/lang/String;
    const/4 v2, 0x1

    aget-wide v8, v7, v2

    long-to-int v10, v8

    .line 1931
    .local v10, count:I
    const/4 v2, 0x2

    aget-wide v8, v7, v2

    const-wide/16 v22, 0x1f4

    add-long v8, v8, v22

    const-wide/16 v22, 0x3e8

    div-long v11, v8, v22

    .line 1933
    .local v11, totalTime:J
    if-eqz v21, :cond_5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 1934
    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1935
    new-instance v8, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;

    sget v13, Lcom/android/internal/os/BatteryStatsImpl;->sKernelWakelockUpdateVersion:I

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;-><init>(Lcom/android/internal/os/BatteryStatsImpl;IJI)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1937
    add-int/lit8 v20, v20, 0x1

    .line 1951
    :cond_5
    :goto_5
    move v3, v4

    .line 1952
    goto :goto_1

    .line 1939
    :cond_6
    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;

    .line 1940
    .local v17, kwlStats:Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mVersion:I

    sget v5, Lcom/android/internal/os/BatteryStatsImpl;->sKernelWakelockUpdateVersion:I

    if-ne v2, v5, :cond_7

    .line 1941
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mCount:I

    add-int/2addr v2, v10

    move-object/from16 v0, v17

    iput v2, v0, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mCount:I

    .line 1942
    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mTotalTime:J

    add-long/2addr v8, v11

    move-object/from16 v0, v17

    iput-wide v8, v0, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mTotalTime:J

    goto :goto_5

    .line 1964
    .end local v6           #nameStringArray:[Ljava/lang/String;
    .end local v7           #wlData:[J
    .end local v10           #count:I
    .end local v11           #totalTime:J
    .end local v16           #j:I
    .end local v17           #kwlStats:Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;
    .end local v18           #m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;>;"
    .end local v19           #name:Ljava/lang/String;
    .end local v21           #parsed:Z
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1944
    .restart local v6       #nameStringArray:[Ljava/lang/String;
    .restart local v7       #wlData:[J
    .restart local v10       #count:I
    .restart local v11       #totalTime:J
    .restart local v16       #j:I
    .restart local v17       #kwlStats:Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;
    .restart local v18       #m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;>;"
    .restart local v19       #name:Ljava/lang/String;
    .restart local v21       #parsed:Z
    :cond_7
    :try_start_1
    move-object/from16 v0, v17

    iput v10, v0, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mCount:I

    .line 1945
    move-object/from16 v0, v17

    iput-wide v11, v0, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mTotalTime:J

    .line 1946
    sget v2, Lcom/android/internal/os/BatteryStatsImpl;->sKernelWakelockUpdateVersion:I

    move-object/from16 v0, v17

    iput v2, v0, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mVersion:I

    .line 1947
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 1954
    .end local v6           #nameStringArray:[Ljava/lang/String;
    .end local v7           #wlData:[J
    .end local v10           #count:I
    .end local v11           #totalTime:J
    .end local v16           #j:I
    .end local v17           #kwlStats:Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;
    .end local v19           #name:Ljava/lang/String;
    .end local v21           #parsed:Z
    :cond_8
    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->size()I

    move-result v2

    move/from16 v0, v20

    if-eq v2, v0, :cond_a

    .line 1956
    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 1957
    .local v15, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;>;"
    :cond_9
    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1958
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;

    iget v2, v2, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mVersion:I

    sget v5, Lcom/android/internal/os/BatteryStatsImpl;->sKernelWakelockUpdateVersion:I

    if-eq v2, v5, :cond_9

    .line 1959
    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    .line 1963
    .end local v15           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;>;"
    :cond_a
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3
.end method

.method static readFully(Ljava/io/FileInputStream;)[B
    .locals 10
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 7258
    const/4 v4, 0x0

    .line 7259
    .local v4, pos:I
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 7261
    .local v1, avail:I
    const v5, 0x2ee000

    if-lt v1, v5, :cond_1

    .line 7263
    const-string v5, "BatteryStatsImpl"

    const-string v6, "The file stream is huge (%dKB). "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    div-int/lit16 v8, v1, 0x400

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7264
    const/4 v2, 0x0

    .line 7275
    :cond_0
    return-object v2

    .line 7267
    :cond_1
    new-array v2, v1, [B

    .line 7269
    .local v2, data:[B
    :cond_2
    :goto_0
    array-length v5, v2

    sub-int/2addr v5, v4

    invoke-virtual {p0, v2, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    .line 7272
    .local v0, amt:I
    if-lez v0, :cond_0

    .line 7277
    add-int/2addr v4, v0

    .line 7278
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 7279
    array-length v5, v2

    sub-int/2addr v5, v4

    if-le v1, v5, :cond_2

    .line 7280
    add-int v5, v4, v1

    new-array v3, v5, [B

    .line 7281
    .local v3, newData:[B
    invoke-static {v2, v9, v3, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7282
    move-object v2, v3

    goto :goto_0
.end method

.method private final readKernelWakelockStats()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1862
    const/16 v6, 0x2000

    new-array v0, v6, [B

    .line 1866
    .local v0, buffer:[B
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    const-string v6, "/proc/wakelocks"

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1867
    .local v3, is:Ljava/io/FileInputStream;
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 1868
    .local v4, len:I
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 1870
    if-lez v4, :cond_0

    .line 1872
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 1873
    aget-byte v6, v0, v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v6, :cond_1

    .line 1874
    move v4, v2

    .line 1885
    .end local v2           #i:I
    :cond_0
    invoke-direct {p0, v0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->parseProcWakelocks([BI)Ljava/util/Map;

    move-result-object v5

    .end local v3           #is:Ljava/io/FileInputStream;
    .end local v4           #len:I
    :goto_1
    return-object v5

    .line 1872
    .restart local v2       #i:I
    .restart local v3       #is:Ljava/io/FileInputStream;
    .restart local v4       #len:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1879
    .end local v2           #i:I
    .end local v3           #is:Ljava/io/FileInputStream;
    .end local v4           #len:I
    :catch_0
    move-exception v1

    .line 1880
    .local v1, e:Ljava/io/FileNotFoundException;
    goto :goto_1

    .line 1881
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 1882
    .local v1, e:Ljava/io/IOException;
    goto :goto_1
.end method

.method private readSummaryFromParcel(Landroid/os/Parcel;)V
    .locals 31
    .parameter "in"

    .prologue
    .line 7547
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 7548
    .local v26, version:I
    const/16 v28, 0x40

    move/from16 v0, v26

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    .line 7549
    const-string v28, "BatteryStats"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "readFromParcel: version got "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", expected "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v30, 0x40

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "; erasing old stats"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7789
    :cond_0
    :goto_0
    return-void

    .line 7555
    :cond_1
    sget-boolean v28, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v28, :cond_2

    .line 7556
    const-string v28, "BatteryStatsImpl"

    const-string v29, "readSummaryFromParcel Start"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7560
    :cond_2
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->readHistory(Landroid/os/Parcel;Z)V

    .line 7562
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    .line 7563
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryUptime:J

    .line 7564
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryRealtime:J

    .line 7565
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mUptime:J

    .line 7566
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mRealtime:J

    .line 7567
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    .line 7568
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    .line 7569
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLowDischargeAmountSinceCharge:I

    .line 7570
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mHighDischargeAmountSinceCharge:I

    .line 7571
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOnSinceCharge:I

    .line 7572
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOffSinceCharge:I

    .line 7574
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    move/from16 v28, v0

    add-int/lit8 v28, v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    .line 7576
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOn:Z

    .line 7577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7578
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    const/16 v28, 0x5

    move/from16 v0, v28

    if-ge v9, v0, :cond_3

    .line 7579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    aget-object v28, v28, v9

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7578
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 7581
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInputEventCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7582
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOn:Z

    .line 7583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7584
    const/4 v9, 0x0

    :goto_2
    const/16 v28, 0x5

    move/from16 v0, v28

    if-ge v9, v0, :cond_4

    .line 7585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    aget-object v28, v28, v9

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7584
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 7587
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7588
    const/4 v9, 0x0

    :goto_3
    const/16 v28, 0x10

    move/from16 v0, v28

    if-ge v9, v0, :cond_5

    .line 7589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    aget-object v28, v28, v9

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7588
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 7591
    :cond_5
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOn:Z

    .line 7592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7593
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunning:Z

    .line 7594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7595
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOn:Z

    .line 7596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7598
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 7599
    .local v3, NKW:I
    const/16 v28, 0x2710

    move/from16 v0, v28

    if-le v3, v0, :cond_6

    .line 7600
    const-string v28, "BatteryStatsImpl"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "File corrupt: too many kernel wake locks "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7603
    :cond_6
    const/4 v10, 0x0

    .local v10, ikw:I
    :goto_4
    if-ge v10, v3, :cond_8

    .line 7604
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_7

    .line 7605
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 7606
    .local v15, kwltName:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/os/BatteryStatsImpl;->getKernelWakelockTimerLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7603
    .end local v15           #kwltName:Ljava/lang/String;
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 7612
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 7613
    .local v21, sNumSpeedStepsTemp:I
    const/16 v28, 0x64

    move/from16 v0, v21

    move/from16 v1, v28

    if-le v0, v1, :cond_9

    .line 7614
    const-string v28, "BatteryStatsImpl"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "File corrupt: too many cpu speed steps  "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7617
    :cond_9
    sput v21, Lcom/android/internal/os/BatteryStatsImpl;->sNumSpeedSteps:I

    .line 7621
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 7622
    .local v20, sNumGpuSpeedStepsTemp:I
    const/16 v28, 0x64

    move/from16 v0, v20

    move/from16 v1, v28

    if-le v0, v1, :cond_a

    .line 7623
    const-string v28, "BatteryStatsImpl"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "File corrupt: too many gpu speed steps  "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7626
    :cond_a
    sput v20, Lcom/android/internal/os/BatteryStatsImpl;->sNumGpuSpeedSteps:I

    .line 7630
    sget-boolean v28, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v28, :cond_b

    .line 7631
    const-string v28, "BatteryStatsImpl"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Gpu level num = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sget v30, Lcom/android/internal/os/BatteryStatsImpl;->sNumGpuSpeedSteps:I

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7635
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 7636
    .local v7, NU:I
    const/16 v28, 0x2710

    move/from16 v0, v28

    if-le v7, v0, :cond_c

    .line 7637
    const-string v28, "BatteryStatsImpl"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "File corrupt: too many uids "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7640
    :cond_c
    const/4 v13, 0x0

    .local v13, iu:I
    :goto_5
    if-ge v13, v7, :cond_29

    .line 7641
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 7642
    .local v25, uid:I
    new-instance v24, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;-><init>(Lcom/android/internal/os/BatteryStatsImpl;I)V

    .line 7643
    .local v24, u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7645
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    .line 7646
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_d

    .line 7647
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7649
    :cond_d
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    .line 7650
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_e

    .line 7651
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7653
    :cond_e
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockOut:Z

    .line 7654
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_f

    .line 7655
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7657
    :cond_f
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    .line 7658
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_10

    .line 7659
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7661
    :cond_10
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOn:Z

    .line 7662
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_11

    .line 7663
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7665
    :cond_11
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOn:Z

    .line 7666
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_12

    .line 7667
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7670
    :cond_12
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOn:Z

    .line 7671
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_13

    .line 7672
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7676
    :cond_13
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOn:Z

    .line 7677
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_14

    .line 7678
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7681
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_15

    .line 7682
    const/4 v9, 0x0

    :goto_6
    const/16 v28, 0x5

    move/from16 v0, v28

    if-ge v9, v0, :cond_15

    .line 7683
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    aget-object v28, v28, v9

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7682
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 7688
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_17

    .line 7689
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v28, v0

    if-nez v28, :cond_16

    .line 7690
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initUserActivityLocked()V

    .line 7692
    :cond_16
    const/4 v9, 0x0

    :goto_7
    const/16 v28, 0x7

    move/from16 v0, v28

    if-ge v9, v0, :cond_17

    .line 7693
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v28, v0

    aget-object v28, v28, v9

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7692
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 7697
    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 7698
    .local v8, NW:I
    const/16 v28, 0x64

    move/from16 v0, v28

    if-le v8, v0, :cond_18

    .line 7699
    const-string v28, "BatteryStatsImpl"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "File corrupt: too many wake locks "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7702
    :cond_18
    const/4 v14, 0x0

    .local v14, iw:I
    :goto_8
    if-ge v14, v8, :cond_1c

    .line 7703
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 7704
    .local v27, wlName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_19

    .line 7705
    const/16 v28, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakeTimerLocked(Ljava/lang/String;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7707
    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_1a

    .line 7708
    const/16 v28, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakeTimerLocked(Ljava/lang/String;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7710
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_1b

    .line 7711
    const/16 v28, 0x2

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakeTimerLocked(Ljava/lang/String;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7702
    :cond_1b
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 7715
    .end local v27           #wlName:Ljava/lang/String;
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 7716
    .local v4, NP:I
    const/16 v28, 0x3e8

    move/from16 v0, v28

    if-le v4, v0, :cond_1d

    .line 7717
    const-string v28, "BatteryStatsImpl"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "File corrupt: too many sensors "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7720
    :cond_1d
    const/4 v12, 0x0

    .local v12, is:I
    :goto_9
    if-ge v12, v4, :cond_1f

    .line 7721
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 7722
    .local v22, seNumber:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_1e

    .line 7723
    const/16 v28, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v22

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7720
    :cond_1e
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 7728
    .end local v22           #seNumber:I
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 7729
    const/16 v28, 0x3e8

    move/from16 v0, v28

    if-le v4, v0, :cond_20

    .line 7730
    const-string v28, "BatteryStatsImpl"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "File corrupt: too many processes "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7733
    :cond_20
    const/4 v11, 0x0

    .local v11, ip:I
    :goto_a
    if-ge v11, v4, :cond_24

    .line 7734
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 7735
    .local v18, procName:Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v16

    .line 7736
    .local v16, p:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedUserTime:J

    move-wide/from16 v0, v28

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    .line 7737
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedSystemTime:J

    move-wide/from16 v0, v28

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    .line 7738
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedStarts:I

    move/from16 v0, v28

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    .line 7739
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 7740
    .local v6, NSB:I
    const/16 v28, 0x64

    move/from16 v0, v28

    if-le v6, v0, :cond_21

    .line 7741
    const-string v28, "BatteryStatsImpl"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "File corrupt: too many speed bins "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7744
    :cond_21
    new-array v0, v6, [Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    .line 7745
    const/4 v9, 0x0

    :goto_b
    if-ge v9, v6, :cond_23

    .line 7746
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_22

    .line 7747
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    move-object/from16 v28, v0

    new-instance v29, Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-direct/range {v29 .. v30}, Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;-><init>(Ljava/util/ArrayList;)V

    aput-object v29, v28, v9

    .line 7748
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    move-object/from16 v28, v0

    aget-object v28, v28, v9

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7745
    :cond_22
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 7751
    :cond_23
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->readExcessivePowerFromParcelLocked(Landroid/os/Parcel;)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 7733
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_a

    .line 7756
    .end local v6           #NSB:I
    .end local v16           #p:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v18           #procName:Ljava/lang/String;
    :cond_24
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 7757
    const/16 v28, 0x2710

    move/from16 v0, v28

    if-le v4, v0, :cond_25

    .line 7758
    const-string v28, "BatteryStatsImpl"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "File corrupt: too many packages "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7761
    :cond_25
    const/4 v11, 0x0

    :goto_c
    if-ge v11, v4, :cond_28

    .line 7762
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 7763
    .local v17, pkgName:Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    move-result-object v16

    .line 7764
    .local v16, p:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mLoadedWakeups:I

    move/from16 v0, v28

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeups:I

    .line 7765
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 7766
    .local v5, NS:I
    const/16 v28, 0x3e8

    move/from16 v0, v28

    if-le v5, v0, :cond_26

    .line 7767
    const-string v28, "BatteryStatsImpl"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "File corrupt: too many services "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7770
    :cond_26
    const/4 v12, 0x0

    :goto_d
    if-ge v12, v5, :cond_27

    .line 7771
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 7772
    .local v23, servName:Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getServiceStatsLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v19

    .line 7773
    .local v19, s:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedStartTime:J

    move-wide/from16 v0, v28

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTime:J

    .line 7774
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedStarts:I

    move/from16 v0, v28

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    .line 7775
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedLaunches:I

    move/from16 v0, v28

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    .line 7770
    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    .line 7761
    .end local v19           #s:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .end local v23           #servName:Ljava/lang/String;
    :cond_27
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_c

    .line 7779
    .end local v5           #NS:I
    .end local v16           #p:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .end local v17           #pkgName:Ljava/lang/String;
    :cond_28
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLoadedTcpBytesReceived:J

    .line 7780
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLoadedTcpBytesSent:J

    .line 7640
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_5

    .line 7784
    .end local v4           #NP:I
    .end local v8           #NW:I
    .end local v11           #ip:I
    .end local v12           #is:I
    .end local v14           #iw:I
    .end local v24           #u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v25           #uid:I
    :cond_29
    sget-boolean v28, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v28, :cond_0

    .line 7785
    const-string v28, "BatteryStatsImpl"

    const-string v29, "readSummaryFromParcel End"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static toThreeDigits(J)Ljava/lang/String;
    .locals 2
    .parameter "digit"

    .prologue
    .line 8318
    const-wide/16 v0, 0x64

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .line 8319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8323
    :goto_0
    return-object v0

    .line 8320
    :cond_0
    const-wide/16 v0, 0xa

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1

    .line 8321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 8323
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static toTwoDigits(J)Ljava/lang/String;
    .locals 2
    .parameter "digit"

    .prologue
    .line 8310
    const-wide/16 v0, 0xa

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .line 8311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8313
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateAllPhoneStateLocked(III)V
    .locals 6
    .parameter "state"
    .parameter "simState"
    .parameter "bin"

    .prologue
    const/4 v5, 0x1

    .line 2870
    const/4 v1, 0x0

    .line 2871
    .local v1, scanning:Z
    const/4 v0, 0x0

    .line 2873
    .local v0, newHistory:Z
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceStateRaw:I

    .line 2874
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSimStateRaw:I

    .line 2875
    iput p3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBinRaw:I

    .line 2878
    sget-boolean v2, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 2879
    const-string v2, "BatteryStatsImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update State Locked ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2883
    :cond_0
    if-ne p2, v5, :cond_1

    .line 2886
    if-ne p1, v5, :cond_1

    if-lez p3, :cond_1

    .line 2888
    const/4 p1, 0x0

    .line 2893
    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_9

    .line 2894
    const/4 p3, -0x1

    .line 2914
    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 2916
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2917
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v4, -0x8000001

    and-int/2addr v3, v4

    iput v3, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2920
    const/4 v0, 0x1

    .line 2921
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v2, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 2925
    :cond_3
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceState:I

    if-eq v2, p1, :cond_4

    .line 2926
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit16 v3, v3, -0xf01

    shl-int/lit8 v4, p1, 0x8

    or-int/2addr v3, v4

    iput v3, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2930
    const/4 v0, 0x1

    .line 2931
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceState:I

    .line 2934
    :cond_4
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    if-eq v2, p3, :cond_7

    .line 2935
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    if-ltz v2, :cond_5

    .line 2936
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    aget-object v2, v2, v3

    invoke-virtual {v2, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 2938
    :cond_5
    if-ltz p3, :cond_a

    .line 2939
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2940
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, p3

    invoke-virtual {v2, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 2942
    :cond_6
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit16 v3, v3, -0xf1

    shl-int/lit8 v4, p3, 0x4

    or-int/2addr v3, v4

    iput v3, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2946
    const/4 v0, 0x1

    .line 2950
    :goto_1
    iput p3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    .line 2953
    :cond_7
    if-eqz v0, :cond_8

    .line 2954
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(J)V

    .line 2956
    :cond_8
    return-void

    .line 2897
    :cond_9
    if-eqz p1, :cond_2

    .line 2902
    if-ne p1, v5, :cond_2

    .line 2903
    const/4 v1, 0x1

    .line 2904
    const/4 p3, 0x0

    .line 2905
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2906
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v4, 0x800

    or-int/2addr v3, v4

    iput v3, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2907
    const/4 v0, 0x1

    .line 2910
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v2, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    goto/16 :goto_0

    .line 2948
    :cond_a
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->stopAllSignalStrengthTimersLocked(I)V

    goto :goto_1
.end method

.method private useNewMethodToResetUidData()Z
    .locals 4

    .prologue
    .line 8606
    const/4 v0, 0x0

    .line 8608
    .local v0, value:Z
    sget-object v2, Lcom/android/internal/os/BatteryStatsImpl;->sLockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 8609
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStatsDel:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStatsDel:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 8610
    :cond_0
    const/4 v0, 0x1

    .line 8612
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8614
    sget-boolean v1, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v1, :cond_2

    .line 8615
    const-string v1, "BatteryStatsImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "use new method = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8618
    :cond_2
    return v0

    .line 8612
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method addBatteryStatsDataToUnpluggables()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    .line 8692
    const/4 v1, 0x0

    .line 8694
    .local v1, size:I
    sget-boolean v2, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 8695
    const-string v2, "BatteryStatsImpl"

    const-string v3, "addBatteryStatsDataToUnpluggables start"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8698
    :cond_0
    sget-boolean v2, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    .line 8699
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 8700
    const-string v2, "BatteryStatsImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "before mUnpluggables.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8701
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 8702
    const-string v2, "BatteryStatsImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "before data= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8701
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8706
    .end local v0           #i:I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 8708
    sget-boolean v2, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v2, :cond_2

    .line 8709
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 8710
    const-string v2, "BatteryStatsImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "middle mUnpluggables.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8713
    :cond_2
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->attach()V

    .line 8714
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v5, :cond_3

    .line 8715
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->attach()V

    .line 8714
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8717
    :cond_3
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInputEventCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->attach()V

    .line 8718
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->attach()V

    .line 8719
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->attach()V

    .line 8720
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->attach()V

    .line 8721
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v5, :cond_4

    .line 8722
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->attach()V

    .line 8721
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 8724
    :cond_4
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->attach()V

    .line 8725
    const/4 v0, 0x0

    :goto_3
    const/16 v2, 0x10

    if-ge v0, v2, :cond_5

    .line 8726
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->attach()V

    .line 8725
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 8728
    :cond_5
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->attach()V

    .line 8729
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->attach()V

    .line 8730
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->attach()V

    .line 8732
    const/4 v0, 0x0

    :goto_4
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 8733
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->attach()V

    .line 8732
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 8736
    :cond_6
    sget-boolean v2, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v2, :cond_7

    .line 8737
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 8738
    const-string v2, "BatteryStatsImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after mUnpluggables.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8739
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_7

    .line 8740
    const-string v2, "BatteryStatsImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after data= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8739
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 8744
    :cond_7
    sget-boolean v2, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v2, :cond_8

    .line 8745
    const-string v2, "BatteryStatsImpl"

    const-string v3, "addBatteryStatsDataToUnpluggables end"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8748
    :cond_8
    return-void
.end method

.method addHistoryBufferLocked(J)V
    .locals 10
    .parameter "curTime"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2069
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHaveBatteryLevel:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    if-nez v4, :cond_1

    .line 2132
    :cond_0
    :goto_0
    return-void

    .line 2074
    :cond_1
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryFileTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    .line 2075
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryFileTime:J

    .line 2077
    sget-boolean v4, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v4, :cond_2

    .line 2078
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2079
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v4, "******************current mHistoryFileTime: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2080
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryFileTime:J

    invoke-static {v4, v5, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 2081
    const-string v4, "BatteryStatsImpl"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :cond_2
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    add-long/2addr v4, p1

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v6, v6, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v2, v4, v6

    .line 2088
    .local v2, timeDiff:J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    if-ltz v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v4, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-ne v4, v8, :cond_6

    const-wide/16 v4, 0x7d0

    cmp-long v4, v2, v4

    if-gez v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v4, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v5, Landroid/os/BatteryStats$HistoryItem;->states:I

    xor-int/2addr v4, v5

    iget v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedBufferStates:I

    and-int/2addr v4, v5

    if-nez v4, :cond_6

    .line 2093
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    iget v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataSize(I)V

    .line 2094
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    iget v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2095
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    .line 2096
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v4, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-ne v4, v8, :cond_3

    const-wide/16 v4, 0x1f4

    cmp-long v4, v2, v4

    if-gez v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$HistoryItem;->same(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2101
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    .line 2102
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iput-byte v9, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    goto/16 :goto_0

    .line 2105
    :cond_3
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedBufferStates:I

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v5, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    xor-int/2addr v5, v6

    or-int/2addr v4, v5

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedBufferStates:I

    .line 2106
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v4, v4, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    sub-long p1, v4, v6

    .line 2107
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    .line 2112
    :goto_1
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    .line 2113
    .local v0, dataSize:I
    const/high16 v4, 0x2

    if-lt v0, v4, :cond_5

    .line 2114
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryOverflow:Z

    if-nez v4, :cond_4

    .line 2115
    iput-boolean v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryOverflow:Z

    .line 2116
    const/4 v4, 0x3

    invoke-virtual {p0, p1, p2, v4}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JB)V

    .line 2123
    :cond_4
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v4, v4, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v5, v5, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-ne v4, v5, :cond_5

    const v4, 0x24000

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v4, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v5, Landroid/os/BatteryStats$HistoryItem;->states:I

    xor-int/2addr v4, v5

    const/high16 v5, 0x101c

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 2131
    :cond_5
    invoke-virtual {p0, p1, p2, v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JB)V

    goto/16 :goto_0

    .line 2109
    .end local v0           #dataSize:I
    :cond_6
    iput v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedBufferStates:I

    goto :goto_1
.end method

.method addHistoryBufferLocked(JB)V
    .locals 5
    .parameter "curTime"
    .parameter "cmd"

    .prologue
    .line 2135
    const/4 v0, 0x0

    .line 2136
    .local v0, origPos:I
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIteratingHistory:Z

    if-eqz v1, :cond_0

    .line 2137
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 2138
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2140
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    .line 2141
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v1, v2}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    .line 2142
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    add-long/2addr v2, p1

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v1, v2, v3, p3, v4}, Landroid/os/BatteryStats$HistoryItem;->setTo(JBLandroid/os/BatteryStats$HistoryItem;)V

    .line 2143
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v1, v2, v3}, Landroid/os/BatteryStats$HistoryItem;->writeDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;)V

    .line 2144
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryTime:J

    .line 2148
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIteratingHistory:Z

    if-eqz v1, :cond_1

    .line 2149
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2151
    :cond_1
    return-void
.end method

.method addHistoryRecordLocked(J)V
    .locals 0
    .parameter "curTime"

    .prologue
    .line 2156
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(J)V

    .line 2159
    return-void
.end method

.method addHistoryRecordLocked(JB)V
    .locals 7
    .parameter "curTime"
    .parameter "cmd"

    .prologue
    .line 2219
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCache:Landroid/os/BatteryStats$HistoryItem;

    .line 2220
    .local v0, rec:Landroid/os/BatteryStats$HistoryItem;
    if-eqz v0, :cond_1

    .line 2221
    iget-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->next:Landroid/os/BatteryStats$HistoryItem;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCache:Landroid/os/BatteryStats$HistoryItem;

    .line 2225
    :goto_0
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    add-long/2addr v1, p1

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0, v1, v2, p3, v3}, Landroid/os/BatteryStats$HistoryItem;->setTo(JBLandroid/os/BatteryStats$HistoryItem;)V

    .line 2227
    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(Landroid/os/BatteryStats$HistoryItem;)V

    .line 2229
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileDebugBatteryHistory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2230
    const-string v1, "BatteryStatsImpl"

    const-string v2, "Record %04d Added at %08x (%08x+%08x)"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryItems:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-wide v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    add-long/2addr v5, p1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-wide v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    :cond_0
    return-void

    .line 2223
    :cond_1
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    .end local v0           #rec:Landroid/os/BatteryStats$HistoryItem;
    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .restart local v0       #rec:Landroid/os/BatteryStats$HistoryItem;
    goto :goto_0
.end method

.method addHistoryRecordLocked(Landroid/os/BatteryStats$HistoryItem;)V
    .locals 1
    .parameter "rec"

    .prologue
    .line 2235
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryItems:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryItems:I

    .line 2236
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->next:Landroid/os/BatteryStats$HistoryItem;

    .line 2237
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastEnd:Landroid/os/BatteryStats$HistoryItem;

    .line 2238
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    if-eqz v0, :cond_0

    .line 2239
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    iput-object p1, v0, Landroid/os/BatteryStats$HistoryItem;->next:Landroid/os/BatteryStats$HistoryItem;

    .line 2240
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    .line 2244
    :goto_0
    return-void

    .line 2242
    :cond_0
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistory:Landroid/os/BatteryStats$HistoryItem;

    goto :goto_0
.end method

.method clearHistoryLocked()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 2249
    sget-boolean v0, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 2250
    const-string v0, "BatteryStatsImpl"

    const-string v1, "********** CLEARING HISTORY!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2264
    :cond_0
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    .line 2265
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryTime:J

    .line 2268
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryFileTime:J

    .line 2271
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryShutdownTime:J

    .line 2273
    sget-boolean v0, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v0, :cond_1

    .line 2274
    const-string v0, "BatteryStatsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start times = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryStartTimeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryStartTimeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2280
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataSize(I)V

    .line 2281
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2282
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataCapacity(I)V

    .line 2283
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iput-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 2284
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iput-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 2285
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    .line 2286
    iput-boolean v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryOverflow:Z

    .line 2287
    return-void
.end method

.method public commitPendingDataToDisk()V
    .locals 11

    .prologue
    .line 7214
    sget-boolean v5, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v5, :cond_0

    .line 7215
    const-string v5, "BatteryStatsImpl"

    const-string v6, "commitPendingDataToDisk Start"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7219
    :cond_0
    monitor-enter p0

    .line 7220
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    .line 7221
    .local v3, next:Landroid/os/Parcel;
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    .line 7222
    if-nez v3, :cond_2

    .line 7223
    monitor-exit p0

    .line 7255
    :cond_1
    :goto_0
    return-void

    .line 7226
    :cond_2
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 7227
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7230
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    invoke-virtual {v5}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 7231
    .local v4, stream:Ljava/io/FileOutputStream;
    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 7232
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 7233
    invoke-static {v4}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 7234
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 7235
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    invoke-virtual {v5}, Lcom/android/internal/util/JournaledFile;->commit()V

    .line 7237
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileDebugBatteryHistory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 7238
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 7239
    .local v0, curTime:J
    const-string v5, "BatteryStatsImpl"

    const-string v6, "Histroy sync to disk at %08x (%08x+%08x)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-wide v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    add-long/2addr v9, v0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-wide v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 7246
    .end local v0           #curTime:J
    :cond_3
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 7247
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    .end local v4           #stream:Ljava/io/FileOutputStream;
    :goto_1
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 7251
    sget-boolean v5, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v5, :cond_1

    .line 7252
    const-string v5, "BatteryStatsImpl"

    const-string v6, "commitPendingDataToDisk End"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7227
    .end local v3           #next:Landroid/os/Parcel;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 7242
    .restart local v3       #next:Landroid/os/Parcel;
    :catch_0
    move-exception v2

    .line 7243
    .local v2, e:Ljava/io/IOException;
    :try_start_3
    const-string v5, "BatteryStats"

    const-string v6, "Error writing battery statistics"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7244
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    invoke-virtual {v5}, Lcom/android/internal/util/JournaledFile;->rollback()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 7246
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 7247
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_1

    .line 7246
    .end local v2           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v5

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 7247
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 7246
    throw v5
.end method

.method public computeBatteryRealtime(JI)J
    .locals 4
    .parameter "curTime"
    .parameter "which"

    .prologue
    .line 6830
    packed-switch p3, :pswitch_data_0

    .line 6840
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 6832
    :pswitch_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryRealtime:J

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryRealtimeLocked(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 6834
    :pswitch_1
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryLastRealtime:J

    goto :goto_0

    .line 6836
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryRealtimeLocked(J)J

    move-result-wide v0

    goto :goto_0

    .line 6838
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryRealtimeLocked(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedBatteryRealtime:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 6830
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public computeBatteryUptime(JI)J
    .locals 4
    .parameter "curTime"
    .parameter "which"

    .prologue
    .line 6815
    packed-switch p3, :pswitch_data_0

    .line 6825
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 6817
    :pswitch_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryUptime:J

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptime(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 6819
    :pswitch_1
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryLastUptime:J

    goto :goto_0

    .line 6821
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptime(J)J

    move-result-wide v0

    goto :goto_0

    .line 6823
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedBatteryUptime:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 6815
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public computeRealtime(JI)J
    .locals 4
    .parameter "curTime"
    .parameter "which"

    .prologue
    .line 6804
    packed-switch p3, :pswitch_data_0

    .line 6810
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 6805
    :pswitch_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtime:J

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 6806
    :pswitch_1
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastRealtime:J

    goto :goto_0

    .line 6807
    :pswitch_2
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    sub-long v0, p1, v0

    goto :goto_0

    .line 6808
    :pswitch_3
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryRealtimeStart:J

    sub-long v0, p1, v0

    goto :goto_0

    .line 6804
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public computeUptime(JI)J
    .locals 4
    .parameter "curTime"
    .parameter "which"

    .prologue
    .line 6793
    packed-switch p3, :pswitch_data_0

    .line 6799
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 6794
    :pswitch_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUptime:J

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUptimeStart:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 6795
    :pswitch_1
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastUptime:J

    goto :goto_0

    .line 6796
    :pswitch_2
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUptimeStart:J

    sub-long v0, p1, v0

    goto :goto_0

    .line 6797
    :pswitch_3
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryUptimeStart:J

    sub-long v0, p1, v0

    goto :goto_0

    .line 6793
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 7343
    const/4 v0, 0x0

    return v0
.end method

.method public distributeWorkLocked(I)V
    .locals 25
    .parameter "which"

    .prologue
    .line 7092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    const/16 v22, 0x3f2

    invoke-virtual/range {v21 .. v22}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 7093
    .local v20, wifiUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-eqz v20, :cond_5

    .line 7094
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    const-wide/16 v23, 0x3e8

    mul-long v21, v21, v23

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v13

    .line 7095
    .local v13, uSecTime:J
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 7096
    .local v6, proc:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v13, v14, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getGlobalWifiRunningTime(JI)J

    move-result-wide v11

    .line 7097
    .local v11, totalRunningTime:J
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v4, v0, :cond_0

    .line 7098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 7099
    .local v15, uid:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    iget v0, v15, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    move/from16 v21, v0

    const/16 v22, 0x3f2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 7100
    move/from16 v0, p1

    invoke-virtual {v15, v13, v14, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWifiRunningTime(JI)J

    move-result-wide v17

    .line 7101
    .local v17, uidRunningTime:J
    const-wide/16 v21, 0x0

    cmp-long v21, v17, v21

    if-lez v21, :cond_4

    .line 7102
    const-string v21, "*wifi*"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v16

    .line 7103
    .local v16, uidProc:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    move/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->getUserTime(I)J

    move-result-wide v9

    .line 7104
    .local v9, time:J
    mul-long v21, v9, v17

    div-long v9, v21, v11

    .line 7105
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    move-wide/from16 v21, v0

    add-long v21, v21, v9

    move-wide/from16 v0, v21

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    .line 7106
    iget-wide v0, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    move-wide/from16 v21, v0

    sub-long v21, v21, v9

    move-wide/from16 v0, v21

    iput-wide v0, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    .line 7107
    move/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->getSystemTime(I)J

    move-result-wide v9

    .line 7108
    mul-long v21, v9, v17

    div-long v9, v21, v11

    .line 7109
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    move-wide/from16 v21, v0

    add-long v21, v21, v9

    move-wide/from16 v0, v21

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    .line 7110
    iget-wide v0, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    move-wide/from16 v21, v0

    sub-long v21, v21, v9

    move-wide/from16 v0, v21

    iput-wide v0, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    .line 7111
    move/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v9

    .line 7112
    mul-long v21, v9, v17

    div-long v9, v21, v11

    .line 7113
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    move-wide/from16 v21, v0

    add-long v21, v21, v9

    move-wide/from16 v0, v21

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    .line 7114
    iget-wide v0, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    move-wide/from16 v21, v0

    sub-long v21, v21, v9

    move-wide/from16 v0, v21

    iput-wide v0, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    .line 7115
    const/4 v7, 0x0

    .local v7, sb:I
    :goto_1
    iget-object v0, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_3

    .line 7116
    iget-object v0, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    move-object/from16 v21, v0

    aget-object v8, v21, v7

    .line 7117
    .local v8, sc:Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;
    if-eqz v8, :cond_2

    .line 7118
    move/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;->getCountLocked(I)I

    move-result v21

    move/from16 v0, v21

    int-to-long v9, v0

    .line 7119
    mul-long v21, v9, v17

    div-long v9, v21, v11

    .line 7120
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    move-object/from16 v21, v0

    aget-object v19, v21, v7

    .line 7121
    .local v19, uidSc:Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;
    if-nez v19, :cond_1

    .line 7122
    new-instance v19, Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    .end local v19           #uidSc:Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;-><init>(Ljava/util/ArrayList;)V

    .line 7123
    .restart local v19       #uidSc:Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    move-object/from16 v21, v0

    aput-object v19, v21, v7

    .line 7125
    :cond_1
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v21, v0

    long-to-int v0, v9

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 7126
    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v21, v0

    neg-long v0, v9

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 7115
    .end local v19           #uidSc:Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 7129
    .end local v8           #sc:Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;
    :cond_3
    sub-long v11, v11, v17

    .line 7097
    .end local v7           #sb:I
    .end local v9           #time:J
    .end local v16           #uidProc:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v17           #uidRunningTime:J
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 7135
    .end local v4           #i:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #proc:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v11           #totalRunningTime:J
    .end local v13           #uSecTime:J
    .end local v15           #uid:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_5
    return-void
.end method

.method public doPlugLocked(JJ)V
    .locals 18
    .parameter "batteryUptime"
    .parameter "batteryRealtime"

    .prologue
    .line 2395
    const/4 v5, 0x0

    .line 2398
    .local v5, entry:Landroid/net/NetworkStats$Entry;
    const-wide/16 v9, 0x0

    .line 2399
    .local v9, startTimeMillis:J
    const-wide/16 v11, 0x0

    .line 2403
    .local v11, tempTime:J
    sget-boolean v14, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v14, :cond_0

    .line 2404
    const-string v14, "BatteryStatsImpl"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "doPlugLocked Start uptime = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v0, p1

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ,realtime = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v0, p3

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v14

    add-int/lit8 v8, v14, -0x1

    .local v8, iu:I
    :goto_0
    if-ltz v8, :cond_3

    .line 2413
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v14, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 2414
    .local v13, u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    iget-wide v14, v13, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mStartedTcpBytesReceived:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-ltz v14, :cond_1

    .line 2415
    invoke-virtual {v13}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->computeCurrentTcpBytesReceived()J

    move-result-wide v14

    iput-wide v14, v13, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentTcpBytesReceived:J

    .line 2416
    const-wide/16 v14, -0x1

    iput-wide v14, v13, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mStartedTcpBytesReceived:J

    .line 2418
    :cond_1
    iget-wide v14, v13, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mStartedTcpBytesSent:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-ltz v14, :cond_2

    .line 2419
    invoke-virtual {v13}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->computeCurrentTcpBytesSent()J

    move-result-wide v14

    iput-wide v14, v13, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentTcpBytesSent:J

    .line 2420
    const-wide/16 v14, -0x1

    iput-wide v14, v13, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mStartedTcpBytesSent:J

    .line 2412
    :cond_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 2424
    .end local v13           #u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_3
    sget-object v15, Lcom/android/internal/os/BatteryStatsImpl;->sLockPlug:Ljava/lang/Object;

    monitor-enter v15

    .line 2428
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v14

    add-int/lit8 v6, v14, -0x1

    .local v6, i:I
    :goto_1
    if-ltz v6, :cond_4

    .line 2430
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-interface {v14, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;->plug(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2428
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 2431
    :catch_0
    move-exception v4

    .line 2432
    .local v4, e:Ljava/lang/Exception;
    :try_start_2
    const-string v14, "BatteryStatsImpl"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "mUnpluggables.get("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ").plug exception"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2438
    .end local v4           #e:Ljava/lang/Exception;
    .end local v6           #i:I
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v14

    .restart local v6       #i:I
    :cond_4
    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2452
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getNetworkStatsSummary()Landroid/net/NetworkStats;

    move-result-object v7

    .line 2463
    .local v7, ifaceStats:Landroid/net/NetworkStats;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:Ljava/util/HashSet;

    invoke-virtual {v7, v5, v14}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;)Landroid/net/NetworkStats$Entry;

    move-result-object v5

    .line 2464
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileDataRx:[J

    iget-wide v15, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-direct {v0, v14, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->doDataPlug([JJ)V

    .line 2465
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileDataTx:[J

    iget-wide v15, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-direct {v0, v14, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->doDataPlug([JJ)V

    .line 2466
    invoke-virtual {v7, v5}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v5

    .line 2467
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTotalDataRx:[J

    iget-wide v15, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-direct {v0, v14, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->doDataPlug([JJ)V

    .line 2468
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTotalDataTx:[J

    iget-wide v15, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-direct {v0, v14, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->doDataPlug([JJ)V

    .line 2471
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getRadioDataUptime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRadioDataUptime:J

    .line 2472
    const-wide/16 v14, -0x1

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRadioDataStart:J

    .line 2475
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothPingCount()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothPingCount:I

    .line 2476
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothPingStart:I

    .line 2479
    sget-boolean v14, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v14, :cond_5

    .line 2480
    const-string v14, "BatteryStatsImpl"

    const-string v15, "doPlugLocked End"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    :cond_5
    return-void
.end method

.method public doUnplugLocked(JJ)V
    .locals 19
    .parameter "batteryUptime"
    .parameter "batteryRealtime"

    .prologue
    .line 2290
    const/4 v5, 0x0

    .line 2292
    .local v5, entry:Landroid/net/NetworkStats$Entry;
    const-wide/16 v9, 0x0

    .line 2293
    .local v9, startTimeMillis:J
    const-wide/16 v11, 0x0

    .line 2297
    .local v11, tempTime:J
    sget-boolean v15, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v15, :cond_0

    .line 2298
    const-string v15, "BatteryStatsImpl"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "doUnplugLocked Start uptime = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " ,realtime = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getNetworkStatsDetailGroupedByUid()Landroid/net/NetworkStats;

    move-result-object v14

    .line 2321
    .local v14, uidStats:Landroid/net/NetworkStats;
    invoke-virtual {v14}, Landroid/net/NetworkStats;->size()I

    move-result v8

    .line 2322
    .local v8, size:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v8, :cond_2

    .line 2323
    invoke-virtual {v14, v6, v5}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v5

    .line 2325
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    iget v0, v5, Landroid/net/NetworkStats$Entry;->uid:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 2326
    .local v13, u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-nez v13, :cond_1

    .line 2322
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2328
    :cond_1
    iget-wide v15, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iput-wide v15, v13, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mStartedTcpBytesReceived:J

    .line 2329
    iget-wide v15, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    iput-wide v15, v13, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mStartedTcpBytesSent:J

    .line 2330
    iget-wide v15, v13, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentTcpBytesReceived:J

    iput-wide v15, v13, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mTcpBytesReceivedAtLastUnplug:J

    .line 2331
    iget-wide v15, v13, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentTcpBytesSent:J

    iput-wide v15, v13, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mTcpBytesSentAtLastUnplug:J

    goto :goto_1

    .line 2334
    .end local v13           #u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_2
    sget-object v16, Lcom/android/internal/os/BatteryStatsImpl;->sLockPlug:Ljava/lang/Object;

    monitor-enter v16

    .line 2338
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    add-int/lit8 v6, v15, -0x1

    :goto_2
    if-ltz v6, :cond_3

    .line 2340
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-interface {v15, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;->unplug(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2338
    :goto_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 2341
    :catch_0
    move-exception v4

    .line 2342
    .local v4, e:Ljava/lang/Exception;
    :try_start_2
    const-string v15, "BatteryStatsImpl"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "mUnpluggables.get("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ").unplug exception"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2348
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v15

    :cond_3
    :try_start_3
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2361
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getNetworkStatsSummary()Landroid/net/NetworkStats;

    move-result-object v7

    .line 2372
    .local v7, ifaceStats:Landroid/net/NetworkStats;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:Ljava/util/HashSet;

    invoke-virtual {v7, v5, v15}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;)Landroid/net/NetworkStats$Entry;

    move-result-object v5

    .line 2373
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileDataRx:[J

    iget-wide v0, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v15, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->doDataUnplug([JJ)V

    .line 2374
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileDataTx:[J

    iget-wide v0, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v15, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->doDataUnplug([JJ)V

    .line 2375
    invoke-virtual {v7, v5}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v5

    .line 2376
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTotalDataRx:[J

    iget-wide v0, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v15, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->doDataUnplug([JJ)V

    .line 2377
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTotalDataTx:[J

    iget-wide v0, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v15, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->doDataUnplug([JJ)V

    .line 2380
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getCurrentRadioDataUptime()J

    move-result-wide v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRadioDataStart:J

    .line 2381
    const-wide/16 v15, 0x0

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRadioDataUptime:J

    .line 2384
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getCurrentBluetoothPingCount()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothPingStart:I

    .line 2385
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothPingCount:I

    .line 2388
    sget-boolean v15, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v15, :cond_4

    .line 2389
    const-string v15, "BatteryStatsImpl"

    const-string v16, "doUnplugLocked End"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    :cond_4
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 21
    .parameter "pw"

    .prologue
    .line 8395
    invoke-super/range {p0 .. p1}, Landroid/os/BatteryStats;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 8398
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileDebugWakelock()Z

    move-result v15

    if-eqz v15, :cond_d

    .line 8399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 8401
    .local v9, now:J
    const-string v15, "====================================================================================="

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8402
    const-string v15, "Charging history"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8403
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryStatusList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 8404
    .local v12, size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v12, :cond_1

    .line 8405
    const-string v15, "    "

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8406
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryStatusList:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-nez v15, :cond_0

    .line 8407
    const-string v15, "Plugged   : "

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8411
    :goto_1
    new-instance v16, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryStatusTimeList:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-direct/range {v16 .. v18}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8404
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8409
    :cond_0
    const-string v15, "Unplugged : "

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 8414
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 8415
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 8416
    const-string v15, "Wake lock history"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8417
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 8418
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 8420
    .local v11, sb:Ljava/lang/StringBuilder;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 8422
    .local v7, mHistories:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWakelockHistory:Ljava/util/HashMap;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 8423
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWakelockHistory:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 8424
    .local v6, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 8425
    .local v8, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWakelockHistory:Ljava/util/HashMap;

    invoke-virtual {v15, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;

    .line 8426
    .local v14, wh:Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;
    iget-object v15, v14, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mAcquireTimeList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-eqz v15, :cond_2

    .line 8430
    iget-wide v0, v14, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mSum:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    iput-wide v0, v14, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mTempSum:J

    .line 8431
    const/4 v4, 0x0

    :goto_3
    iget-object v15, v14, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mReleaseTimeList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v4, v15, :cond_4

    .line 8432
    iget-object v15, v14, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mReleaseTimeList:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    iget-object v15, v14, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mAcquireTimeList:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    sub-long v2, v17, v19

    .line 8433
    .local v2, diff:J
    const-wide/16 v17, 0x0

    cmp-long v15, v2, v17

    if-gez v15, :cond_3

    .line 8434
    const-wide/16 v2, 0x0

    .line 8435
    :cond_3
    iget-wide v0, v14, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mTempSum:J

    move-wide/from16 v17, v0

    add-long v17, v17, v2

    move-wide/from16 v0, v17

    iput-wide v0, v14, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mTempSum:J

    .line 8431
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 8438
    .end local v2           #diff:J
    :cond_4
    iget-object v15, v14, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mAcquireTimeList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    iget-object v0, v14, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mReleaseTimeList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-le v15, v0, :cond_6

    .line 8439
    iget-object v15, v14, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mAcquireTimeList:Ljava/util/ArrayList;

    iget-object v0, v14, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mAcquireTimeList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    sub-long v2, v9, v17

    .line 8440
    .restart local v2       #diff:J
    const-wide/16 v17, 0x0

    cmp-long v15, v2, v17

    if-gez v15, :cond_5

    .line 8441
    const-wide/16 v2, 0x0

    .line 8442
    :cond_5
    iget-wide v0, v14, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mTempSum:J

    move-wide/from16 v17, v0

    add-long v17, v17, v2

    move-wide/from16 v0, v17

    iput-wide v0, v14, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mTempSum:J

    .line 8445
    .end local v2           #diff:J
    :cond_6
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 8501
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8           #name:Ljava/lang/String;
    .end local v14           #wh:Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 8448
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7
    :try_start_1
    sget-object v15, Lcom/android/internal/os/BatteryStatsImpl;->sWakelockHistoryComparator:Lcom/android/internal/os/BatteryStatsImpl$WakelockHistoryComparator;

    invoke-static {v7, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 8450
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;

    .line 8451
    .restart local v14       #wh:Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;
    iget-object v15, v14, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8453
    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 8454
    const-string v15, " ("

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8455
    const/4 v4, 0x0

    :goto_5
    iget-object v15, v14, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mLockTypes:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v4, v15, :cond_9

    .line 8456
    iget-object v15, v14, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mLockTypes:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 8457
    .local v13, type:I
    packed-switch v13, :pswitch_data_0

    .line 8468
    const-string v15, "UNKNOWN"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8471
    :goto_6
    iget-object v15, v14, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mLockTypes:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-eq v4, v15, :cond_8

    .line 8472
    const-string v15, ", "

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8455
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 8459
    :pswitch_0
    const-string v15, "PARTIAL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    .line 8462
    :pswitch_1
    const-string v15, "FULL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    .line 8465
    :pswitch_2
    const-string v15, "WINDOW"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    .line 8474
    .end local v13           #type:I
    :cond_9
    const-string v15, ") : "

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8476
    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 8477
    iget-wide v0, v14, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mTempSum:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-static {v11, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 8478
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8480
    const/4 v4, 0x0

    :goto_7
    iget-object v15, v14, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mReleaseTimeList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v4, v15, :cond_a

    .line 8481
    iget-object v15, v14, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mReleaseTimeList:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    iget-object v15, v14, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mAcquireTimeList:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    sub-long v2, v17, v19

    .line 8482
    .restart local v2       #diff:J
    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 8483
    invoke-static {v11, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 8484
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "    "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "("

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    new-instance v18, Ljava/util/Date;

    iget-object v15, v14, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mAcquireTimeList:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    invoke-direct/range {v18 .. v20}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " ~ "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    new-instance v18, Ljava/util/Date;

    iget-object v15, v14, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mReleaseTimeList:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    invoke-direct/range {v18 .. v20}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, ")"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8480
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_7

    .line 8489
    .end local v2           #diff:J
    :cond_a
    iget-object v15, v14, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mAcquireTimeList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    iget-object v0, v14, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mReleaseTimeList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-le v15, v0, :cond_b

    .line 8490
    iget-object v15, v14, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mAcquireTimeList:Ljava/util/ArrayList;

    iget-object v0, v14, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mAcquireTimeList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    sub-long v2, v9, v17

    .line 8491
    .restart local v2       #diff:J
    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 8492
    invoke-static {v11, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 8493
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "    "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "("

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    new-instance v18, Ljava/util/Date;

    iget-object v15, v14, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mAcquireTimeList:Ljava/util/ArrayList;

    iget-object v0, v14, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mAcquireTimeList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    invoke-direct/range {v18 .. v20}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " ~ current"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, ")"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8498
    .end local v2           #diff:J
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_4

    .line 8501
    .end local v14           #wh:Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;
    :cond_c
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8503
    const-string v15, "====================================================================================="

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8506
    .end local v4           #i:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7           #mHistories:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;>;"
    .end local v9           #now:J
    .end local v11           #sb:Ljava/lang/StringBuilder;
    .end local v12           #size:I
    :cond_d
    return-void

    .line 8457
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public finishAddingCpuLocked(III[J)V
    .locals 13
    .parameter "perc"
    .parameter "utime"
    .parameter "stime"
    .parameter "cpuSpeedTimes"

    .prologue
    .line 2572
    iget-object v11, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2573
    .local v1, N:I
    if-eqz p1, :cond_5

    .line 2574
    const/4 v7, 0x0

    .line 2575
    .local v7, num:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 2576
    iget-object v11, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 2577
    .local v9, st:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iget-boolean v11, v9, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mInList:Z

    if-eqz v11, :cond_0

    .line 2578
    iget-object v10, v9, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 2581
    .local v10, uid:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-eqz v10, :cond_0

    iget v11, v10, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    const/16 v12, 0x3e8

    if-eq v11, v12, :cond_0

    .line 2582
    add-int/lit8 v7, v7, 0x1

    .line 2575
    .end local v10           #uid:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2586
    .end local v9           #st:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_1
    if-eqz v7, :cond_3

    .line 2587
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_3

    .line 2588
    iget-object v11, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 2589
    .restart local v9       #st:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iget-boolean v11, v9, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mInList:Z

    if-eqz v11, :cond_2

    .line 2590
    iget-object v10, v9, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 2591
    .restart local v10       #uid:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-eqz v10, :cond_2

    iget v11, v10, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    const/16 v12, 0x3e8

    if-eq v11, v12, :cond_2

    .line 2592
    div-int v6, p2, v7

    .line 2593
    .local v6, myUTime:I
    div-int v5, p3, v7

    .line 2594
    .local v5, mySTime:I
    sub-int/2addr p2, v6

    .line 2595
    sub-int p3, p3, v5

    .line 2596
    add-int/lit8 v7, v7, -0x1

    .line 2597
    const-string v11, "*wakelock*"

    invoke-virtual {v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v8

    .line 2598
    .local v8, proc:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    invoke-virtual {v8, v6, v5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addCpuTimeLocked(II)V

    .line 2599
    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addSpeedStepTimes([J)V

    .line 2587
    .end local v5           #mySTime:I
    .end local v6           #myUTime:I
    .end local v8           #proc:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v10           #uid:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2606
    .end local v9           #st:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_3
    if-nez p2, :cond_4

    if-eqz p3, :cond_5

    .line 2607
    :cond_4
    const/16 v11, 0x3e8

    invoke-virtual {p0, v11}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v10

    .line 2608
    .restart local v10       #uid:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-eqz v10, :cond_5

    .line 2609
    const-string v11, "*lost*"

    invoke-virtual {v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v8

    .line 2610
    .restart local v8       #proc:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    move/from16 v0, p3

    invoke-virtual {v8, p2, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addCpuTimeLocked(II)V

    .line 2611
    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addSpeedStepTimes([J)V

    .line 2616
    .end local v4           #i:I
    .end local v7           #num:I
    .end local v8           #proc:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v10           #uid:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_5
    iget-object v11, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2617
    .local v2, NL:I
    if-eq v1, v2, :cond_6

    const/4 v3, 0x1

    .line 2618
    .local v3, diff:Z
    :goto_2
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_3
    if-ge v4, v2, :cond_8

    if-nez v3, :cond_8

    .line 2619
    iget-object v11, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-eq v11, v12, :cond_7

    const/4 v11, 0x1

    :goto_4
    or-int/2addr v3, v11

    .line 2618
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2617
    .end local v3           #diff:Z
    .end local v4           #i:I
    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .line 2619
    .restart local v3       #diff:Z
    .restart local v4       #i:I
    :cond_7
    const/4 v11, 0x0

    goto :goto_4

    .line 2621
    :cond_8
    if-nez v3, :cond_9

    .line 2622
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v2, :cond_b

    .line 2623
    iget-object v11, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v12, 0x1

    iput-boolean v12, v11, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mInList:Z

    .line 2622
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 2628
    :cond_9
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v2, :cond_a

    .line 2629
    iget-object v11, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mInList:Z

    .line 2628
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 2631
    :cond_a
    iget-object v11, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2632
    const/4 v4, 0x0

    :goto_7
    if-ge v4, v1, :cond_b

    .line 2633
    iget-object v11, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 2634
    .restart local v9       #st:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    const/4 v11, 0x1

    iput-boolean v11, v9, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mInList:Z

    .line 2635
    iget-object v11, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2632
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 2637
    .end local v9           #st:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_b
    return-void
.end method

.method public finishIteratingHistoryLocked()V
    .locals 2

    .prologue
    .line 6151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIteratingHistory:Z

    .line 6152
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 6153
    return-void
.end method

.method public finishIteratingOldHistoryLocked()V
    .locals 2

    .prologue
    .line 6120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIteratingHistory:Z

    .line 6121
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 6122
    return-void
.end method

.method public getAwakeTimeBattery()J
    .locals 3

    .prologue
    .line 6784
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked()J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryUptime(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAwakeTimePlugged()J
    .locals 4

    .prologue
    .line 6788
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getAwakeTimeBattery()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getBatteryRealtime(J)J
    .locals 2
    .parameter "curTime"

    .prologue
    .line 6870
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryRealtimeLocked(J)J

    move-result-wide v0

    return-wide v0
.end method

.method getBatteryRealtimeLocked(J)J
    .locals 4
    .parameter "curTime"

    .prologue
    .line 6861
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryPastRealtime:J

    .line 6862
    .local v0, time:J
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    if-eqz v2, :cond_0

    .line 6863
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryRealtimeStart:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    .line 6865
    :cond_0
    return-wide v0
.end method

.method public getBatteryUptime(J)J
    .locals 2
    .parameter "curTime"

    .prologue
    .line 6857
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked(J)J

    move-result-wide v0

    return-wide v0
.end method

.method getBatteryUptimeLocked()J
    .locals 4

    .prologue
    .line 6852
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method getBatteryUptimeLocked(J)J
    .locals 4
    .parameter "curTime"

    .prologue
    .line 6844
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryPastUptime:J

    .line 6845
    .local v0, time:J
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    if-eqz v2, :cond_0

    .line 6846
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryUptimeStart:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    .line 6848
    :cond_0
    return-wide v0
.end method

.method public getBluetoothOnTime(JI)J
    .locals 2
    .parameter "batteryRealtime"
    .parameter "which"

    .prologue
    .line 3390
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBluetoothPingCount()I
    .locals 2

    .prologue
    .line 2051
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothPingStart:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2052
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothPingCount:I

    .line 2056
    :goto_0
    return v0

    .line 2053
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBtHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1

    .line 2054
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getCurrentBluetoothPingCount()I

    move-result v0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothPingStart:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 2056
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCpuSpeedSteps()I
    .locals 1

    .prologue
    .line 7004
    sget v0, Lcom/android/internal/os/BatteryStatsImpl;->sNumSpeedSteps:I

    return v0
.end method

.method public getDischargeAmountScreenOff()I
    .locals 3

    .prologue
    .line 6981
    monitor-enter p0

    .line 6982
    :try_start_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    .line 6983
    .local v0, val:I
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOn:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    if-ge v1, v2, :cond_0

    .line 6985
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 6987
    :cond_0
    monitor-exit p0

    return v0

    .line 6988
    .end local v0           #val:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDischargeAmountScreenOffSinceCharge()I
    .locals 3

    .prologue
    .line 6992
    monitor-enter p0

    .line 6993
    :try_start_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOffSinceCharge:I

    .line 6994
    .local v0, val:I
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOn:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    if-ge v1, v2, :cond_0

    .line 6996
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 6998
    :cond_0
    monitor-exit p0

    return v0

    .line 6999
    .end local v0           #val:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDischargeAmountScreenOn()I
    .locals 3

    .prologue
    .line 6959
    monitor-enter p0

    .line 6960
    :try_start_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    .line 6961
    .local v0, val:I
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOn:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    if-ge v1, v2, :cond_0

    .line 6963
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 6965
    :cond_0
    monitor-exit p0

    return v0

    .line 6966
    .end local v0           #val:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDischargeAmountScreenOnSinceCharge()I
    .locals 3

    .prologue
    .line 6970
    monitor-enter p0

    .line 6971
    :try_start_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOnSinceCharge:I

    .line 6972
    .local v0, val:I
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOn:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    if-ge v1, v2, :cond_0

    .line 6974
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 6976
    :cond_0
    monitor-exit p0

    return v0

    .line 6977
    .end local v0           #val:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDischargeCurrentLevel()I
    .locals 1

    .prologue
    .line 6927
    monitor-enter p0

    .line 6928
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeCurrentLevelLocked()I

    move-result v0

    monitor-exit p0

    return v0

    .line 6929
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDischargeCurrentLevelLocked()I
    .locals 1

    .prologue
    .line 6933
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    return v0
.end method

.method public getDischargeStartLevel()I
    .locals 1

    .prologue
    .line 6916
    monitor-enter p0

    .line 6917
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeStartLevelLocked()I

    move-result v0

    monitor-exit p0

    return v0

    .line 6918
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDischargeStartLevelLocked()I
    .locals 1

    .prologue
    .line 6922
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    return v0
.end method

.method public getFileBaseTime()J
    .locals 2

    .prologue
    .line 6163
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryFileTime:J

    return-wide v0
.end method

.method public getGlobalWifiRunningTime(JI)J
    .locals 2
    .parameter "batteryRealtime"
    .parameter "which"

    .prologue
    .line 3386
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHighDischargeAmountSinceCharge()I
    .locals 3

    .prologue
    .line 6949
    monitor-enter p0

    .line 6950
    :try_start_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHighDischargeAmountSinceCharge:I

    .line 6951
    .local v0, val:I
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    if-ge v1, v2, :cond_0

    .line 6952
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 6954
    :cond_0
    monitor-exit p0

    return v0

    .line 6955
    .end local v0           #val:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getHistoryBaseTime()J
    .locals 2

    .prologue
    .line 6157
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    return-wide v0
.end method

.method public getInputEventCount(I)I
    .locals 1
    .parameter "which"

    .prologue
    .line 3348
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInputEventCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getIsOnBattery()Z
    .locals 1

    .prologue
    .line 3394
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    return v0
.end method

.method public getKernelWakelockStats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    return-object v0
.end method

.method public getKernelWakelockTimerLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    .locals 4
    .parameter "name"

    .prologue
    .line 1984
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 1985
    .local v0, kwlt:Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    if-nez v0, :cond_0

    .line 1986
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .end local v0           #kwlt:Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Ljava/util/ArrayList;ZZ)V

    .line 1988
    .restart local v0       #kwlt:Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1990
    :cond_0
    return-object v0
.end method

.method public getLowDischargeAmountSinceCharge()I
    .locals 3

    .prologue
    .line 6938
    monitor-enter p0

    .line 6939
    :try_start_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLowDischargeAmountSinceCharge:I

    .line 6940
    .local v0, val:I
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    if-ge v1, v2, :cond_0

    .line 6941
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    .line 6943
    :cond_0
    monitor-exit p0

    return v0

    .line 6944
    .end local v0           #val:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMobileTcpBytesReceived(I)J
    .locals 5
    .parameter "which"

    .prologue
    .line 6898
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getNetworkStatsSummary()Landroid/net/NetworkStats;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:Ljava/util/HashSet;

    invoke-virtual {v2, v3, v4}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;)Landroid/net/NetworkStats$Entry;

    move-result-object v2

    iget-wide v0, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 6899
    .local v0, mobileRxBytes:J
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileDataRx:[J

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getTcpBytes(J[JI)J

    move-result-wide v2

    return-wide v2
.end method

.method public getMobileTcpBytesSent(I)J
    .locals 5
    .parameter "which"

    .prologue
    .line 6892
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getNetworkStatsSummary()Landroid/net/NetworkStats;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:Ljava/util/HashSet;

    invoke-virtual {v2, v3, v4}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;)Landroid/net/NetworkStats$Entry;

    move-result-object v2

    iget-wide v0, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 6893
    .local v0, mobileTxBytes:J
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileDataTx:[J

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getTcpBytes(J[JI)J

    move-result-wide v2

    return-wide v2
.end method

.method public getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z
    .locals 5
    .parameter "out"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6136
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 6137
    .local v1, pos:I
    if-nez v1, :cond_0

    .line 6138
    invoke-virtual {p1}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    .line 6140
    :cond_0
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    if-lt v1, v4, :cond_1

    move v0, v3

    .line 6141
    .local v0, end:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 6146
    :goto_1
    return v2

    .end local v0           #end:Z
    :cond_1
    move v0, v2

    .line 6140
    goto :goto_0

    .line 6145
    .restart local v0       #end:Z
    :cond_2
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {p1, v2}, Landroid/os/BatteryStats$HistoryItem;->readDelta(Landroid/os/Parcel;)V

    move v2, v3

    .line 6146
    goto :goto_1
.end method

.method public getNextOldHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z
    .locals 11
    .parameter "out"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 6088
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v8}, Landroid/os/Parcel;->dataSize()I

    move-result v8

    if-lt v5, v8, :cond_2

    move v1, v6

    .line 6089
    .local v1, end:Z
    :goto_0
    if-nez v1, :cond_0

    .line 6090
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v5, v8}, Landroid/os/BatteryStats$HistoryItem;->readDelta(Landroid/os/Parcel;)V

    .line 6091
    iget-boolean v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadOverflow:Z

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v5, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v9, 0x3

    if-ne v5, v9, :cond_3

    move v5, v6

    :goto_1
    or-int/2addr v5, v8

    iput-boolean v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadOverflow:Z

    .line 6093
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryIterator:Landroid/os/BatteryStats$HistoryItem;

    .line 6094
    .local v0, cur:Landroid/os/BatteryStats$HistoryItem;
    if-nez v0, :cond_4

    .line 6095
    iget-boolean v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadOverflow:Z

    if-nez v5, :cond_1

    if-nez v1, :cond_1

    .line 6096
    const-string v5, "BatteryStatsImpl"

    const-string v6, "Old history ends before new history!"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6115
    :cond_1
    :goto_2
    return v7

    .end local v0           #cur:Landroid/os/BatteryStats$HistoryItem;
    .end local v1           #end:Z
    :cond_2
    move v1, v7

    .line 6088
    goto :goto_0

    .restart local v1       #end:Z
    :cond_3
    move v5, v7

    .line 6091
    goto :goto_1

    .line 6100
    .restart local v0       #cur:Landroid/os/BatteryStats$HistoryItem;
    :cond_4
    invoke-virtual {p1, v0}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    .line 6101
    iget-object v5, v0, Landroid/os/BatteryStats$HistoryItem;->next:Landroid/os/BatteryStats$HistoryItem;

    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryIterator:Landroid/os/BatteryStats$HistoryItem;

    .line 6102
    iget-boolean v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadOverflow:Z

    if-nez v5, :cond_5

    .line 6103
    if-eqz v1, :cond_6

    .line 6104
    const-string v5, "BatteryStatsImpl"

    const-string v7, "New history ends before old history!"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    move v7, v6

    .line 6115
    goto :goto_2

    .line 6105
    :cond_6
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {p1, v5}, Landroid/os/BatteryStats$HistoryItem;->same(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 6106
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getHistoryBaseTime()J

    move-result-wide v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    add-long v2, v7, v9

    .line 6107
    .local v2, now:J
    new-instance v4, Ljava/io/PrintWriter;

    new-instance v5, Landroid/util/LogWriter;

    const/4 v7, 0x5

    const-string v8, "BatteryStatsImpl"

    invoke-direct {v5, v7, v8}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 6108
    .local v4, pw:Ljava/io/PrintWriter;
    const-string v5, "Histories differ!"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6109
    const-string v5, "Old history:"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6110
    new-instance v5, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v5}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    invoke-virtual {v5, v4, p1, v2, v3}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;J)V

    .line 6111
    const-string v5, "New history:"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6112
    new-instance v5, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v5}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v5, v4, v7, v2, v3}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;J)V

    goto :goto_3
.end method

.method public getPackageStatsLocked(ILjava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .locals 2
    .parameter "uid"
    .parameter "pkg"

    .prologue
    .line 7073
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    .line 7074
    .local v0, u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    move-result-object v1

    return-object v1
.end method

.method public getPhoneDataConnectionCount(II)I
    .locals 1
    .parameter "dataType"
    .parameter "which"

    .prologue
    .line 3378
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getPhoneDataConnectionTime(IJI)J
    .locals 2
    .parameter "dataType"
    .parameter "batteryRealtime"
    .parameter "which"

    .prologue
    .line 3373
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPhoneOnTime(JI)J
    .locals 2
    .parameter "batteryRealtime"
    .parameter "which"

    .prologue
    .line 3352
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPhoneSignalScanningTime(JI)J
    .locals 2
    .parameter "batteryRealtime"
    .parameter "which"

    .prologue
    .line 3363
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPhoneSignalStrengthCount(II)I
    .locals 1
    .parameter "dataType"
    .parameter "which"

    .prologue
    .line 3368
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getPhoneSignalStrengthTime(IJI)J
    .locals 2
    .parameter "strengthBin"
    .parameter "batteryRealtime"
    .parameter "which"

    .prologue
    .line 3357
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getProcessStatsLocked(ILjava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .locals 2
    .parameter "uid"
    .parameter "name"

    .prologue
    .line 7046
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    .line 7047
    .local v0, u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v1

    return-object v1
.end method

.method public getProcessStatsLocked(Ljava/lang/String;I)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .locals 4
    .parameter "name"
    .parameter "pid"

    .prologue
    .line 7058
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7059
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 7064
    .local v1, uid:I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    .line 7065
    .local v0, u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v2

    return-object v2

    .line 7061
    .end local v0           #u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v1           #uid:I
    :cond_0
    invoke-static {p2}, Landroid/os/Process;->getUidForPid(I)I

    move-result v1

    .line 7062
    .restart local v1       #uid:I
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidCache:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getProcessWakeTime(IIJ)J
    .locals 8
    .parameter "uid"
    .parameter "pid"
    .parameter "realtime"

    .prologue
    const-wide/16 v2, 0x0

    .line 2647
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 2648
    .local v1, u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-eqz v1, :cond_1

    .line 2649
    iget-object v4, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$Uid$Pid;

    .line 2650
    .local v0, p:Landroid/os/BatteryStats$Uid$Pid;
    if-eqz v0, :cond_1

    .line 2651
    iget-wide v4, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeSum:J

    iget-wide v6, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStart:J

    cmp-long v6, v6, v2

    if-eqz v6, :cond_0

    iget-wide v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStart:J

    sub-long v2, p3, v2

    :cond_0
    add-long/2addr v2, v4

    .line 2654
    .end local v0           #p:Landroid/os/BatteryStats$Uid$Pid;
    :cond_1
    return-wide v2
.end method

.method public getRadioDataUptime()J
    .locals 4

    .prologue
    .line 2033
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRadioDataStart:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2034
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRadioDataUptime:J

    .line 2036
    :goto_0
    return-wide v0

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getCurrentRadioDataUptime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRadioDataStart:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getRadioDataUptimeMs()J
    .locals 4

    .prologue
    .line 2026
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getRadioDataUptime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getScreenBrightnessTime(IJI)J
    .locals 2
    .parameter "brightnessBin"
    .parameter "batteryRealtime"
    .parameter "which"

    .prologue
    .line 3343
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getScreenOnTime(JI)J
    .locals 2
    .parameter "batteryRealtime"
    .parameter "which"

    .prologue
    .line 3338
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getServiceStatsLocked(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .locals 2
    .parameter "uid"
    .parameter "pkg"
    .parameter "name"

    .prologue
    .line 7082
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    .line 7083
    .local v0, u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getServiceStatsLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v1

    return-object v1
.end method

.method public getStartCount()I
    .locals 1

    .prologue
    .line 6194
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    return v0
.end method

.method public getStartHistoryTime(I)J
    .locals 6
    .parameter "index"

    .prologue
    .line 6170
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryStartTimeList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6171
    .local v0, tmpSize:I
    const-wide/16 v1, 0x0

    .line 6173
    .local v1, tmpTime:J
    sget-boolean v3, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v3, :cond_0

    .line 6174
    const-string v3, "BatteryStatsImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get Start History Time:("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6177
    :cond_0
    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_2

    .line 6178
    :cond_1
    const-string v3, "BatteryStatsImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Out the range for get History Time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6179
    const-wide/16 v3, 0x0

    .line 6188
    :goto_0
    return-wide v3

    .line 6182
    :cond_2
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryStartTimeList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 6184
    sget-boolean v3, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v3, :cond_3

    .line 6185
    const-string v3, "BatteryStatsImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "History Time Value:("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-wide v3, v1

    .line 6188
    goto :goto_0
.end method

.method public getTotalTcpBytesReceived(I)J
    .locals 4
    .parameter "which"

    .prologue
    .line 6910
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getNetworkStatsSummary()Landroid/net/NetworkStats;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v2

    iget-wide v0, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 6911
    .local v0, totalRxBytes:J
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTotalDataRx:[J

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getTcpBytes(J[JI)J

    move-result-wide v2

    return-wide v2
.end method

.method public getTotalTcpBytesSent(I)J
    .locals 4
    .parameter "which"

    .prologue
    .line 6904
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getNetworkStatsSummary()Landroid/net/NetworkStats;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v2

    iget-wide v0, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 6905
    .local v0, totalTxBytes:J
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTotalDataTx:[J

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getTcpBytes(J[JI)J

    move-result-wide v2

    return-wide v2
.end method

.method public getUidStats()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/BatteryStats$Uid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3398
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .locals 2
    .parameter "uid"

    .prologue
    .line 7026
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 7027
    .local v0, u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-nez v0, :cond_0

    .line 7028
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .end local v0           #u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-direct {v0, p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;-><init>(Lcom/android/internal/os/BatteryStatsImpl;I)V

    .line 7029
    .restart local v0       #u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7031
    :cond_0
    return-object v0
.end method

.method public getWifiOnTime(JI)J
    .locals 2
    .parameter "batteryRealtime"
    .parameter "which"

    .prologue
    .line 3382
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method handleBatteryStatsData()V
    .locals 2

    .prologue
    .line 8622
    sget-boolean v0, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 8623
    const-string v0, "BatteryStatsImpl"

    const-string v1, "handleBatteryStatsData start"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8625
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$3;

    invoke-direct {v1, p0}, Lcom/android/internal/os/BatteryStatsImpl$3;-><init>(Lcom/android/internal/os/BatteryStatsImpl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 8686
    sget-boolean v0, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v0, :cond_1

    .line 8687
    const-string v0, "BatteryStatsImpl"

    const-string v1, "handleBatteryStatsData end"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8689
    :cond_1
    return-void
.end method

.method initDischarge()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6215
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLowDischargeAmountSinceCharge:I

    .line 6216
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHighDischargeAmountSinceCharge:I

    .line 6217
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    .line 6218
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOnSinceCharge:I

    .line 6219
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    .line 6220
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOffSinceCharge:I

    .line 6221
    return-void
.end method

.method initTimes()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x3e8

    const-wide/16 v0, 0x0

    .line 6206
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryPastUptime:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryRealtime:J

    .line 6207
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryPastRealtime:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryUptime:J

    .line 6208
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryUptimeStart:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUptimeStart:J

    .line 6209
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryRealtimeStart:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    .line 6210
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUptimeStart:J

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedBatteryUptime:J

    .line 6211
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryRealtimeLocked(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedBatteryRealtime:J

    .line 6212
    return-void
.end method

.method public isOnBattery()Z
    .locals 1

    .prologue
    .line 6198
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    return v0
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    .line 6202
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOn:Z

    return v0
.end method

.method public noteAudioOffLocked(I)V
    .locals 3
    .parameter "uid"

    .prologue
    .line 3077
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOn:Z

    if-eqz v0, :cond_0

    .line 3078
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v2, -0x400001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3081
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(J)V

    .line 3082
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOn:Z

    .line 3083
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3085
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteAudioTurnedOffLocked()V

    .line 3086
    return-void
.end method

.method public noteAudioOnLocked(I)V
    .locals 3
    .parameter "uid"

    .prologue
    .line 3065
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOn:Z

    if-nez v0, :cond_0

    .line 3066
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v2, 0x40

    or-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3069
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(J)V

    .line 3070
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOn:Z

    .line 3071
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3073
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteAudioTurnedOnLocked()V

    .line 3074
    return-void
.end method

.method public noteBluetoothOffLocked()V
    .locals 3

    .prologue
    .line 3205
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOn:Z

    if-eqz v0, :cond_0

    .line 3206
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v2, -0x10001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3209
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(J)V

    .line 3210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOn:Z

    .line 3211
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3213
    :cond_0
    return-void
.end method

.method public noteBluetoothOnLocked()V
    .locals 3

    .prologue
    .line 3194
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOn:Z

    if-nez v0, :cond_0

    .line 3195
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v2, 0x1

    or-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3198
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(J)V

    .line 3199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOn:Z

    .line 3200
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3202
    :cond_0
    return-void
.end method

.method public noteDisplayOffLocked(I)V
    .locals 1
    .parameter "uid"

    .prologue
    .line 3139
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteDisplayTurnedOffLocked()V

    .line 3140
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDisplayUid:I

    .line 3141
    return-void
.end method

.method public noteDisplayOnLocked(I)V
    .locals 1
    .parameter "uid"

    .prologue
    .line 3134
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDisplayUid:I

    .line 3135
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteDisplayTurnedOnLocked()V

    .line 3136
    return-void
.end method

.method public noteFullWifiLockAcquiredFromSourceLocked(Landroid/os/WorkSource;)V
    .locals 3
    .parameter "ws"

    .prologue
    .line 3288
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 3289
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3290
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockAcquiredLocked(I)V

    .line 3289
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3292
    :cond_0
    return-void
.end method

.method public noteFullWifiLockAcquiredLocked(I)V
    .locals 3
    .parameter "uid"

    .prologue
    .line 3218
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    if-nez v0, :cond_0

    .line 3219
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v2, 0x200

    or-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3222
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(J)V

    .line 3224
    :cond_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    .line 3225
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteFullWifiLockAcquiredLocked()V

    .line 3226
    return-void
.end method

.method public noteFullWifiLockReleasedFromSourceLocked(Landroid/os/WorkSource;)V
    .locals 3
    .parameter "ws"

    .prologue
    .line 3295
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 3296
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3297
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockReleasedLocked(I)V

    .line 3296
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3299
    :cond_0
    return-void
.end method

.method public noteFullWifiLockReleasedLocked(I)V
    .locals 3
    .parameter "uid"

    .prologue
    .line 3229
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    .line 3230
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    if-nez v0, :cond_0

    .line 3231
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v2, -0x2000001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3234
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(J)V

    .line 3236
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteFullWifiLockReleasedLocked()V

    .line 3237
    return-void
.end method

.method public noteGpuOffLocked(I)V
    .locals 1
    .parameter "uid"

    .prologue
    .line 3128
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteGpuTurnedOffLocked()V

    .line 3129
    return-void
.end method

.method public noteGpuOnLocked(I)V
    .locals 1
    .parameter "uid"

    .prologue
    .line 3119
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteGpuTurnedOnLocked()V

    .line 3120
    return-void
.end method

.method public noteInputEventAtomic()V
    .locals 1

    .prologue
    .line 2816
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInputEventCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->stepAtomic()V

    .line 2817
    return-void
.end method

.method public noteNetworkInterfaceTypeLocked(Ljava/lang/String;I)V
    .locals 1
    .parameter "iface"
    .parameter "networkType"

    .prologue
    .line 3330
    invoke-static {p2}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3331
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3335
    :goto_0
    return-void

    .line 3333
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public notePhoneDataConnectionStateLocked(IZ)V
    .locals 4
    .parameter "dataType"
    .parameter "hasData"

    .prologue
    .line 2973
    const/4 v0, 0x0

    .line 2974
    .local v0, bin:I
    if-eqz p2, :cond_0

    .line 2975
    packed-switch p1, :pswitch_data_0

    .line 3019
    const/16 v0, 0xf

    .line 3024
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    if-eq v1, v0, :cond_2

    .line 3025
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v3, -0xf001

    and-int/2addr v2, v3

    shl-int/lit8 v3, v0, 0xc

    or-int/2addr v2, v3

    iput v2, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3029
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(J)V

    .line 3030
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    if-ltz v1, :cond_1

    .line 3031
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3033
    :cond_1
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    .line 3034
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3036
    :cond_2
    return-void

    .line 2977
    :pswitch_0
    const/4 v0, 0x2

    .line 2978
    goto :goto_0

    .line 2980
    :pswitch_1
    const/4 v0, 0x1

    .line 2981
    goto :goto_0

    .line 2983
    :pswitch_2
    const/4 v0, 0x3

    .line 2984
    goto :goto_0

    .line 2986
    :pswitch_3
    const/4 v0, 0x4

    .line 2987
    goto :goto_0

    .line 2989
    :pswitch_4
    const/4 v0, 0x5

    .line 2990
    goto :goto_0

    .line 2992
    :pswitch_5
    const/4 v0, 0x6

    .line 2993
    goto :goto_0

    .line 2995
    :pswitch_6
    const/4 v0, 0x7

    .line 2996
    goto :goto_0

    .line 2998
    :pswitch_7
    const/16 v0, 0x8

    .line 2999
    goto :goto_0

    .line 3001
    :pswitch_8
    const/16 v0, 0x9

    .line 3002
    goto :goto_0

    .line 3004
    :pswitch_9
    const/16 v0, 0xa

    .line 3005
    goto :goto_0

    .line 3007
    :pswitch_a
    const/16 v0, 0xb

    .line 3008
    goto :goto_0

    .line 3010
    :pswitch_b
    const/16 v0, 0xc

    .line 3011
    goto :goto_0

    .line 3013
    :pswitch_c
    const/16 v0, 0xd

    .line 3014
    goto :goto_0

    .line 3016
    :pswitch_d
    const/16 v0, 0xe

    .line 3017
    goto :goto_0

    .line 2975
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public notePhoneOffLocked()V
    .locals 3

    .prologue
    .line 2835
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOn:Z

    if-eqz v0, :cond_0

    .line 2836
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v2, -0x40001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2839
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(J)V

    .line 2840
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOn:Z

    .line 2841
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 2843
    :cond_0
    return-void
.end method

.method public notePhoneOnLocked()V
    .locals 3

    .prologue
    .line 2824
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOn:Z

    if-nez v0, :cond_0

    .line 2825
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v2, 0x4

    or-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2828
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(J)V

    .line 2829
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOn:Z

    .line 2830
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 2832
    :cond_0
    return-void
.end method

.method public notePhoneSignalStrengthLocked(Landroid/telephony/SignalStrength;)V
    .locals 3
    .parameter "signalStrength"

    .prologue
    .line 2968
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    .line 2969
    .local v0, bin:I
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceStateRaw:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSimStateRaw:I

    invoke-direct {p0, v1, v2, v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateAllPhoneStateLocked(III)V

    .line 2970
    return-void
.end method

.method public notePhoneStateLocked(II)V
    .locals 1
    .parameter "state"
    .parameter "simState"

    .prologue
    .line 2963
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBinRaw:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateAllPhoneStateLocked(III)V

    .line 2964
    return-void
.end method

.method public noteProcessDiedLocked(II)V
    .locals 2
    .parameter "uid"
    .parameter "pid"

    .prologue
    .line 2640
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 2641
    .local v0, u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-eqz v0, :cond_0

    .line 2642
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 2644
    :cond_0
    return-void
.end method

.method public noteScanWifiLockAcquiredFromSourceLocked(Landroid/os/WorkSource;)V
    .locals 3
    .parameter "ws"

    .prologue
    .line 3302
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 3303
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3304
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->noteScanWifiLockAcquiredLocked(I)V

    .line 3303
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3306
    :cond_0
    return-void
.end method

.method public noteScanWifiLockAcquiredLocked(I)V
    .locals 3
    .parameter "uid"

    .prologue
    .line 3242
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanLockNesting:I

    if-nez v0, :cond_0

    .line 3243
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v2, 0x100

    or-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3246
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(J)V

    .line 3248
    :cond_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanLockNesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanLockNesting:I

    .line 3249
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteScanWifiLockAcquiredLocked()V

    .line 3250
    return-void
.end method

.method public noteScanWifiLockReleasedFromSourceLocked(Landroid/os/WorkSource;)V
    .locals 3
    .parameter "ws"

    .prologue
    .line 3309
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 3310
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3311
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->noteScanWifiLockReleasedLocked(I)V

    .line 3310
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3313
    :cond_0
    return-void
.end method

.method public noteScanWifiLockReleasedLocked(I)V
    .locals 3
    .parameter "uid"

    .prologue
    .line 3253
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanLockNesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanLockNesting:I

    .line 3254
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanLockNesting:I

    if-nez v0, :cond_0

    .line 3255
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v2, -0x1000001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3258
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(J)V

    .line 3260
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteScanWifiLockReleasedLocked()V

    .line 3261
    return-void
.end method

.method public noteScreenBrightnessLocked(I)V
    .locals 5
    .parameter "brightness"

    .prologue
    .line 2785
    div-int/lit8 v0, p1, 0x33

    .line 2786
    .local v0, bin:I
    if-gez v0, :cond_5

    const/4 v0, 0x0

    .line 2788
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    if-eq v2, v0, :cond_4

    .line 2789
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit8 v3, v3, -0x10

    shl-int/lit8 v4, v0, 0x0

    or-int/2addr v3, v4

    iput v3, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2793
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(J)V

    .line 2794
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOn:Z

    if-eqz v2, :cond_2

    .line 2795
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    if-ltz v2, :cond_1

    .line 2796
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    aget-object v2, v2, v3

    invoke-virtual {v2, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 2798
    :cond_1
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 2802
    :cond_2
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDisplayUid:I

    if-ltz v2, :cond_3

    .line 2804
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDisplayUid:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 2805
    .local v1, u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-eqz v1, :cond_3

    .line 2806
    invoke-virtual {v1, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteDisplayBrightnessLocked(I)V

    .line 2811
    .end local v1           #u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_3
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    .line 2813
    :cond_4
    return-void

    .line 2787
    :cond_5
    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    const/4 v0, 0x4

    goto :goto_0
.end method

.method public noteScreenOffLocked()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 2753
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOn:Z

    if-eqz v1, :cond_1

    .line 2754
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v3, -0x100001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2757
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(J)V

    .line 2758
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOn:Z

    .line 2759
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 2760
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    if-ltz v1, :cond_0

    .line 2761
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 2764
    :cond_0
    const-string v1, "dummy"

    invoke-virtual {p0, v5, v5, v1, v4}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeLocked(IILjava/lang/String;I)V

    .line 2767
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    if-eqz v1, :cond_1

    .line 2768
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v4}, Lcom/android/internal/os/BatteryStatsImpl;->updateDischargeScreenLevelsLocked(ZZ)V

    .line 2773
    :cond_1
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDisplayUid:I

    if-ltz v1, :cond_2

    .line 2774
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDisplayUid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 2775
    .local v0, u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-eqz v0, :cond_2

    .line 2776
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteDisplayTurnedOffLocked()V

    .line 2781
    .end local v0           #u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_2
    return-void
.end method

.method public noteScreenOnLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 2720
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOn:Z

    if-nez v1, :cond_1

    .line 2721
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x10

    or-int/2addr v2, v3

    iput v2, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2724
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(J)V

    .line 2725
    iput-boolean v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOn:Z

    .line 2726
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 2727
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    if-ltz v1, :cond_0

    .line 2728
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 2733
    :cond_0
    const-string v1, "dummy"

    invoke-virtual {p0, v4, v4, v1, v5}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeLocked(IILjava/lang/String;I)V

    .line 2736
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    if-eqz v1, :cond_1

    .line 2737
    invoke-virtual {p0, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl;->updateDischargeScreenLevelsLocked(ZZ)V

    .line 2742
    :cond_1
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDisplayUid:I

    if-ltz v1, :cond_2

    .line 2743
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDisplayUid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 2744
    .local v0, u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-eqz v0, :cond_2

    .line 2745
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteDisplayTurnedOnLocked()V

    .line 2750
    .end local v0           #u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_2
    return-void
.end method

.method public noteStartGpsLocked(I)V
    .locals 3
    .parameter "uid"

    .prologue
    .line 2698
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGpsNesting:I

    if-nez v0, :cond_0

    .line 2699
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v2, 0x1000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2702
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(J)V

    .line 2704
    :cond_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGpsNesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGpsNesting:I

    .line 2705
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStartGps()V

    .line 2706
    return-void
.end method

.method public noteStartSensorLocked(II)V
    .locals 3
    .parameter "uid"
    .parameter "sensor"

    .prologue
    .line 2674
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorNesting:I

    if-nez v0, :cond_0

    .line 2675
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v2, 0x2000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2678
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(J)V

    .line 2680
    :cond_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorNesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorNesting:I

    .line 2681
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStartSensor(I)V

    .line 2682
    return-void
.end method

.method public noteStartWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;I)V
    .locals 3
    .parameter "ws"
    .parameter "pid"
    .parameter "name"
    .parameter "type"

    .prologue
    .line 2528
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 2529
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2530
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeLocked(IILjava/lang/String;I)V

    .line 2529
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2532
    :cond_0
    return-void
.end method

.method public noteStartWakeLocked(IILjava/lang/String;I)V
    .locals 5
    .parameter "uid"
    .parameter "pid"
    .parameter "name"
    .parameter "type"

    .prologue
    const/4 v4, 0x1

    .line 2488
    if-nez p4, :cond_1

    .line 2491
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockNesting:I

    if-nez v1, :cond_0

    .line 2492
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x4000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2495
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(J)V

    .line 2497
    :cond_0
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockNesting:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockNesting:I

    .line 2499
    :cond_1
    if-ltz p1, :cond_3

    .line 2500
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    invoke-virtual {v1, v4}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2501
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    invoke-virtual {v1, v4}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2502
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2504
    .end local v0           #m:Landroid/os/Message;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v1

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStartWakeLocked(ILjava/lang/String;I)V

    .line 2506
    :cond_3
    return-void
.end method

.method public noteStopGpsLocked(I)V
    .locals 3
    .parameter "uid"

    .prologue
    .line 2709
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGpsNesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGpsNesting:I

    .line 2710
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGpsNesting:I

    if-nez v0, :cond_0

    .line 2711
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v2, -0x10000001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2714
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(J)V

    .line 2716
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStopGps()V

    .line 2717
    return-void
.end method

.method public noteStopSensorLocked(II)V
    .locals 3
    .parameter "uid"
    .parameter "sensor"

    .prologue
    .line 2685
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorNesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorNesting:I

    .line 2686
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorNesting:I

    if-nez v0, :cond_0

    .line 2687
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v2, -0x20000001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2690
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(J)V

    .line 2692
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStopSensor(I)V

    .line 2693
    return-void
.end method

.method public noteStopWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;I)V
    .locals 3
    .parameter "ws"
    .parameter "pid"
    .parameter "name"
    .parameter "type"

    .prologue
    .line 2535
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 2536
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2537
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeLocked(IILjava/lang/String;I)V

    .line 2536
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2539
    :cond_0
    return-void
.end method

.method public noteStopWakeLocked(IILjava/lang/String;I)V
    .locals 5
    .parameter "uid"
    .parameter "pid"
    .parameter "name"
    .parameter "type"

    .prologue
    const/4 v4, 0x1

    .line 2509
    if-nez p4, :cond_0

    .line 2510
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockNesting:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockNesting:I

    .line 2511
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockNesting:I

    if-nez v1, :cond_0

    .line 2512
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v3, -0x40000001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2515
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(J)V

    .line 2518
    :cond_0
    if-ltz p1, :cond_2

    .line 2519
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    invoke-virtual {v1, v4}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2520
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    invoke-virtual {v1, v4}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2521
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2523
    .end local v0           #m:Landroid/os/Message;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v1

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStopWakeLocked(ILjava/lang/String;I)V

    .line 2525
    :cond_2
    return-void
.end method

.method public noteUserActivityLocked(II)V
    .locals 1
    .parameter "uid"
    .parameter "event"

    .prologue
    .line 2820
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteUserActivityLocked(I)V

    .line 2821
    return-void
.end method

.method public noteVideoOffLocked(I)V
    .locals 3
    .parameter "uid"

    .prologue
    .line 3101
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOn:Z

    if-eqz v0, :cond_0

    .line 3102
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v2, -0x200001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3105
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(J)V

    .line 3106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOn:Z

    .line 3107
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3109
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteVideoTurnedOffLocked()V

    .line 3110
    return-void
.end method

.method public noteVideoOnLocked(I)V
    .locals 3
    .parameter "uid"

    .prologue
    .line 3089
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOn:Z

    if-nez v0, :cond_0

    .line 3090
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v2, 0x20

    or-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3093
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(J)V

    .line 3094
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOn:Z

    .line 3095
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3097
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteVideoTurnedOnLocked()V

    .line 3098
    return-void
.end method

.method public noteWifiMulticastDisabledFromSourceLocked(Landroid/os/WorkSource;)V
    .locals 3
    .parameter "ws"

    .prologue
    .line 3323
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 3324
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3325
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastDisabledLocked(I)V

    .line 3324
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3327
    :cond_0
    return-void
.end method

.method public noteWifiMulticastDisabledLocked(I)V
    .locals 3
    .parameter "uid"

    .prologue
    .line 3277
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    .line 3278
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    if-nez v0, :cond_0

    .line 3279
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v2, -0x800001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3282
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(J)V

    .line 3284
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiMulticastDisabledLocked()V

    .line 3285
    return-void
.end method

.method public noteWifiMulticastEnabledFromSourceLocked(Landroid/os/WorkSource;)V
    .locals 3
    .parameter "ws"

    .prologue
    .line 3316
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 3317
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3318
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastEnabledLocked(I)V

    .line 3317
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3320
    :cond_0
    return-void
.end method

.method public noteWifiMulticastEnabledLocked(I)V
    .locals 3
    .parameter "uid"

    .prologue
    .line 3266
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    if-nez v0, :cond_0

    .line 3267
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v2, 0x80

    or-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3270
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(J)V

    .line 3272
    :cond_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    .line 3273
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiMulticastEnabledLocked()V

    .line 3274
    return-void
.end method

.method public noteWifiOffLocked()V
    .locals 3

    .prologue
    .line 3050
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOn:Z

    if-eqz v0, :cond_0

    .line 3051
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3054
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(J)V

    .line 3055
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOn:Z

    .line 3056
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3058
    :cond_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnUid:I

    if-ltz v0, :cond_1

    .line 3059
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnUid:I

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiStoppedLocked()V

    .line 3060
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnUid:I

    .line 3062
    :cond_1
    return-void
.end method

.method public noteWifiOnLocked()V
    .locals 3

    .prologue
    .line 3039
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOn:Z

    if-nez v0, :cond_0

    .line 3040
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v2, 0x2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3043
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(J)V

    .line 3044
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOn:Z

    .line 3045
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3047
    :cond_0
    return-void
.end method

.method public noteWifiRunningChangedLocked(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    .locals 4
    .parameter "oldWs"
    .parameter "newWs"

    .prologue
    .line 3162
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunning:Z

    if-eqz v2, :cond_1

    .line 3163
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 3164
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3165
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiStoppedLocked()V

    .line 3164
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3167
    :cond_0
    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 3168
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 3169
    invoke-virtual {p2, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiRunningLocked()V

    .line 3168
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3172
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_1
    const-string v2, "BatteryStatsImpl"

    const-string v3, "noteWifiRunningChangedLocked -- called while WIFI not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3174
    :cond_2
    return-void
.end method

.method public noteWifiRunningLocked(Landroid/os/WorkSource;)V
    .locals 5
    .parameter "ws"

    .prologue
    .line 3145
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunning:Z

    if-nez v2, :cond_0

    .line 3146
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v4, 0x400

    or-int/2addr v3, v4

    iput v3, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3149
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(J)V

    .line 3150
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunning:Z

    .line 3151
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v2, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3152
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 3153
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3154
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiRunningLocked()V

    .line 3153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3157
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_0
    const-string v2, "BatteryStatsImpl"

    const-string v3, "noteWifiRunningLocked -- called while WIFI running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3159
    :cond_1
    return-void
.end method

.method public noteWifiStoppedLocked(Landroid/os/WorkSource;)V
    .locals 5
    .parameter "ws"

    .prologue
    .line 3177
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunning:Z

    if-eqz v2, :cond_0

    .line 3178
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v4, -0x4000001

    and-int/2addr v3, v4

    iput v3, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3181
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(J)V

    .line 3182
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunning:Z

    .line 3183
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v2, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3184
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 3185
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3186
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiStoppedLocked()V

    .line 3185
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3189
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_0
    const-string v2, "BatteryStatsImpl"

    const-string v3, "noteWifiStoppedLocked -- called while WIFI not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3191
    :cond_1
    return-void
.end method

.method public prepareForDumpLocked()V
    .locals 0

    .prologue
    .line 8360
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->updateKernelWakelocksLocked()V

    .line 8361
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 8049
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->readFromParcelLocked(Landroid/os/Parcel;)V

    .line 8050
    return-void
.end method

.method readFromParcelLocked(Landroid/os/Parcel;)V
    .locals 18
    .parameter "in"

    .prologue
    .line 8053
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 8056
    .local v12, magic:I
    sget-boolean v2, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 8057
    const-string v2, "BatteryStatsImpl"

    const-string v3, "readFromParcelLocked Start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8061
    :cond_0
    const v2, -0x458a8b8b

    if-eq v12, v2, :cond_1

    .line 8062
    new-instance v2, Landroid/os/ParcelFormatException;

    const-string v3, "Bad magic number"

    invoke-direct {v2, v3}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 8065
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->readHistory(Landroid/os/Parcel;Z)V

    .line 8067
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    .line 8068
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryUptime:J

    .line 8069
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryLastUptime:J

    .line 8070
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryRealtime:J

    .line 8071
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryLastRealtime:J

    .line 8072
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOn:Z

    .line 8073
    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8074
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    const/4 v2, 0x5

    if-ge v9, v2, :cond_2

    .line 8075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v17, v0

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v3, 0x0

    rsub-int/lit8 v4, v9, -0x64

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    aput-object v2, v17, v9

    .line 8074
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 8078
    :cond_2
    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-direct {v2, v3, v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Ljava/util/ArrayList;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInputEventCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 8079
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOn:Z

    .line 8080
    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v3, 0x0

    const/4 v4, -0x2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8081
    const/4 v9, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v9, v2, :cond_3

    .line 8082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v17, v0

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v3, 0x0

    rsub-int v4, v9, -0xc8

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    aput-object v2, v17, v9

    .line 8081
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 8085
    :cond_3
    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v3, 0x0

    const/16 v4, -0xc7

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8086
    const/4 v9, 0x0

    :goto_2
    const/16 v2, 0x10

    if-ge v9, v2, :cond_4

    .line 8087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v17, v0

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v3, 0x0

    rsub-int v4, v9, -0x12c

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    aput-object v2, v17, v9

    .line 8086
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 8090
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOn:Z

    .line 8091
    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v3, 0x0

    const/4 v4, -0x2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8092
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunning:Z

    .line 8093
    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v3, 0x0

    const/4 v4, -0x2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8094
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOn:Z

    .line 8095
    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v3, 0x0

    const/4 v4, -0x2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8096
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUptime:J

    .line 8097
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUptimeStart:J

    .line 8098
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastUptime:J

    .line 8099
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtime:J

    .line 8100
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    .line 8101
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastRealtime:J

    .line 8102
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    .line 8103
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    .line 8104
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryPastUptime:J

    .line 8105
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryUptimeStart:J

    .line 8106
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryPastRealtime:J

    .line 8107
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryRealtimeStart:J

    .line 8108
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedBatteryUptime:J

    .line 8109
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedBatteryRealtime:J

    .line 8110
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    .line 8111
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    .line 8112
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLowDischargeAmountSinceCharge:I

    .line 8113
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHighDischargeAmountSinceCharge:I

    .line 8114
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    .line 8115
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOnSinceCharge:I

    .line 8116
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    .line 8117
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOffSinceCharge:I

    .line 8118
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    .line 8120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileDataRx:[J

    const/4 v3, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 8121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileDataRx:[J

    const/4 v3, 0x3

    const-wide/16 v4, -0x1

    aput-wide v4, v2, v3

    .line 8122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileDataTx:[J

    const/4 v3, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 8123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileDataTx:[J

    const/4 v3, 0x3

    const-wide/16 v4, -0x1

    aput-wide v4, v2, v3

    .line 8124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTotalDataRx:[J

    const/4 v3, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 8125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTotalDataRx:[J

    const/4 v3, 0x3

    const-wide/16 v4, -0x1

    aput-wide v4, v2, v3

    .line 8126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTotalDataTx:[J

    const/4 v3, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 8127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTotalDataTx:[J

    const/4 v3, 0x3

    const-wide/16 v4, -0x1

    aput-wide v4, v2, v3

    .line 8129
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRadioDataUptime:J

    .line 8130
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRadioDataStart:J

    .line 8132
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothPingCount:I

    .line 8133
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothPingStart:I

    .line 8135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 8136
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 8137
    .local v8, NKW:I
    const/4 v10, 0x0

    .local v10, ikw:I
    :goto_4
    if-ge v10, v8, :cond_7

    .line 8138
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    .line 8139
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 8140
    .local v16, wakelockName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 8141
    new-instance v11, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    move-object/from16 v0, p1

    invoke-direct {v11, v2, v3, v0}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Ljava/util/ArrayList;ZLandroid/os/Parcel;)V

    .line 8142
    .local v11, kwlt:Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8137
    .end local v11           #kwlt:Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    .end local v16           #wakelockName:Ljava/lang/String;
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 8102
    .end local v8           #NKW:I
    .end local v10           #ikw:I
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 8146
    .restart local v8       #NKW:I
    .restart local v10       #ikw:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 8147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 8148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 8149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 8150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 8151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScanWifiLockTimers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 8152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 8154
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sput v2, Lcom/android/internal/os/BatteryStatsImpl;->sNumSpeedSteps:I

    .line 8157
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sput v2, Lcom/android/internal/os/BatteryStatsImpl;->sNumGpuSpeedSteps:I

    .line 8160
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 8161
    .local v13, numUids:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 8162
    const/4 v9, 0x0

    :goto_5
    if-ge v9, v13, :cond_8

    .line 8163
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 8164
    .local v15, uid:I
    new-instance v14, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/android/internal/os/BatteryStatsImpl$Uid;-><init>(Lcom/android/internal/os/BatteryStatsImpl;I)V

    .line 8165
    .local v14, u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v14, v2, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->readFromParcelLocked(Ljava/util/ArrayList;Landroid/os/Parcel;)V

    .line 8166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 8162
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 8170
    .end local v14           #u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v15           #uid:I
    :cond_8
    sget-boolean v2, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v2, :cond_9

    .line 8171
    const-string v2, "BatteryStatsImpl"

    const-string v3, "readFromParcelLocked End"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8174
    :cond_9
    return-void
.end method

.method readHistory(Landroid/os/Parcel;Z)V
    .locals 13
    .parameter "in"
    .parameter "andOldHistory"

    .prologue
    .line 7349
    sget-boolean v9, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v9, :cond_0

    .line 7350
    const-string v9, "BatteryStatsImpl"

    const-string v10, "readHistory Start"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7355
    :cond_0
    sget-boolean v9, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v9, :cond_1

    .line 7356
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v9, 0x80

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7357
    .local v7, sb:Ljava/lang/StringBuilder;
    const-string v9, "****************** OLD mHistoryFileTime: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7358
    iget-wide v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryFileTime:J

    invoke-static {v9, v10, v7}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 7359
    const-string v9, "BatteryStatsImpl"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7362
    .end local v7           #sb:Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryFileTime:J

    .line 7364
    sget-boolean v9, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v9, :cond_2

    .line 7365
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v9, 0x80

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7366
    .restart local v7       #sb:Ljava/lang/StringBuilder;
    const-string v9, "****************** New mHistoryFileTime: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7367
    iget-wide v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryFileTime:J

    invoke-static {v9, v10, v7}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 7368
    const-string v9, "BatteryStatsImpl"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7373
    .end local v7           #sb:Ljava/lang/StringBuilder;
    :cond_2
    sget-boolean v9, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v9, :cond_3

    .line 7374
    const-string v9, "BatteryStatsImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Old mHistoryShutdownTime:("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryShutdownTime:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7377
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryShutdownTime:J

    .line 7379
    sget-boolean v9, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v9, :cond_4

    .line 7380
    const-string v9, "BatteryStatsImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "New mHistoryShutdownTime:("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryShutdownTime:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7383
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 7385
    .local v8, tmpSize:I
    sget-boolean v9, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v9, :cond_5

    .line 7386
    const-string v9, "BatteryStatsImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "READING open size:("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7389
    :cond_5
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryStartTimeList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 7391
    const/16 v9, 0x2710

    if-gt v8, v9, :cond_6

    .line 7392
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v8, :cond_7

    .line 7393
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryStartTimeList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7392
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7396
    .end local v4           #i:I
    :cond_6
    const-string v9, "BatteryStatsImpl"

    const-string v10, "File corrupt: the power off times not correct"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7400
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 7402
    .local v2, historyBaseTime:J
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->setDataSize(I)V

    .line 7403
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 7405
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 7406
    .local v0, bufSize:I
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 7407
    .local v1, curPos:I
    const v9, 0x6c000

    if-lt v0, v9, :cond_b

    .line 7408
    const-string v9, "BatteryStatsImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "File corrupt: history data buffer too large "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7418
    :goto_1
    if-eqz p2, :cond_8

    .line 7419
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->readOldHistory(Landroid/os/Parcel;)V

    .line 7428
    :cond_8
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    .line 7438
    iget-wide v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_9

    .line 7439
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 7440
    .local v5, oldnow:J
    iget-wide v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    sub-long/2addr v9, v5

    const-wide/32 v11, 0xea60

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    .line 7450
    .end local v5           #oldnow:J
    :cond_9
    sget-boolean v9, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v9, :cond_a

    .line 7451
    const-string v9, "BatteryStatsImpl"

    const-string v10, "readHistory End"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7455
    :cond_a
    return-void

    .line 7409
    :cond_b
    and-int/lit8 v9, v0, -0x4

    if-eq v9, v0, :cond_c

    .line 7410
    const-string v9, "BatteryStatsImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "File corrupt: history data buffer not aligned "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 7414
    :cond_c
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v9, p1, v1, v0}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 7415
    add-int v9, v1, v0

    invoke-virtual {p1, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_1
.end method

.method public readLocked()V
    .locals 15

    .prologue
    .line 7288
    iget-object v11, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    if-nez v11, :cond_1

    .line 7289
    const-string v11, "BatteryStats"

    const-string v12, "readLocked: no file associated with this instance"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7340
    :cond_0
    :goto_0
    return-void

    .line 7293
    :cond_1
    iget-object v11, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->clear()V

    .line 7296
    :try_start_0
    iget-object v11, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    invoke-virtual {v11}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v3

    .line 7297
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 7300
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 7302
    .local v8, stream:Ljava/io/FileInputStream;
    invoke-static {v8}, Lcom/android/internal/os/BatteryStatsImpl;->readFully(Ljava/io/FileInputStream;)[B

    move-result-object v7

    .line 7304
    .local v7, raw:[B
    if-nez v7, :cond_4

    .line 7306
    const-string v11, "BatteryStatsImpl"

    const-string v12, "Read file failed!! Abort reading."

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7316
    .end local v3           #file:Ljava/io/File;
    .end local v7           #raw:[B
    .end local v8           #stream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    .line 7317
    .local v2, e:Ljava/io/IOException;
    const-string v11, "BatteryStats"

    const-string v12, "Error reading battery statistics"

    invoke-static {v11, v12, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7321
    .end local v2           #e:Ljava/io/IOException;
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 7322
    .local v9, tmpTime:J
    const-wide/16 v0, 0x0

    .line 7324
    .local v0, diff:J
    sget-boolean v11, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v11, :cond_2

    .line 7325
    const-string v11, "BatteryStatsImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Current Open : ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Last shutdown : ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v13, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryShutdownTime:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7328
    :cond_2
    iget-wide v11, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryShutdownTime:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_3

    .line 7329
    iget-wide v11, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryShutdownTime:J

    cmp-long v11, v9, v11

    if-ltz v11, :cond_5

    iget-wide v11, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryShutdownTime:J

    sub-long v0, v9, v11

    .line 7332
    :cond_3
    :goto_2
    iget-object v11, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryStartTimeList:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7335
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 7339
    .local v5, now:J
    const/4 v11, 0x2

    invoke-virtual {p0, v5, v6, v11}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JB)V

    goto/16 :goto_0

    .line 7310
    .end local v0           #diff:J
    .end local v5           #now:J
    .end local v9           #tmpTime:J
    .restart local v3       #file:Ljava/io/File;
    .restart local v7       #raw:[B
    .restart local v8       #stream:Ljava/io/FileInputStream;
    :cond_4
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 7311
    .local v4, in:Landroid/os/Parcel;
    const/4 v11, 0x0

    array-length v12, v7

    invoke-virtual {v4, v7, v11, v12}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 7312
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 7313
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 7315
    invoke-direct {p0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 7329
    .end local v3           #file:Ljava/io/File;
    .end local v4           #in:Landroid/os/Parcel;
    .end local v7           #raw:[B
    .end local v8           #stream:Ljava/io/FileInputStream;
    .restart local v0       #diff:J
    .restart local v9       #tmpTime:J
    :cond_5
    const-wide/16 v0, 0x0

    goto :goto_2
.end method

.method readOldHistory(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 7459
    return-void
.end method

.method public removeUidStatsLocked(I)V
    .locals 1
    .parameter "uid"

    .prologue
    .line 7038
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 7039
    return-void
.end method

.method public reportExcessiveCpuLocked(ILjava/lang/String;JJ)V
    .locals 6
    .parameter "uid"
    .parameter "proc"
    .parameter "overTime"
    .parameter "usedTime"

    .prologue
    .line 2665
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 2666
    .local v0, u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-eqz v0, :cond_0

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    .line 2667
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->reportExcessiveCpuLocked(Ljava/lang/String;JJ)V

    .line 2669
    :cond_0
    return-void
.end method

.method public reportExcessiveWakeLocked(ILjava/lang/String;JJ)V
    .locals 6
    .parameter "uid"
    .parameter "proc"
    .parameter "overTime"
    .parameter "usedTime"

    .prologue
    .line 2658
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 2659
    .local v0, u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-eqz v0, :cond_0

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    .line 2660
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->reportExcessiveWakeLocked(Ljava/lang/String;JJ)V

    .line 2662
    :cond_0
    return-void
.end method

.method public resetAllStatsLocked()V
    .locals 14

    .prologue
    const/4 v12, 0x5

    const/4 v13, 0x0

    .line 6225
    const-wide/16 v3, 0x0

    .line 6226
    .local v3, startTimeMillis:J
    const-wide/16 v5, 0x0

    .line 6227
    .local v5, tempTime:J
    const/4 v8, 0x0

    .line 6231
    .local v8, tmpValue:Z
    sget-boolean v10, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v10, :cond_0

    .line 6232
    const-string v10, "BatteryStatsImpl"

    const-string v11, "reset All Stats Locked Start"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6242
    :cond_0
    iput v13, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    .line 6243
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->initTimes()V

    .line 6244
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v10, p0, v13}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z

    .line 6245
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v12, :cond_1

    .line 6246
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v10, v10, v0

    invoke-virtual {v10, p0, v13}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z

    .line 6245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6248
    :cond_1
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInputEventCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v10, v13}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->reset(Z)V

    .line 6249
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v10, p0, v13}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z

    .line 6250
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v10, p0, v13}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z

    .line 6251
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v10, p0, v13}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z

    .line 6252
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v12, :cond_2

    .line 6253
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v10, v10, v0

    invoke-virtual {v10, p0, v13}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z

    .line 6252
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6255
    :cond_2
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v10, p0, v13}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z

    .line 6256
    const/4 v0, 0x0

    :goto_2
    const/16 v10, 0x10

    if-ge v0, v10, :cond_3

    .line 6257
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v10, v10, v0

    invoke-virtual {v10, p0, v13}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z

    .line 6256
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6259
    :cond_3
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v10, p0, v13}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z

    .line 6260
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v10, p0, v13}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z

    .line 6261
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v10, p0, v13}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z

    .line 6270
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->useNewMethodToResetUidData()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 6272
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStatsDel:Landroid/util/SparseArray;

    .line 6274
    sget-boolean v10, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v10, :cond_4

    .line 6275
    const-string v10, "BatteryStatsImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "before total size = ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStatsDel:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ,"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6279
    :cond_4
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 6280
    .local v9, uidSize:I
    new-array v2, v9, [I

    .line 6288
    .local v2, mUidRunTable:[I
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v9, :cond_6

    .line 6289
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    invoke-virtual {v10}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->isRunning()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 6290
    const/4 v10, 0x1

    aput v10, v2, v0

    .line 6288
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 6292
    :cond_5
    aput v13, v2, v0

    goto :goto_4

    .line 6304
    :cond_6
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v9, :cond_8

    .line 6305
    aget v10, v2, v0

    if-nez v10, :cond_7

    .line 6306
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 6304
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 6308
    :cond_7
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStatsDel:Landroid/util/SparseArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_6

    .line 6312
    :cond_8
    sget-boolean v10, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v10, :cond_9

    .line 6313
    const-string v10, "BatteryStatsImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "after total size = ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStatsDel:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ,"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6316
    :cond_9
    const/4 v0, 0x0

    :goto_7
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v0, v10, :cond_b

    .line 6317
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    invoke-virtual {v10}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->reset()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 6318
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    iget-object v11, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->remove(I)V

    .line 6319
    add-int/lit8 v0, v0, -0x1

    .line 6316
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 6342
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->handleBatteryStatsData()V

    .line 6379
    .end local v2           #mUidRunTable:[I
    .end local v9           #uidSize:I
    :cond_c
    sget-object v11, Lcom/android/internal/os/BatteryStatsImpl;->sLockPlug:Ljava/lang/Object;

    monitor-enter v11

    .line 6385
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    if-lez v10, :cond_11

    .line 6386
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 6387
    .local v7, timer:Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_8

    .line 6397
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v7           #timer:Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 6353
    :cond_d
    sget-boolean v10, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v10, :cond_e

    .line 6354
    const-string v10, "BatteryStatsImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "use original design size = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6363
    :cond_e
    const/4 v0, 0x0

    :goto_9
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v0, v10, :cond_c

    .line 6364
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    invoke-virtual {v10}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->reset()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 6365
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    iget-object v11, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->remove(I)V

    .line 6366
    add-int/lit8 v0, v0, -0x1

    .line 6363
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 6389
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_10
    :try_start_1
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 6397
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_11
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6405
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->initDischarge()V

    .line 6407
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->clearHistoryLocked()V

    .line 6417
    sget-boolean v10, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v10, :cond_12

    .line 6418
    const-string v10, "BatteryStatsImpl"

    const-string v11, "reset All Stats Locked End"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6421
    :cond_12
    return-void
.end method

.method public setBatteryState(IIIIII)V
    .locals 11
    .parameter "status"
    .parameter "health"
    .parameter "plugType"
    .parameter "level"
    .parameter "temp"
    .parameter "volt"

    .prologue
    .line 6661
    const-wide/16 v4, 0x0

    .line 6662
    .local v4, startTimeMillis:J
    const-wide/16 v6, 0x0

    .line 6669
    .local v6, tempTime:J
    monitor-enter p0

    .line 6670
    if-nez p3, :cond_5

    const/4 v3, 0x1

    .line 6671
    .local v3, onBattery:Z
    :goto_0
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v2, v8, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 6672
    .local v2, oldStatus:I
    iget-boolean v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHaveBatteryLevel:Z

    if-nez v8, :cond_1

    .line 6673
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHaveBatteryLevel:Z

    .line 6678
    iget-boolean v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-ne v3, v8, :cond_0

    .line 6679
    if-eqz v3, :cond_6

    .line 6680
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v9, v8, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v10, -0x80001

    and-int/2addr v9, v10

    iput v9, v8, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 6685
    :cond_0
    :goto_1
    move v2, p1

    .line 6687
    :cond_1
    if-eqz v3, :cond_2

    .line 6688
    iput p4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    .line 6689
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    .line 6691
    :cond_2
    iget-boolean v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eq v3, v8, :cond_7

    .line 6692
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v9, p4

    iput-byte v9, v8, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 6693
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v9, p1

    iput-byte v9, v8, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 6694
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v9, p2

    iput-byte v9, v8, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 6695
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v9, p3

    iput-byte v9, v8, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 6696
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p5

    int-to-char v9, v0

    iput-char v9, v8, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    .line 6697
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p6

    int-to-char v9, v0

    iput-char v9, v8, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 6698
    invoke-virtual {p0, v3, v2, p4}, Lcom/android/internal/os/BatteryStatsImpl;->setOnBatteryLocked(ZII)V

    .line 6731
    :cond_3
    :goto_2
    if-nez v3, :cond_4

    const/4 v8, 0x5

    if-ne p1, v8, :cond_4

    .line 6734
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    .line 6736
    :cond_4
    monitor-exit p0

    .line 6746
    return-void

    .line 6670
    .end local v2           #oldStatus:I
    .end local v3           #onBattery:Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 6682
    .restart local v2       #oldStatus:I
    .restart local v3       #onBattery:Z
    :cond_6
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v9, v8, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v10, 0x8

    or-int/2addr v9, v10

    iput v9, v8, Landroid/os/BatteryStats$HistoryItem;->states:I

    goto :goto_1

    .line 6736
    .end local v2           #oldStatus:I
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 6700
    .restart local v2       #oldStatus:I
    :cond_7
    const/4 v1, 0x0

    .line 6701
    .local v1, changed:Z
    :try_start_1
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v8, v8, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-eq v8, p4, :cond_8

    .line 6702
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v9, p4

    iput-byte v9, v8, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 6703
    const/4 v1, 0x1

    .line 6705
    :cond_8
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v8, v8, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    if-eq v8, p1, :cond_9

    .line 6706
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v9, p1

    iput-byte v9, v8, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 6707
    const/4 v1, 0x1

    .line 6709
    :cond_9
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v8, v8, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    if-eq v8, p2, :cond_a

    .line 6710
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v9, p2

    iput-byte v9, v8, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 6711
    const/4 v1, 0x1

    .line 6713
    :cond_a
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v8, v8, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    if-eq v8, p3, :cond_b

    .line 6714
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v9, p3

    iput-byte v9, v8, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 6715
    const/4 v1, 0x1

    .line 6717
    :cond_b
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-char v8, v8, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    add-int/lit8 v8, v8, 0xa

    move/from16 v0, p5

    if-ge v0, v8, :cond_c

    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-char v8, v8, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    add-int/lit8 v8, v8, -0xa

    move/from16 v0, p5

    if-gt v0, v8, :cond_d

    .line 6719
    :cond_c
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p5

    int-to-char v9, v0

    iput-char v9, v8, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    .line 6720
    const/4 v1, 0x1

    .line 6722
    :cond_d
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-char v8, v8, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    add-int/lit8 v8, v8, 0x14

    move/from16 v0, p6

    if-gt v0, v8, :cond_e

    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-char v8, v8, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    add-int/lit8 v8, v8, -0x14

    move/from16 v0, p6

    if-ge v0, v8, :cond_f

    .line 6724
    :cond_e
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p6

    int-to-char v9, v0

    iput-char v9, v8, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 6725
    const/4 v1, 0x1

    .line 6727
    :cond_f
    if-eqz v1, :cond_3

    .line 6728
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2
.end method

.method public setBtHeadset(Landroid/bluetooth/BluetoothHeadset;)V
    .locals 2
    .parameter "headset"

    .prologue
    .line 2060
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBtHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothPingStart:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2061
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getCurrentBluetoothPingCount()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothPingStart:I

    .line 2063
    :cond_0
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBtHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 2064
    return-void
.end method

.method public setCallback(Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 6045
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCallback:Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;

    .line 6046
    return-void
.end method

.method public setNumGpuSpeedSteps(I)V
    .locals 3
    .parameter "steps"

    .prologue
    .line 6056
    sget-boolean v0, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 6057
    const-string v0, "BatteryStatsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set Gpu step num current = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/os/BatteryStatsImpl;->sNumGpuSpeedSteps:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , new = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6061
    :cond_0
    if-gez p1, :cond_2

    .line 6066
    :cond_1
    :goto_0
    return-void

    .line 6065
    :cond_2
    sget v0, Lcom/android/internal/os/BatteryStatsImpl;->sNumGpuSpeedSteps:I

    if-nez v0, :cond_1

    sput p1, Lcom/android/internal/os/BatteryStatsImpl;->sNumGpuSpeedSteps:I

    goto :goto_0
.end method

.method public setNumSpeedSteps(I)V
    .locals 1
    .parameter "steps"

    .prologue
    .line 6049
    sget v0, Lcom/android/internal/os/BatteryStatsImpl;->sNumSpeedSteps:I

    if-nez v0, :cond_0

    sput p1, Lcom/android/internal/os/BatteryStatsImpl;->sNumSpeedSteps:I

    .line 6050
    :cond_0
    return-void
.end method

.method setOnBattery(ZII)V
    .locals 1
    .parameter "onBattery"
    .parameter "oldStatus"
    .parameter "level"

    .prologue
    .line 6447
    monitor-enter p0

    .line 6448
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->setOnBatteryLocked(ZII)V

    .line 6449
    monitor-exit p0

    .line 6450
    return-void

    .line 6449
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setOnBatteryLocked(ZII)V
    .locals 22
    .parameter "onBattery"
    .parameter "oldStatus"
    .parameter "level"

    .prologue
    .line 6453
    const/4 v5, 0x0

    .line 6454
    .local v5, doWrite:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 6455
    .local v7, m:Landroid/os/Message;
    if-eqz p1, :cond_0

    const/16 v18, 0x1

    :goto_0
    move/from16 v0, v18

    iput v0, v7, Landroid/os/Message;->arg1:I

    .line 6456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6457
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    .line 6459
    const-wide/16 v12, 0x0

    .line 6460
    .local v12, startTimeMillis:J
    const-wide/16 v14, 0x0

    .line 6468
    .local v14, tempTime:J
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileDebugWakelock()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 6469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryStatusList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryStatusTimeList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryStatusList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    const/16 v19, 0x64

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1

    .line 6473
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    const/16 v18, 0x32

    move/from16 v0, v18

    if-ge v6, v0, :cond_1

    .line 6474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryStatusList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryStatusTimeList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6473
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 6455
    .end local v6           #i:I
    .end local v12           #startTimeMillis:J
    .end local v14           #tempTime:J
    :cond_0
    const/16 v18, 0x0

    goto :goto_0

    .line 6490
    .restart local v12       #startTimeMillis:J
    .restart local v14       #tempTime:J
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    mul-long v16, v18, v20

    .line 6491
    .local v16, uptime:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 6492
    .local v8, mSecRealtime:J
    const-wide/16 v18, 0x3e8

    mul-long v10, v8, v18

    .line 6493
    .local v10, realtime:J
    if-eqz p1, :cond_7

    .line 6499
    const/16 v18, 0x5

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    const/16 v18, 0x46

    move/from16 v0, p3

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    .line 6504
    :cond_2
    const/4 v5, 0x1

    .line 6512
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->resetAllStatsLocked()V

    .line 6523
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStartLevel:I

    .line 6532
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->updateKernelWakelocksLocked()V

    .line 6543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move-object/from16 v18, v0

    move/from16 v0, p3

    int-to-byte v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-byte v0, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 6544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move/from16 v19, v0

    const v20, -0x80001

    and-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 6554
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(J)V

    .line 6565
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryUptimeStart:J

    .line 6566
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryRealtimeStart:J

    .line 6567
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked(J)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedBatteryUptime:J

    .line 6568
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryRealtimeLocked(J)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedBatteryRealtime:J

    .line 6569
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    .line 6570
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOn:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 6571
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    .line 6572
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    .line 6577
    :goto_2
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    .line 6578
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    .line 6579
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedBatteryUptime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedBatteryRealtime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->doUnplugLocked(JJ)V

    .line 6631
    :goto_3
    if-nez v5, :cond_4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    move-wide/from16 v18, v0

    const-wide/32 v20, 0xea60

    add-long v18, v18, v20

    cmp-long v18, v18, v8

    if-gez v18, :cond_5

    .line 6632
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 6640
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V

    .line 6653
    :cond_5
    return-void

    .line 6574
    :cond_6
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    .line 6575
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    goto :goto_2

    .line 6588
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->updateKernelWakelocksLocked()V

    .line 6599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move-object/from16 v18, v0

    move/from16 v0, p3

    int-to-byte v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-byte v0, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 6600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move/from16 v19, v0

    const/high16 v20, 0x8

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 6610
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(J)V

    .line 6621
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryPastUptime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryUptimeStart:J

    move-wide/from16 v20, v0

    sub-long v20, v16, v20

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryPastUptime:J

    .line 6622
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryPastRealtime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryRealtimeStart:J

    move-wide/from16 v20, v0

    sub-long v20, v10, v20

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryPastRealtime:J

    .line 6623
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    .line 6624
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    move/from16 v18, v0

    move/from16 v0, p3

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    .line 6625
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLowDischargeAmountSinceCharge:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    move/from16 v19, v0

    sub-int v19, v19, p3

    add-int/lit8 v19, v19, -0x1

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLowDischargeAmountSinceCharge:I

    .line 6626
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHighDischargeAmountSinceCharge:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    move/from16 v19, v0

    sub-int v19, v19, p3

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mHighDischargeAmountSinceCharge:I

    .line 6628
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOn:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOn:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->updateDischargeScreenLevelsLocked(ZZ)V

    .line 6629
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked(J)J

    move-result-wide v18

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryRealtimeLocked(J)J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->doPlugLocked(JJ)V

    goto/16 :goto_3
.end method

.method public setRadioScanningTimeout(J)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 6070
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 6071
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->setTimeout(J)V

    .line 6073
    :cond_0
    return-void
.end method

.method public shutdownLocked()V
    .locals 4

    .prologue
    .line 7139
    sget-boolean v0, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 7140
    const-string v0, "BatteryStatsImpl"

    const-string v1, "shutdownLocked Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7143
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryShutdownTime:J

    .line 7145
    sget-boolean v0, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v0, :cond_1

    .line 7146
    const-string v0, "BatteryStatsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current mHistoryShutdownTime:("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryShutdownTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7150
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->writeSyncLocked()V

    .line 7151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mShuttingDown:Z

    .line 7152
    return-void
.end method

.method public startAddingCpuLocked()I
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 2542
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->removeMessages(I)V

    .line 2544
    iget-boolean v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOn:Z

    if-eqz v5, :cond_1

    .line 2568
    :cond_0
    :goto_0
    return v4

    .line 2548
    :cond_1
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2549
    .local v0, N:I
    if-nez v0, :cond_2

    .line 2550
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 2556
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 2557
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 2558
    .local v2, st:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iget-boolean v5, v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mInList:Z

    if-eqz v5, :cond_3

    .line 2559
    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 2562
    .local v3, uid:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-eqz v3, :cond_3

    iget v5, v3, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_3

    .line 2563
    const/16 v4, 0x32

    goto :goto_0

    .line 2556
    .end local v3           #uid:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public startIteratingHistoryLocked()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6128
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 6129
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadOverflow:Z

    .line 6130
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIteratingHistory:Z

    .line 6131
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public startIteratingOldHistoryLocked()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6079
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 6080
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v2}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    .line 6081
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadOverflow:Z

    .line 6082
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIteratingHistory:Z

    .line 6083
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistory:Landroid/os/BatteryStats$HistoryItem;

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryIterator:Landroid/os/BatteryStats$HistoryItem;

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method stopAllSignalStrengthTimersLocked(I)V
    .locals 2
    .parameter "except"

    .prologue
    .line 2846
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 2847
    if-ne v0, p1, :cond_1

    .line 2846
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2850
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2851
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    goto :goto_1

    .line 2854
    :cond_2
    return-void
.end method

.method updateDischargeScreenLevelsLocked(ZZ)V
    .locals 4
    .parameter "oldScreenOn"
    .parameter "newScreenOn"

    .prologue
    const/4 v3, 0x0

    .line 6424
    if-eqz p1, :cond_1

    .line 6425
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    sub-int v0, v1, v2

    .line 6426
    .local v0, diff:I
    if-lez v0, :cond_0

    .line 6427
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    .line 6428
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOnSinceCharge:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOnSinceCharge:I

    .line 6437
    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    .line 6438
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    .line 6439
    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    .line 6444
    :goto_1
    return-void

    .line 6431
    .end local v0           #diff:I
    :cond_1
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    sub-int v0, v1, v2

    .line 6432
    .restart local v0       #diff:I
    if-lez v0, :cond_0

    .line 6433
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    .line 6434
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOffSinceCharge:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOffSinceCharge:I

    goto :goto_0

    .line 6441
    :cond_2
    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    .line 6442
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    goto :goto_1
.end method

.method public updateKernelWakelocksLocked()V
    .locals 11

    .prologue
    .line 6749
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->readKernelWakelockStats()Ljava/util/Map;

    move-result-object v5

    .line 6751
    .local v5, m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;>;"
    if-nez v5, :cond_1

    .line 6753
    const-string v8, "BatteryStatsImpl"

    const-string v9, "Couldn\'t get kernel wake lock stats"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6781
    :cond_0
    return-void

    .line 6757
    :cond_1
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6758
    .local v0, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 6759
    .local v6, name:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;

    .line 6761
    .local v4, kws:Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 6762
    .local v3, kwlt:Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    if-nez v3, :cond_2

    .line 6763
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .end local v3           #kwlt:Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    iget-boolean v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    const/4 v10, 0x1

    invoke-direct {v3, v8, v9, v10}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Ljava/util/ArrayList;ZZ)V

    .line 6765
    .restart local v3       #kwlt:Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6767
    :cond_2
    iget v8, v4, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mCount:I

    invoke-virtual {v3, v8}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->updateCurrentReportedCount(I)V

    .line 6768
    iget-wide v8, v4, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mTotalTime:J

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->updateCurrentReportedTotalTime(J)V

    .line 6769
    sget v8, Lcom/android/internal/os/BatteryStatsImpl;->sKernelWakelockUpdateVersion:I

    invoke-virtual {v3, v8}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->setUpdateVersion(I)V

    goto :goto_0

    .line 6772
    .end local v0           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;>;"
    .end local v3           #kwlt:Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    .end local v4           #kws:Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;
    .end local v6           #name:Ljava/lang/String;
    :cond_3
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-eq v8, v9, :cond_0

    .line 6774
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6775
    .local v1, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 6776
    .local v7, st:Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->getUpdateVersion()I

    move-result v8

    sget v9, Lcom/android/internal/os/BatteryStatsImpl;->sKernelWakelockUpdateVersion:I

    if-eq v8, v9, :cond_4

    .line 6777
    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->setStale()V

    goto :goto_1
.end method

.method public writeAsyncLocked()V
    .locals 1

    .prologue
    .line 7158
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeLocked(Z)V

    .line 7159
    return-void
.end method

.method writeHistory(Landroid/os/Parcel;Z)V
    .locals 7
    .parameter "out"
    .parameter "andOldHistory"

    .prologue
    .line 7472
    sget-boolean v3, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v3, :cond_0

    .line 7473
    const-string v3, "BatteryStatsImpl"

    const-string v4, "writeHistory Start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7486
    :cond_0
    sget-boolean v3, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v3, :cond_1

    .line 7487
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7488
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v3, "****************** WRITING mHistoryFileTime: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7489
    iget-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryFileTime:J

    invoke-static {v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 7490
    const-string v3, "BatteryStatsImpl"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7492
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :cond_1
    iget-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryFileTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 7496
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryShutdownTime:J

    .line 7498
    sget-boolean v3, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v3, :cond_2

    .line 7499
    const-string v3, "BatteryStatsImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WRITING mHistoryShutdownTime:("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryShutdownTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7502
    :cond_2
    iget-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryShutdownTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 7504
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryStartTimeList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 7506
    .local v2, tmpSize:I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7508
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 7509
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryStartTimeList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 7508
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7512
    :cond_3
    sget-boolean v3, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v3, :cond_4

    .line 7513
    const-string v3, "BatteryStatsImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WRITING open size:("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7517
    :cond_4
    iget-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    iget-wide v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryTime:J

    add-long/2addr v3, v5

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 7518
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7521
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->dataSize()I

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 7523
    if-eqz p2, :cond_5

    .line 7524
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->writeOldHistory(Landroid/os/Parcel;)V

    .line 7528
    :cond_5
    sget-boolean v3, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v3, :cond_6

    .line 7529
    const-string v3, "BatteryStatsImpl"

    const-string v4, "writeHistory End"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7532
    :cond_6
    return-void
.end method

.method writeLocked(Z)V
    .locals 5
    .parameter "sync"

    .prologue
    .line 7166
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    if-nez v2, :cond_1

    .line 7167
    const-string v2, "BatteryStats"

    const-string v3, "writeLocked: no file associated with this instance"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7208
    :cond_0
    :goto_0
    return-void

    .line 7172
    :cond_1
    sget-boolean v2, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v2, :cond_2

    .line 7173
    const-string v2, "BatteryStatsImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeLocked Start sync = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7177
    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mShuttingDown:Z

    if-nez v2, :cond_0

    .line 7181
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7182
    .local v0, out:Landroid/os/Parcel;
    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeSummaryToParcel(Landroid/os/Parcel;)V

    .line 7183
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    .line 7185
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    if-eqz v2, :cond_3

    .line 7186
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 7188
    :cond_3
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    .line 7190
    if-eqz p1, :cond_4

    .line 7191
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->commitPendingDataToDisk()V

    .line 7204
    :goto_1
    sget-boolean v2, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 7205
    const-string v2, "BatteryStatsImpl"

    const-string v3, "writeLocked End"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7193
    :cond_4
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$1;

    const-string v2, "BatteryStats-Write"

    invoke-direct {v1, p0, v2}, Lcom/android/internal/os/BatteryStatsImpl$1;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;)V

    .line 7200
    .local v1, thr:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method writeOldHistory(Landroid/os/Parcel;)V
    .locals 0
    .parameter "out"

    .prologue
    .line 7536
    return-void
.end method

.method public writeSummaryToParcel(Landroid/os/Parcel;)V
    .locals 39
    .parameter "out"

    .prologue
    .line 7800
    sget-boolean v35, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v35, :cond_0

    .line 7801
    const-string v35, "BatteryStatsImpl"

    const-string v36, "writeSummaryToParcel Start"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7806
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->updateKernelWakelocksLocked()V

    .line 7808
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v35

    const-wide/16 v37, 0x3e8

    mul-long v10, v35, v37

    .line 7809
    .local v10, NOW_SYS:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v35

    const-wide/16 v37, 0x3e8

    mul-long v8, v35, v37

    .line 7810
    .local v8, NOWREAL_SYS:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked(J)J

    move-result-wide v4

    .line 7811
    .local v4, NOW:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryRealtimeLocked(J)J

    move-result-wide v6

    .line 7813
    .local v6, NOWREAL:J
    const/16 v35, 0x40

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7815
    const/16 v35, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->writeHistory(Landroid/os/Parcel;Z)V

    .line 7817
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    move/from16 v35, v0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7818
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v10, v11, v1}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryUptime(JI)J

    move-result-wide v35

    move-object/from16 v0, p1

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 7819
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v8, v9, v1}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v35

    move-object/from16 v0, p1

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 7820
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v10, v11, v1}, Lcom/android/internal/os/BatteryStatsImpl;->computeUptime(JI)J

    move-result-wide v35

    move-object/from16 v0, p1

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 7821
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v8, v9, v1}, Lcom/android/internal/os/BatteryStatsImpl;->computeRealtime(JI)J

    move-result-wide v35

    move-object/from16 v0, p1

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 7822
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    move/from16 v35, v0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7823
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    move/from16 v35, v0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7824
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getLowDischargeAmountSinceCharge()I

    move-result v35

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7825
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getHighDischargeAmountSinceCharge()I

    move-result v35

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7826
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeAmountScreenOnSinceCharge()I

    move-result v35

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7827
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeAmountScreenOffSinceCharge()I

    move-result v35

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 7830
    const/16 v22, 0x0

    .local v22, i:I
    :goto_0
    const/16 v35, 0x5

    move/from16 v0, v22

    move/from16 v1, v35

    if-ge v0, v1, :cond_1

    .line 7831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    aget-object v35, v35, v22

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 7830
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 7833
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInputEventCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 7835
    const/16 v22, 0x0

    :goto_1
    const/16 v35, 0x5

    move/from16 v0, v22

    move/from16 v1, v35

    if-ge v0, v1, :cond_2

    .line 7836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    aget-object v35, v35, v22

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 7835
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 7838
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 7839
    const/16 v22, 0x0

    :goto_2
    const/16 v35, 0x10

    move/from16 v0, v22

    move/from16 v1, v35

    if-ge v0, v1, :cond_3

    .line 7840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    aget-object v35, v35, v22

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 7839
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 7842
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 7843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 7844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 7846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/HashMap;->size()I

    move-result v35

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_5

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 7848
    .local v18, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/internal/os/BatteryStatsImpl$Timer;

    .line 7849
    .local v26, kwlt:Lcom/android/internal/os/BatteryStatsImpl$Timer;
    if-eqz v26, :cond_4

    .line 7850
    const/16 v35, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7851
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7852
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    goto :goto_3

    .line 7854
    :cond_4
    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 7858
    .end local v18           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    .end local v26           #kwlt:Lcom/android/internal/os/BatteryStatsImpl$Timer;
    :cond_5
    sget v35, Lcom/android/internal/os/BatteryStatsImpl;->sNumSpeedSteps:I

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7860
    sget v35, Lcom/android/internal/os/BatteryStatsImpl;->sNumGpuSpeedSteps:I

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7863
    sget-boolean v35, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v35, :cond_6

    .line 7864
    const-string v35, "BatteryStatsImpl"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "write Gpu level num = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget v37, Lcom/android/internal/os/BatteryStatsImpl;->sNumGpuSpeedSteps:I

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7868
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/util/SparseArray;->size()I

    move-result v15

    .line 7869
    .local v15, NU:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 7870
    const/16 v25, 0x0

    .end local v23           #i$:Ljava/util/Iterator;
    .local v25, iu:I
    :goto_4
    move/from16 v0, v25

    if-ge v0, v15, :cond_1e

    .line 7871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v35

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 7874
    .local v33, u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    if-eqz v35, :cond_9

    .line 7875
    const/16 v35, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7876
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 7880
    :goto_5
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    if-eqz v35, :cond_a

    .line 7881
    const/16 v35, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7882
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 7886
    :goto_6
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    if-eqz v35, :cond_b

    .line 7887
    const/16 v35, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7888
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 7892
    :goto_7
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    if-eqz v35, :cond_c

    .line 7893
    const/16 v35, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7894
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 7898
    :goto_8
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    if-eqz v35, :cond_d

    .line 7899
    const/16 v35, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7900
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 7904
    :goto_9
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    if-eqz v35, :cond_e

    .line 7905
    const/16 v35, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7906
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 7911
    :goto_a
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    move-object/from16 v35, v0

    if-eqz v35, :cond_f

    .line 7912
    const/16 v35, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7913
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 7919
    :goto_b
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    if-eqz v35, :cond_10

    .line 7920
    const/16 v35, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7921
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 7926
    :goto_c
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    if-nez v35, :cond_11

    .line 7927
    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7936
    :cond_7
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v35, v0

    if-nez v35, :cond_12

    .line 7937
    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7945
    :cond_8
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/HashMap;->size()I

    move-result v16

    .line 7946
    .local v16, NW:I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7947
    if-lez v16, :cond_16

    .line 7949
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23       #i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_16

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map$Entry;

    .line 7950
    .local v21, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7951
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 7952
    .local v34, wl:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    if-eqz v35, :cond_13

    .line 7953
    const/16 v35, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7954
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 7958
    :goto_e
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    if-eqz v35, :cond_14

    .line 7959
    const/16 v35, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7960
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 7964
    :goto_f
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    if-eqz v35, :cond_15

    .line 7965
    const/16 v35, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7966
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    goto :goto_d

    .line 7878
    .end local v16           #NW:I
    .end local v21           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v34           #wl:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    :cond_9
    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_5

    .line 7884
    :cond_a
    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_6

    .line 7890
    :cond_b
    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_7

    .line 7896
    :cond_c
    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 7902
    :cond_d
    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 7908
    :cond_e
    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 7915
    :cond_f
    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 7923
    :cond_10
    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_c

    .line 7929
    :cond_11
    const/16 v35, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7930
    const/16 v22, 0x0

    :goto_10
    const/16 v35, 0x5

    move/from16 v0, v22

    move/from16 v1, v35

    if-ge v0, v1, :cond_7

    .line 7931
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    aget-object v35, v35, v22

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 7930
    add-int/lit8 v22, v22, 0x1

    goto :goto_10

    .line 7939
    :cond_12
    const/16 v35, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7940
    const/16 v22, 0x0

    :goto_11
    const/16 v35, 0x7

    move/from16 v0, v22

    move/from16 v1, v35

    if-ge v0, v1, :cond_8

    .line 7941
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v35, v0

    aget-object v35, v35, v22

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7940
    add-int/lit8 v22, v22, 0x1

    goto :goto_11

    .line 7956
    .restart local v16       #NW:I
    .restart local v21       #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    .restart local v23       #i$:Ljava/util/Iterator;
    .restart local v34       #wl:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    :cond_13
    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_e

    .line 7962
    :cond_14
    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_f

    .line 7968
    :cond_15
    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_d

    .line 7973
    .end local v21           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v34           #wl:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    :cond_16
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Ljava/util/HashMap;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/HashMap;->size()I

    move-result v14

    .line 7974
    .local v14, NSE:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 7975
    if-lez v14, :cond_18

    .line 7977
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Ljava/util/HashMap;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23       #i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_18

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 7978
    .local v17, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Integer;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v35

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7979
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .line 7980
    .local v28, se:Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    if-eqz v35, :cond_17

    .line 7981
    const/16 v35, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7982
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    goto :goto_12

    .line 7984
    :cond_17
    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12

    .line 7989
    .end local v17           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;>;"
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v28           #se:Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    :cond_18
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Ljava/util/HashMap;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/HashMap;->size()I

    move-result v12

    .line 7990
    .local v12, NP:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 7991
    if-lez v12, :cond_1b

    .line 7993
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Ljava/util/HashMap;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23       #i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_1b

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    .line 7994
    .local v20, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7995
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 7996
    .local v27, ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    move-wide/from16 v35, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 7997
    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    move-wide/from16 v35, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 7998
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    move/from16 v35, v0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7999
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    array-length v3, v0

    .line 8000
    .local v3, N:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8001
    const/16 v22, 0x0

    :goto_14
    move/from16 v0, v22

    if-ge v0, v3, :cond_1a

    .line 8002
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    move-object/from16 v35, v0

    aget-object v35, v35, v22

    if-eqz v35, :cond_19

    .line 8003
    const/16 v35, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8004
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    move-object/from16 v35, v0

    aget-object v35, v35, v22

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 8001
    :goto_15
    add-int/lit8 v22, v22, 0x1

    goto :goto_14

    .line 8006
    :cond_19
    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_15

    .line 8009
    :cond_1a
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->writeExcessivePowerToParcelLocked(Landroid/os/Parcel;)V

    goto/16 :goto_13

    .line 8013
    .end local v3           #N:I
    .end local v20           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;>;"
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v27           #ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :cond_1b
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Ljava/util/HashMap;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/HashMap;->size()I

    move-result v12

    .line 8014
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 8015
    if-lez v12, :cond_1d

    .line 8017
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Ljava/util/HashMap;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_1c
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_1d

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 8018
    .local v19, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8019
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .line 8020
    .local v27, ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeups:I

    move/from16 v35, v0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8021
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Ljava/util/HashMap;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/HashMap;->size()I

    move-result v13

    .line 8022
    .local v13, NS:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 8023
    if-lez v13, :cond_1c

    .line 8025
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Ljava/util/HashMap;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_1c

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/Map$Entry;

    .line 8026
    .local v29, sent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;"
    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8027
    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    .line 8028
    .local v30, ss:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getStartTimeToNowLocked(J)J

    move-result-wide v31

    .line 8029
    .local v31, time:J
    move-object/from16 v0, p1

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 8030
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    move/from16 v35, v0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8031
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    move/from16 v35, v0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_16

    .line 8037
    .end local v13           #NS:I
    .end local v19           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    .end local v24           #i$:Ljava/util/Iterator;
    .end local v27           #ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .end local v29           #sent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;"
    .end local v30           #ss:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .end local v31           #time:J
    :cond_1d
    const/16 v35, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getTcpBytesReceived(I)J

    move-result-wide v35

    move-object/from16 v0, p1

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 8038
    const/16 v35, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getTcpBytesSent(I)J

    move-result-wide v35

    move-object/from16 v0, p1

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 7870
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_4

    .line 8042
    .end local v12           #NP:I
    .end local v14           #NSE:I
    .end local v16           #NW:I
    .end local v33           #u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_1e
    sget-boolean v35, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v35, :cond_1f

    .line 8043
    const-string v35, "BatteryStatsImpl"

    const-string v36, "writeSummaryToParcel End"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8046
    :cond_1f
    return-void
.end method

.method public writeSyncLocked()V
    .locals 1

    .prologue
    .line 7162
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeLocked(Z)V

    .line 7163
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 8177
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcelLocked(Landroid/os/Parcel;ZI)V

    .line 8178
    return-void
.end method

.method writeToParcelLocked(Landroid/os/Parcel;ZI)V
    .locals 21
    .parameter "out"
    .parameter "inclUids"
    .parameter "flags"

    .prologue
    .line 8188
    sget-boolean v17, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v17, :cond_0

    .line 8189
    const-string v17, "BatteryStatsImpl"

    const-string v18, "writeToParcelLocked Start"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8194
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->updateKernelWakelocksLocked()V

    .line 8196
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    mul-long v14, v17, v19

    .line 8197
    .local v14, uSecUptime:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    mul-long v12, v17, v19

    .line 8198
    .local v12, uSecRealtime:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked(J)J

    move-result-wide v5

    .line 8199
    .local v5, batteryUptime:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryRealtimeLocked(J)J

    move-result-wide v3

    .line 8201
    .local v3, batteryRealtime:J
    const v17, -0x458a8b8b

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8203
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->writeHistory(Landroid/os/Parcel;Z)V

    .line 8205
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8206
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryUptime:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 8207
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryRealtime:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 8208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 8209
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    const/16 v17, 0x5

    move/from16 v0, v17

    if-ge v8, v0, :cond_1

    .line 8210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v17, v0

    aget-object v17, v17, v8

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 8209
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 8212
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInputEventCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeToParcel(Landroid/os/Parcel;)V

    .line 8213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 8214
    const/4 v8, 0x0

    :goto_1
    const/16 v17, 0x5

    move/from16 v0, v17

    if-ge v8, v0, :cond_2

    .line 8215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v17, v0

    aget-object v17, v17, v8

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 8214
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 8217
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 8218
    const/4 v8, 0x0

    :goto_2
    const/16 v17, 0x10

    move/from16 v0, v17

    if-ge v8, v0, :cond_3

    .line 8219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v17, v0

    aget-object v17, v17, v8

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 8218
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 8221
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 8222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 8223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 8224
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUptime:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 8225
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUptimeStart:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 8226
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtime:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 8227
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 8228
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    const/16 v17, 0x1

    :goto_3
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8229
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 8230
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryUptimeStart:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 8231
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 8232
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryRealtimeStart:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 8233
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedBatteryUptime:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 8234
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedBatteryRealtime:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 8235
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8236
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8237
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLowDischargeAmountSinceCharge:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8238
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHighDischargeAmountSinceCharge:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8239
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8240
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOnSinceCharge:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8241
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8242
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOffSinceCharge:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8243
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 8245
    const/16 v17, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesReceived(I)J

    move-result-wide v17

    move-object/from16 v0, p1

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 8246
    const/16 v17, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesSent(I)J

    move-result-wide v17

    move-object/from16 v0, p1

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 8247
    const/16 v17, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesReceived(I)J

    move-result-wide v17

    move-object/from16 v0, p1

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 8248
    const/16 v17, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesSent(I)J

    move-result-wide v17

    move-object/from16 v0, p1

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 8251
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getRadioDataUptime()J

    move-result-wide v17

    move-object/from16 v0, p1

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 8253
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothPingCount()I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8255
    if-eqz p2, :cond_6

    .line 8256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->size()I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 8258
    .local v7, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 8259
    .local v10, kwlt:Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    if-eqz v10, :cond_5

    .line 8260
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8261
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8262
    move-object/from16 v0, p1

    invoke-static {v0, v10, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    goto :goto_4

    .line 8228
    .end local v7           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #kwlt:Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_4
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 8264
    .restart local v7       #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v10       #kwlt:Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_5
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 8268
    .end local v7           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #kwlt:Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_6
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8271
    :cond_7
    sget v17, Lcom/android/internal/os/BatteryStatsImpl;->sNumSpeedSteps:I

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8274
    sget v17, Lcom/android/internal/os/BatteryStatsImpl;->sNumGpuSpeedSteps:I

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8277
    if-eqz p2, :cond_8

    .line 8278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 8279
    .local v11, size:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 8280
    const/4 v8, 0x0

    :goto_5
    if-ge v8, v11, :cond_9

    .line 8281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 8284
    .local v16, uid:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->writeToParcelLocked(Landroid/os/Parcel;J)V

    .line 8280
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 8287
    .end local v11           #size:I
    .end local v16           #uid:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_8
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8291
    :cond_9
    sget-boolean v17, Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z

    if-eqz v17, :cond_a

    .line 8292
    const-string v17, "BatteryStatsImpl"

    const-string v18, "writeToParcelLocked End"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8295
    :cond_a
    return-void
.end method

.method public writeToParcelWithoutUids(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 8181
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcelLocked(Landroid/os/Parcel;ZI)V

    .line 8182
    return-void
.end method
