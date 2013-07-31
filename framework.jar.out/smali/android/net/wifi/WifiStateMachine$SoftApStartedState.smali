.class Landroid/net/wifi/WifiStateMachine$SoftApStartedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoftApStartedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 8416
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private getAssocCount(Ljava/lang/String;)I
    .locals 4
    .parameter "assoc"

    .prologue
    const/4 v1, 0x0

    .line 8703
    if-nez p1, :cond_1

    .line 8718
    :cond_0
    :goto_0
    return v1

    .line 8706
    :cond_1
    const-string/jumbo v3, "|"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 8707
    .local v2, index:I
    if-ltz v2, :cond_0

    .line 8710
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 8713
    .local v0, clientNumber:Ljava/lang/String;
    const/4 v1, 0x0

    .line 8715
    .local v1, count:I
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 8716
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 8419
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$2900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 8420
    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 8421
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 8724
    monitor-enter p0

    .line 8725
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPerfWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$17900(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8726
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPerfWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$17900(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 8727
    const-string v0, "WifiStateMachine"

    const-string v1, "2nd CPU lock released for disabling hotspot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8729
    :cond_0
    monitor-exit p0

    .line 8730
    return-void

    .line 8729
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 18
    .parameter "message"

    .prologue
    .line 8427
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$2900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 8428
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    sparse-switch v13, :sswitch_data_0

    .line 8694
    const/4 v13, 0x0

    .line 8696
    :goto_0
    return v13

    .line 8432
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v13

    const/16 v14, 0xd

    if-eq v13, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v13

    const/16 v14, 0xc

    if-eq v13, v14, :cond_0

    .line 8433
    const/4 v13, 0x0

    goto :goto_0

    .line 8437
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v14, "Stopping Soft AP"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$2900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 8438
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v14, 0xa

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$5000(Landroid/net/wifi/WifiStateMachine;I)V

    .line 8440
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->checkSleepPolicy()V
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$6700(Landroid/net/wifi/WifiStateMachine;)V

    .line 8443
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$4000()Z

    move-result v13

    if-nez v13, :cond_1

    .line 8444
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->stopTethering()V
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$23100(Landroid/net/wifi/WifiStateMachine;)V

    .line 8447
    :cond_1
    sget-short v13, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v14, 0x25

    if-eq v13, v14, :cond_2

    sget-short v13, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v14, 0x26

    if-ne v13, v14, :cond_3

    .line 8449
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->stopSoftapEventLoop()V

    .line 8455
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v14, 0x0

    #setter for: Landroid/net/wifi/WifiStateMachine;->mUser:I
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$6402(Landroid/net/wifi/WifiStateMachine;I)I

    .line 8456
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 8457
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.net.hotspot.ASSOCLIST"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 8460
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$2800(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$2700(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Landroid/os/INetworkManagementService;->stopAccessPoint(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8466
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_5

    .line 8467
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v14, 0xb

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$5000(Landroid/net/wifi/WifiStateMachine;I)V

    .line 8468
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6

    .line 8469
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverLoadedState:Lcom/android/internal/util/State;
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$4200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v14

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$23200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 8477
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mUloghotspotMaxUsers:I
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$6800(Landroid/net/wifi/WifiStateMachine;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mUlogHotspotDuration:J
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$6900(Landroid/net/wifi/WifiStateMachine;)J

    move-result-wide v13

    const-wide/16 v15, -0x1

    cmp-long v13, v13, v15

    if-eqz v13, :cond_7

    .line 8478
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v16, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mUlogHotspotStartTime:J
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiStateMachine;->access$7000(Landroid/net/wifi/WifiStateMachine;)J

    move-result-wide v16

    sub-long v14, v14, v16

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    #setter for: Landroid/net/wifi/WifiStateMachine;->mUlogHotspotDuration:J
    invoke-static {v13, v14, v15}, Landroid/net/wifi/WifiStateMachine;->access$6902(Landroid/net/wifi/WifiStateMachine;J)J

    .line 8480
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v10

    .line 8482
    .local v10, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v13, "WifiHotspot"

    invoke-virtual {v10, v13}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v13

    const-string/jumbo v14, "usage_time"

    invoke-interface {v13, v14}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v13

    const-string v14, "duration"

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mUlogHotspotDuration:J
    invoke-static {v15}, Landroid/net/wifi/WifiStateMachine;->access$6900(Landroid/net/wifi/WifiStateMachine;)J

    move-result-wide v15

    long-to-float v15, v15

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v13

    const-string/jumbo v14, "max_user"

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mUloghotspotMaxUsers:I
    invoke-static {v15}, Landroid/net/wifi/WifiStateMachine;->access$6800(Landroid/net/wifi/WifiStateMachine;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 8487
    invoke-static {v10}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 8489
    invoke-virtual {v10}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 8490
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v14, -0x1

    #setter for: Landroid/net/wifi/WifiStateMachine;->mUloghotspotMaxUsers:I
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$6802(Landroid/net/wifi/WifiStateMachine;I)I

    .line 8491
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-wide/16 v14, -0x1

    #setter for: Landroid/net/wifi/WifiStateMachine;->mUlogHotspotDuration:J
    invoke-static {v13, v14, v15}, Landroid/net/wifi/WifiStateMachine;->access$6902(Landroid/net/wifi/WifiStateMachine;J)J

    .line 8696
    .end local v10           #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    :cond_7
    :goto_2
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 8461
    :catch_0
    move-exception v3

    .line 8462
    .local v3, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v14, "Exception in stopAccessPoint()"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$2100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 8498
    .end local v3           #e:Ljava/lang/Exception;
    :sswitch_1
    const-string v13, "WifiStateMachine"

    const-string v14, "SoftAP set on a running access point"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8500
    const/4 v13, 0x0

    :try_start_1
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$23302(Z)Z

    .line 8501
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/net/wifi/WifiConfiguration;

    .line 8502
    .local v11, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    if-eqz v11, :cond_10

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v13

    if-eqz v13, :cond_10

    .line 8503
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->persistApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v13, v11}, Landroid/net/wifi/WifiStateMachine;->access$6200(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    .line 8504
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$23400()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_8

    .line 8505
    const-string v13, "WifiStateMachine"

    const-string v14, "NeedConfig AutoChannel"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8506
    const/4 v13, 0x1

    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$23302(Z)Z

    .line 8507
    const/4 v13, 0x0

    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$23402(Z)Z

    .line 8515
    :cond_8
    :goto_3
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$23300()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 8516
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string/jumbo v14, "set wifi hotspot"

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v15}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/net/wifi/WifiStateMachine;->printProfile(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    .line 8518
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableImeiPassword:Z
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$2400(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v13

    if-nez v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableMdnPassword:Z
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v13

    if-eqz v13, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->checkWifiApPassword()V

    .line 8519
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableImeiSsid:Z
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$2600(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v13

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->checkWifiApSsid()V

    .line 8521
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$2800(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v15}, Landroid/net/wifi/WifiStateMachine;->access$2700(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "wlan0"

    invoke-interface/range {v13 .. v16}, Landroid/os/INetworkManagementService;->setAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 8525
    .end local v11           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :catch_1
    move-exception v3

    .line 8526
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v13, "WifiStateMachine"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception in softap set "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8529
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v14, 0x0

    #setter for: Landroid/net/wifi/WifiStateMachine;->mUser:I
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$6402(Landroid/net/wifi/WifiStateMachine;I)I

    .line 8530
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 8531
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.net.hotspot.ASSOCLIST"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 8533
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$2800(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$2700(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Landroid/os/INetworkManagementService;->stopAccessPoint(Ljava/lang/String;)V

    .line 8534
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableImeiPassword:Z
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$2400(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v13

    if-nez v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableMdnPassword:Z
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v13

    if-eqz v13, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->checkWifiApPassword()V

    .line 8535
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableImeiSsid:Z
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$2600(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v13

    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->checkWifiApSsid()V

    .line 8537
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$2800(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v15}, Landroid/net/wifi/WifiStateMachine;->access$2700(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "wlan0"

    move-object/from16 v0, v16

    invoke-interface {v14, v13, v15, v0}, Landroid/os/INetworkManagementService;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 8540
    :catch_2
    move-exception v4

    .line 8541
    .local v4, ee:Ljava/lang/Exception;
    const-string v13, "WifiStateMachine"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Could not restart softap after set failed "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8542
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v15, 0x20002

    const/16 v16, 0xe

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_2

    .line 8509
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #ee:Ljava/lang/Exception;
    .restart local v11       #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_10
    if-nez v11, :cond_8

    .line 8510
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v13

    if-eqz v13, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v13

    if-nez v13, :cond_8

    .line 8511
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->updateProfile()V

    .line 8512
    const/4 v13, 0x1

    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$23302(Z)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    .line 8551
    .end local v11           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v13

    const/16 v14, 0xb

    if-eq v13, v14, :cond_13

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_13

    .line 8553
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mP2pSupported:Z
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$5700(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v13

    invoke-static {v13}, Landroid/net/wifi/WifiNative;->startSupplicant(Z)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 8554
    const-string v13, "WifiStateMachine"

    const-string v14, "Supplicant start successful"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8555
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$5800(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiMonitor;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiMonitor;->startMonitoring()V

    .line 8556
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$5900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v14

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$23500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 8558
    const/4 v13, 0x1

    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$23602(Z)Z

    goto/16 :goto_2

    .line 8561
    :cond_12
    const-string v13, "WifiStateMachine"

    const-string v14, "Cannot start supplicant with a running soft AP"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8562
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v14, 0x4

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$4900(Landroid/net/wifi/WifiStateMachine;I)V

    goto/16 :goto_2

    .line 8565
    :cond_13
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 8576
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/WifiStateMachine$TetherStateChange;

    .line 8577
    .local v7, stateChange:Landroid/net/wifi/WifiStateMachine$TetherStateChange;
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$4000()Z

    move-result v13

    if-nez v13, :cond_14

    .line 8578
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v13

    const/16 v14, 0xb

    if-eq v13, v14, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v13

    const/16 v14, 0xa

    if-eq v13, v14, :cond_7

    .line 8580
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v14, v7, Landroid/net/wifi/WifiStateMachine$TetherStateChange;->available:Ljava/util/ArrayList;

    #calls: Landroid/net/wifi/WifiStateMachine;->startTethering(Ljava/util/ArrayList;)Z
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$23700(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z

    goto/16 :goto_2

    .line 8583
    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v14, v7, Landroid/net/wifi/WifiStateMachine$TetherStateChange;->available:Ljava/util/ArrayList;

    #calls: Landroid/net/wifi/WifiStateMachine;->startTethering(Ljava/util/ArrayList;)Z
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$23700(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 8584
    const-string v13, "WifiStateMachine"

    const-string/jumbo v14, "skip transit to mTetheringState"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 8591
    .end local v7           #stateChange:Landroid/net/wifi/WifiStateMachine$TetherStateChange;
    :sswitch_4
    const-string v13, "WifiStateMachine"

    const-string v14, "WIFIAP:Connection request.."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8592
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 8593
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 8594
    .local v6, mac:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 8595
    .local v8, time:J
    new-instance v5, Landroid/content/Intent;

    const-string v13, "android.net.hotspot.connecitonrequest"

    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8596
    .local v5, intent:Landroid/content/Intent;
    const-string v13, "hotspot_block_mac"

    invoke-virtual {v5, v13, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8597
    const-string v13, "hotspot_lastest_time_of_request"

    invoke-virtual {v5, v13, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 8598
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 8604
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #mac:Ljava/lang/String;
    .end local v8           #time:J
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->getAssocListStr()Ljava/lang/String;

    move-result-object v1

    .line 8605
    .local v1, assocList:Ljava/lang/String;
    const-string v13, "WifiStateMachine"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SoftAP update assoc list: assocList="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8606
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->getAssocCount(Ljava/lang/String;)I

    move-result v14

    #setter for: Landroid/net/wifi/WifiStateMachine;->mUser:I
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$6402(Landroid/net/wifi/WifiStateMachine;I)I

    .line 8607
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mUser:I
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$6400(Landroid/net/wifi/WifiStateMachine;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mUloghotspotMaxUsers:I
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$6800(Landroid/net/wifi/WifiStateMachine;)I

    move-result v14

    if-le v13, v14, :cond_15

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mUser:I
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$6400(Landroid/net/wifi/WifiStateMachine;)I

    move-result v14

    #setter for: Landroid/net/wifi/WifiStateMachine;->mUloghotspotMaxUsers:I
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$6802(Landroid/net/wifi/WifiStateMachine;I)I

    .line 8608
    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->checkSleepPolicy()V
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$6700(Landroid/net/wifi/WifiStateMachine;)V

    .line 8609
    const-string v13, "WifiStateMachine"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SoftAP update assoc list: mUser="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mUser:I
    invoke-static {v15}, Landroid/net/wifi/WifiStateMachine;->access$6400(Landroid/net/wifi/WifiStateMachine;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8610
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 8611
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.net.hotspot.ASSOCLIST"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 8615
    .end local v1           #assocList:Ljava/lang/String;
    :sswitch_6
    const-string v13, "WifiStateMachine"

    const-string v14, "WIFIAP:MAC_LIST_PROFILE_CHANGE.."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8617
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 8618
    .local v2, config:Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->persistApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v13, v2}, Landroid/net/wifi/WifiStateMachine;->access$6200(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    .line 8620
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$2800(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v14

    invoke-interface {v13, v14}, Landroid/os/INetworkManagementService;->setMACList(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 8625
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->notifyAssocListChange()V

    goto/16 :goto_2

    .line 8622
    :catch_3
    move-exception v3

    .line 8623
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v13, "WifiStateMachine"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception in update mac list fail "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 8629
    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v3           #e:Ljava/lang/Exception;
    :sswitch_7
    const-string v13, "WifiStateMachine"

    const-string v14, "WIFIAP:WIFIDISPLAY_MAC_LIST_PROFILE_CHANGE.."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8630
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/net/wifi/WifiConfiguration;

    .line 8632
    .local v12, wifiDisplayConfig:Landroid/net/wifi/WifiConfiguration;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$2800(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v13

    invoke-interface {v13, v12}, Landroid/os/INetworkManagementService;->setMACList(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_2

    .line 8633
    :catch_4
    move-exception v3

    .line 8634
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v13, "WifiStateMachine"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception in update wifidisplay mac list fail "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 8640
    .end local v3           #e:Ljava/lang/Exception;
    .end local v12           #wifiDisplayConfig:Landroid/net/wifi/WifiConfiguration;
    :sswitch_8
    :try_start_6
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$2800(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/net/wifi/WpsInfo;

    invoke-interface {v14, v13}, Landroid/os/INetworkManagementService;->startWpsRegistrar(Landroid/net/wifi/WpsInfo;)V

    .line 8641
    const-string v13, "WifiStateMachine"

    const-string v14, "OK to startWpsRegistrar()"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_2

    .line 8642
    :catch_5
    move-exception v3

    .line 8643
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v13, "WifiStateMachine"

    const-string v14, "Exception in startWpsRegistrar()"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 8648
    .end local v3           #e:Ljava/lang/Exception;
    :sswitch_9
    :try_start_7
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$2800(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v13

    invoke-interface {v13}, Landroid/os/INetworkManagementService;->stopWpsRegistrar()V

    .line 8649
    const-string v13, "WifiStateMachine"

    const-string v14, "OK to stopWpsRegistrar()"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_2

    .line 8650
    :catch_6
    move-exception v3

    .line 8651
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v13, "WifiStateMachine"

    const-string v14, "Exception in stopWpsRegistrar()"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 8655
    .end local v3           #e:Ljava/lang/Exception;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.net.hotspot.WPS_REGISTRAR_START"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 8658
    :sswitch_b
    const-string v13, "WifiStateMachine"

    const-string v14, "WPS_REGISTRAR_SUCCESSFUL"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8659
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.net.hotspot.WPS_REGISTRAR_SUCCESSFUL"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 8662
    :sswitch_c
    const-string v13, "WifiStateMachine"

    const-string v14, "WPS_REGISTRAR_FAIL"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8663
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.net.hotspot.WPS_REGISTRAR_FAIL"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 8667
    :sswitch_d
    const-string v13, "WifiStateMachine"

    const-string v14, "L2PE_SUCCESSFUL"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8668
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.net.hotspot.L2PE_SUCCESSFUL"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 8671
    :sswitch_e
    const-string v13, "WifiStateMachine"

    const-string v14, "L2PE_FAIL"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8672
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.net.hotspot.L2PE_FAIL"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 8676
    :sswitch_f
    const-string v13, "WifiStateMachine"

    const-string v14, "PERF_LOCK_EVENT received"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8677
    monitor-enter p0

    .line 8678
    :try_start_8
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPerfWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$17900(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v13

    if-nez v13, :cond_16

    .line 8679
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPerfWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$17900(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 8680
    const-string v13, "WifiStateMachine"

    const-string v14, "2nd CPU lock acquired"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8682
    :cond_16
    monitor-exit p0

    goto/16 :goto_2

    :catchall_0
    move-exception v13

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v13

    .line 8685
    :sswitch_10
    const-string v13, "WifiStateMachine"

    const-string v14, "PERF_UNLOCK_EVENT received"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8686
    monitor-enter p0

    .line 8687
    :try_start_9
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPerfWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$17900(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v13

    if-eqz v13, :cond_17

    .line 8688
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPerfWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$17900(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 8689
    const-string v13, "WifiStateMachine"

    const-string v14, "2nd CPU lock released"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8691
    :cond_17
    monitor-exit p0

    goto/16 :goto_2

    :catchall_1
    move-exception v13

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v13

    .line 8428
    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_2
        0x20015 -> :sswitch_1
        0x20018 -> :sswitch_0
        0x2001d -> :sswitch_3
        0x20061 -> :sswitch_8
        0x20062 -> :sswitch_9
        0x20063 -> :sswitch_a
        0x20064 -> :sswitch_b
        0x20065 -> :sswitch_c
        0x20066 -> :sswitch_d
        0x20067 -> :sswitch_e
        0x20080 -> :sswitch_7
        0x2008d -> :sswitch_4
        0x2008e -> :sswitch_5
        0x2008f -> :sswitch_6
        0x24011 -> :sswitch_f
        0x24012 -> :sswitch_10
    .end sparse-switch
.end method
