.class public Lcom/android/server/Watchdog;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/Watchdog$Monitor;,
        Lcom/android/server/Watchdog$RebootRequestReceiver;,
        Lcom/android/server/Watchdog$RebootReceiver;,
        Lcom/android/server/Watchdog$HeartbeatHandler;
    }
.end annotation


# static fields
.field private static final CB:I = 0x1

.field static final DB:Z = false

.field private static final ENG:I = 0x0

.field static final MEMCHECK_DEFAULT_MIN_ALARM:I = 0xb4

.field static final MEMCHECK_DEFAULT_MIN_SCREEN_OFF:I = 0x12c

.field static final MEMCHECK_DEFAULT_RECHECK_INTERVAL:I = 0x12c

.field static final MONITOR:I = 0xa9e

.field static final NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String; = null

.field private static final RC:I = 0x2

.field static final REBOOT_ACTION:Ljava/lang/String; = "com.android.service.Watchdog.REBOOT"

.field static final REBOOT_DEFAULT_INTERVAL:I = 0x0

.field static final REBOOT_DEFAULT_START_TIME:I = 0x2a30

.field static final REBOOT_DEFAULT_WINDOW:I = 0xe10

.field static final RECORD_KERNEL_THREADS:Z = true

.field static final TAG:Ljava/lang/String; = "Watchdog"

.field static final TIME_TO_RESTART:I

.field static final TIME_TO_WAIT:I

.field static final localLOGV:Z

.field static sWatchdog:Lcom/android/server/Watchdog;


# instance fields
.field mActivity:Lcom/android/server/am/ActivityManagerService;

.field mAlarm:Lcom/android/server/AlarmManagerService;

.field mBattery:Lcom/android/server/BatteryService;

.field mBootTime:J

.field final mCalendar:Ljava/util/Calendar;

.field mCheckupIntent:Landroid/app/PendingIntent;

.field mCompleted:Z

.field mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

.field mForceKillSystem:Z

.field final mHandler:Landroid/os/Handler;

.field mMinAlarm:I

.field mMinScreenOff:I

.field final mMonitors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$Monitor;",
            ">;"
        }
    .end annotation
.end field

.field mNeedScheduledCheck:Z

.field mPhonePid:I

.field mPower:Lcom/android/server/PowerManagerService;

.field mRebootIntent:Landroid/app/PendingIntent;

.field mRebootInterval:I

.field mReqMinNextAlarm:I

.field mReqMinScreenOff:I

.field mReqRebootInterval:I

.field mReqRebootNoWait:Z

.field mReqRebootStartTime:I

.field mReqRebootWindow:I

.field mReqRecheckInterval:I

.field mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    invoke-static {}, Lcom/android/server/Watchdog;->getTimeToResatrt()I

    move-result v0

    sput v0, Lcom/android/server/Watchdog;->TIME_TO_RESTART:I

    .line 66
    sget v0, Lcom/android/server/Watchdog;->TIME_TO_RESTART:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/server/Watchdog;->TIME_TO_WAIT:I

    .line 78
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/system/bin/mediaserver"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/system/bin/sdcard"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/system/bin/surfaceflinger"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 192
    const-string v0, "watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mMonitors:Ljava/util/ArrayList;

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mCalendar:Ljava/util/Calendar;

    .line 101
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/server/Watchdog;->mMinScreenOff:I

    .line 102
    const/16 v0, 0xb4

    iput v0, p0, Lcom/android/server/Watchdog;->mMinAlarm:I

    .line 111
    iput v1, p0, Lcom/android/server/Watchdog;->mReqRebootInterval:I

    .line 112
    iput v1, p0, Lcom/android/server/Watchdog;->mReqRebootStartTime:I

    .line 113
    iput v1, p0, Lcom/android/server/Watchdog;->mReqRebootWindow:I

    .line 114
    iput v1, p0, Lcom/android/server/Watchdog;->mReqMinScreenOff:I

    .line 115
    iput v1, p0, Lcom/android/server/Watchdog;->mReqMinNextAlarm:I

    .line 116
    iput v1, p0, Lcom/android/server/Watchdog;->mReqRecheckInterval:I

    .line 193
    new-instance v0, Lcom/android/server/Watchdog$HeartbeatHandler;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$HeartbeatHandler;-><init>(Lcom/android/server/Watchdog;)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mHandler:Landroid/os/Handler;

    .line 194
    return-void
.end method

.method static computeCalendarTime(Ljava/util/Calendar;JJ)J
    .locals 6
    .parameter "c"
    .parameter "curTime"
    .parameter "secondsSinceMidnight"

    .prologue
    .line 375
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 377
    long-to-int v3, p3

    div-int/lit16 v2, v3, 0xe10

    .line 378
    .local v2, val:I
    const/16 v3, 0xb

    invoke-virtual {p0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 379
    mul-int/lit16 v3, v2, 0xe10

    int-to-long v3, v3

    sub-long/2addr p3, v3

    .line 380
    long-to-int v3, p3

    div-int/lit8 v2, v3, 0x3c

    .line 381
    const/16 v3, 0xc

    invoke-virtual {p0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 382
    const/16 v3, 0xd

    long-to-int v4, p3

    mul-int/lit8 v5, v2, 0x3c

    sub-int/2addr v4, v5

    invoke-virtual {p0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 383
    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 385
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 386
    .local v0, newTime:J
    cmp-long v3, v0, p1

    if-gez v3, :cond_0

    .line 389
    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 390
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 393
    :cond_0
    return-wide v0
.end method

.method private dumpKernelStackTraces()Ljava/io/File;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 527
    const-string v2, "dalvik.vm.stack-trace-file"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, tracesPath:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 533
    :cond_0
    :goto_0
    return-object v1

    .line 532
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/Watchdog;->native_dumpKernelStacks(Ljava/lang/String;)V

    .line 533
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/server/Watchdog;
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Lcom/android/server/Watchdog;

    invoke-direct {v0}, Lcom/android/server/Watchdog;-><init>()V

    sput-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    .line 188
    :cond_0
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    return-object v0
.end method

.method private static getTimeToResatrt()I
    .locals 10

    .prologue
    .line 543
    const/16 v4, 0x3a98

    .line 544
    .local v4, result:I
    const/4 v2, -0x1

    .line 545
    .local v2, modeValue:I
    const-string v1, "DB"

    .line 546
    .local v1, mode:Ljava/lang/String;
    const/high16 v5, -0x4080

    .line 549
    .local v5, senseVersion:F
    :try_start_0
    sget-object v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 554
    :goto_0
    float-to-double v6, v5

    const-wide/high16 v8, 0x4014

    cmpg-double v6, v6, v8

    if-gez v6, :cond_2

    .line 555
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sense_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 556
    const-string v6, "release-keys"

    sget-object v7, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 557
    const/4 v2, 0x1

    .line 558
    const v4, 0x1d4c0

    .line 584
    :goto_1
    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v6, :cond_0

    .line 585
    const-string v6, "Watchdog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", time:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_0
    return v4

    .line 550
    :catch_0
    move-exception v3

    .line 551
    .local v3, nfe:Ljava/lang/NumberFormatException;
    const-string v6, "Watchdog"

    const-string v7, "Can not get sense version"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 560
    .end local v3           #nfe:Ljava/lang/NumberFormatException;
    :cond_1
    const/4 v2, 0x0

    .line 561
    const v4, 0xea60

    goto :goto_1

    .line 564
    :cond_2
    const-string v6, "htc.build.stage"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 566
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 570
    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 573
    const v4, 0xea60

    .line 574
    goto :goto_1

    .line 567
    :catch_1
    move-exception v0

    .line 568
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    goto :goto_2

    .line 577
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :pswitch_0
    const v4, 0x1d4c0

    goto :goto_1

    .line 570
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private native native_dumpKernelStacks(Ljava/lang/String;)V
.end method


# virtual methods
.method public addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    .locals 2
    .parameter "monitor"

    .prologue
    .line 226
    monitor-enter p0

    .line 227
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Monitors can\'t be added while the Watchdog is running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 230
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/Watchdog;->mMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    return-void
.end method

.method checkReboot(Z)V
    .locals 21
    .parameter "fromAlarm"

    .prologue
    .line 235
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRebootInterval:I

    move/from16 v17, v0

    if-ltz v17, :cond_0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/Watchdog;->mReqRebootInterval:I

    .line 239
    .local v8, rebootInterval:I
    :goto_0
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/server/Watchdog;->mRebootInterval:I

    .line 240
    if-gtz v8, :cond_1

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mRebootIntent:Landroid/app/PendingIntent;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 317
    :goto_1
    return-void

    .line 235
    .end local v8           #rebootInterval:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    const-string v18, "reboot_interval"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    goto :goto_0

    .line 247
    .restart local v8       #rebootInterval:I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRebootStartTime:I

    move/from16 v17, v0

    if-ltz v17, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRebootStartTime:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v11, v0

    .line 251
    .local v11, rebootStartTime:J
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRebootWindow:I

    move/from16 v17, v0

    if-ltz v17, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRebootWindow:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    :goto_3
    const-wide/16 v19, 0x3e8

    mul-long v13, v17, v19

    .line 255
    .local v13, rebootWindowMillis:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRecheckInterval:I

    move/from16 v17, v0

    if-ltz v17, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRecheckInterval:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    :goto_4
    const-wide/16 v19, 0x3e8

    mul-long v15, v17, v19

    .line 260
    .local v15, recheckInterval:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/Watchdog;->retrieveBrutalityAmount()V

    .line 265
    monitor-enter p0

    .line 266
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 267
    .local v4, now:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v4, v5, v11, v12}, Lcom/android/server/Watchdog;->computeCalendarTime(Ljava/util/Calendar;JJ)J

    move-result-wide v6

    .line 270
    .local v6, realStartTime:J
    mul-int/lit8 v17, v8, 0x18

    mul-int/lit8 v17, v17, 0x3c

    mul-int/lit8 v17, v17, 0x3c

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v9, v0

    .line 271
    .local v9, rebootIntervalMillis:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/Watchdog;->mReqRebootNoWait:Z

    move/from16 v17, v0

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/Watchdog;->mBootTime:J

    move-wide/from16 v17, v0

    sub-long v17, v4, v17

    sub-long v19, v9, v13

    cmp-long v17, v17, v19

    if-ltz v17, :cond_7

    .line 273
    :cond_2
    if-eqz p1, :cond_6

    const-wide/16 v17, 0x0

    cmp-long v17, v13, v17

    if-gtz v17, :cond_6

    .line 275
    const/16 v17, 0xaf8

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    long-to-int v0, v9

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    long-to-int v0, v11

    move/from16 v20, v0

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3

    long-to-int v0, v13

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x4

    const-string v20, ""

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 278
    const-string v17, "Checkin scheduled forced"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->rebootSystem(Ljava/lang/String;)V

    .line 279
    monitor-exit p0

    goto/16 :goto_1

    .line 311
    .end local v4           #now:J
    .end local v6           #realStartTime:J
    .end local v9           #rebootIntervalMillis:J
    :catchall_0
    move-exception v17

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    .line 247
    .end local v11           #rebootStartTime:J
    .end local v13           #rebootWindowMillis:J
    .end local v15           #recheckInterval:J
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    const-string v18, "reboot_start_time"

    const-wide/16 v19, 0x2a30

    invoke-static/range {v17 .. v20}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v11

    goto/16 :goto_2

    .line 251
    .restart local v11       #rebootStartTime:J
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    const-string v18, "reboot_window"

    const-wide/16 v19, 0xe10

    invoke-static/range {v17 .. v20}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v17

    goto/16 :goto_3

    .line 255
    .restart local v13       #rebootWindowMillis:J
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    const-string v18, "memcheck_recheck_interval"

    const-wide/16 v19, 0x12c

    invoke-static/range {v17 .. v20}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v17

    goto/16 :goto_4

    .line 283
    .restart local v4       #now:J
    .restart local v6       #realStartTime:J
    .restart local v9       #rebootIntervalMillis:J
    .restart local v15       #recheckInterval:J
    :cond_6
    cmp-long v17, v4, v6

    if-gez v17, :cond_8

    .line 285
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v4, v5, v11, v12}, Lcom/android/server/Watchdog;->computeCalendarTime(Ljava/util/Calendar;JJ)J

    move-result-wide v6

    .line 311
    :cond_7
    :goto_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mRebootIntent:Landroid/app/PendingIntent;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mRebootIntent:Landroid/app/PendingIntent;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v6, v7, v2}, Lcom/android/server/AlarmManagerService;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 287
    :cond_8
    add-long v17, v6, v13

    cmp-long v17, v4, v17

    if-gez v17, :cond_c

    .line 288
    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/server/Watchdog;->shouldWeBeBrutalLocked(J)Ljava/lang/String;

    move-result-object v3

    .line 289
    .local v3, doit:Ljava/lang/String;
    const/16 v18, 0xaf8

    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v17, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v19, v17

    const/16 v17, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v19, v17

    const/16 v17, 0x2

    long-to-int v0, v11

    move/from16 v20, v0

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v19, v17

    const/16 v17, 0x3

    long-to-int v0, v13

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v19, v17

    const/16 v20, 0x4

    if-eqz v3, :cond_9

    move-object/from16 v17, v3

    :goto_6
    aput-object v17, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 292
    if-nez v3, :cond_a

    .line 293
    const-string v17, "Checked scheduled range"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->rebootSystem(Ljava/lang/String;)V

    .line 294
    monitor-exit p0

    goto/16 :goto_1

    .line 289
    :cond_9
    const-string v17, ""

    goto :goto_6

    .line 299
    :cond_a
    add-long v17, v4, v15

    add-long v19, v6, v13

    cmp-long v17, v17, v19

    if-ltz v17, :cond_b

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v17, v0

    add-long v18, v4, v9

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2, v11, v12}, Lcom/android/server/Watchdog;->computeCalendarTime(Ljava/util/Calendar;JJ)J

    move-result-wide v6

    goto/16 :goto_5

    .line 303
    :cond_b
    add-long v6, v4, v15

    goto/16 :goto_5

    .line 307
    .end local v3           #doit:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v17, v0

    add-long v18, v4, v9

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2, v11, v12}, Lcom/android/server/Watchdog;->computeCalendarTime(Ljava/util/Calendar;JJ)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v6

    goto/16 :goto_5
.end method

.method public init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V
    .locals 4
    .parameter "context"
    .parameter "battery"
    .parameter "power"
    .parameter "alarm"
    .parameter "activity"

    .prologue
    const/4 v3, 0x0

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    .line 200
    iput-object p2, p0, Lcom/android/server/Watchdog;->mBattery:Lcom/android/server/BatteryService;

    .line 201
    iput-object p3, p0, Lcom/android/server/Watchdog;->mPower:Lcom/android/server/PowerManagerService;

    .line 202
    iput-object p4, p0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    .line 203
    iput-object p5, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 205
    new-instance v0, Lcom/android/server/Watchdog$RebootReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$RebootReceiver;-><init>(Lcom/android/server/Watchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.service.Watchdog.REBOOT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 207
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.service.Watchdog.REBOOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mRebootIntent:Landroid/app/PendingIntent;

    .line 210
    new-instance v0, Lcom/android/server/Watchdog$RebootRequestReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$RebootRequestReceiver;-><init>(Lcom/android/server/Watchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.REBOOT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.REBOOT"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/Watchdog;->mBootTime:J

    .line 215
    return-void
.end method

.method public processStarted(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "pid"

    .prologue
    .line 218
    monitor-enter p0

    .line 219
    :try_start_0
    const-string v0, "com.android.phone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iput p2, p0, Lcom/android/server/Watchdog;->mPhonePid:I

    .line 222
    :cond_0
    monitor-exit p0

    .line 223
    return-void

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method rebootSystem(Ljava/lang/String;)V
    .locals 4
    .parameter "reason"

    .prologue
    .line 323
    const-string v1, "Watchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rebooting system because: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/PowerManagerService;

    .line 325
    .local v0, pms:Lcom/android/server/PowerManagerService;
    invoke-virtual {v0, p1}, Lcom/android/server/PowerManagerService;->reboot(Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method retrieveBrutalityAmount()V
    .locals 3

    .prologue
    .line 334
    iget v0, p0, Lcom/android/server/Watchdog;->mReqMinScreenOff:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/server/Watchdog;->mReqMinScreenOff:I

    :goto_0
    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/server/Watchdog;->mMinScreenOff:I

    .line 338
    iget v0, p0, Lcom/android/server/Watchdog;->mReqMinNextAlarm:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/server/Watchdog;->mReqMinNextAlarm:I

    :goto_1
    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/server/Watchdog;->mMinAlarm:I

    .line 342
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "memcheck_min_screen_off"

    const/16 v2, 0x12c

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "memcheck_min_alarm"

    const/16 v2, 0xb4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_1
.end method

.method public run()V
    .locals 14

    .prologue
    .line 398
    const/4 v9, 0x0

    .line 400
    .local v9, waitedHalf:Z
    :goto_0
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/Watchdog;->mCompleted:Z

    .line 401
    iget-object v10, p0, Lcom/android/server/Watchdog;->mHandler:Landroid/os/Handler;

    const/16 v11, 0xa9e

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 403
    monitor-enter p0

    .line 404
    :try_start_0
    sget v10, Lcom/android/server/Watchdog;->TIME_TO_WAIT:I

    int-to-long v7, v10

    .line 410
    .local v7, timeout:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 411
    .local v5, start:J
    :goto_1
    const-wide/16 v10, 0x0

    cmp-long v10, v7, v10

    if-lez v10, :cond_0

    iget-boolean v10, p0, Lcom/android/server/Watchdog;->mForceKillSystem:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_0

    .line 413
    :try_start_1
    invoke-virtual {p0, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 417
    :goto_2
    :try_start_2
    sget v10, Lcom/android/server/Watchdog;->TIME_TO_WAIT:I

    int-to-long v10, v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v5

    sub-long v7, v10, v12

    goto :goto_1

    .line 414
    :catch_0
    move-exception v1

    .line 415
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v10, "Watchdog"

    invoke-static {v10, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 444
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v5           #start:J
    .end local v7           #timeout:J
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .line 420
    .restart local v5       #start:J
    .restart local v7       #timeout:J
    :cond_0
    :try_start_3
    iget-boolean v10, p0, Lcom/android/server/Watchdog;->mCompleted:Z

    if-eqz v10, :cond_1

    iget-boolean v10, p0, Lcom/android/server/Watchdog;->mForceKillSystem:Z

    if-nez v10, :cond_1

    .line 422
    const/4 v9, 0x0

    .line 423
    monitor-exit p0

    goto :goto_0

    .line 426
    :cond_1
    if-nez v9, :cond_4

    .line 429
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 430
    .local v3, pids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget-object v13, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    invoke-static {v10, v3, v11, v12, v13}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessStats;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    .line 434
    sget-boolean v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v10, :cond_2

    .line 435
    const-string v10, "echo w > /proc/sysrq-trigger"

    invoke-static {v10}, Lcom/htc/profileflag/ProfileConfig;->runCommand(Ljava/lang/String;)Z

    .line 439
    :cond_2
    iget-object v10, p0, Lcom/android/server/Watchdog;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    if-nez v10, :cond_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->dumpServerThreadLooper()V

    .line 441
    :cond_3
    const/4 v9, 0x1

    .line 442
    monitor-exit p0

    goto :goto_0

    .line 444
    .end local v3           #pids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 450
    iget-object v10, p0, Lcom/android/server/Watchdog;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/server/Watchdog;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 452
    .local v2, name:Ljava/lang/String;
    :goto_3
    const/16 v10, 0xaf2

    invoke-static {v10, v2}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 454
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .restart local v3       #pids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    iget v10, p0, Lcom/android/server/Watchdog;->mPhonePid:I

    if-lez v10, :cond_5

    iget v10, p0, Lcom/android/server/Watchdog;->mPhonePid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    :cond_5
    if-nez v9, :cond_b

    const/4 v10, 0x1

    :goto_4
    const/4 v11, 0x0

    const/4 v12, 0x0

    sget-object v13, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    invoke-static {v10, v3, v11, v12, v13}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessStats;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 464
    .local v4, stack:Ljava/io/File;
    const-wide/16 v10, 0x7d0

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    .line 468
    invoke-direct {p0}, Lcom/android/server/Watchdog;->dumpKernelStackTraces()Ljava/io/File;

    .line 472
    const-string v10, "echo w > /proc/sysrq-trigger"

    invoke-static {v10}, Lcom/htc/profileflag/ProfileConfig;->runCommand(Ljava/lang/String;)Z

    .line 477
    new-instance v0, Lcom/android/server/Watchdog$1;

    const-string v10, "watchdogWriteToDropbox"

    invoke-direct {v0, p0, v10, v2, v4}, Lcom/android/server/Watchdog$1;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 484
    .local v0, dropboxThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 486
    const-wide/16 v10, 0x7d0

    :try_start_4
    invoke-virtual {v0, v10, v11}, Ljava/lang/Thread;->join(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 490
    :goto_5
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v10

    if-nez v10, :cond_d

    .line 492
    iget-object v10, p0, Lcom/android/server/Watchdog;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    if-nez v10, :cond_6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->dumpServerThreadLooper()V

    .line 494
    :cond_6
    const-string v10, "Watchdog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "*** WATCHDOG KILLING SYSTEM PROCESS: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileDebugHungDumpAllProcesses()Z

    move-result v10

    if-nez v10, :cond_7

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileDebugHungDumpSysNative()Z

    move-result v10

    if-nez v10, :cond_7

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileDebugHungDumpMediaNative()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 501
    :cond_7
    iget-object v10, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileDebugHungDumpAllProcesses()Z

    move-result v11

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileDebugHungDumpSysNative()Z

    move-result v12

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileDebugHungDumpMediaNative()Z

    move-result v13

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/server/am/ActivityManagerService;->DumpAllProcessStack(ZZZ)Z

    .line 507
    :cond_8
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileDebugHungDoBugreport()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 508
    iget-object v10, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/server/am/ActivityManagerService;->DoBugreport(Z)V

    .line 510
    :cond_9
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileDebugHungKeepAlive()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 511
    const-string v10, "Watchdog"

    const-string v11, "Keep the device life. Please Pass it to RD"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    return-void

    .line 450
    .end local v0           #dropboxThread:Ljava/lang/Thread;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #pids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4           #stack:Ljava/io/File;
    :cond_a
    const-string v2, "null"

    goto/16 :goto_3

    .line 459
    .restart local v2       #name:Ljava/lang/String;
    .restart local v3       #pids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 516
    .restart local v0       #dropboxThread:Ljava/lang/Thread;
    .restart local v4       #stack:Ljava/io/File;
    :cond_c
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-static {v10}, Landroid/os/Process;->killProcess(I)V

    .line 517
    const/16 v10, 0xa

    invoke-static {v10}, Ljava/lang/System;->exit(I)V

    .line 522
    :goto_6
    const/4 v9, 0x0

    .line 523
    goto/16 :goto_0

    .line 519
    :cond_d
    const-string v10, "Watchdog"

    const-string v11, "Debugger connected: Watchdog is *not* killing the system process"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 487
    :catch_1
    move-exception v10

    goto/16 :goto_5
.end method

.method shouldWeBeBrutalLocked(J)Ljava/lang/String;
    .locals 4
    .parameter "curTime"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/server/Watchdog;->mBattery:Lcom/android/server/BatteryService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/Watchdog;->mBattery:Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Lcom/android/server/BatteryService;->isPowered()Z

    move-result v0

    if-nez v0, :cond_1

    .line 355
    :cond_0
    const-string v0, "battery"

    .line 368
    :goto_0
    return-object v0

    .line 358
    :cond_1
    iget v0, p0, Lcom/android/server/Watchdog;->mMinScreenOff:I

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/Watchdog;->mPower:Lcom/android/server/PowerManagerService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/Watchdog;->mPower:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->timeSinceScreenOn()J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/Watchdog;->mMinScreenOff:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 360
    :cond_2
    const-string v0, "screen"

    goto :goto_0

    .line 363
    :cond_3
    iget v0, p0, Lcom/android/server/Watchdog;->mMinAlarm:I

    if-ltz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->timeToNextAlarm()J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/Watchdog;->mMinAlarm:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 365
    :cond_4
    const-string v0, "alarm"

    goto :goto_0

    .line 368
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method
