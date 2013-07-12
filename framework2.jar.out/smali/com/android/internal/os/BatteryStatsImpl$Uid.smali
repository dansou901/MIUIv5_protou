.class public final Lcom/android/internal/os/BatteryStatsImpl$Uid;
.super Landroid/os/BatteryStats$Uid;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Uid"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    }
.end annotation


# instance fields
.field mAudioTurnedOn:Z

.field mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mCurrentBrightnesslevel:I

.field mCurrentTcpBytesReceived:J

.field mCurrentTcpBytesSent:J

.field final mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mDisplayTurnedOn:Z

.field mDisplayTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mFullWifiLockOut:Z

.field mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mGpuTurnedOn:Z

.field mGpuTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

.field mLoadedTcpBytesReceived:J

.field mLoadedTcpBytesSent:J

.field final mPackageStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;",
            ">;"
        }
    .end annotation
.end field

.field final mPids:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/BatteryStats$Uid$Pid;",
            ">;"
        }
    .end annotation
.end field

.field final mProcessStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;",
            ">;"
        }
    .end annotation
.end field

.field mScanWifiLockOut:Z

.field mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mSensorStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;",
            ">;"
        }
    .end annotation
.end field

.field mStartedTcpBytesReceived:J

.field mStartedTcpBytesSent:J

.field mTcpBytesReceivedAtLastUnplug:J

.field mTcpBytesSentAtLastUnplug:J

.field final mUid:I

.field mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

.field mVideoTurnedOn:Z

.field mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mWakelockStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;",
            ">;"
        }
    .end annotation
.end field

.field mWifiMulticastEnabled:Z

.field mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mWifiRunning:Z

.field mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;I)V
    .locals 8
    .parameter
    .parameter "uid"

    .prologue
    const-wide/16 v1, -0x1

    const/4 v7, 0x7

    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 3477
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Landroid/os/BatteryStats$Uid;-><init>()V

    .line 3416
    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mStartedTcpBytesReceived:J

    .line 3417
    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mStartedTcpBytesSent:J

    .line 3443
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentBrightnesslevel:I

    .line 3447
    new-array v1, v6, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3455
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    .line 3460
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Ljava/util/HashMap;

    .line 3465
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Ljava/util/HashMap;

    .line 3470
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Ljava/util/HashMap;

    .line 3475
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    .line 3485
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    .line 3486
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3488
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v2, p1, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v6, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3490
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/android/internal/os/BatteryStatsImpl;->mScanWifiLockTimers:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3492
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v2, p1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v7, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3494
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v2, p1, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v7, v5, v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3496
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v5, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3499
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    const/16 v2, 0x40

    iget-object v3, p1, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v5, v3}, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    .line 3503
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v2, 0x80

    iget-object v3, p1, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v5, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3506
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 3507
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    add-int/lit16 v3, v0, 0x3e8

    iget-object v4, p1, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3, v5, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    aput-object v2, v1, v0

    .line 3506
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3510
    :cond_0
    return-void
.end method

.method private getWakeLockTypeString(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 5932
    packed-switch p1, :pswitch_data_0

    .line 5940
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 5934
    :pswitch_0
    const-string v0, "partial"

    goto :goto_0

    .line 5936
    :pswitch_1
    const-string v0, "full"

    goto :goto_0

    .line 5938
    :pswitch_2
    const-string v0, "window"

    goto :goto_0

    .line 5932
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method attach()V
    .locals 25

    .prologue
    .line 4126
    const-wide/16 v17, 0x0

    .line 4127
    .local v17, startTimeMillis:J
    const-wide/16 v19, 0x0

    .line 4128
    .local v19, tempTime:J
    const/16 v22, 0x0

    .line 4129
    .local v22, wakelockStatsSize:I
    const/4 v15, 0x0

    .line 4130
    .local v15, sensorStatsSize:I
    const/4 v12, 0x0

    .line 4131
    .local v12, processStatsSize:I
    const/4 v9, 0x0

    .line 4132
    .local v9, pidSize:I
    const/4 v8, 0x0

    .line 4141
    .local v8, packageStatsSize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 4143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->attach()V

    .line 4145
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    .line 4147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->attach()V

    .line 4149
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    .line 4151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->attach()V

    .line 4153
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3

    .line 4155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->attach()V

    .line 4157
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4

    .line 4159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->attach()V

    .line 4161
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v24, v0

    if-eqz v24, :cond_5

    .line 4163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->attach()V

    .line 4165
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    move-object/from16 v24, v0

    if-eqz v24, :cond_6

    .line 4167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->attach()V

    .line 4169
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v24, v0

    if-eqz v24, :cond_7

    .line 4171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->attach()V

    .line 4174
    :cond_7
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v24, 0x5

    move/from16 v0, v24

    if-ge v1, v0, :cond_9

    .line 4175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v24, v0

    aget-object v24, v24, v1

    if-eqz v24, :cond_8

    .line 4177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v24, v0

    aget-object v24, v24, v1

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->attach()V

    .line 4174
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4181
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v24, v0

    if-eqz v24, :cond_a

    .line 4182
    const/4 v1, 0x0

    :goto_1
    const/16 v24, 0x7

    move/from16 v0, v24

    if-ge v1, v0, :cond_a

    .line 4184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v24, v0

    aget-object v24, v24, v1

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->attach()V

    .line 4182
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4201
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->size()I

    move-result v24

    if-lez v24, :cond_b

    .line 4202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 4203
    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_b

    .line 4204
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map$Entry;

    .line 4205
    .local v21, wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 4207
    .local v23, wl:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->attach()V

    goto :goto_2

    .line 4211
    .end local v5           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;>;"
    .end local v21           #wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    .end local v23           #wl:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->size()I

    move-result v24

    if-lez v24, :cond_c

    .line 4212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4213
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;>;>;"
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_c

    .line 4214
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 4215
    .local v14, sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .line 4217
    .local v13, s:Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    invoke-virtual {v13}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->attach()V

    goto :goto_3

    .line 4221
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;>;>;"
    .end local v13           #s:Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    .end local v14           #sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;>;"
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->size()I

    move-result v24

    if-lez v24, :cond_d

    .line 4222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 4223
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;>;>;"
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_d

    .line 4224
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 4226
    .local v11, procEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->attach()V

    goto :goto_4

    .line 4230
    .end local v4           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;>;>;"
    .end local v11           #procEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;>;"
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->size()I

    move-result v24

    if-lez v24, :cond_f

    .line 4231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 4232
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;>;"
    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_f

    .line 4233
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 4234
    .local v10, pkgEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .line 4236
    .local v7, p:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->attach()V

    .line 4240
    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->size()I

    move-result v24

    if-lez v24, :cond_e

    .line 4241
    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 4243
    .local v6, it2:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;>;"
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_e

    .line 4244
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 4246
    .local v16, servEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->attach()V

    goto :goto_5

    .line 4266
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;>;"
    .end local v6           #it2:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;>;"
    .end local v7           #p:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .end local v10           #pkgEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    .end local v16           #servEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;"
    :cond_f
    return-void
.end method

.method public computeCurrentTcpBytesReceived()J
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 3553
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #calls: Lcom/android/internal/os/BatteryStatsImpl;->getNetworkStatsDetailGroupedByUid()Landroid/net/NetworkStats;
    invoke-static {v4}, Lcom/android/internal/os/BatteryStatsImpl;->access$500(Lcom/android/internal/os/BatteryStatsImpl;)Landroid/net/NetworkStats;

    move-result-object v4

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    invoke-virtual {v4, v5, v6}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;I)Landroid/net/NetworkStats$Entry;

    move-result-object v4

    iget-wide v0, v4, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 3555
    .local v0, uidRxBytes:J
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentTcpBytesReceived:J

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mStartedTcpBytesReceived:J

    cmp-long v6, v6, v2

    if-ltz v6, :cond_0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mStartedTcpBytesReceived:J

    sub-long v2, v0, v2

    :cond_0
    add-long/2addr v2, v4

    return-wide v2
.end method

.method public computeCurrentTcpBytesSent()J
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 3949
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #calls: Lcom/android/internal/os/BatteryStatsImpl;->getNetworkStatsDetailGroupedByUid()Landroid/net/NetworkStats;
    invoke-static {v4}, Lcom/android/internal/os/BatteryStatsImpl;->access$500(Lcom/android/internal/os/BatteryStatsImpl;)Landroid/net/NetworkStats;

    move-result-object v4

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    invoke-virtual {v4, v5, v6}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;I)Landroid/net/NetworkStats$Entry;

    move-result-object v4

    iget-wide v0, v4, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 3951
    .local v0, uidTxBytes:J
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentTcpBytesSent:J

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mStartedTcpBytesSent:J

    cmp-long v6, v6, v2

    if-ltz v6, :cond_0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mStartedTcpBytesSent:J

    sub-long v2, v0, v2

    :cond_0
    add-long/2addr v2, v4

    return-wide v2
.end method

.method public getAudioTurnedOnTime(JI)J
    .locals 2
    .parameter "batteryRealtime"
    .parameter "which"

    .prologue
    .line 3835
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 3836
    const-wide/16 v0, 0x0

    .line 3838
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;
    .locals 1

    .prologue
    .line 5989
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method public getDisplayBrightnessTime(IJI)J
    .locals 4
    .parameter "brightnessBin"
    .parameter "batteryRealtime"
    .parameter "which"

    .prologue
    .line 3894
    move v0, p1

    .line 3895
    .local v0, bin:I
    if-gez p1, :cond_2

    const/4 v0, 0x0

    .line 3898
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    .line 3900
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3902
    const-string v1, "BatteryStatsImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDisplayBrightnessTime no Timer and Uid ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3905
    :cond_1
    const-wide/16 v1, 0x0

    .line 3913
    :goto_1
    return-wide v1

    .line 3896
    :cond_2
    const/4 v1, 0x5

    if-lt p1, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 3913
    :cond_3
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v1

    goto :goto_1
.end method

.method public getDisplayTurnedOnTime(JI)J
    .locals 3
    .parameter "batteryRealtime"
    .parameter "which"

    .prologue
    .line 3874
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_1

    .line 3876
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3878
    const-string v0, "BatteryStatsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDisplayTurnedOnTime no Timer and Uid ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3881
    :cond_0
    const-wide/16 v0, 0x0

    .line 3889
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getFullWifiLockTime(JI)J
    .locals 2
    .parameter "batteryRealtime"
    .parameter "which"

    .prologue
    .line 3810
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 3811
    const-wide/16 v0, 0x0

    .line 3813
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getPackageStats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Pkg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3529
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .locals 2
    .parameter "name"

    .prologue
    .line 5755
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .line 5756
    .local v0, ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    if-nez v0, :cond_0

    .line 5757
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .end local v0           #ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    .line 5758
    .restart local v0       #ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5761
    :cond_0
    return-object v0
.end method

.method public getPidStats()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/BatteryStats$Uid$Pid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5738
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getPidStatsLocked(I)Landroid/os/BatteryStats$Uid$Pid;
    .locals 2
    .parameter "pid"

    .prologue
    .line 5742
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$Uid$Pid;

    .line 5743
    .local v0, p:Landroid/os/BatteryStats$Uid$Pid;
    if-nez v0, :cond_0

    .line 5744
    new-instance v0, Landroid/os/BatteryStats$Uid$Pid;

    .end local v0           #p:Landroid/os/BatteryStats$Uid$Pid;
    invoke-direct {v0, p0}, Landroid/os/BatteryStats$Uid$Pid;-><init>(Landroid/os/BatteryStats$Uid;)V

    .line 5745
    .restart local v0       #p:Landroid/os/BatteryStats$Uid$Pid;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5747
    :cond_0
    return-object v0
.end method

.method public getProcessStats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Proc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3524
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Ljava/util/HashMap;

    return-object v0
.end method

.method public getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .locals 2
    .parameter "name"

    .prologue
    .line 5728
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 5729
    .local v0, ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-nez v0, :cond_0

    .line 5730
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .end local v0           #ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    .line 5731
    .restart local v0       #ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5734
    :cond_0
    return-object v0
.end method

.method public getScanWifiLockTime(JI)J
    .locals 2
    .parameter "batteryRealtime"
    .parameter "which"

    .prologue
    .line 3818
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 3819
    const-wide/16 v0, 0x0

    .line 3821
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getSensorStats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "+",
            "Landroid/os/BatteryStats$Uid$Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3519
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 5
    .parameter "sensor"
    .parameter "create"

    .prologue
    .line 5825
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .line 5826
    .local v0, se:Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    if-nez v0, :cond_2

    .line 5827
    if-nez p2, :cond_1

    .line 5828
    const/4 v1, 0x0

    .line 5844
    :cond_0
    :goto_0
    return-object v1

    .line 5830
    :cond_1
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .end local v0           #se:Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    invoke-direct {v0, p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;I)V

    .line 5831
    .restart local v0       #se:Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5833
    :cond_2
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5834
    .local v1, t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-nez v1, :cond_0

    .line 5837
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 5838
    .local v2, timers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    if-nez v2, :cond_3

    .line 5839
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #timers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5840
    .restart local v2       #timers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5842
    :cond_3
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .end local v1           #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v3, v2, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 5843
    .restart local v1       #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iput-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_0
.end method

.method public getServiceStatsLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .locals 3
    .parameter "pkg"
    .parameter "serv"

    .prologue
    .line 5769
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    move-result-object v0

    .line 5770
    .local v0, ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    .line 5771
    .local v1, ss:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    if-nez v1, :cond_0

    .line 5772
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->newServiceStatsLocked()Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v1

    .line 5773
    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5776
    :cond_0
    return-object v1
.end method

.method public getTcpBytesReceived(I)J
    .locals 4
    .parameter "which"

    .prologue
    .line 3539
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 3540
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLoadedTcpBytesReceived:J

    .line 3548
    :cond_0
    :goto_0
    return-wide v0

    .line 3542
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->computeCurrentTcpBytesReceived()J

    move-result-wide v0

    .line 3543
    .local v0, current:J
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 3544
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mTcpBytesReceivedAtLastUnplug:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 3545
    :cond_2
    if-nez p1, :cond_0

    .line 3546
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLoadedTcpBytesReceived:J

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public getTcpBytesSent(I)J
    .locals 4
    .parameter "which"

    .prologue
    .line 3561
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 3562
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLoadedTcpBytesSent:J

    .line 3570
    :cond_0
    :goto_0
    return-wide v0

    .line 3564
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->computeCurrentTcpBytesSent()J

    move-result-wide v0

    .line 3565
    .local v0, current:J
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 3566
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mTcpBytesSentAtLastUnplug:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 3567
    :cond_2
    if-nez p1, :cond_0

    .line 3568
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLoadedTcpBytesSent:J

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public getTimeAtGpuSpeedStep(II)J
    .locals 3
    .parameter "speedStep"
    .parameter "which"

    .prologue
    .line 3852
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    if-nez v0, :cond_1

    .line 3854
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3856
    const-string v0, "BatteryStatsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTimeAtGpuSpeedStep no Timer and Uid ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3859
    :cond_0
    const-wide/16 v0, 0x0

    .line 3867
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->getTimeAtGpuSpeedStep(II)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 3534
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    return v0
.end method

.method public getUserActivityCount(II)I
    .locals 1
    .parameter "type"
    .parameter "which"

    .prologue
    .line 3935
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-nez v0, :cond_0

    .line 3936
    const/4 v0, 0x0

    .line 3938
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v0

    goto :goto_0
.end method

.method public getVideoTurnedOnTime(JI)J
    .locals 2
    .parameter "batteryRealtime"
    .parameter "which"

    .prologue
    .line 3843
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 3844
    const-wide/16 v0, 0x0

    .line 3846
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getWakeTimerLocked(Ljava/lang/String;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 7
    .parameter "name"
    .parameter "type"

    .prologue
    .line 5780
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 5781
    .local v3, wl:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    if-nez v3, :cond_2

    .line 5782
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 5783
    .local v0, N:I
    const/16 v4, 0x1e

    if-le v0, v4, :cond_1

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_0

    const/16 v4, 0x32

    if-le v0, v4, :cond_1

    .line 5785
    :cond_0
    const-string p1, "*overflow*"

    .line 5786
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #wl:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 5788
    .restart local v3       #wl:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    :cond_1
    if-nez v3, :cond_2

    .line 5789
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .end local v3           #wl:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    invoke-direct {v3, p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    .line 5790
    .restart local v3       #wl:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5793
    .end local v0           #N:I
    :cond_2
    const/4 v1, 0x0

    .line 5794
    .local v1, t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    packed-switch p2, :pswitch_data_0

    .line 5820
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5796
    :pswitch_0
    iget-object v1, v3, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5797
    if-nez v1, :cond_3

    .line 5798
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .end local v1           #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v4, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 5800
    .restart local v1       #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iput-object v1, v3, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :cond_3
    move-object v2, v1

    .line 5818
    .end local v1           #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .local v2, t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :goto_0
    return-object v2

    .line 5804
    .end local v2           #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .restart local v1       #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :pswitch_1
    iget-object v1, v3, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5805
    if-nez v1, :cond_4

    .line 5806
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .end local v1           #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v4, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 5808
    .restart local v1       #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iput-object v1, v3, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :cond_4
    move-object v2, v1

    .line 5810
    .end local v1           #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .restart local v2       #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    goto :goto_0

    .line 5812
    .end local v2           #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .restart local v1       #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :pswitch_2
    iget-object v1, v3, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5813
    if-nez v1, :cond_5

    .line 5814
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .end local v1           #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v4, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 5816
    .restart local v1       #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iput-object v1, v3, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :cond_5
    move-object v2, v1

    .line 5818
    .end local v1           #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .restart local v2       #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    goto :goto_0

    .line 5794
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getWakelockStats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Wakelock;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3514
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    return-object v0
.end method

.method public getWifiMulticastTime(JI)J
    .locals 2
    .parameter "batteryRealtime"
    .parameter "which"

    .prologue
    .line 3826
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 3827
    const-wide/16 v0, 0x0

    .line 3829
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getWifiRunningTime(JI)J
    .locals 2
    .parameter "batteryRealtime"
    .parameter "which"

    .prologue
    .line 3802
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 3803
    const-wide/16 v0, 0x0

    .line 3805
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    goto :goto_0
.end method

.method public hasUserActivity()Z
    .locals 1

    .prologue
    .line 3930
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method initUserActivityLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x7

    .line 3942
    new-array v1, v4, [Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 3943
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 3944
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Ljava/util/ArrayList;)V

    aput-object v2, v1, v0

    .line 3943
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3946
    :cond_0
    return-void
.end method

.method isRunning()Z
    .locals 24

    .prologue
    .line 3957
    const/4 v2, 0x0

    .line 3960
    .local v2, active:Z
    const-wide/16 v13, 0x0

    .line 3961
    .local v13, startTimeMillis:J
    const-wide/16 v15, 0x0

    .line 3962
    .local v15, tempTime:J
    const/16 v18, 0x0

    .line 3963
    .local v18, wakelockStatsSize:I
    const/4 v12, 0x0

    .line 3964
    .local v12, sensorStatsSize:I
    const/4 v9, 0x0

    .line 3965
    .local v9, processStatsSize:I
    const/4 v8, 0x0

    .line 3966
    .local v8, pidSize:I
    const/4 v6, 0x0

    .line 3975
    .local v6, packageStatsSize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 3976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v20

    or-int v2, v2, v20

    .line 3977
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    move/from16 v20, v0

    or-int v2, v2, v20

    .line 3979
    if-eqz v2, :cond_0

    .line 3980
    const/16 v20, 0x1

    .line 4121
    :goto_0
    return v20

    .line 3984
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 3985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v20

    or-int v2, v2, v20

    .line 3986
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    move/from16 v20, v0

    or-int v2, v2, v20

    .line 3988
    if-eqz v2, :cond_1

    .line 3989
    const/16 v20, 0x1

    goto :goto_0

    .line 3993
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 3994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v20

    or-int v2, v2, v20

    .line 3995
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockOut:Z

    move/from16 v20, v0

    or-int v2, v2, v20

    .line 3997
    if-eqz v2, :cond_2

    .line 3998
    const/16 v20, 0x1

    goto :goto_0

    .line 4002
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 4003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v20

    or-int v2, v2, v20

    .line 4004
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    move/from16 v20, v0

    or-int v2, v2, v20

    .line 4006
    if-eqz v2, :cond_3

    .line 4007
    const/16 v20, 0x1

    goto :goto_0

    .line 4011
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    .line 4012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v20

    or-int v2, v2, v20

    .line 4013
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOn:Z

    move/from16 v20, v0

    or-int v2, v2, v20

    .line 4015
    if-eqz v2, :cond_4

    .line 4016
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 4020
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 4021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v20

    or-int v2, v2, v20

    .line 4022
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOn:Z

    move/from16 v20, v0

    or-int v2, v2, v20

    .line 4024
    if-eqz v2, :cond_5

    .line 4025
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 4029
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    .line 4030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->isRunningLocked()Z

    move-result v20

    or-int v2, v2, v20

    .line 4031
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOn:Z

    move/from16 v20, v0

    or-int v2, v2, v20

    .line 4033
    if-eqz v2, :cond_6

    .line 4034
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 4038
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    .line 4039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v20

    or-int v2, v2, v20

    .line 4040
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOn:Z

    move/from16 v20, v0

    or-int v2, v2, v20

    .line 4042
    if-eqz v2, :cond_7

    .line 4043
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 4047
    :cond_7
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    const/16 v20, 0x5

    move/from16 v0, v20

    if-ge v3, v0, :cond_9

    .line 4048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v20, v0

    aget-object v20, v20, v3

    if-eqz v20, :cond_8

    .line 4049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v20, v0

    aget-object v20, v20, v3

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v20

    or-int v2, v2, v20

    .line 4051
    if-eqz v2, :cond_8

    .line 4052
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 4047
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4070
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->size()I

    move-result v20

    if-lez v20, :cond_b

    .line 4071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 4072
    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;>;"
    :cond_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_b

    .line 4073
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 4074
    .local v17, wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 4075
    .local v19, wl:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->isRunning()Z

    move-result v20

    if-eqz v20, :cond_a

    .line 4076
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 4083
    .end local v5           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;>;"
    .end local v17           #wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    .end local v19           #wl:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->size()I

    move-result v20

    if-lez v20, :cond_d

    .line 4084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 4085
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;>;>;"
    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_d

    .line 4086
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 4087
    .local v11, sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .line 4088
    .local v10, s:Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    invoke-virtual {v10}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->isRunning()Z

    move-result v20

    if-eqz v20, :cond_c

    .line 4089
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 4096
    .end local v4           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;>;>;"
    .end local v10           #s:Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    .end local v11           #sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;>;"
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v20

    if-lez v20, :cond_f

    .line 4097
    const/4 v3, 0x0

    :goto_2
    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v3, v0, :cond_f

    .line 4098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats$Uid$Pid;

    .line 4099
    .local v7, pid:Landroid/os/BatteryStats$Uid$Pid;
    iget-wide v0, v7, Landroid/os/BatteryStats$Uid$Pid;->mWakeStart:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_e

    .line 4100
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 4097
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4105
    .end local v7           #pid:Landroid/os/BatteryStats$Uid$Pid;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->clear()V

    move/from16 v20, v2

    .line 4121
    goto/16 :goto_0
.end method

.method public noteAudioTurnedOffLocked()V
    .locals 2

    .prologue
    .line 3668
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOn:Z

    if-eqz v0, :cond_0

    .line 3669
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOn:Z

    .line 3670
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3672
    :cond_0
    return-void
.end method

.method public noteAudioTurnedOnLocked()V
    .locals 4

    .prologue
    .line 3656
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOn:Z

    if-nez v0, :cond_1

    .line 3657
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOn:Z

    .line 3658
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 3659
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v1, 0x7

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3662
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3664
    :cond_1
    return-void
.end method

.method public noteDisplayBrightnessLocked(I)V
    .locals 5
    .parameter "bin"

    .prologue
    const/4 v1, 0x5

    .line 3779
    if-gez p1, :cond_4

    const/4 p1, 0x0

    .line 3782
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOn:Z

    if-eqz v0, :cond_3

    .line 3783
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentBrightnesslevel:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentBrightnesslevel:I

    if-ge v0, v1, :cond_1

    .line 3784
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentBrightnesslevel:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 3785
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentBrightnesslevel:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3789
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    if-nez v0, :cond_2

    .line 3790
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    add-int/lit16 v2, p1, 0x3e8

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    aput-object v1, v0, p1

    .line 3793
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3794
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentBrightnesslevel:I

    .line 3797
    :cond_3
    return-void

    .line 3780
    :cond_4
    if-lt p1, v1, :cond_0

    const/4 p1, 0x4

    goto :goto_0
.end method

.method public noteDisplayTurnedOffLocked()V
    .locals 4

    .prologue
    .line 3754
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOn:Z

    if-eqz v2, :cond_1

    .line 3755
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOn:Z

    .line 3756
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3758
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v2, :cond_1

    .line 3759
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    array-length v0, v2

    .line 3760
    .local v0, bin:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3761
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 3762
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3760
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3775
    .end local v0           #bin:I
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method public noteDisplayTurnedOnLocked()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3729
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOn:Z

    if-nez v0, :cond_1

    .line 3751
    :cond_0
    :goto_0
    return-void

    .line 3733
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOn:Z

    if-nez v0, :cond_0

    .line 3734
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOn:Z

    .line 3735
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_2

    .line 3736
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v1, 0x80

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v5, v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3739
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3741
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentBrightnesslevel:I

    .line 3743
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentBrightnesslevel:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentBrightnesslevel:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 3744
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentBrightnesslevel:I

    aget-object v0, v0, v1

    if-nez v0, :cond_3

    .line 3745
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentBrightnesslevel:I

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentBrightnesslevel:I

    add-int/lit16 v3, v3, 0x3e8

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3, v5, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    aput-object v2, v0, v1

    .line 3747
    :cond_3
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentBrightnesslevel:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    goto :goto_0
.end method

.method public noteFullWifiLockAcquiredLocked()V
    .locals 4

    .prologue
    .line 3596
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    if-nez v0, :cond_1

    .line 3597
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    .line 3598
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 3599
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3602
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3604
    :cond_1
    return-void
.end method

.method public noteFullWifiLockReleasedLocked()V
    .locals 2

    .prologue
    .line 3608
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    if-eqz v0, :cond_0

    .line 3609
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    .line 3610
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3612
    :cond_0
    return-void
.end method

.method public noteGpuTurnedOffLocked()V
    .locals 2

    .prologue
    .line 3719
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOn:Z

    if-eqz v0, :cond_0

    .line 3720
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOn:Z

    .line 3721
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3723
    :cond_0
    return-void
.end method

.method public noteGpuTurnedOnLocked()V
    .locals 4

    .prologue
    .line 3702
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOn:Z

    if-nez v0, :cond_1

    .line 3703
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOn:Z

    .line 3704
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    if-nez v0, :cond_0

    .line 3705
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    const/16 v1, 0x40

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    .line 3708
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3710
    :cond_1
    return-void
.end method

.method public noteScanWifiLockAcquiredLocked()V
    .locals 4

    .prologue
    .line 3616
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockOut:Z

    if-nez v0, :cond_1

    .line 3617
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockOut:Z

    .line 3618
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 3619
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mScanWifiLockTimers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3622
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3624
    :cond_1
    return-void
.end method

.method public noteScanWifiLockReleasedLocked()V
    .locals 2

    .prologue
    .line 3628
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockOut:Z

    if-eqz v0, :cond_0

    .line 3629
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockOut:Z

    .line 3630
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3632
    :cond_0
    return-void
.end method

.method public noteStartGps()V
    .locals 3

    .prologue
    .line 5975
    const/16 v1, -0x2710

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    .line 5976
    .local v0, t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    .line 5977
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 5979
    :cond_0
    return-void
.end method

.method public noteStartSensor(I)V
    .locals 2
    .parameter "sensor"

    .prologue
    .line 5960
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    .line 5961
    .local v0, t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    .line 5962
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 5964
    :cond_0
    return-void
.end method

.method public noteStartWakeLocked(ILjava/lang/String;I)V
    .locals 12
    .parameter "pid"
    .parameter "name"
    .parameter "type"

    .prologue
    .line 5848
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakeTimerLocked(Ljava/lang/String;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v4

    .line 5849
    .local v4, t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v4, :cond_6

    .line 5850
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v4, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 5852
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileDebugWakelock()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 5853
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #getter for: Lcom/android/internal/os/BatteryStatsImpl;->mWakelockHistory:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/internal/os/BatteryStatsImpl;->access$600(Lcom/android/internal/os/BatteryStatsImpl;)Ljava/util/HashMap;

    move-result-object v7

    monitor-enter v7

    .line 5854
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #getter for: Lcom/android/internal/os/BatteryStatsImpl;->mWakelockHistory:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/internal/os/BatteryStatsImpl;->access$600(Lcom/android/internal/os/BatteryStatsImpl;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;

    .line 5855
    .local v5, wh:Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;
    if-nez v5, :cond_0

    .line 5856
    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;

    .end local v5           #wh:Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;
    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;-><init>(Lcom/android/internal/os/BatteryStatsImpl$1;)V

    .line 5857
    .restart local v5       #wh:Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;
    iput-object p2, v5, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mName:Ljava/lang/String;

    .line 5858
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #getter for: Lcom/android/internal/os/BatteryStatsImpl;->mWakelockHistory:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/internal/os/BatteryStatsImpl;->access$600(Lcom/android/internal/os/BatteryStatsImpl;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, p2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5861
    :cond_0
    iget-object v6, v5, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mLockTypes:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 5862
    iget-object v6, v5, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mLockTypes:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5865
    :cond_1
    iget-object v6, v5, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mReleaseTimeList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v8, 0x64

    if-le v6, v8, :cond_3

    .line 5866
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v6, 0x32

    if-ge v2, v6, :cond_3

    .line 5867
    iget-object v6, v5, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mReleaseTimeList:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v6, v5, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mAcquireTimeList:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long v0, v8, v10

    .line 5868
    .local v0, diff:J
    const-wide/16 v8, 0x0

    cmp-long v6, v0, v8

    if-gez v6, :cond_2

    .line 5869
    const-wide/16 v0, 0x0

    .line 5870
    :cond_2
    iget-wide v8, v5, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mSum:J

    add-long/2addr v8, v0

    iput-wide v8, v5, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mSum:J

    .line 5871
    iget-object v6, v5, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mReleaseTimeList:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5872
    iget-object v6, v5, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mAcquireTimeList:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5866
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5875
    .end local v0           #diff:J
    .end local v2           #i:I
    :cond_3
    iget-object v6, v5, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mAcquireTimeList:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5876
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5878
    .end local v5           #wh:Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;
    :cond_4
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfilePower()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 5879
    const-string v6, "BatteryStatsImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hold "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakeLockTypeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " wakelock, name="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5883
    :cond_5
    sget-boolean v6, Lcom/htc/utils/PerformanceLogUtil;->Enabled:Z

    if-eqz v6, :cond_6

    .line 5884
    invoke-direct {p0, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakeLockTypeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, v6}, Lcom/htc/utils/PerformanceLogUtil;->logNoteStartWakeLock(Ljava/lang/String;Ljava/lang/String;)V

    .line 5888
    :cond_6
    if-ltz p1, :cond_7

    if-nez p3, :cond_7

    .line 5889
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getPidStatsLocked(I)Landroid/os/BatteryStats$Uid$Pid;

    move-result-object v3

    .line 5890
    .local v3, p:Landroid/os/BatteryStats$Uid$Pid;
    iget-wide v6, v3, Landroid/os/BatteryStats$Uid$Pid;->mWakeStart:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    .line 5891
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v3, Landroid/os/BatteryStats$Uid$Pid;->mWakeStart:J

    .line 5894
    .end local v3           #p:Landroid/os/BatteryStats$Uid$Pid;
    :cond_7
    return-void

    .line 5876
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public noteStopGps()V
    .locals 3

    .prologue
    .line 5982
    const/16 v1, -0x2710

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    .line 5983
    .local v0, t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    .line 5984
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 5986
    :cond_0
    return-void
.end method

.method public noteStopSensor(I)V
    .locals 2
    .parameter "sensor"

    .prologue
    .line 5968
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    .line 5969
    .local v0, t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    .line 5970
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 5972
    :cond_0
    return-void
.end method

.method public noteStopWakeLocked(ILjava/lang/String;I)V
    .locals 11
    .parameter "pid"
    .parameter "name"
    .parameter "type"

    .prologue
    const-wide/16 v9, 0x0

    .line 5897
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakeTimerLocked(Ljava/lang/String;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    .line 5898
    .local v1, t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v1, :cond_3

    .line 5899
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 5901
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileDebugWakelock()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5902
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #getter for: Lcom/android/internal/os/BatteryStatsImpl;->mWakelockHistory:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/internal/os/BatteryStatsImpl;->access$600(Lcom/android/internal/os/BatteryStatsImpl;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 5903
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #getter for: Lcom/android/internal/os/BatteryStatsImpl;->mWakelockHistory:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/internal/os/BatteryStatsImpl;->access$600(Lcom/android/internal/os/BatteryStatsImpl;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;

    .line 5904
    .local v2, wh:Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;
    if-eqz v2, :cond_0

    .line 5905
    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mReleaseTimeList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mAcquireTimeList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 5906
    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mReleaseTimeList:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5908
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5911
    .end local v2           #wh:Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;
    :cond_1
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfilePower()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5912
    const-string v3, "BatteryStatsImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "release "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakeLockTypeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " wakelock, name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5916
    :cond_2
    sget-boolean v3, Lcom/htc/utils/PerformanceLogUtil;->Enabled:Z

    if-eqz v3, :cond_3

    .line 5917
    invoke-direct {p0, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakeLockTypeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/htc/utils/PerformanceLogUtil;->logNoteStopWakeLock(Ljava/lang/String;Ljava/lang/String;)V

    .line 5921
    :cond_3
    if-ltz p1, :cond_4

    if-nez p3, :cond_4

    .line 5922
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$Uid$Pid;

    .line 5923
    .local v0, p:Landroid/os/BatteryStats$Uid$Pid;
    if-eqz v0, :cond_4

    iget-wide v3, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStart:J

    cmp-long v3, v3, v9

    if-eqz v3, :cond_4

    .line 5924
    iget-wide v3, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeSum:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStart:J

    sub-long/2addr v5, v7

    add-long/2addr v3, v5

    iput-wide v3, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeSum:J

    .line 5925
    iput-wide v9, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStart:J

    .line 5928
    .end local v0           #p:Landroid/os/BatteryStats$Uid$Pid;
    :cond_4
    return-void

    .line 5908
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public noteUserActivityLocked(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 3920
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-nez v0, :cond_0

    .line 3921
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initUserActivityLocked()V

    .line 3923
    :cond_0
    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 3925
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->stepAtomic()V

    .line 3926
    return-void

    .line 3924
    :cond_2
    const/4 v0, 0x7

    if-lt p1, v0, :cond_1

    const/4 p1, 0x6

    goto :goto_0
.end method

.method public noteVideoTurnedOffLocked()V
    .locals 2

    .prologue
    .line 3688
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOn:Z

    if-eqz v0, :cond_0

    .line 3689
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOn:Z

    .line 3690
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3692
    :cond_0
    return-void
.end method

.method public noteVideoTurnedOnLocked()V
    .locals 4

    .prologue
    .line 3676
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOn:Z

    if-nez v0, :cond_1

    .line 3677
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOn:Z

    .line 3678
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 3679
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3682
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3684
    :cond_1
    return-void
.end method

.method public noteWifiMulticastDisabledLocked()V
    .locals 2

    .prologue
    .line 3648
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    if-eqz v0, :cond_0

    .line 3649
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    .line 3650
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3652
    :cond_0
    return-void
.end method

.method public noteWifiMulticastEnabledLocked()V
    .locals 4

    .prologue
    .line 3636
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    if-nez v0, :cond_1

    .line 3637
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    .line 3638
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 3639
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3642
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3644
    :cond_1
    return-void
.end method

.method public noteWifiRunningLocked()V
    .locals 4

    .prologue
    .line 3576
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    if-nez v0, :cond_1

    .line 3577
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    .line 3578
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 3579
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3582
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3584
    :cond_1
    return-void
.end method

.method public noteWifiStoppedLocked()V
    .locals 2

    .prologue
    .line 3588
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    if-eqz v0, :cond_0

    .line 3589
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    .line 3590
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3592
    :cond_0
    return-void
.end method

.method readFromParcelLocked(Ljava/util/ArrayList;Landroid/os/Parcel;)V
    .locals 26
    .parameter
    .parameter "in"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;",
            ">;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4606
    .local p1, unpluggables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 4607
    .local v16, numWakelocks:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 4608
    const/4 v10, 0x0

    .local v10, j:I
    :goto_0
    move/from16 v0, v16

    if-ge v10, v0, :cond_0

    .line 4609
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 4610
    .local v24, wakelockName:Ljava/lang/String;
    new-instance v23, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    .line 4611
    .local v23, wakelock:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->readFromParcelLocked(Ljava/util/ArrayList;Landroid/os/Parcel;)V

    .line 4615
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4608
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 4618
    .end local v23           #wakelock:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    .end local v24           #wakelockName:Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 4619
    .local v15, numSensors:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 4620
    const/4 v11, 0x0

    .local v11, k:I
    :goto_1
    if-ge v11, v15, :cond_1

    .line 4621
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 4622
    .local v22, sensorNumber:I
    new-instance v21, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;I)V

    .line 4623
    .local v21, sensor:Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->readFromParcelLocked(Ljava/util/ArrayList;Landroid/os/Parcel;)V

    .line 4624
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Ljava/util/HashMap;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4620
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 4627
    .end local v21           #sensor:Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    .end local v22           #sensorNumber:I
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 4628
    .local v14, numProcs:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 4629
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v14, :cond_2

    .line 4630
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 4631
    .local v20, processName:Ljava/lang/String;
    new-instance v19, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    .line 4632
    .local v19, proc:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->readFromParcelLocked(Landroid/os/Parcel;)V

    .line 4633
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Ljava/util/HashMap;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4629
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 4636
    .end local v19           #proc:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v20           #processName:Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 4637
    .local v13, numPkgs:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 4638
    const/4 v12, 0x0

    .local v12, l:I
    :goto_3
    if-ge v12, v13, :cond_3

    .line 4639
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 4640
    .local v17, packageName:Ljava/lang/String;
    new-instance v18, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    .line 4641
    .local v18, pkg:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->readFromParcelLocked(Landroid/os/Parcel;)V

    .line 4642
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Ljava/util/HashMap;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4638
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 4645
    .end local v17           #packageName:Ljava/lang/String;
    .end local v18           #pkg:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLoadedTcpBytesReceived:J

    .line 4646
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLoadedTcpBytesSent:J

    .line 4647
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentTcpBytesReceived:J

    .line 4648
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentTcpBytesSent:J

    .line 4649
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mTcpBytesReceivedAtLastUnplug:J

    .line 4650
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mTcpBytesSentAtLastUnplug:J

    .line 4651
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    .line 4652
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 4653
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v4, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v4, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4658
    :goto_4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    .line 4659
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    .line 4660
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v4, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v4, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4665
    :goto_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockOut:Z

    .line 4666
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 4667
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v4, Lcom/android/internal/os/BatteryStatsImpl;->mScanWifiLockTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v4, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4672
    :goto_6
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    .line 4673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    .line 4674
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v4, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v4, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4679
    :goto_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOn:Z

    .line 4680
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    .line 4681
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v4, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4686
    :goto_8
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOn:Z

    .line 4687
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    .line 4688
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v4, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4694
    :goto_9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOn:Z

    .line 4695
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    .line 4703
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    const/16 v5, 0x40

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v4, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    .line 4710
    :goto_a
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOn:Z

    .line 4711
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b

    .line 4712
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v5, 0x80

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v4, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4718
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    .line 4719
    const/4 v9, 0x0

    .local v9, i:I
    :goto_c
    const/4 v3, 0x5

    if-ge v9, v3, :cond_d

    .line 4720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    add-int/lit16 v5, v9, 0x3e8

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v4, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    aput-object v3, v25, v9

    .line 4719
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 4656
    .end local v9           #i:I
    :cond_4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto/16 :goto_4

    .line 4663
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto/16 :goto_5

    .line 4670
    :cond_6
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto/16 :goto_6

    .line 4677
    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto/16 :goto_7

    .line 4684
    :cond_8
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto/16 :goto_8

    .line 4691
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto/16 :goto_9

    .line 4706
    :cond_a
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    goto :goto_a

    .line 4715
    :cond_b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_b

    .line 4724
    :cond_c
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_d
    const/4 v3, 0x5

    if-ge v9, v3, :cond_d

    .line 4725
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    add-int/lit16 v5, v9, 0x3e8

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v7, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    aput-object v4, v3, v9

    .line 4724
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 4731
    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e

    .line 4732
    const/4 v3, 0x7

    new-array v3, v3, [Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 4733
    const/4 v9, 0x0

    :goto_e
    const/4 v3, 0x7

    if-ge v9, v3, :cond_f

    .line 4734
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Ljava/util/ArrayList;Landroid/os/Parcel;)V

    aput-object v4, v3, v9

    .line 4733
    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    .line 4737
    :cond_e
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 4745
    :cond_f
    return-void
.end method

.method public reportExcessiveCpuLocked(Ljava/lang/String;JJ)V
    .locals 1
    .parameter "proc"
    .parameter "overTime"
    .parameter "usedTime"

    .prologue
    .line 5953
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v0

    .line 5954
    .local v0, p:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v0, :cond_0

    .line 5955
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addExcessiveCpu(JJ)V

    .line 5957
    :cond_0
    return-void
.end method

.method public reportExcessiveWakeLocked(Ljava/lang/String;JJ)V
    .locals 1
    .parameter "proc"
    .parameter "overTime"
    .parameter "usedTime"

    .prologue
    .line 5946
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v0

    .line 5947
    .local v0, p:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v0, :cond_0

    .line 5948
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addExcessiveWake(JJ)V

    .line 5950
    :cond_0
    return-void
.end method

.method reset()Z
    .locals 32

    .prologue
    .line 4273
    const/4 v3, 0x0

    .line 4276
    .local v3, active:Z
    const-wide/16 v21, 0x0

    .line 4277
    .local v21, startTimeMillis:J
    const-wide/16 v23, 0x0

    .line 4278
    .local v23, tempTime:J
    const/16 v26, 0x0

    .line 4279
    .local v26, wakelockStatsSize:I
    const/16 v19, 0x0

    .line 4280
    .local v19, sensorStatsSize:I
    const/16 v16, 0x0

    .line 4281
    .local v16, processStatsSize:I
    const/4 v13, 0x0

    .line 4282
    .local v13, pidSize:I
    const/4 v11, 0x0

    .line 4291
    .local v11, packageStatsSize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_0

    .line 4292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z

    move-result v28

    if-nez v28, :cond_9

    const/16 v28, 0x1

    :goto_0
    or-int v3, v3, v28

    .line 4293
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    move/from16 v28, v0

    or-int v3, v3, v28

    .line 4295
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1

    .line 4296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z

    move-result v28

    if-nez v28, :cond_a

    const/16 v28, 0x1

    :goto_1
    or-int v3, v3, v28

    .line 4297
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    move/from16 v28, v0

    or-int v3, v3, v28

    .line 4299
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_2

    .line 4300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z

    move-result v28

    if-nez v28, :cond_b

    const/16 v28, 0x1

    :goto_2
    or-int v3, v3, v28

    .line 4301
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockOut:Z

    move/from16 v28, v0

    or-int v3, v3, v28

    .line 4303
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_3

    .line 4304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z

    move-result v28

    if-nez v28, :cond_c

    const/16 v28, 0x1

    :goto_3
    or-int v3, v3, v28

    .line 4305
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    move/from16 v28, v0

    or-int v3, v3, v28

    .line 4307
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_4

    .line 4308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z

    move-result v28

    if-nez v28, :cond_d

    const/16 v28, 0x1

    :goto_4
    or-int v3, v3, v28

    .line 4309
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOn:Z

    move/from16 v28, v0

    or-int v3, v3, v28

    .line 4311
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_5

    .line 4312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z

    move-result v28

    if-nez v28, :cond_e

    const/16 v28, 0x1

    :goto_5
    or-int v3, v3, v28

    .line 4313
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOn:Z

    move/from16 v28, v0

    or-int v3, v3, v28

    .line 4316
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_6

    .line 4317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z

    move-result v28

    if-nez v28, :cond_f

    const/16 v28, 0x1

    :goto_6
    or-int v3, v3, v28

    .line 4318
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOn:Z

    move/from16 v28, v0

    or-int v3, v3, v28

    .line 4322
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_7

    .line 4323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z

    move-result v28

    if-nez v28, :cond_10

    const/16 v28, 0x1

    :goto_7
    or-int v3, v3, v28

    .line 4324
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOn:Z

    move/from16 v28, v0

    or-int v3, v3, v28

    .line 4327
    :cond_7
    const/4 v4, 0x0

    .local v4, i:I
    :goto_8
    const/16 v28, 0x5

    move/from16 v0, v28

    if-ge v4, v0, :cond_11

    .line 4328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    aget-object v28, v28, v4

    if-eqz v28, :cond_8

    .line 4329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    aget-object v28, v28, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z

    .line 4327
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 4292
    .end local v4           #i:I
    :cond_9
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 4296
    :cond_a
    const/16 v28, 0x0

    goto/16 :goto_1

    .line 4300
    :cond_b
    const/16 v28, 0x0

    goto/16 :goto_2

    .line 4304
    :cond_c
    const/16 v28, 0x0

    goto/16 :goto_3

    .line 4308
    :cond_d
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 4312
    :cond_e
    const/16 v28, 0x0

    goto/16 :goto_5

    .line 4317
    :cond_f
    const/16 v28, 0x0

    goto :goto_6

    .line 4323
    :cond_10
    const/16 v28, 0x0

    goto :goto_7

    .line 4334
    .restart local v4       #i:I
    :cond_11
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLoadedTcpBytesSent:J

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLoadedTcpBytesReceived:J

    .line 4335
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentTcpBytesSent:J

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentTcpBytesReceived:J

    .line 4337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v28, v0

    if-eqz v28, :cond_12

    .line 4338
    const/4 v4, 0x0

    :goto_9
    const/16 v28, 0x7

    move/from16 v0, v28

    if-ge v4, v0, :cond_12

    .line 4339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v28, v0

    aget-object v28, v28, v4

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->reset(Z)V

    .line 4338
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 4356
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->size()I

    move-result v28

    if-lez v28, :cond_14

    .line 4357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 4358
    .local v8, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;>;"
    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_14

    .line 4359
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Map$Entry;

    .line 4360
    .local v25, wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 4361
    .local v27, wl:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->reset()Z

    move-result v28

    if-eqz v28, :cond_13

    .line 4362
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    .line 4364
    :cond_13
    const/4 v3, 0x1

    goto :goto_a

    .line 4369
    .end local v8           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;>;"
    .end local v25           #wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    .end local v27           #wl:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->size()I

    move-result v28

    if-lez v28, :cond_16

    .line 4370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 4371
    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;>;>;"
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_16

    .line 4372
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 4373
    .local v18, sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .line 4374
    .local v17, s:Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->reset()Z

    move-result v28

    if-eqz v28, :cond_15

    .line 4375
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_b

    .line 4377
    :cond_15
    const/4 v3, 0x1

    goto :goto_b

    .line 4381
    .end local v5           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;>;>;"
    .end local v17           #s:Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    .end local v18           #sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;>;"
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->size()I

    move-result v28

    if-lez v28, :cond_18

    .line 4382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 4383
    .local v7, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;>;>;"
    :goto_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_17

    .line 4384
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 4385
    .local v15, procEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->detach()V

    goto :goto_c

    .line 4387
    .end local v15           #procEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;>;"
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->clear()V

    .line 4389
    .end local v7           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;>;>;"
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseArray;->size()I

    move-result v28

    if-lez v28, :cond_1a

    .line 4390
    const/4 v4, 0x0

    :goto_d
    if-nez v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseArray;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v4, v0, :cond_1a

    .line 4391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/BatteryStats$Uid$Pid;

    .line 4392
    .local v12, pid:Landroid/os/BatteryStats$Uid$Pid;
    iget-wide v0, v12, Landroid/os/BatteryStats$Uid$Pid;->mWakeStart:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-eqz v28, :cond_19

    .line 4393
    const/4 v3, 0x1

    .line 4390
    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 4398
    .end local v12           #pid:Landroid/os/BatteryStats$Uid$Pid;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->size()I

    move-result v28

    if-lez v28, :cond_1d

    .line 4399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 4400
    .local v6, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;>;"
    :cond_1b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_1c

    .line 4401
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 4402
    .local v14, pkgEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .line 4403
    .local v10, p:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    invoke-virtual {v10}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->detach()V

    .line 4404
    iget-object v0, v10, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->size()I

    move-result v28

    if-lez v28, :cond_1b

    .line 4405
    iget-object v0, v10, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 4407
    .local v9, it2:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;>;"
    :goto_e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_1b

    .line 4408
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    .line 4409
    .local v20, servEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->detach()V

    goto :goto_e

    .line 4413
    .end local v9           #it2:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;>;"
    .end local v10           #p:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .end local v14           #pkgEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    .end local v20           #servEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;"
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->clear()V

    .line 4416
    .end local v6           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;>;"
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseArray;->clear()V

    .line 4418
    if-nez v3, :cond_28

    .line 4419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1e

    .line 4420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 4422
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1f

    .line 4423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 4425
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_20

    .line 4426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 4428
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_21

    .line 4429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 4431
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_22

    .line 4432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 4434
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_23

    .line 4435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 4438
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_24

    .line 4439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->detach()V

    .line 4443
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_25

    .line 4444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 4446
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_27

    .line 4447
    const/4 v4, 0x0

    :goto_f
    const/16 v28, 0x5

    move/from16 v0, v28

    if-ge v4, v0, :cond_27

    .line 4448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    aget-object v28, v28, v4

    if-eqz v28, :cond_26

    .line 4449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    aget-object v28, v28, v4

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 4447
    :cond_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 4455
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v28, v0

    if-eqz v28, :cond_28

    .line 4456
    const/4 v4, 0x0

    :goto_10
    const/16 v28, 0x7

    move/from16 v0, v28

    if-ge v4, v0, :cond_28

    .line 4457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v28, v0

    aget-object v28, v28, v4

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->detach()V

    .line 4456
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 4476
    :cond_28
    if-nez v3, :cond_29

    const/16 v28, 0x1

    :goto_11
    return v28

    :cond_29
    const/16 v28, 0x0

    goto :goto_11
.end method

.method writeToParcelLocked(Landroid/os/Parcel;J)V
    .locals 12
    .parameter "out"
    .parameter "batteryRealtime"

    .prologue
    .line 4487
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4488
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 4489
    .local v9, wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4490
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 4491
    .local v8, wakelock:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    invoke-virtual {v8, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->writeToParcelLocked(Landroid/os/Parcel;J)V

    goto :goto_0

    .line 4494
    .end local v8           #wakelock:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    .end local v9           #wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    :cond_0
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4495
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 4496
    .local v7, sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4497
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .line 4498
    .local v6, sensor:Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    invoke-virtual {v6, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->writeToParcelLocked(Landroid/os/Parcel;J)V

    goto :goto_1

    .line 4501
    .end local v6           #sensor:Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    .end local v7           #sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;>;"
    :cond_1
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4502
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 4503
    .local v5, procEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4504
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 4505
    .local v4, proc:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    invoke-virtual {v4, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->writeToParcelLocked(Landroid/os/Parcel;)V

    goto :goto_2

    .line 4508
    .end local v4           #proc:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v5           #procEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;>;"
    :cond_2
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4509
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4510
    .local v3, pkgEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4511
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .line 4512
    .local v2, pkg:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    invoke-virtual {v2, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->writeToParcelLocked(Landroid/os/Parcel;)V

    goto :goto_3

    .line 4515
    .end local v2           #pkg:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .end local v3           #pkgEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    :cond_3
    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLoadedTcpBytesReceived:J

    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 4516
    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLoadedTcpBytesSent:J

    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 4517
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->computeCurrentTcpBytesReceived()J

    move-result-wide v10

    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 4518
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->computeCurrentTcpBytesSent()J

    move-result-wide v10

    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 4519
    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mTcpBytesReceivedAtLastUnplug:J

    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 4520
    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mTcpBytesSentAtLastUnplug:J

    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 4521
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v10, :cond_4

    .line 4522
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4523
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v10, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 4527
    :goto_4
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v10, :cond_5

    .line 4528
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4529
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v10, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 4533
    :goto_5
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v10, :cond_6

    .line 4534
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4535
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v10, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 4539
    :goto_6
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v10, :cond_7

    .line 4540
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4541
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v10, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 4545
    :goto_7
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v10, :cond_8

    .line 4546
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4547
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v10, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 4551
    :goto_8
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v10, :cond_9

    .line 4552
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4553
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v10, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 4558
    :goto_9
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    if-eqz v10, :cond_a

    .line 4559
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4560
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    invoke-virtual {v10, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 4566
    :goto_a
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v10, :cond_b

    .line 4567
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4568
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v10, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 4572
    :goto_b
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v10, :cond_c

    .line 4573
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4574
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    const/4 v10, 0x5

    if-ge v0, v10, :cond_d

    .line 4575
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v10, v10, v0

    invoke-virtual {v10, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 4574
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 4525
    .end local v0           #i:I
    :cond_4
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 4531
    :cond_5
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 4537
    :cond_6
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 4543
    :cond_7
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 4549
    :cond_8
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 4555
    :cond_9
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 4562
    :cond_a
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 4570
    :cond_b
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 4578
    :cond_c
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4582
    :cond_d
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-eqz v10, :cond_e

    .line 4583
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4584
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_d
    const/4 v10, 0x7

    if-ge v0, v10, :cond_f

    .line 4585
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v10, v10, v0

    invoke-virtual {v10, p1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeToParcel(Landroid/os/Parcel;)V

    .line 4584
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 4588
    .end local v0           #i:I
    :cond_e
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4596
    :cond_f
    return-void
.end method
