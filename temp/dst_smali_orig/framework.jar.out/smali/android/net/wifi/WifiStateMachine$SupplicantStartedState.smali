.class Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SupplicantStartedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$2900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    const v3, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mIsScanMode:Z
    invoke-static {v3, v1}, Landroid/net/wifi/WifiStateMachine;->access$9702(Landroid/net/wifi/WifiStateMachine;Z)Z

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$6300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .local v0, defaultInterval:I
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_supplicant_scan_interval_ms"

    int-to-long v6, v0

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    #setter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J
    invoke-static {v3, v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$9802(Landroid/net/wifi/WifiStateMachine;J)J

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$9800(Landroid/net/wifi/WifiStateMachine;)J

    move-result-wide v4

    long-to-int v4, v4

    div-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiNative;->setScanInterval(I)V

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x25

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x26

    if-ne v3, v4, :cond_2

    :cond_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReqSchedScanInteval:I
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$3800(Landroid/net/wifi/WifiStateMachine;)I

    move-result v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReqSchedScanInteval:I
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$3800(Landroid/net/wifi/WifiStateMachine;)I

    move-result v5

    invoke-virtual {v3, v4, v5, v2}, Landroid/net/wifi/WifiNative;->setReqSchedScan(III)V

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mRoadmingDisabled:Z
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$3900(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiNative;->setRoamingDisabled(I)V

    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantReady:Z
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$9902(Landroid/net/wifi/WifiStateMachine;Z)Z

    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$6300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantReady:Z
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$9902(Landroid/net/wifi/WifiStateMachine;Z)Z

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 16
    .parameter "message"

    .prologue
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$2900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    sparse-switch v11, :sswitch_data_0

    const/4 v11, 0x0

    :goto_0
    return v11

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mHtcNetworkSelectionFeature:Z
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$10000(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v12, 0x2

    #setter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectReason:I
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$10102(Landroid/net/wifi/WifiStateMachine;I)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$10200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v12

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$10300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    :cond_1
    :goto_1
    :sswitch_1
    const/4 v11, 0x1

    goto :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v12, "Connection lost, restart supplicant"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$2100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->clearWepErrorNotification()V

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    invoke-static {}, Landroid/net/wifi/WifiNative;->killSupplicant()Z

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiNative;->closeSupplicantConnection()V

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$6300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$10400(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v12, 0x0

    #calls: Landroid/net/wifi/WifiStateMachine;->sendSupplicantConnectionChangedBroadcast(Z)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$9100(Landroid/net/wifi/WifiStateMachine;Z)V

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v11

    const v12, 0x2006f

    invoke-virtual {v11, v12}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverLoadedState:Lcom/android/internal/util/State;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$4200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v12

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$10500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v12, 0x2000b

    const-wide/16 v13, 0x1388

    invoke-virtual {v11, v12, v13, v14}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_1

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mIsDongleScan:Z
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$10600(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v12, 0x0

    #setter for: Landroid/net/wifi/WifiStateMachine;->mIsDongleScan:Z
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$10602(Landroid/net/wifi/WifiStateMachine;Z)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiNative;->dongleScanListCommand()Ljava/lang/String;

    move-result-object v12

    #calls: Landroid/net/wifi/WifiStateMachine;->setDongleScanList(Ljava/lang/String;)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$10700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->sendDongleScanResultsAvailableBroadcast()V
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$10800(Landroid/net/wifi/WifiStateMachine;)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v12, 0x0

    #setter for: Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$11002(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiNative;->scanResults()Ljava/lang/String;

    move-result-object v12

    #calls: Landroid/net/wifi/WifiStateMachine;->setScanResults(Ljava/lang/String;)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$10900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiNative;->dongleScanListCommand()Ljava/lang/String;

    move-result-object v12

    #calls: Landroid/net/wifi/WifiStateMachine;->setDongleScanList(Ljava/lang/String;)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$10700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->sendScanResultsAvailableBroadcast()V
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$2200(Landroid/net/wifi/WifiStateMachine;)V

    goto :goto_2

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiNative;->ping()Z

    move-result v5

    .local v5, ok:Z
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    if-eqz v5, :cond_3

    const/4 v11, 0x1

    :goto_3
    move-object/from16 v0, p1

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v12, v0, v13, v11}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_3
    const/4 v11, -0x1

    goto :goto_3

    .end local v5           #ok:Z
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v12, 0x20034

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v13

    invoke-virtual {v13, v1}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v13

    move-object/from16 v0, p1

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v11, v0, v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiConfigStore;->removeNetwork(I)Z

    move-result v5

    .restart local v5       #ok:Z
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    if-eqz v5, :cond_4

    const/4 v11, 0x1

    :goto_4
    move-object/from16 v0, p1

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v12, v0, v13, v11}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_4
    const/4 v11, -0x1

    goto :goto_4

    .end local v5           #ok:Z
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v12

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg2:I

    const/4 v14, 0x1

    if-ne v11, v14, :cond_5

    const/4 v11, 0x1

    :goto_5
    invoke-virtual {v12, v13, v11}, Landroid/net/wifi/WifiConfigStore;->enableNetwork(IZ)Z

    move-result v5

    .restart local v5       #ok:Z
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    if-eqz v5, :cond_6

    const/4 v11, 0x1

    :goto_6
    move-object/from16 v0, p1

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v12, v0, v13, v11}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .end local v5           #ok:Z
    :cond_5
    const/4 v11, 0x0

    goto :goto_5

    .restart local v5       #ok:Z
    :cond_6
    const/4 v11, -0x1

    goto :goto_6

    .end local v5           #ok:Z
    :sswitch_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .local v7, time:J
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastEnableAllNetworksTime:J
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$11100(Landroid/net/wifi/WifiStateMachine;)J

    move-result-wide v11

    sub-long v11, v7, v11

    const-wide/32 v13, 0x927c0

    cmp-long v11, v11, v13

    if-lez v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastEnableAllNetworksTime:J
    invoke-static {v11, v7, v8}, Landroid/net/wifi/WifiStateMachine;->access$11102(Landroid/net/wifi/WifiStateMachine;J)J

    goto/16 :goto_1

    .end local v7           #time:J
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(II)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v12, 0x25013

    move-object/from16 v0, p1

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v11, v0, v12}, Landroid/net/wifi/WifiStateMachine;->access$4100(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v12, 0x25012

    const/4 v13, 0x0

    move-object/from16 v0, p1

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v11, v0, v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v12, v11}, Landroid/net/wifi/WifiNative;->addToBlacklist(Ljava/lang/String;)Z

    goto/16 :goto_1

    :sswitch_b
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiNative;->clearBlacklist()Z

    goto/16 :goto_1

    :sswitch_c
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfigStore;->saveConfig()Z

    move-result v5

    .restart local v5       #ok:Z
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v13, 0x2003a

    if-eqz v5, :cond_8

    const/4 v11, 0x1

    :goto_7
    move-object/from16 v0, p1

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v12, v0, v13, v11}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    const-string v11, "backup"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v4

    .local v4, ibm:Landroid/app/backup/IBackupManager;
    if-eqz v4, :cond_1

    :try_start_0
    const-string v11, "com.android.providers.settings"

    invoke-interface {v4, v11}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v11

    goto/16 :goto_1

    .end local v4           #ibm:Landroid/app/backup/IBackupManager;
    :cond_8
    const/4 v11, -0x1

    goto :goto_7

    .end local v5           #ok:Z
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, p1

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v11, v0, v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$3400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_e
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v11

    const/16 v12, 0xd

    if-eq v11, v12, :cond_9

    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$4000()Z

    move-result v11

    if-eqz v11, :cond_a

    :cond_9
    const-string v11, "WifiStateMachine"

    const-string v12, "Soft AP had started.....not handle"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_a
    const-string v11, "WifiStateMachine"

    const-string v12, "Force to start soft AP with a running supplicant"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$4002(Z)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v12, 0xc

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$5000(Landroid/net/wifi/WifiStateMachine;I)V

    :try_start_1
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .local v9, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    if-eqz v9, :cond_11

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v11

    if-eqz v11, :cond_11

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->persistApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v11, v9}, Landroid/net/wifi/WifiStateMachine;->access$6200(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    :cond_b
    :goto_8
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_c

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$6300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v11

    sget-object v12, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v11, v12, :cond_c

    const-string v11, "WifiStateMachine"

    const-string v12, "WiFiDisplay: Turn on hotspot in concurrent case, use WiFi Display IP range"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->resetWifiDisplayDhcpConfig()V

    :cond_c
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v12, "start wifi hotspot"

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/net/wifi/WifiStateMachine;->printProfile(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$2800(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v11

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Landroid/os/INetworkManagementService;->setTetheringDhcpEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableImeiPassword:Z
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$2400(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v11

    if-nez v11, :cond_d

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableMdnPassword:Z
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v11

    if-eqz v11, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->checkWifiApPassword()V

    :cond_e
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableImeiSsid:Z
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$2600(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v11

    if-eqz v11, :cond_f

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->checkWifiApSsid()V

    :cond_f
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfigNoWps:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$11200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    if-nez v11, :cond_16

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .local v10, wifiConfigSpecial:Landroid/net/wifi/WifiConfiguration;
    :goto_9
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v12, "wifiConfigSpecial = "

    invoke-virtual {v11, v12, v10}, Landroid/net/wifi/WifiStateMachine;->printProfile(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v11

    iget-object v11, v11, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    const-string v12, "wpa-psk"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_10

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v11

    iget-object v11, v11, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    const-string v12, "wep"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    :cond_10
    const-string v11, "WifiStateMachine"

    const-string v12, "Force to use WPA2 security for concurrent hotspoty!!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v11

    const-string v12, "wpa2-psk"

    iput-object v12, v11, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v11

    const-string v12, "1234567890"

    iput-object v12, v11, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$2800(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$2700(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "wlan0"

    invoke-interface {v11, v10, v12, v13}, Landroid/os/INetworkManagementService;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$2800(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiDisplayConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$11300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v12

    invoke-interface {v11, v12}, Landroid/os/INetworkManagementService;->setMACList(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v9           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    .end local v10           #wifiConfigSpecial:Landroid/net/wifi/WifiConfiguration;
    :goto_b
    const-string v11, "WifiStateMachine"

    const-string v12, "Soft AP start successful"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v12, 0xd

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$5000(Landroid/net/wifi/WifiStateMachine;I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->checkSleepPolicy()V
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$6700(Landroid/net/wifi/WifiStateMachine;)V

    goto/16 :goto_1

    .restart local v9       #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_11
    if-nez v9, :cond_b

    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    if-eqz v11, :cond_12

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v11

    if-nez v11, :cond_b

    :cond_12
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->updateProfile()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_8

    .end local v9           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :catch_1
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    const-string v11, "WifiStateMachine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception in softap start "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_3
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$2800(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$2700(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Landroid/os/INetworkManagementService;->stopAccessPoint(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableImeiPassword:Z
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$2400(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v11

    if-nez v11, :cond_13

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableMdnPassword:Z
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v11

    if-eqz v11, :cond_14

    :cond_13
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->checkWifiApPassword()V

    :cond_14
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableImeiSsid:Z
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$2600(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v11

    if-eqz v11, :cond_15

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->checkWifiApSsid()V

    :cond_15
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$2800(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$2700(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "wlan0"

    invoke-interface {v12, v11, v13, v14}, Landroid/os/INetworkManagementService;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$2800(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiDisplayConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$11300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v12

    invoke-interface {v11, v12}, Landroid/os/INetworkManagementService;->setMACList(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_b

    :catch_2
    move-exception v3

    .local v3, ee:Ljava/lang/Exception;
    const-string v11, "WifiStateMachine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception during softap restart : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v13, 0x20002

    const/16 v14, 0xe

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #ee:Ljava/lang/Exception;
    .restart local v9       #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_16
    :try_start_4
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfigNoWps:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$11200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    goto/16 :goto_9

    .restart local v10       #wifiConfigSpecial:Landroid/net/wifi/WifiConfiguration;
    :cond_17
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$2800(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfigNoWps:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$11200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    if-nez v11, :cond_18

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    :goto_c
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$2700(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "wlan0"

    invoke-interface {v12, v11, v13, v14}, Landroid/os/INetworkManagementService;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_18
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfigNoWps:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$11200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v11

    goto :goto_c

    .end local v9           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    .end local v10           #wifiConfigSpecial:Landroid/net/wifi/WifiConfiguration;
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiNative;->dongleScanCommand()Z

    goto/16 :goto_1

    :sswitch_10
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiNative;->dongleSingleCscanCommand(I)Z

    goto/16 :goto_1

    :sswitch_11
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    const/4 v13, 0x2

    if-ne v11, v13, :cond_19

    const/4 v11, 0x1

    :goto_d
    #setter for: Landroid/net/wifi/WifiStateMachine;->mIsScanMode:Z
    invoke-static {v12, v11}, Landroid/net/wifi/WifiStateMachine;->access$9702(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_1

    :cond_19
    const/4 v11, 0x0

    goto :goto_d

    :sswitch_12
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/net/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v6

    .local v6, result:Landroid/net/wifi/NetworkUpdateResult;
    invoke-virtual {v6}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_1a

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v12, 0x25009

    move-object/from16 v0, p1

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v11, v0, v12}, Landroid/net/wifi/WifiStateMachine;->access$4100(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    :cond_1a
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v12, "Failed to save network"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$2100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v12, 0x25008

    const/4 v13, 0x0

    move-object/from16 v0, p1

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v11, v0, v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v6           #result:Landroid/net/wifi/NetworkUpdateResult;
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mHtcNetworkSelectionFeature:Z
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$10000(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v11

    if-eqz v11, :cond_1b

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$8600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v12

    if-ne v11, v12, :cond_1b

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v12, 0x3

    #setter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectReason:I
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$10102(Landroid/net/wifi/WifiStateMachine;I)I

    :cond_1b
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiConfigStore;->forgetNetwork(I)Z

    move-result v11

    if-eqz v11, :cond_1c

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v12, 0x25006

    move-object/from16 v0, p1

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v11, v0, v12}, Landroid/net/wifi/WifiStateMachine;->access$4100(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    :cond_1c
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v12, "Failed to forget network"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$2100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v12, 0x25005

    const/4 v13, 0x0

    move-object/from16 v0, p1

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v11, v0, v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    :sswitch_14
    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v12, 0x24

    if-eq v11, v12, :cond_1d

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v12, 0xe1

    if-eq v11, v12, :cond_1d

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v12, 0x49

    if-ne v11, v12, :cond_1

    :cond_1d
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v12, "[DisableP2pConcurrent] stop STA auto connect 1"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$2100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiNative;->disableStaAutoConn()V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2000c -> :sswitch_0
        0x20015 -> :sswitch_e
        0x20033 -> :sswitch_4
        0x20034 -> :sswitch_5
        0x20035 -> :sswitch_6
        0x20036 -> :sswitch_7
        0x20037 -> :sswitch_8
        0x20038 -> :sswitch_a
        0x20039 -> :sswitch_b
        0x2003a -> :sswitch_c
        0x2003b -> :sswitch_d
        0x20048 -> :sswitch_11
        0x20068 -> :sswitch_f
        0x20069 -> :sswitch_10
        0x2006a -> :sswitch_1
        0x20087 -> :sswitch_14
        0x24002 -> :sswitch_2
        0x24005 -> :sswitch_3
        0x25004 -> :sswitch_13
        0x25007 -> :sswitch_12
        0x25011 -> :sswitch_9
    .end sparse-switch
.end method
