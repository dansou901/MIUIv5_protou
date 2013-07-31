.class Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;
.super Ljava/lang/Object;
.source "HtcDeviceInfoManager.java"

# interfaces
.implements Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcDeviceInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HtcCommonInfoScheduler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler$DeviceInfoManagerHandler;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field protected final mHandler:Landroid/os/Handler;

.field protected final mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

.field protected final mPowerManager:Landroid/os/PowerManager;

.field protected final mReceiverHandler:Landroid/os/Handler;

.field private final mReceiverThread:Landroid/os/HandlerThread;

.field private final mThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 506
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 507
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "HtcCommonInfoScheduler"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mThread:Landroid/os/HandlerThread;

    .line 508
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 509
    new-instance v2, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler$DeviceInfoManagerHandler;

    iget-object v3, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler$DeviceInfoManagerHandler;-><init>(Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    .line 511
    iput-object p1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mContext:Landroid/content/Context;

    .line 512
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "HtcDeviceinfoManagerReceiverThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mReceiverThread:Landroid/os/HandlerThread;

    .line 513
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mReceiverThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 514
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mReceiverThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mReceiverHandler:Landroid/os/Handler;

    .line 517
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 518
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 519
    .local v1, service:Landroid/os/IPowerManager;
    new-instance v2, Landroid/os/PowerManager;

    iget-object v3, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v1, v3}, Landroid/os/PowerManager;-><init>(Landroid/os/IPowerManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mPowerManager:Landroid/os/PowerManager;

    .line 521
    invoke-virtual {p0, p1}, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->createInfoOperators(Landroid/content/Context;)[Lcom/htc/server/HtcInfoOperator;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .line 523
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 524
    return-void
.end method


# virtual methods
.method public addANR(Ljava/lang/String;)V
    .locals 3
    .parameter "processName"

    .prologue
    .line 610
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 611
    return-void
.end method

.method public addCrash(Ljava/lang/String;)V
    .locals 3
    .parameter "processName"

    .prologue
    .line 606
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 607
    return-void
.end method

.method public addSysCrash()V
    .locals 3

    .prologue
    .line 614
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 615
    return-void
.end method

.method public appDied(I)V
    .locals 4
    .parameter "pid"

    .prologue
    .line 552
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 553
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 554
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "pid"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 555
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 556
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 557
    return-void
.end method

.method protected createInfoOperators(Landroid/content/Context;)[Lcom/htc/server/HtcInfoOperator;
    .locals 3
    .parameter "context"

    .prologue
    .line 528
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/htc/server/HtcInfoOperator;

    const/4 v1, 0x0

    new-instance v2, Lcom/htc/server/HtcReleaseInfoOperator;

    invoke-direct {v2}, Lcom/htc/server/HtcReleaseInfoOperator;-><init>()V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public flush()V
    .locals 3

    .prologue
    .line 585
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 586
    return-void
.end method

.method public killAllProcess()V
    .locals 3

    .prologue
    .line 602
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 603
    return-void
.end method

.method public killProcess(Ljava/lang/String;)V
    .locals 3
    .parameter "processName"

    .prologue
    .line 598
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 599
    return-void
.end method

.method protected onHandleMessage(Landroid/os/Message;)V
    .locals 16
    .parameter "msg"

    .prologue
    .line 626
    const/4 v4, 0x0

    .line 627
    .local v4, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    packed-switch v12, :pswitch_data_0

    .line 831
    :pswitch_0
    invoke-virtual/range {p0 .. p1}, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->onHandleMessage(Landroid/os/Message;)V

    .line 836
    :cond_0
    :goto_0
    return-void

    .line 630
    :pswitch_1
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$000()Z

    move-result v12

    if-eqz v12, :cond_1

    const-string v12, "HtcDeviceInfoManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "FLUSH, Sense: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$400()D

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mPowerManager:Landroid/os/PowerManager;

    const/4 v13, 0x1

    const-string v14, "HtcUBFlushWakeLock"

    invoke-virtual {v12, v13, v14}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v11

    .line 633
    .local v11, wl:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 635
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .local v2, arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v6, v2

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v6, :cond_2

    aget-object v7, v2, v3

    .line 636
    .local v7, op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v7}, Lcom/htc/server/HtcInfoOperator;->flush()V

    .line 635
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 637
    .end local v7           #op:Lcom/htc/server/HtcInfoOperator;
    :cond_2
    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 643
    .end local v2           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v11           #wl:Landroid/os/PowerManager$WakeLock;
    :pswitch_2
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getInstance()Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->setLastTimeOfUseTimeLogOutput(J)V

    .line 644
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mContext:Landroid/content/Context;

    const-string v13, "com.htc.USE_TIME_FLUSH"

    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->access$500()J

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->setupPendingIntent(Landroid/content/Context;Ljava/lang/String;J)V

    .line 646
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mPowerManager:Landroid/os/PowerManager;

    const/4 v13, 0x1

    const-string v14, "HtcUBFlushWakeLock"

    invoke-virtual {v12, v13, v14}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v11

    .line 648
    .restart local v11       #wl:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 649
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v2       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v6, v2

    .restart local v6       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_2
    if-ge v3, v6, :cond_3

    aget-object v7, v2, v3

    .line 650
    .restart local v7       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v7}, Lcom/htc/server/HtcInfoOperator;->flushUsageTime()V

    .line 649
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 651
    .end local v7           #op:Lcom/htc/server/HtcInfoOperator;
    :cond_3
    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 657
    .end local v2           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v11           #wl:Landroid/os/PowerManager$WakeLock;
    :pswitch_3
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getInstance()Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->setLastTimeOfClientStatLogOutput(J)V

    .line 658
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mContext:Landroid/content/Context;

    const-string v13, "com.htc.CLIENT_INFO_FLUSH"

    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->access$600()J

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->setupPendingIntent(Landroid/content/Context;Ljava/lang/String;J)V

    .line 660
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mPowerManager:Landroid/os/PowerManager;

    const/4 v13, 0x1

    const-string v14, "HtcUBFlushWakeLock"

    invoke-virtual {v12, v13, v14}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v11

    .line 662
    .restart local v11       #wl:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v2       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v6, v2

    .restart local v6       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_3
    if-ge v3, v6, :cond_4

    aget-object v7, v2, v3

    .line 664
    .restart local v7       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v7}, Lcom/htc/server/HtcInfoOperator;->flushClientStatistic()V

    .line 663
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 665
    .end local v7           #op:Lcom/htc/server/HtcInfoOperator;
    :cond_4
    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 670
    .end local v2           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v11           #wl:Landroid/os/PowerManager$WakeLock;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 671
    .local v9, processName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v2       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v6, v2

    .restart local v6       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_4
    if-ge v3, v6, :cond_5

    aget-object v7, v2, v3

    .line 672
    .restart local v7       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v7, v9}, Lcom/htc/server/HtcInfoOperator;->update(Ljava/lang/String;)V

    .line 671
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 673
    .end local v7           #op:Lcom/htc/server/HtcInfoOperator;
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-nez v12, :cond_0

    .line 674
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x3

    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->access$700()J

    move-result-wide v14

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 679
    .end local v2           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v9           #processName:Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 680
    .restart local v9       #processName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v2       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v6, v2

    .restart local v6       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_5
    if-ge v3, v6, :cond_0

    aget-object v7, v2, v3

    .line 681
    .restart local v7       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v7, v9}, Lcom/htc/server/HtcInfoOperator;->setTop(Ljava/lang/String;)V

    .line 680
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 686
    .end local v2           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v7           #op:Lcom/htc/server/HtcInfoOperator;
    .end local v9           #processName:Ljava/lang/String;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 687
    .restart local v9       #processName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v2       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v6, v2

    .restart local v6       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_6
    if-ge v3, v6, :cond_0

    aget-object v7, v2, v3

    .line 688
    .restart local v7       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v7, v9}, Lcom/htc/server/HtcInfoOperator;->addCrash(Ljava/lang/String;)V

    .line 687
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 693
    .end local v2           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v7           #op:Lcom/htc/server/HtcInfoOperator;
    .end local v9           #processName:Ljava/lang/String;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 694
    .restart local v9       #processName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v2       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v6, v2

    .restart local v6       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_7
    if-ge v3, v6, :cond_0

    aget-object v7, v2, v3

    .line 695
    .restart local v7       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v7, v9}, Lcom/htc/server/HtcInfoOperator;->addANR(Ljava/lang/String;)V

    .line 694
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 700
    .end local v2           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v7           #op:Lcom/htc/server/HtcInfoOperator;
    .end local v9           #processName:Ljava/lang/String;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v2       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v6, v2

    .restart local v6       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_8
    if-ge v3, v6, :cond_0

    aget-object v7, v2, v3

    .line 701
    .restart local v7       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v7}, Lcom/htc/server/HtcInfoOperator;->addSystemCrash()V

    .line 700
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 706
    .end local v2           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v7           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v2       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v6, v2

    .restart local v6       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_9
    if-ge v3, v6, :cond_0

    aget-object v7, v2, v3

    .line 707
    .restart local v7       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v7}, Lcom/htc/server/HtcInfoOperator;->addKernelCrash()V

    .line 706
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 712
    .end local v2           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v7           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v2       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v6, v2

    .restart local v6       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_a
    if-ge v3, v6, :cond_0

    aget-object v7, v2, v3

    .line 713
    .restart local v7       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v7}, Lcom/htc/server/HtcInfoOperator;->addRadioCrash()V

    .line 712
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 718
    .end local v2           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v7           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 719
    .restart local v9       #processName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v2       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v6, v2

    .restart local v6       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_b
    if-ge v3, v6, :cond_0

    aget-object v7, v2, v3

    .line 720
    .restart local v7       #op:Lcom/htc/server/HtcInfoOperator;
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v7, v12, v13, v9}, Lcom/htc/server/HtcInfoOperator;->startProc(IILjava/lang/String;)V

    .line 719
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 725
    .end local v2           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v7           #op:Lcom/htc/server/HtcInfoOperator;
    .end local v9           #processName:Ljava/lang/String;
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 726
    .restart local v9       #processName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v2       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v6, v2

    .restart local v6       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_c
    if-ge v3, v6, :cond_0

    aget-object v7, v2, v3

    .line 727
    .restart local v7       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v7, v9}, Lcom/htc/server/HtcInfoOperator;->killProc(Ljava/lang/String;)V

    .line 726
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 732
    .end local v2           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v7           #op:Lcom/htc/server/HtcInfoOperator;
    .end local v9           #processName:Ljava/lang/String;
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v2       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v6, v2

    .restart local v6       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_d
    if-ge v3, v6, :cond_0

    aget-object v7, v2, v3

    .line 733
    .restart local v7       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v7}, Lcom/htc/server/HtcInfoOperator;->killAllProc()V

    .line 732
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 738
    .end local v2           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v7           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v2       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v6, v2

    .restart local v6       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_e
    if-ge v3, v6, :cond_0

    aget-object v7, v2, v3

    .line 739
    .restart local v7       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v7}, Lcom/htc/server/HtcInfoOperator;->reset()V

    .line 738
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 744
    .end local v2           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v7           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_f
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$000()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 745
    const-string v12, "HtcDeviceInfoManager"

    const-string v13, "STOP "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mReceiverHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mReceiverThread:Landroid/os/HandlerThread;

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 748
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 749
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 750
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 751
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 752
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x6

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 753
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x7

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 754
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 755
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v13, 0x9

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 756
    monitor-enter p0

    .line 757
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 758
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v12

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 763
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v2       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v6, v2

    .restart local v6       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_f
    if-ge v3, v6, :cond_0

    aget-object v7, v2, v3

    .line 764
    .restart local v7       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v7}, Lcom/htc/server/HtcInfoOperator;->screenOn()V

    .line 763
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 769
    .end local v2           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v7           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v2       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v6, v2

    .restart local v6       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_10
    if-ge v3, v6, :cond_0

    aget-object v7, v2, v3

    .line 770
    .restart local v7       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v7}, Lcom/htc/server/HtcInfoOperator;->screenOff()V

    .line 769
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 775
    .end local v2           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v7           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v2       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v6, v2

    .restart local v6       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_11
    if-ge v3, v6, :cond_0

    aget-object v7, v2, v3

    .line 776
    .restart local v7       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/htc/server/HtcInfoOperator;->userActivity(Landroid/os/Bundle;)V

    .line 775
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 781
    .end local v2           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v7           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v2       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v6, v2

    .restart local v6       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_12
    if-ge v3, v6, :cond_0

    aget-object v7, v2, v3

    .line 782
    .restart local v7       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/htc/server/HtcInfoOperator;->appDied(Landroid/os/Bundle;)V

    .line 781
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 787
    .end local v2           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v7           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v2       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v6, v2

    .restart local v6       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_13
    if-ge v3, v6, :cond_0

    aget-object v7, v2, v3

    .line 788
    .restart local v7       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v7}, Lcom/htc/server/HtcInfoOperator;->startPhoneCall()V

    .line 787
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 793
    .end local v2           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v7           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v2       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v6, v2

    .restart local v6       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_14
    if-ge v3, v6, :cond_0

    aget-object v7, v2, v3

    .line 794
    .restart local v7       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v7}, Lcom/htc/server/HtcInfoOperator;->stopPhoneCall()V

    .line 793
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 799
    .end local v2           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v7           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_16
    const/4 v5, 0x0

    .line 800
    .local v5, intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v12, v12, Landroid/content/Intent;

    if-eqz v12, :cond_7

    .line 801
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v5           #intent:Landroid/content/Intent;
    check-cast v5, Landroid/content/Intent;

    .line 802
    .restart local v5       #intent:Landroid/content/Intent;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v2       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v6, v2

    .restart local v6       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_15
    if-ge v3, v6, :cond_0

    aget-object v7, v2, v3

    .line 803
    .restart local v7       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v7, v5}, Lcom/htc/server/HtcInfoOperator;->addSentErrorCount(Landroid/content/Intent;)V

    .line 802
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 809
    .end local v2           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v3           #i$:I
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #len$:I
    .end local v7           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_17
    const/4 v5, 0x0

    .line 810
    .restart local v5       #intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v12, :cond_8

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v12, v12, Landroid/content/Intent;

    if-eqz v12, :cond_8

    .line 811
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v5           #intent:Landroid/content/Intent;
    check-cast v5, Landroid/content/Intent;

    .line 814
    .restart local v5       #intent:Landroid/content/Intent;
    :cond_8
    const-string v12, "type"

    const/4 v13, -0x1

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 815
    .local v10, type:I
    const-string v12, "act"

    const/4 v13, -0x1

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 816
    .local v1, act:I
    const-string v12, "pid"

    const/4 v13, -0x1

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 818
    .local v8, pid:I
    const-string v12, "HtcDeviceInfoManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "act ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " pid ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " type="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v2       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v6, v2

    .restart local v6       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_16
    if-ge v3, v6, :cond_0

    aget-object v7, v2, v3

    .line 820
    .restart local v7       #op:Lcom/htc/server/HtcInfoOperator;
    const/4 v12, 0x1

    if-ne v1, v12, :cond_9

    .line 821
    invoke-virtual {v7}, Lcom/htc/server/HtcInfoOperator;->getVoiceAppUsage()Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;

    move-result-object v12

    invoke-virtual {v12, v8, v10}, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->start(II)V

    .line 819
    :goto_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 824
    :cond_9
    invoke-virtual {v7}, Lcom/htc/server/HtcInfoOperator;->getVoiceAppUsage()Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;

    move-result-object v12

    invoke-virtual {v12, v8, v10}, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->stop(II)V

    goto :goto_17

    .line 627
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_17
    .end packed-switch
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 575
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 576
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 577
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->access$100()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 578
    return-void
.end method

.method public setNewTopApp(Ljava/lang/String;)V
    .locals 3
    .parameter "topProcessName"

    .prologue
    .line 589
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 590
    return-void
.end method

.method public setup(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 533
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$400()D

    move-result-wide v0

    const-wide/high16 v2, 0x4010

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mReceiverHandler:Landroid/os/Handler;

    invoke-static {p1, v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->registerClientStatsReceiver(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 535
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-static {p1, v0}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->registerPhoneReceiver(Landroid/content/Context;Landroid/os/Handler;)V

    .line 536
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mReceiverHandler:Landroid/os/Handler;

    invoke-static {p1, v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->registerMediaReceiver(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 537
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mReceiverHandler:Landroid/os/Handler;

    invoke-static {p1, v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->registerSystemErrorReceiver(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 538
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    invoke-static {p1, v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->registerContentReceiver(Landroid/content/Context;Landroid/os/Handler;[Lcom/htc/server/HtcInfoOperator;)V

    .line 539
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mReceiverHandler:Landroid/os/Handler;

    invoke-static {p1, v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->registerErrorInfoReceiver(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 541
    :cond_0
    return-void
.end method

.method public startProcess(Ljava/lang/String;II)V
    .locals 3
    .parameter "processName"
    .parameter "pid"
    .parameter "group"

    .prologue
    .line 593
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 594
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 595
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 564
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 565
    monitor-enter p0

    .line 567
    const-wide/16 v1, 0x1388

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 572
    return-void

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "HtcDeviceInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 571
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public synchronizedFlush()V
    .locals 0

    .prologue
    .line 561
    return-void
.end method

.method public update(Ljava/lang/String;)V
    .locals 3
    .parameter "processName"

    .prologue
    .line 581
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 582
    return-void
.end method

.method public userActivity(J)V
    .locals 4
    .parameter "time"

    .prologue
    .line 544
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 545
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 546
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "time"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 547
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 548
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 549
    return-void
.end method
