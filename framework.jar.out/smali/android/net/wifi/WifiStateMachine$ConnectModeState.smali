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
    .line 7083
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 7086
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
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$2900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7087
    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 7088
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 36
    .parameter "message"

    .prologue
    .line 7091
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->getName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "\n"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$2900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7096
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v32, v0

    sparse-switch v32, :sswitch_data_0

    .line 7586
    const/16 v32, 0x0

    .line 7588
    :goto_0
    return v32

    .line 7098
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v32

    const v33, 0x24007

    invoke-virtual/range {v32 .. v33}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 7588
    :cond_0
    :goto_1
    const/16 v32, 0x1

    goto :goto_0

    .line 7102
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v32

    const v33, 0x24013

    invoke-virtual/range {v32 .. v33}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(I)V

    goto :goto_1

    .line 7106
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    #calls: Landroid/net/wifi/WifiStateMachine;->handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$12000(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v25

    .line 7109
    .local v25, state:Landroid/net/wifi/SupplicantState;
    invoke-static/range {v25 .. v25}, Landroid/net/wifi/SupplicantState;->isDriverActive(Landroid/net/wifi/SupplicantState;)Z

    move-result v32

    if-nez v32, :cond_2

    .line 7110
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$6300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v32

    sget-object v33, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_1

    .line 7111
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #calls: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$10400(Landroid/net/wifi/WifiStateMachine;)V

    .line 7113
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    const-string v33, "Detected an interface down, restart driver"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$2900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7114
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v33, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;
    invoke-static/range {v33 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$12200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v33

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$15900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 7115
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    const v33, 0x2000d

    invoke-virtual/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_1

    .line 7124
    :cond_2
    sget-object v32, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$6300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v32

    sget-object v33, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_0

    .line 7126
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    const-string v33, "Missed CTRL-EVENT-DISCONNECTED, disconnect"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$2900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7127
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #calls: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$10400(Landroid/net/wifi/WifiStateMachine;)V

    .line 7128
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v33, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v33 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$13600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v33

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$16000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 7133
    .end local v25           #state:Landroid/net/wifi/SupplicantState;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiNative;->disconnect()Z

    goto/16 :goto_1

    .line 7136
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiNative;->reconnect()Z

    goto/16 :goto_1

    .line 7139
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiNative;->reassociate()Z

    goto/16 :goto_1

    .line 7142
    :sswitch_6
    sget-short v32, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v33, 0x24

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_3

    sget-short v32, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v33, 0xe1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_3

    sget-short v32, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v33, 0x49

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_0

    .line 7145
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    const-string v33, "[DisableP2pConcurrent] stop STA auto connect 3"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$2100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7146
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiNative;->disableStaAutoConn()V

    goto/16 :goto_1

    .line 7155
    :sswitch_7
    sget-short v32, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v33, 0x24

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_4

    sget-short v32, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v33, 0xe1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_4

    sget-short v32, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v33, 0x49

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_b

    .line 7158
    :cond_4
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()I

    move-result v32

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_5

    .line 7159
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$16102(I)I

    .line 7160
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/net/wifi/WifiConfiguration;

    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$16202(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 7161
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    const-string v33, "[DisableP2pConcurrent] Pop msg to Disable P2p connection"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$2100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7163
    new-instance v13, Landroid/net/wifi/WifiStateMachine$ConnectModeState$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/net/wifi/WifiStateMachine$ConnectModeState$1;-><init>(Landroid/net/wifi/WifiStateMachine$ConnectModeState;)V

    .line 7174
    .local v13, listener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v17

    .line 7175
    .local v17, r:Landroid/content/res/Resources;
    new-instance v32, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v33, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v33 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v33, 0x104040d

    move-object/from16 v0, v17

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    const v33, 0x40700f9

    move-object/from16 v0, v17

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    const v33, 0x104000a

    move-object/from16 v0, v17

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    const/high16 v33, 0x104

    move-object/from16 v0, v17

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 7181
    .local v9, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v32

    const/16 v33, 0x7d3

    invoke-virtual/range {v32 .. v33}, Landroid/view/Window;->setType(I)V

    .line 7182
    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 7183
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v33, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;
    invoke-static/range {v33 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$16300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v33

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$16400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 7184
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    const v33, 0x25003

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move/from16 v2, v33

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$4100(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 7188
    .end local v9           #dialog:Landroid/app/AlertDialog;
    .end local v13           #listener:Landroid/content/DialogInterface$OnClickListener;
    .end local v17           #r:Landroid/content/res/Resources;
    :cond_5
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$200()Z

    move-result v32

    if-nez v32, :cond_9

    .line 7189
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    .line 7190
    .local v15, netId:I
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    .line 7195
    .local v8, config:Landroid/net/wifi/WifiConfiguration;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$3100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v32

    const v33, 0x22010

    invoke-virtual/range {v32 .. v33}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 7196
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$3100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v32

    const v33, 0x2200a

    invoke-virtual/range {v32 .. v33}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 7198
    if-eqz v8, :cond_6

    .line 7199
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Landroid/net/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v18

    .line 7200
    .local v18, result:Landroid/net/wifi/NetworkUpdateResult;
    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v15

    .line 7203
    .end local v18           #result:Landroid/net/wifi/NetworkUpdateResult;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Landroid/net/wifi/WifiConfigStore;->selectNetwork(I)Z

    move-result v32

    if-eqz v32, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiNative;->reconnect()Z

    move-result v32

    if-eqz v32, :cond_a

    .line 7206
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v32

    const v33, 0x25001

    invoke-virtual/range {v32 .. v33}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 7207
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$200()Z

    move-result v32

    if-nez v32, :cond_7

    .line 7208
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    const v33, 0x25003

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move/from16 v2, v33

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$4100(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 7210
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v33, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static/range {v33 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$16500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v33

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$16600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 7218
    :cond_8
    :goto_3
    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$202(Z)Z

    .line 7219
    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$16102(I)I

    .line 7220
    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$16202(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    goto/16 :goto_1

    .line 7192
    .end local v8           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v15           #netId:I
    :cond_9
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$16100()I

    move-result v15

    .line 7193
    .restart local v15       #netId:I
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$16200()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .restart local v8       #config:Landroid/net/wifi/WifiConfiguration;
    goto/16 :goto_2

    .line 7212
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Failed to connect config: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " netId: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$2100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7213
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$200()Z

    move-result v32

    if-nez v32, :cond_8

    .line 7214
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    const v33, 0x25002

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move/from16 v2, v33

    move/from16 v3, v34

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto :goto_3

    .line 7223
    .end local v8           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v15           #netId:I
    :cond_b
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    .line 7224
    .restart local v15       #netId:I
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    .line 7227
    .restart local v8       #config:Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mHtcNetworkSelectionFeature:Z
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$10000(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v32

    if-eqz v32, :cond_c

    .line 7228
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    const/16 v33, 0x4

    #setter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectReason:I
    invoke-static/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$10102(Landroid/net/wifi/WifiStateMachine;I)I

    .line 7233
    :cond_c
    if-eqz v8, :cond_d

    .line 7234
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Landroid/net/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v18

    .line 7235
    .restart local v18       #result:Landroid/net/wifi/NetworkUpdateResult;
    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v15

    .line 7238
    .end local v18           #result:Landroid/net/wifi/NetworkUpdateResult;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Landroid/net/wifi/WifiConfigStore;->selectNetwork(I)Z

    move-result v32

    if-eqz v32, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiNative;->reconnect()Z

    move-result v32

    if-eqz v32, :cond_e

    .line 7241
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v32

    const v33, 0x25001

    invoke-virtual/range {v32 .. v33}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 7242
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    const v33, 0x25003

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move/from16 v2, v33

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$4100(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 7244
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v33, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static/range {v33 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$16500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v33

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$16700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 7246
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Failed to connect config: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " netId: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$2100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7247
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    const v33, 0x25002

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move/from16 v2, v33

    move/from16 v3, v34

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 7254
    .end local v8           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v15           #netId:I
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Landroid/net/wifi/WpsInfo;

    .line 7256
    .local v31, wpsInfo:Landroid/net/wifi/WpsInfo;
    move-object/from16 v0, v31

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    move/from16 v32, v0

    packed-switch v32, :pswitch_data_0

    .line 7267
    new-instance v18, Landroid/net/wifi/WpsResult;

    sget-object v32, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    .line 7268
    .local v18, result:Landroid/net/wifi/WpsResult;
    const-string v32, "WifiStateMachine"

    const-string v33, "Invalid setup for WPS"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7271
    :goto_4
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v32, v0

    sget-object v33, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_f

    .line 7272
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    const v33, 0x2500b

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move/from16 v2, v33

    move-object/from16 v3, v18

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$3400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    .line 7273
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v33, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;
    invoke-static/range {v33 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$16800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v33

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$16900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 7258
    .end local v18           #result:Landroid/net/wifi/WpsResult;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfigStore;->startWpsPbc(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v18

    .line 7259
    .restart local v18       #result:Landroid/net/wifi/WpsResult;
    goto :goto_4

    .line 7261
    .end local v18           #result:Landroid/net/wifi/WpsResult;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfigStore;->startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v18

    .line 7262
    .restart local v18       #result:Landroid/net/wifi/WpsResult;
    goto :goto_4

    .line 7264
    .end local v18           #result:Landroid/net/wifi/WpsResult;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfigStore;->startWpsWithPinFromDevice(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v18

    .line 7265
    .restart local v18       #result:Landroid/net/wifi/WpsResult;
    goto :goto_4

    .line 7275
    :cond_f
    const-string v32, "WifiStateMachine"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Failed to start WPS with config "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v31 .. v31}, Landroid/net/wifi/WpsInfo;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7276
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    const v33, 0x2500c

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move/from16 v2, v33

    move/from16 v3, v34

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 7283
    .end local v18           #result:Landroid/net/wifi/WpsResult;
    .end local v31           #wpsInfo:Landroid/net/wifi/WpsInfo;
    :sswitch_9
    sget-short v32, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v33, 0xda

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_11

    .line 7284
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mAssociateManual:Z
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$13300(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v32

    if-eqz v32, :cond_10

    .line 7285
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v32

    const/16 v33, -0x1

    invoke-virtual/range {v32 .. v33}, Landroid/net/wifi/WifiNative;->setScanResultHandling(I)Z

    .line 7295
    :goto_5
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 7287
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v32

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Landroid/net/wifi/WifiNative;->setScanResultHandling(I)Z

    goto :goto_5

    .line 7290
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v32

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Landroid/net/wifi/WifiNative;->setScanResultHandling(I)Z

    goto :goto_5

    .line 7297
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    const-string v33, "Network connection established"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$2900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7298
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$8302(Landroid/net/wifi/WifiStateMachine;I)I

    .line 7299
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$8202(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 7302
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #calls: Landroid/net/wifi/WifiStateMachine;->fetchRssiAndLinkSpeedNative()V
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$17000(Landroid/net/wifi/WifiStateMachine;)V

    .line 7304
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$8600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v33, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$8200(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 7305
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$8600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v33, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v33 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$8300(Landroid/net/wifi/WifiStateMachine;)I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 7307
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$8600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v33, v0

    #calls: Landroid/net/wifi/WifiStateMachine;->fetchFrequency()I
    invoke-static/range {v33 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$17100(Landroid/net/wifi/WifiStateMachine;)I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/net/wifi/WifiInfo;->setFrequency(I)V

    .line 7310
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    sget-object v33, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$13000(Landroid/net/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)V

    .line 7311
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v33, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$8200(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v33

    #calls: Landroid/net/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    invoke-static/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$17200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7313
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mHtcNetworkSelectionFeature:Z
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$10000(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v32

    if-eqz v32, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableAPDatabase:Z
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$17300(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v32

    if-eqz v32, :cond_12

    .line 7315
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #calls: Landroid/net/wifi/WifiStateMachine;->addNewDBRecord()V
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$17400(Landroid/net/wifi/WifiStateMachine;)V

    .line 7318
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v33, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;
    invoke-static/range {v33 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$17500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v33

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$17600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 7321
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    const-string v33, "Network connection lost"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$2900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7323
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mHtcNetworkSelectionFeature:Z
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$10000(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v32

    if-eqz v32, :cond_13

    .line 7324
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    #setter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectReason:I
    invoke-static/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$10102(Landroid/net/wifi/WifiStateMachine;I)I

    .line 7327
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #calls: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$10400(Landroid/net/wifi/WifiStateMachine;)V

    .line 7328
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v33, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v33 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$13600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v33

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$17700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 7332
    :sswitch_c
    sget-boolean v32, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_EAP_AKA_flag:Z

    if-eqz v32, :cond_0

    .line 7333
    monitor-enter p0

    .line 7334
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v32

    const-string/jumbo v33, "phone"

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/TelephonyManager;

    .line 7335
    .local v14, mTelephonyManager:Landroid/telephony/TelephonyManager;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "CTRL-RSP-"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ":"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7336
    .local v4, MsgDetail:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiStateMachine;->ctrlMsg(Ljava/lang/String;)Z

    .line 7337
    monitor-exit p0

    goto/16 :goto_1

    .end local v4           #MsgDetail:Ljava/lang/String;
    .end local v14           #mTelephonyManager:Landroid/telephony/TelephonyManager;
    :catchall_0
    move-exception v32

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v32

    .line 7341
    :sswitch_d
    sget-boolean v32, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_EAP_AKA_flag:Z

    if-eqz v32, :cond_0

    .line 7342
    monitor-enter p0

    .line 7343
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v32

    const-string/jumbo v33, "phone"

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/TelephonyManager;

    .line 7344
    .restart local v14       #mTelephonyManager:Landroid/telephony/TelephonyManager;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "CTRL-DAT-"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ":"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ":"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7346
    .restart local v4       #MsgDetail:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiStateMachine;->ctrlMsg(Ljava/lang/String;)Z

    .line 7347
    monitor-exit p0

    goto/16 :goto_1

    .end local v4           #MsgDetail:Ljava/lang/String;
    .end local v14           #mTelephonyManager:Landroid/telephony/TelephonyManager;
    :catchall_1
    move-exception v32

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v32

    .line 7351
    :sswitch_e
    sget-boolean v32, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_EAP_AKA_flag:Z

    if-eqz v32, :cond_0

    .line 7352
    const-string v5, "CTRL-DAT-"

    .local v5, MsgDetail0:Ljava/lang/String;
    const-string v4, "FAIL"

    .line 7355
    .restart local v4       #MsgDetail:Ljava/lang/String;
    const/16 v26, 0x0

    .line 7356
    .local v26, szAutn:Ljava/lang/String;
    const/16 v32, 0x3

    :try_start_2
    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    .line 7358
    .local v27, szRand:[Ljava/lang/String;
    const-string/jumbo v32, "phone"

    invoke-static/range {v32 .. v32}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v16

    .line 7360
    .local v16, phoneInterface:Lcom/android/internal/telephony/ITelephony;
    const/4 v7, 0x0

    .line 7362
    .local v7, aszRspResult:[Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Ljava/lang/String;

    .local v29, szTmpMsg0:Ljava/lang/String;
    move-object/from16 v28, v29

    .line 7363
    .local v28, szTmpMsg:Ljava/lang/String;
    const/16 v32, 0x3a

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 7364
    .local v6, MsgEnd:I
    const/16 v32, -0x1

    move/from16 v0, v32

    if-ne v6, v0, :cond_14

    .line 7365
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v6

    .line 7366
    :cond_14
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v33

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ":"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7367
    add-int/lit8 v32, v6, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    .line 7368
    const/16 v32, 0x3a

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 7369
    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v6, v0, :cond_15

    .line 7370
    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v33

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v27, v32

    .line 7371
    add-int/lit8 v32, v6, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    .line 7374
    :cond_15
    const-string v32, "gsm.sim.types"

    const-string v33, ""

    invoke-static/range {v32 .. v33}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 7377
    .local v19, simType:Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, ""

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_3G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 7378
    .local v21, simType3G:Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, ""

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_2G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 7379
    .local v20, simType2G:Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, ""

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_DBDM_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 7380
    .local v22, simTypeDBDM:Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, ""

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_WIBRO_ONLY_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 7381
    .local v24, simTypeWIBRO_ONLY:Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, ""

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_DUAL_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 7383
    .local v23, simTypeDUAL:Ljava/lang/String;
    const-string v32, "AUTH_AKA-"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_1b

    .line 7384
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_16

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_16

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_16

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1a

    .line 7385
    :cond_16
    move-object/from16 v26, v28

    .line 7416
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "008800812210"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x0

    aget-object v33, v27, v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "10"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 7417
    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->sendAllowedCSIMCommand(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 7418
    if-eqz v7, :cond_19

    .line 7419
    const/16 v32, 0x0

    aget-object v32, v7, v32

    const-string v33, "110"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_18

    const/16 v32, 0x1

    aget-object v32, v7, v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    const/16 v33, 0x6e

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_18

    const/16 v32, 0x1

    aget-object v32, v7, v32

    const/16 v33, 0x6a

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v32

    const-string v33, "9000"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_18

    const/16 v32, 0x1

    aget-object v32, v7, v32

    const/16 v33, 0x0

    const/16 v34, 0x4

    invoke-virtual/range {v32 .. v34}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    const-string v33, "DB08"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_18

    const/16 v32, 0x1

    aget-object v32, v7, v32

    const/16 v33, 0x14

    const/16 v34, 0x16

    invoke-virtual/range {v32 .. v34}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    const-string v33, "10"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_18

    const/16 v32, 0x1

    aget-object v32, v7, v32

    const/16 v33, 0x36

    const/16 v34, 0x38

    invoke-virtual/range {v32 .. v34}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    const-string v33, "10"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_18

    const/16 v32, 0x1

    aget-object v32, v7, v32

    const/16 v33, 0x58

    const/16 v34, 0x5a

    invoke-virtual/range {v32 .. v34}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    const-string v33, "08"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_18

    .line 7426
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "OK:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x1

    aget-object v33, v7, v33

    const/16 v34, 0x4

    const/16 v35, 0x14

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ":"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x1

    aget-object v33, v7, v33

    const/16 v34, 0x16

    const/16 v35, 0x36

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ":"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x1

    aget-object v33, v7, v33

    const/16 v34, 0x38

    const/16 v35, 0x58

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ":"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x1

    aget-object v33, v7, v33

    const/16 v34, 0x5a

    const/16 v35, 0x6a

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    .line 7437
    :goto_6
    const/4 v7, 0x0

    .line 7524
    .end local v6           #MsgEnd:I
    .end local v7           #aszRspResult:[Ljava/lang/String;
    .end local v16           #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    .end local v19           #simType:Ljava/lang/String;
    .end local v20           #simType2G:Ljava/lang/String;
    .end local v21           #simType3G:Ljava/lang/String;
    .end local v22           #simTypeDBDM:Ljava/lang/String;
    .end local v23           #simTypeDUAL:Ljava/lang/String;
    .end local v24           #simTypeWIBRO_ONLY:Ljava/lang/String;
    .end local v27           #szRand:[Ljava/lang/String;
    .end local v28           #szTmpMsg:Ljava/lang/String;
    .end local v29           #szTmpMsg0:Ljava/lang/String;
    :cond_17
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/net/wifi/WifiStateMachine;->ctrlMsg(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 7432
    .restart local v6       #MsgEnd:I
    .restart local v7       #aszRspResult:[Ljava/lang/String;
    .restart local v16       #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    .restart local v19       #simType:Ljava/lang/String;
    .restart local v20       #simType2G:Ljava/lang/String;
    .restart local v21       #simType3G:Ljava/lang/String;
    .restart local v22       #simTypeDBDM:Ljava/lang/String;
    .restart local v23       #simTypeDUAL:Ljava/lang/String;
    .restart local v24       #simTypeWIBRO_ONLY:Ljava/lang/String;
    .restart local v27       #szRand:[Ljava/lang/String;
    .restart local v28       #szTmpMsg:Ljava/lang/String;
    .restart local v29       #szTmpMsg0:Ljava/lang/String;
    :cond_18
    :try_start_3
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "FAIL:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x1

    aget-object v33, v7, v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .line 7435
    :cond_19
    const-string v4, "FAIL"

    goto :goto_6

    .line 7441
    :cond_1a
    const-string/jumbo v4, "null"

    goto :goto_7

    .line 7443
    :cond_1b
    const-string v32, "AUTH_SIM-"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_17

    .line 7444
    const/16 v32, 0x3a

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 7445
    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v6, v0, :cond_1c

    .line 7446
    const/16 v32, 0x1

    const/16 v33, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v33

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v27, v32

    .line 7447
    const/16 v32, 0x2

    add-int/lit8 v33, v6, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v27, v32

    .line 7450
    :cond_1c
    const-string v4, "OK"

    .line 7451
    const/4 v11, 0x0

    .local v11, ii:I
    :goto_8
    const/16 v32, 0x3

    move/from16 v0, v32

    if-ge v11, v0, :cond_17

    .line 7452
    aget-object v32, v27, v11

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    const/16 v33, 0x20

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_24

    .line 7469
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_1d

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_1d

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1f

    .line 7470
    :cond_1d
    const-string v28, "008800801110"

    .line 7475
    :goto_9
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    aget-object v33, v27, v11

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 7477
    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->sendAllowedCSIMCommand(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 7478
    if-eqz v7, :cond_23

    .line 7479
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_1e

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_1e

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_21

    .line 7480
    :cond_1e
    const/16 v32, 0x0

    aget-object v32, v7, v32

    const-string v33, "32"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_20

    const/16 v32, 0x1

    aget-object v32, v7, v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    const/16 v33, 0x20

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_20

    const/16 v32, 0x1

    aget-object v32, v7, v32

    const/16 v33, 0x1c

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v32

    const-string v33, "9000"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_20

    const/16 v32, 0x1

    aget-object v32, v7, v32

    const/16 v33, 0x0

    const/16 v34, 0x2

    invoke-virtual/range {v32 .. v34}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    const-string v33, "04"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_20

    const/16 v32, 0x1

    aget-object v32, v7, v32

    const/16 v33, 0xa

    const/16 v34, 0xc

    invoke-virtual/range {v32 .. v34}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    const-string v33, "08"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_20

    .line 7485
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ":"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x1

    aget-object v33, v7, v33

    const/16 v34, 0x2

    const/16 v35, 0xa

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ":"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x1

    aget-object v33, v7, v33

    const/16 v34, 0xc

    const/16 v35, 0x1c

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7510
    :goto_a
    const/4 v7, 0x0

    .line 7451
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_8

    .line 7471
    :cond_1f
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_17

    .line 7472
    const-string v28, "A088000010"

    goto/16 :goto_9

    .line 7489
    :cond_20
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "FAIL:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x1

    aget-object v33, v7, v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7490
    goto/16 :goto_7

    .line 7494
    :cond_21
    const/16 v32, 0x0

    aget-object v32, v7, v32

    const-string v33, "28"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_22

    const/16 v32, 0x1

    aget-object v32, v7, v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    const/16 v33, 0x1c

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_22

    const/16 v32, 0x1

    aget-object v32, v7, v32

    const/16 v33, 0x18

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v32

    const-string v33, "9000"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_22

    .line 7497
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ":"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x1

    aget-object v33, v7, v33

    const/16 v34, 0x0

    const/16 v35, 0x8

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ","

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x1

    aget-object v33, v7, v33

    const/16 v34, 0x8

    const/16 v35, 0x18

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_a

    .line 7501
    :cond_22
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "FAIL:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x1

    aget-object v33, v7, v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7502
    goto/16 :goto_7

    .line 7507
    :cond_23
    const-string v4, "FAIL"

    .line 7508
    goto/16 :goto_7

    .line 7514
    :cond_24
    const-string v4, "FAIL"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 7515
    goto/16 :goto_7

    .line 7521
    .end local v6           #MsgEnd:I
    .end local v7           #aszRspResult:[Ljava/lang/String;
    .end local v11           #ii:I
    .end local v16           #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    .end local v19           #simType:Ljava/lang/String;
    .end local v20           #simType2G:Ljava/lang/String;
    .end local v21           #simType3G:Ljava/lang/String;
    .end local v22           #simTypeDBDM:Ljava/lang/String;
    .end local v23           #simTypeDUAL:Ljava/lang/String;
    .end local v24           #simTypeWIBRO_ONLY:Ljava/lang/String;
    .end local v27           #szRand:[Ljava/lang/String;
    .end local v28           #szTmpMsg:Ljava/lang/String;
    .end local v29           #szTmpMsg0:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 7522
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 7528
    .end local v4           #MsgDetail:Ljava/lang/String;
    .end local v5           #MsgDetail0:Ljava/lang/String;
    .end local v10           #e:Ljava/lang/Exception;
    .end local v26           #szAutn:Ljava/lang/String;
    :sswitch_f
    new-instance v12, Landroid/content/Intent;

    const-string v32, "com.htc.wifi.AKA_INVALID_SIM"

    move-object/from16 v0, v32

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7529
    .local v12, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 7530
    const-string v32, "WifiStateMachine"

    const-string v33, "AKA: set intent AKA_INVALID_SIM_CHANGED_ACTION"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 7533
    .end local v12           #intent:Landroid/content/Intent;
    :sswitch_10
    sget-boolean v32, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_EAP_AKA_flag:Z

    if-eqz v32, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$12500(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v32

    if-eqz v32, :cond_0

    .line 7534
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "CTRL-DAT-AIR_MODE-0:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v33, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v33 .. v33}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string v34, "airplane_mode_on"

    const/16 v35, 0x0

    invoke-static/range {v33 .. v35}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7536
    .restart local v4       #MsgDetail:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiStateMachine;->ctrlMsg(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 7540
    .end local v4           #MsgDetail:Ljava/lang/String;
    :sswitch_11
    sget-short v32, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v33, 0x50

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_0

    .line 7541
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/String;

    .line 7542
    .local v30, typeData:Ljava/lang/String;
    new-instance v12, Landroid/content/Intent;

    const-string v32, "android.net.wifi.EAP_NOTIFICATION"

    move-object/from16 v0, v32

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7543
    .restart local v12       #intent:Landroid/content/Intent;
    const-string/jumbo v32, "typeData"

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7544
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 7545
    const-string v32, "WifiStateMachine"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "AKA: set intent EAP_NOTIFICATION_CHANGED_ACTION, "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 7549
    .end local v12           #intent:Landroid/content/Intent;
    .end local v30           #typeData:Ljava/lang/String;
    :sswitch_12
    const-string v32, "WifiStateMachine"

    const-string v33, "PERF_LOCK_EVENT received"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7550
    sget-short v32, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v33, 0x2d7

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_26

    .line 7551
    monitor-enter p0

    .line 7552
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPerfWakeLock_min_freq:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$17800(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v32

    if-nez v32, :cond_25

    .line 7553
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPerfWakeLock_min_freq:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$17800(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 7555
    :cond_25
    const-string v32, "WifiStateMachine"

    const-string v33, "1nd CPU lock only acquired"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7556
    monitor-exit p0

    goto/16 :goto_1

    :catchall_2
    move-exception v32

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v32

    .line 7558
    :cond_26
    monitor-enter p0

    .line 7559
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPerfWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$17900(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v32

    if-nez v32, :cond_27

    .line 7560
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPerfWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$17900(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 7561
    const-string v32, "WifiStateMachine"

    const-string v33, "2nd CPU lock acquired"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7563
    :cond_27
    monitor-exit p0

    goto/16 :goto_1

    :catchall_3
    move-exception v32

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v32

    .line 7567
    :sswitch_13
    const-string v32, "WifiStateMachine"

    const-string v33, "PERF_UNLOCK_EVENT received"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7568
    sget-short v32, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v33, 0x2d7

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_29

    .line 7569
    monitor-enter p0

    .line 7570
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPerfWakeLock_min_freq:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$17800(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v32

    if-eqz v32, :cond_28

    .line 7571
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPerfWakeLock_min_freq:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$17800(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 7573
    :cond_28
    const-string v32, "WifiStateMachine"

    const-string v33, "1nd CPU lock only released"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7574
    monitor-exit p0

    goto/16 :goto_1

    :catchall_4
    move-exception v32

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v32

    .line 7576
    :cond_29
    monitor-enter p0

    .line 7577
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPerfWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$17900(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v32

    if-eqz v32, :cond_2a

    .line 7578
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPerfWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateMachine;->access$17900(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 7579
    const-string v32, "WifiStateMachine"

    const-string v33, "2nd CPU lock released"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7581
    :cond_2a
    monitor-exit p0

    goto/16 :goto_1

    :catchall_5
    move-exception v32

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v32

    .line 7096
    nop

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

    .line 7256
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
