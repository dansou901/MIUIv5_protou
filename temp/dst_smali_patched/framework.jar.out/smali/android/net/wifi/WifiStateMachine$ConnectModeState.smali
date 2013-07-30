.class Landroid/net/wifi/WifiStateMachine$ConnectModeState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectModeState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$3100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 46
    .parameter "message"

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->getName()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "\n"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static/range {v42 .. v43}, Landroid/net/wifi/WifiStateMachine;->access$3100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v42, v0

    sparse-switch v42, :sswitch_data_0

    const/16 v42, 0x0

    :goto_0
    return v42

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$8300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v42

    const v43, 0x24007

    invoke-virtual/range {v42 .. v43}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(I)V

    :cond_0
    :goto_1
    const/16 v42, 0x1

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$8300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v42

    const v43, 0x24013

    invoke-virtual/range {v42 .. v43}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(I)V

    goto :goto_1

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    #calls: Landroid/net/wifi/WifiStateMachine;->handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$12500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v35

    .local v35, state:Landroid/net/wifi/SupplicantState;
    invoke-static/range {v35 .. v35}, Landroid/net/wifi/SupplicantState;->isDriverActive(Landroid/net/wifi/SupplicantState;)Z

    move-result v42

    if-nez v42, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v42

    sget-object v43, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #calls: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$10800(Landroid/net/wifi/WifiStateMachine;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const-string v43, "Detected an interface down, restart driver"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static/range {v42 .. v43}, Landroid/net/wifi/WifiStateMachine;->access$3100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;
    invoke-static/range {v43 .. v43}, Landroid/net/wifi/WifiStateMachine;->access$12700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v43

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v42 .. v43}, Landroid/net/wifi/WifiStateMachine;->access$16300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x2000d

    invoke-virtual/range {v42 .. v43}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_1

    :cond_2
    sget-object v42, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v35

    move-object/from16 v1, v42

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v42

    sget-object v43, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const-string v43, "Missed CTRL-EVENT-DISCONNECTED, disconnect"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static/range {v42 .. v43}, Landroid/net/wifi/WifiStateMachine;->access$3100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #calls: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$10800(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v43 .. v43}, Landroid/net/wifi/WifiStateMachine;->access$14000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v43

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v42 .. v43}, Landroid/net/wifi/WifiStateMachine;->access$16400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .end local v35           #state:Landroid/net/wifi/SupplicantState;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/net/wifi/WifiNative;->disconnect()Z

    goto/16 :goto_1

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/net/wifi/WifiNative;->reconnect()Z

    goto/16 :goto_1

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/net/wifi/WifiNative;->reassociate()Z

    goto/16 :goto_1

    :sswitch_6
    sget-short v42, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v43, 0x24

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_3

    sget-short v42, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v43, 0x14a

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_3

    sget-short v42, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v43, 0xe1

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_3

    sget-short v42, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v43, 0x2b

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_3

    sget-short v42, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v43, 0xe0

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_3

    sget-short v42, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v43, 0x2d8

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_3

    sget-short v42, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v43, 0x49

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_3

    sget-short v42, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v43, 0x4a

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const-string v43, "[DisableP2pConcurrent] stop STA auto connect 3"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v42 .. v43}, Landroid/net/wifi/WifiStateMachine;->access$2300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/net/wifi/WifiNative;->disableStaAutoConn()V

    goto/16 :goto_1

    :sswitch_7
    sget-short v42, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v43, 0x24

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_4

    sget-short v42, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v43, 0x14a

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_4

    sget-short v42, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v43, 0xe1

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_4

    sget-short v42, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v43, 0x2b

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_4

    sget-short v42, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v43, 0xe0

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_4

    sget-short v42, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v43, 0x2d8

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_4

    sget-short v42, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v43, 0x49

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_4

    sget-short v42, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v43, 0x4a

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_b

    :cond_4
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()I

    move-result v42

    const/16 v43, 0x3

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$16502(I)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Landroid/net/wifi/WifiConfiguration;

    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$16602(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const-string v43, "[DisableP2pConcurrent] Pop msg to Disable P2p connection"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v42 .. v43}, Landroid/net/wifi/WifiStateMachine;->access$2300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    new-instance v20, Landroid/net/wifi/WifiStateMachine$ConnectModeState$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateMachine$ConnectModeState$1;-><init>(Landroid/net/wifi/WifiStateMachine$ConnectModeState;)V

    .local v20, listener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v24

    .local v24, r:Landroid/content/res/Resources;
    new-instance v42, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v43 .. v43}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v43, 0x104040d

    move-object/from16 v0, v24

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v42

    const v43, 0x4070100

    move-object/from16 v0, v24

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v42

    const v43, 0x104000a

    move-object/from16 v0, v24

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v42

    const/high16 v43, 0x104

    move-object/from16 v0, v24

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    .local v14, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v14}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v42

    const/16 v43, 0x7d3

    invoke-virtual/range {v42 .. v43}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;
    invoke-static/range {v43 .. v43}, Landroid/net/wifi/WifiStateMachine;->access$16700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v43

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v42 .. v43}, Landroid/net/wifi/WifiStateMachine;->access$16800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x25003

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$4400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .end local v14           #dialog:Landroid/app/AlertDialog;
    .end local v20           #listener:Landroid/content/DialogInterface$OnClickListener;
    .end local v24           #r:Landroid/content/res/Resources;
    :cond_5
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$200()Z

    move-result v42

    if-nez v42, :cond_9

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    .local v22, netId:I
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/net/wifi/WifiConfiguration;

    .local v13, config:Landroid/net/wifi/WifiConfiguration;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    const v43, 0x22010

    invoke-virtual/range {v42 .. v43}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    const v43, 0x2200a

    invoke-virtual/range {v42 .. v43}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v13}, Landroid/net/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v27

    .local v27, result:Landroid/net/wifi/NetworkUpdateResult;
    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v22

    .end local v27           #result:Landroid/net/wifi/NetworkUpdateResult;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfigStore;->selectNetwork(I)Z

    move-result v42

    if-eqz v42, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/net/wifi/WifiNative;->reconnect()Z

    move-result v42

    if-eqz v42, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$8300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v42

    const v43, 0x25001

    invoke-virtual/range {v42 .. v43}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(I)V

    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$200()Z

    move-result v42

    if-nez v42, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x25003

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$4400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static/range {v43 .. v43}, Landroid/net/wifi/WifiStateMachine;->access$16900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v43

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v42 .. v43}, Landroid/net/wifi/WifiStateMachine;->access$17000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    :cond_8
    :goto_3
    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$202(Z)Z

    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$16502(I)I

    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$16602(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    goto/16 :goto_1

    .end local v13           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v22           #netId:I
    :cond_9
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$16500()I

    move-result v22

    .restart local v22       #netId:I
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$16600()Landroid/net/wifi/WifiConfiguration;

    move-result-object v13

    .restart local v13       #config:Landroid/net/wifi/WifiConfiguration;
    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Failed to connect config: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " netId: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v42 .. v43}, Landroid/net/wifi/WifiStateMachine;->access$2300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$200()Z

    move-result v42

    if-nez v42, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x25002

    const/16 v44, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto :goto_3

    .end local v13           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v22           #netId:I
    :cond_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    .restart local v22       #netId:I
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/net/wifi/WifiConfiguration;

    .restart local v13       #config:Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mHtcNetworkSelectionFeature:Z
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$10400(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v42

    if-eqz v42, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x4

    #setter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectReason:I
    invoke-static/range {v42 .. v43}, Landroid/net/wifi/WifiStateMachine;->access$10502(Landroid/net/wifi/WifiStateMachine;I)I

    :cond_c
    if-eqz v13, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v13}, Landroid/net/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v27

    .restart local v27       #result:Landroid/net/wifi/NetworkUpdateResult;
    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v22

    .end local v27           #result:Landroid/net/wifi/NetworkUpdateResult;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfigStore;->selectNetwork(I)Z

    move-result v42

    if-eqz v42, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/net/wifi/WifiNative;->reconnect()Z

    move-result v42

    if-eqz v42, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$8300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v42

    const v43, 0x25001

    invoke-virtual/range {v42 .. v43}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x25003

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$4400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static/range {v43 .. v43}, Landroid/net/wifi/WifiStateMachine;->access$16900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v43

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v42 .. v43}, Landroid/net/wifi/WifiStateMachine;->access$17100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Failed to connect config: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " netId: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v42 .. v43}, Landroid/net/wifi/WifiStateMachine;->access$2300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x25002

    const/16 v44, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .end local v13           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v22           #netId:I
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Landroid/net/wifi/WpsInfo;

    .local v41, wpsInfo:Landroid/net/wifi/WpsInfo;
    move-object/from16 v0, v41

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    move/from16 v42, v0

    packed-switch v42, :pswitch_data_0

    new-instance v27, Landroid/net/wifi/WpsResult;

    sget-object v42, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v0, v27

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    .local v27, result:Landroid/net/wifi/WpsResult;
    const-string v42, "WifiStateMachine"

    const-string v43, "Invalid setup for WPS"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v42, v0

    sget-object v43, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x2500b

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move-object/from16 v3, v27

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$3600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;
    invoke-static/range {v43 .. v43}, Landroid/net/wifi/WifiStateMachine;->access$17200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v43

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v42 .. v43}, Landroid/net/wifi/WifiStateMachine;->access$17300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .end local v27           #result:Landroid/net/wifi/WpsResult;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfigStore;->startWpsPbc(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v27

    .restart local v27       #result:Landroid/net/wifi/WpsResult;
    goto :goto_4

    .end local v27           #result:Landroid/net/wifi/WpsResult;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfigStore;->startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v27

    .restart local v27       #result:Landroid/net/wifi/WpsResult;
    goto :goto_4

    .end local v27           #result:Landroid/net/wifi/WpsResult;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfigStore;->startWpsWithPinFromDevice(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v27

    .restart local v27       #result:Landroid/net/wifi/WpsResult;
    goto :goto_4

    :cond_f
    const-string v42, "WifiStateMachine"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Failed to start WPS with config "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v41 .. v41}, Landroid/net/wifi/WpsInfo;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x2500c

    const/16 v44, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .end local v27           #result:Landroid/net/wifi/WpsResult;
    .end local v41           #wpsInfo:Landroid/net/wifi/WpsInfo;
    :sswitch_9
    sget-short v42, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v43, 0xda

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_10

    sget-short v42, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v43, 0x2

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_12

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mAssociateManual:Z
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$13700(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v42

    if-eqz v42, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v42

    const/16 v43, -0x1

    invoke-virtual/range {v42 .. v43}, Landroid/net/wifi/WifiNative;->setScanResultHandling(I)Z

    :goto_5
    const/16 v42, 0x0

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x1

    invoke-virtual/range {v42 .. v43}, Landroid/net/wifi/WifiNative;->setScanResultHandling(I)Z

    goto :goto_5

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x1

    invoke-virtual/range {v42 .. v43}, Landroid/net/wifi/WifiNative;->setScanResultHandling(I)Z

    goto :goto_5

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const-string v43, "Network connection established"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static/range {v42 .. v43}, Landroid/net/wifi/WifiStateMachine;->access$3100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v43, v0

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v42 .. v43}, Landroid/net/wifi/WifiStateMachine;->access$8602(Landroid/net/wifi/WifiStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Ljava/lang/String;

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$8502(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #calls: Landroid/net/wifi/WifiStateMachine;->fetchRssiAndLinkSpeedNative()V
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$17400(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$8900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v43 .. v43}, Landroid/net/wifi/WifiStateMachine;->access$8500(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$8900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v43 .. v43}, Landroid/net/wifi/WifiStateMachine;->access$8600(Landroid/net/wifi/WifiStateMachine;)I

    move-result v43

    invoke-virtual/range {v42 .. v43}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$8900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    #calls: Landroid/net/wifi/WifiStateMachine;->fetchFrequency()I
    invoke-static/range {v43 .. v43}, Landroid/net/wifi/WifiStateMachine;->access$17500(Landroid/net/wifi/WifiStateMachine;)I

    move-result v43

    invoke-virtual/range {v42 .. v43}, Landroid/net/wifi/WifiInfo;->setFrequency(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    sget-object v43, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static/range {v42 .. v43}, Landroid/net/wifi/WifiStateMachine;->access$13500(Landroid/net/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v43 .. v43}, Landroid/net/wifi/WifiStateMachine;->access$8500(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v43

    #calls: Landroid/net/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    invoke-static/range {v42 .. v43}, Landroid/net/wifi/WifiStateMachine;->access$17600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mHtcNetworkSelectionFeature:Z
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$10400(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v42

    if-eqz v42, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableAPDatabase:Z
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$17700(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v42

    if-eqz v42, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #calls: Landroid/net/wifi/WifiStateMachine;->addNewDBRecord()V
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$17800(Landroid/net/wifi/WifiStateMachine;)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;
    invoke-static/range {v43 .. v43}, Landroid/net/wifi/WifiStateMachine;->access$17900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v43

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v42 .. v43}, Landroid/net/wifi/WifiStateMachine;->access$18000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const-string v43, "Network connection lost"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static/range {v42 .. v43}, Landroid/net/wifi/WifiStateMachine;->access$3100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mHtcNetworkSelectionFeature:Z
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$10400(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v42

    if-eqz v42, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    #setter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectReason:I
    invoke-static/range {v42 .. v43}, Landroid/net/wifi/WifiStateMachine;->access$10502(Landroid/net/wifi/WifiStateMachine;I)I

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #calls: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$10800(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v43 .. v43}, Landroid/net/wifi/WifiStateMachine;->access$14000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v43

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v42 .. v43}, Landroid/net/wifi/WifiStateMachine;->access$18100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    :sswitch_c
    sget-boolean v42, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_EAP_AKA_flag:Z

    if-eqz v42, :cond_0

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v42

    const-string v43, "phone"

    invoke-virtual/range {v42 .. v43}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/telephony/TelephonyManager;

    .local v21, mTelephonyManager:Landroid/telephony/TelephonyManager;
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "CTRL-RSP-"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Ljava/lang/String;

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ":"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, MsgDetail:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiStateMachine;->ctrlMsg(Ljava/lang/String;)Z

    monitor-exit p0

    goto/16 :goto_1

    .end local v6           #MsgDetail:Ljava/lang/String;
    .end local v21           #mTelephonyManager:Landroid/telephony/TelephonyManager;
    :catchall_0
    move-exception v42

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v42

    :sswitch_d
    sget-boolean v42, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_EAP_AKA_flag:Z

    if-eqz v42, :cond_0

    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v42

    const-string v43, "phone"

    invoke-virtual/range {v42 .. v43}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/telephony/TelephonyManager;

    .restart local v21       #mTelephonyManager:Landroid/telephony/TelephonyManager;
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "CTRL-DAT-"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Ljava/lang/String;

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ":"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ":"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #MsgDetail:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiStateMachine;->ctrlMsg(Ljava/lang/String;)Z

    monitor-exit p0

    goto/16 :goto_1

    .end local v6           #MsgDetail:Ljava/lang/String;
    .end local v21           #mTelephonyManager:Landroid/telephony/TelephonyManager;
    :catchall_1
    move-exception v42

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v42

    :sswitch_e
    sget-boolean v42, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_EAP_AKA_flag:Z

    if-eqz v42, :cond_0

    const-string v7, "CTRL-DAT-"

    .local v7, MsgDetail0:Ljava/lang/String;
    const-string v6, "FAIL"

    .restart local v6       #MsgDetail:Ljava/lang/String;
    const/16 v36, 0x0

    .local v36, szAutn:Ljava/lang/String;
    const/16 v42, 0x3

    :try_start_2
    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v37, v0

    .local v37, szRand:[Ljava/lang/String;
    const-string v42, "phone"

    invoke-static/range {v42 .. v42}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v23

    .local v23, phoneInterface:Lcom/android/internal/telephony/ITelephony;
    const/4 v9, 0x0

    .local v9, aszRspResult:[Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Ljava/lang/String;

    .local v39, szTmpMsg0:Ljava/lang/String;
    move-object/from16 v38, v39

    .local v38, szTmpMsg:Ljava/lang/String;
    const/16 v42, 0x3a

    move-object/from16 v0, v38

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .local v8, MsgEnd:I
    const/16 v42, -0x1

    move/from16 v0, v42

    if-ne v8, v0, :cond_15

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v8

    :cond_15
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const/16 v43, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v43

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ":"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v42, v8, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v38

    const/16 v42, 0x3a

    move-object/from16 v0, v38

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/16 v42, -0x1

    move/from16 v0, v42

    if-eq v8, v0, :cond_16

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v43

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v43

    aput-object v43, v37, v42

    add-int/lit8 v42, v8, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v38

    :cond_16
    const-string v42, "gsm.sim.types"

    const-string v43, ""

    invoke-static/range {v42 .. v43}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .local v28, simType:Ljava/lang/String;
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, ""

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    sget-object v43, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_3G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .local v30, simType3G:Ljava/lang/String;
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, ""

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    sget-object v43, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_2G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .local v29, simType2G:Ljava/lang/String;
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, ""

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    sget-object v43, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_DBDM_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .local v31, simTypeDBDM:Ljava/lang/String;
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, ""

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    sget-object v43, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_WIBRO_ONLY_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .local v33, simTypeWIBRO_ONLY:Ljava/lang/String;
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, ""

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    sget-object v43, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_DUAL_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .local v32, simTypeDUAL:Ljava/lang/String;
    const-string v42, "AUTH_AKA-"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_21

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_17

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_17

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_17

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_20

    :cond_17
    move-object/from16 v36, v38

    sget-short v42, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v43, 0x2d7

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_1d

    sget-short v42, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v43, 0x31

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_1d

    sget-short v42, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v43, 0xdf

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_1d

    sget-short v42, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v43, 0x23f

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_1d

    const/4 v12, 0x0

    .local v12, bundle:Landroid/os/Bundle;
    const/16 v16, 0x0

    .local v16, i:I
    const-string v42, "WifiStateMachine"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "AKA: szRand[0] ="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const/16 v44, 0x0

    aget-object v44, v37, v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v42, "WifiStateMachine"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "AKA: szAutn = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    aget-object v43, v37, v43

    #calls: Landroid/net/wifi/WifiStateMachine;->hexStringToByteArray(Ljava/lang/String;)[B
    invoke-static/range {v42 .. v43}, Landroid/net/wifi/WifiStateMachine;->access$18200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)[B

    move-result-object v25

    .local v25, rand:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v36

    #calls: Landroid/net/wifi/WifiStateMachine;->hexStringToByteArray(Ljava/lang/String;)[B
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$18200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)[B

    move-result-object v10

    .local v10, autn:[B
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v10}, Lcom/htc/service/HtcTelephonyManager;->akaAuthentication([B[B)Landroid/os/Bundle;

    move-result-object v12

    if-eqz v12, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const-string v43, "res"

    move-object/from16 v0, v43

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Landroid/net/wifi/WifiStateMachine;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v26

    .local v26, res:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const-string v43, "Ck"

    move-object/from16 v0, v43

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Landroid/net/wifi/WifiStateMachine;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v4

    .local v4, Ck:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const-string v43, "Ik"

    move-object/from16 v0, v43

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Landroid/net/wifi/WifiStateMachine;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v5

    .local v5, Ik:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const-string v43, "kc"

    move-object/from16 v0, v43

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Landroid/net/wifi/WifiStateMachine;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v19

    .local v19, kc:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const-string v43, "auts"

    move-object/from16 v0, v43

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Landroid/net/wifi/WifiStateMachine;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v11

    .local v11, auts:Ljava/lang/String;
    if-nez v26, :cond_18

    if-nez v4, :cond_18

    if-nez v5, :cond_18

    if-eqz v19, :cond_1a

    :cond_18
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "OK:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ":"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ":"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ":"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v42, "WifiStateMachine"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "AKA: bundle != NULL, MsgDetail= "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v4           #Ck:Ljava/lang/String;
    .end local v5           #Ik:Ljava/lang/String;
    .end local v8           #MsgEnd:I
    .end local v9           #aszRspResult:[Ljava/lang/String;
    .end local v10           #autn:[B
    .end local v11           #auts:Ljava/lang/String;
    .end local v12           #bundle:Landroid/os/Bundle;
    .end local v16           #i:I
    .end local v19           #kc:Ljava/lang/String;
    .end local v23           #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    .end local v25           #rand:[B
    .end local v26           #res:Ljava/lang/String;
    .end local v28           #simType:Ljava/lang/String;
    .end local v29           #simType2G:Ljava/lang/String;
    .end local v30           #simType3G:Ljava/lang/String;
    .end local v31           #simTypeDBDM:Ljava/lang/String;
    .end local v32           #simTypeDUAL:Ljava/lang/String;
    .end local v33           #simTypeWIBRO_ONLY:Ljava/lang/String;
    .end local v37           #szRand:[Ljava/lang/String;
    .end local v38           #szTmpMsg:Ljava/lang/String;
    .end local v39           #szTmpMsg0:Ljava/lang/String;
    :cond_19
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Landroid/net/wifi/WifiStateMachine;->ctrlMsg(Ljava/lang/String;)Z

    goto/16 :goto_1

    .restart local v4       #Ck:Ljava/lang/String;
    .restart local v5       #Ik:Ljava/lang/String;
    .restart local v8       #MsgEnd:I
    .restart local v9       #aszRspResult:[Ljava/lang/String;
    .restart local v10       #autn:[B
    .restart local v11       #auts:Ljava/lang/String;
    .restart local v12       #bundle:Landroid/os/Bundle;
    .restart local v16       #i:I
    .restart local v19       #kc:Ljava/lang/String;
    .restart local v23       #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    .restart local v25       #rand:[B
    .restart local v26       #res:Ljava/lang/String;
    .restart local v28       #simType:Ljava/lang/String;
    .restart local v29       #simType2G:Ljava/lang/String;
    .restart local v30       #simType3G:Ljava/lang/String;
    .restart local v31       #simTypeDBDM:Ljava/lang/String;
    .restart local v32       #simTypeDUAL:Ljava/lang/String;
    .restart local v33       #simTypeWIBRO_ONLY:Ljava/lang/String;
    .restart local v37       #szRand:[Ljava/lang/String;
    .restart local v38       #szTmpMsg:Ljava/lang/String;
    .restart local v39       #szTmpMsg0:Ljava/lang/String;
    :cond_1a
    if-eqz v11, :cond_1b

    :try_start_3
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "FAIL:dc0e"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v42, "WifiStateMachine"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "AKA AUTH_AKA- FAIL, MsgDetail= "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    .end local v4           #Ck:Ljava/lang/String;
    .end local v5           #Ik:Ljava/lang/String;
    .end local v8           #MsgEnd:I
    .end local v9           #aszRspResult:[Ljava/lang/String;
    .end local v10           #autn:[B
    .end local v11           #auts:Ljava/lang/String;
    .end local v12           #bundle:Landroid/os/Bundle;
    .end local v16           #i:I
    .end local v19           #kc:Ljava/lang/String;
    .end local v23           #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    .end local v25           #rand:[B
    .end local v26           #res:Ljava/lang/String;
    .end local v28           #simType:Ljava/lang/String;
    .end local v29           #simType2G:Ljava/lang/String;
    .end local v30           #simType3G:Ljava/lang/String;
    .end local v31           #simTypeDBDM:Ljava/lang/String;
    .end local v32           #simTypeDUAL:Ljava/lang/String;
    .end local v33           #simTypeWIBRO_ONLY:Ljava/lang/String;
    .end local v37           #szRand:[Ljava/lang/String;
    .end local v38           #szTmpMsg:Ljava/lang/String;
    .end local v39           #szTmpMsg0:Ljava/lang/String;
    :catch_0
    move-exception v15

    .local v15, e:Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .end local v15           #e:Ljava/lang/Exception;
    .restart local v4       #Ck:Ljava/lang/String;
    .restart local v5       #Ik:Ljava/lang/String;
    .restart local v8       #MsgEnd:I
    .restart local v9       #aszRspResult:[Ljava/lang/String;
    .restart local v10       #autn:[B
    .restart local v11       #auts:Ljava/lang/String;
    .restart local v12       #bundle:Landroid/os/Bundle;
    .restart local v16       #i:I
    .restart local v19       #kc:Ljava/lang/String;
    .restart local v23       #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    .restart local v25       #rand:[B
    .restart local v26       #res:Ljava/lang/String;
    .restart local v28       #simType:Ljava/lang/String;
    .restart local v29       #simType2G:Ljava/lang/String;
    .restart local v30       #simType3G:Ljava/lang/String;
    .restart local v31       #simTypeDBDM:Ljava/lang/String;
    .restart local v32       #simTypeDUAL:Ljava/lang/String;
    .restart local v33       #simTypeWIBRO_ONLY:Ljava/lang/String;
    .restart local v37       #szRand:[Ljava/lang/String;
    .restart local v38       #szTmpMsg:Ljava/lang/String;
    .restart local v39       #szTmpMsg0:Ljava/lang/String;
    :cond_1b
    :try_start_4
    const-string v42, "WifiStateMachine"

    const-string v43, "AKA: bundle != NULL but still fail case"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "FAIL"

    goto :goto_6

    .end local v4           #Ck:Ljava/lang/String;
    .end local v5           #Ik:Ljava/lang/String;
    .end local v11           #auts:Ljava/lang/String;
    .end local v19           #kc:Ljava/lang/String;
    .end local v26           #res:Ljava/lang/String;
    :cond_1c
    const-string v42, "WifiStateMachine"

    const-string v43, "AKA: bundle == NULL "

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "FAIL"

    goto :goto_6

    .end local v10           #autn:[B
    .end local v12           #bundle:Landroid/os/Bundle;
    .end local v16           #i:I
    .end local v25           #rand:[B
    :cond_1d
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "008800812210"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const/16 v43, 0x0

    aget-object v43, v37, v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "10"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->sendAllowedCSIMCommand(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1f

    const/16 v42, 0x0

    aget-object v42, v9, v42

    const-string v43, "110"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_1e

    const/16 v42, 0x1

    aget-object v42, v9, v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v42

    const/16 v43, 0x6e

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_1e

    const/16 v42, 0x1

    aget-object v42, v9, v42

    const/16 v43, 0x6a

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v42

    const-string v43, "9000"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_1e

    const/16 v42, 0x1

    aget-object v42, v9, v42

    const/16 v43, 0x0

    const/16 v44, 0x4

    invoke-virtual/range {v42 .. v44}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v42

    const-string v43, "DB08"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_1e

    const/16 v42, 0x1

    aget-object v42, v9, v42

    const/16 v43, 0x14

    const/16 v44, 0x16

    invoke-virtual/range {v42 .. v44}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v42

    const-string v43, "10"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_1e

    const/16 v42, 0x1

    aget-object v42, v9, v42

    const/16 v43, 0x36

    const/16 v44, 0x38

    invoke-virtual/range {v42 .. v44}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v42

    const-string v43, "10"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_1e

    const/16 v42, 0x1

    aget-object v42, v9, v42

    const/16 v43, 0x58

    const/16 v44, 0x5a

    invoke-virtual/range {v42 .. v44}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v42

    const-string v43, "08"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_1e

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "OK:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const/16 v43, 0x1

    aget-object v43, v9, v43

    const/16 v44, 0x4

    const/16 v45, 0x14

    invoke-virtual/range {v43 .. v45}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ":"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const/16 v43, 0x1

    aget-object v43, v9, v43

    const/16 v44, 0x16

    const/16 v45, 0x36

    invoke-virtual/range {v43 .. v45}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ":"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const/16 v43, 0x1

    aget-object v43, v9, v43

    const/16 v44, 0x38

    const/16 v45, 0x58

    invoke-virtual/range {v43 .. v45}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ":"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const/16 v43, 0x1

    aget-object v43, v9, v43

    const/16 v44, 0x5a

    const/16 v45, 0x6a

    invoke-virtual/range {v43 .. v45}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_7
    const/4 v9, 0x0

    goto/16 :goto_6

    :cond_1e
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "FAIL:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const/16 v43, 0x1

    aget-object v43, v9, v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :cond_1f
    const-string v6, "FAIL"

    goto :goto_7

    :cond_20
    const-string v6, "null"

    goto/16 :goto_6

    :cond_21
    const-string v42, "AUTH_SIM-"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_19

    const/16 v42, 0x3a

    move-object/from16 v0, v38

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/16 v42, -0x1

    move/from16 v0, v42

    if-eq v8, v0, :cond_22

    const/16 v42, 0x1

    const/16 v43, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v43

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v43

    aput-object v43, v37, v42

    const/16 v42, 0x2

    add-int/lit8 v43, v8, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v43

    aput-object v43, v37, v42

    :cond_22
    const-string v6, "OK"

    const/16 v17, 0x0

    .local v17, ii:I
    :goto_8
    const/16 v42, 0x3

    move/from16 v0, v17

    move/from16 v1, v42

    if-ge v0, v1, :cond_19

    aget-object v42, v37, v17

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v42

    const/16 v43, 0x20

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_2c

    sget-short v42, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v43, 0x2d7

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_24

    sget-short v42, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v43, 0x31

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_24

    sget-short v42, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v43, 0xdf

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_24

    sget-short v42, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v43, 0x23f

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    aget-object v43, v37, v17

    #calls: Landroid/net/wifi/WifiStateMachine;->hexStringToByteArray(Ljava/lang/String;)[B
    invoke-static/range {v42 .. v43}, Landroid/net/wifi/WifiStateMachine;->access$18200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)[B

    move-result-object v25

    .restart local v25       #rand:[B
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/service/HtcTelephonyManager;->gsmAuthentication([B)Landroid/os/Bundle;

    move-result-object v12

    .restart local v12       #bundle:Landroid/os/Bundle;
    if-eqz v12, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const-string v43, "res"

    move-object/from16 v0, v43

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Landroid/net/wifi/WifiStateMachine;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v34

    .local v34, sres:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const-string v43, "kc"

    move-object/from16 v0, v43

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Landroid/net/wifi/WifiStateMachine;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v19

    .restart local v19       #kc:Ljava/lang/String;
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ":"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ":"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .end local v12           #bundle:Landroid/os/Bundle;
    .end local v19           #kc:Ljava/lang/String;
    .end local v25           #rand:[B
    .end local v34           #sres:Ljava/lang/String;
    :goto_9
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_8

    .restart local v12       #bundle:Landroid/os/Bundle;
    .restart local v25       #rand:[B
    :cond_23
    const-string v42, "WifiStateMachine"

    const-string v43, "AKA: bundle == NULL "

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "FAIL"

    goto/16 :goto_6

    .end local v12           #bundle:Landroid/os/Bundle;
    .end local v25           #rand:[B
    :cond_24
    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_25

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_25

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_27

    :cond_25
    const-string v38, "008800801110"

    :goto_a
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    aget-object v43, v37, v17

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->sendAllowedCSIMCommand(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2b

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_26

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_26

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_29

    :cond_26
    const/16 v42, 0x0

    aget-object v42, v9, v42

    const-string v43, "32"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_28

    const/16 v42, 0x1

    aget-object v42, v9, v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v42

    const/16 v43, 0x20

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_28

    const/16 v42, 0x1

    aget-object v42, v9, v42

    const/16 v43, 0x1c

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v42

    const-string v43, "9000"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_28

    const/16 v42, 0x1

    aget-object v42, v9, v42

    const/16 v43, 0x0

    const/16 v44, 0x2

    invoke-virtual/range {v42 .. v44}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v42

    const-string v43, "04"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_28

    const/16 v42, 0x1

    aget-object v42, v9, v42

    const/16 v43, 0xa

    const/16 v44, 0xc

    invoke-virtual/range {v42 .. v44}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v42

    const-string v43, "08"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_28

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ":"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const/16 v43, 0x1

    aget-object v43, v9, v43

    const/16 v44, 0x2

    const/16 v45, 0xa

    invoke-virtual/range {v43 .. v45}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ":"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const/16 v43, 0x1

    aget-object v43, v9, v43

    const/16 v44, 0xc

    const/16 v45, 0x1c

    invoke-virtual/range {v43 .. v45}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_b
    const/4 v9, 0x0

    goto/16 :goto_9

    :cond_27
    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_19

    const-string v38, "A088000010"

    goto/16 :goto_a

    :cond_28
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "FAIL:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const/16 v43, 0x1

    aget-object v43, v9, v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_6

    :cond_29
    const/16 v42, 0x0

    aget-object v42, v9, v42

    const-string v43, "28"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_2a

    const/16 v42, 0x1

    aget-object v42, v9, v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v42

    const/16 v43, 0x1c

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_2a

    const/16 v42, 0x1

    aget-object v42, v9, v42

    const/16 v43, 0x18

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v42

    const-string v43, "9000"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_2a

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ":"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const/16 v43, 0x1

    aget-object v43, v9, v43

    const/16 v44, 0x0

    const/16 v45, 0x8

    invoke-virtual/range {v43 .. v45}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ","

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const/16 v43, 0x1

    aget-object v43, v9, v43

    const/16 v44, 0x8

    const/16 v45, 0x18

    invoke-virtual/range {v43 .. v45}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_b

    :cond_2a
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "FAIL:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const/16 v43, 0x1

    aget-object v43, v9, v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_6

    :cond_2b
    const-string v6, "FAIL"

    goto/16 :goto_6

    :cond_2c
    const-string v6, "FAIL"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_6

    .end local v6           #MsgDetail:Ljava/lang/String;
    .end local v7           #MsgDetail0:Ljava/lang/String;
    .end local v8           #MsgEnd:I
    .end local v9           #aszRspResult:[Ljava/lang/String;
    .end local v17           #ii:I
    .end local v23           #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    .end local v28           #simType:Ljava/lang/String;
    .end local v29           #simType2G:Ljava/lang/String;
    .end local v30           #simType3G:Ljava/lang/String;
    .end local v31           #simTypeDBDM:Ljava/lang/String;
    .end local v32           #simTypeDUAL:Ljava/lang/String;
    .end local v33           #simTypeWIBRO_ONLY:Ljava/lang/String;
    .end local v36           #szAutn:Ljava/lang/String;
    .end local v37           #szRand:[Ljava/lang/String;
    .end local v38           #szTmpMsg:Ljava/lang/String;
    .end local v39           #szTmpMsg0:Ljava/lang/String;
    :sswitch_f
    new-instance v18, Landroid/content/Intent;

    const-string v42, "com.htc.wifi.AKA_INVALID_SIM"

    move-object/from16 v0, v18

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v18, intent:Landroid/content/Intent;
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v42

    if-eqz v42, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v42, "WifiStateMachine"

    const-string v43, "AKA: set intent AKA_INVALID_SIM_CHANGED_ACTION"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v18           #intent:Landroid/content/Intent;
    :sswitch_10
    sget-boolean v42, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_EAP_AKA_flag:Z

    if-eqz v42, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$13000(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v42

    if-eqz v42, :cond_0

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "CTRL-DAT-AIR_MODE-0:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v43 .. v43}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v43

    const-string v44, "airplane_mode_on"

    const/16 v45, 0x0

    invoke-static/range {v43 .. v45}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #MsgDetail:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiStateMachine;->ctrlMsg(Ljava/lang/String;)Z

    goto/16 :goto_1

    .end local v6           #MsgDetail:Ljava/lang/String;
    :sswitch_11
    sget-short v42, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v43, 0x50

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/lang/String;

    .local v40, typeData:Ljava/lang/String;
    new-instance v18, Landroid/content/Intent;

    const-string v42, "android.net.wifi.EAP_NOTIFICATION"

    move-object/from16 v0, v18

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v18       #intent:Landroid/content/Intent;
    const-string v42, "typeData"

    move-object/from16 v0, v18

    move-object/from16 v1, v42

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v42

    if-eqz v42, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v42, "WifiStateMachine"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "AKA: set intent EAP_NOTIFICATION_CHANGED_ACTION, "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v18           #intent:Landroid/content/Intent;
    .end local v40           #typeData:Ljava/lang/String;
    :sswitch_12
    const-string v42, "WifiStateMachine"

    const-string v43, "PERF_LOCK_EVENT received"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPerfWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$18300(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v43

    monitor-enter v43

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPerfWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$18300(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v42

    if-nez v42, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPerfWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$18300(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string v42, "WifiStateMachine"

    const-string v44, "2nd CPU lock acquired"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    monitor-exit v43

    goto/16 :goto_1

    :catchall_2
    move-exception v42

    monitor-exit v43
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v42

    :sswitch_13
    const-string v42, "WifiStateMachine"

    const-string v43, "PERF_UNLOCK_EVENT received"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPerfWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$18300(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v43

    monitor-enter v43

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPerfWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$18300(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v42

    if-eqz v42, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPerfWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v42 .. v42}, Landroid/net/wifi/WifiStateMachine;->access$18300(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/os/PowerManager$WakeLock;->release()V

    const-string v42, "WifiStateMachine"

    const-string v44, "2nd CPU lock released"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    monitor-exit v43

    goto/16 :goto_1

    :catchall_3
    move-exception v42

    monitor-exit v43
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v42

    :sswitch_data_0
    .sparse-switch
        0x20020 -> :sswitch_10
        0x20021 -> :sswitch_11
        0x2004a -> :sswitch_3
        0x2004b -> :sswitch_4
        0x2004c -> :sswitch_5
        0x20087 -> :sswitch_6
        0x24003 -> :sswitch_a
        0x24004 -> :sswitch_b
        0x24005 -> :sswitch_9
        0x24006 -> :sswitch_2
        0x24007 -> :sswitch_0
        0x2400d -> :sswitch_c
        0x2400e -> :sswitch_d
        0x2400f -> :sswitch_e
        0x24010 -> :sswitch_f
        0x24011 -> :sswitch_12
        0x24012 -> :sswitch_13
        0x24013 -> :sswitch_1
        0x25001 -> :sswitch_7
        0x2500a -> :sswitch_8
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
