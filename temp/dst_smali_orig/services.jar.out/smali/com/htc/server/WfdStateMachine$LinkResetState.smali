.class Lcom/htc/server/WfdStateMachine$LinkResetState;
.super Lcom/htc/server/State;
.source "WfdStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WfdStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LinkResetState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WfdStateMachine;


# direct methods
.method constructor <init>(Lcom/htc/server/WfdStateMachine;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-direct {p0}, Lcom/htc/server/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    const-string v0, "WfdStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine$LinkResetState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 11
    .parameter "message"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x6

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "WfdStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Processing==> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine$LinkResetState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    const-string v3, "WfdStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine$LinkResetState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " drop message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move v3, v4

    :sswitch_0
    return v3

    :sswitch_1
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .local v2, wifiState:I
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_0

    if-ne v2, v8, :cond_0

    const/4 v5, 0x3

    if-ne v2, v5, :cond_0

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->clear(I)V

    :cond_0
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v5}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getWifiApState(Landroid/net/wifi/WifiManager;)I

    move-result v1

    .local v1, wifiApState:I
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    invoke-virtual {v5, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0xc

    if-ne v1, v5, :cond_1

    const/16 v5, 0xd

    if-ne v1, v5, :cond_1

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    invoke-virtual {v5, v8}, Ljava/util/BitSet;->clear(I)V

    :cond_1
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v5, v5, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v5, v5, Lcom/htc/server/WfdStateMachine;->mIsReConfiguring:Z

    if-eqz v5, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    invoke-virtual {v5, v9}, Ljava/util/BitSet;->set(I)V

    :cond_3
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v5, Lcom/htc/server/WfdStateMachine;->mIsScanning:Z

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v5, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v5, Lcom/htc/server/WfdStateMachine;->mIsReConfiguring:Z

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v5, Lcom/htc/server/WfdStateMachine;->mIsDiscovering:Z

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v5, Lcom/htc/server/WfdStateMachine;->mIsAphConnectable:Z

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v5, Lcom/htc/server/WfdStateMachine;->mIsDeferConfigure:Z

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v5, Lcom/htc/server/WfdStateMachine;->mIsDeferDiscovery:Z

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v5, Lcom/htc/server/WfdStateMachine;->mNeedSwitchingAph:Z

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v5, Lcom/htc/server/WfdStateMachine;->mIsDfsChannel:Z

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v5, Lcom/htc/server/WfdStateMachine;->mIsWivuTimeout:Z

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v5, Lcom/htc/server/WfdStateMachine;->mIsSwitchingDongles:Z

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v5, Lcom/htc/server/WfdStateMachine;->mIsAphConnectableBefore:Z

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v5, Lcom/htc/server/WfdStateMachine;->mIsResettingDongle:Z

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v5, Lcom/htc/server/WfdStateMachine;->mIsUnlockDongle:Z

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v5, Lcom/htc/server/WfdStateMachine;->mIsUnlockSucceed:Z

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v5, Lcom/htc/server/WfdStateMachine;->mIsConnectionRequest:Z

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    const-string v6, ""

    iput-object v6, v5, Lcom/htc/server/WfdStateMachine;->mConnectableAphBeforeSsid:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    invoke-virtual {v5, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mContext:Landroid/content/Context;

    const-string v6, "com.htc.server.ResetService"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "reset_wifi"

    iget-object v6, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v6, v6, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    invoke-virtual {v6, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "reset_ap"

    iget-object v6, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v6, v6, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    invoke-virtual {v6, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "reconnect_dfs"

    iget-object v6, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v6, v6, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    invoke-virtual {v6, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "reset_dongle"

    iget-object v6, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v6, v6, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    invoke-virtual {v6, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v5, v5, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    if-eqz v5, :cond_5

    const-string v5, "dongle_bssid"

    iget-object v6, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v6, v6, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v6, v6, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v5, "WfdStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[WFD]===>Start ResetService, wifi = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v7, v7, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    invoke-virtual {v7, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ap = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v7, v7, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", dfs = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v7, v7, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    invoke-virtual {v7, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", reset dongle = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v7, v7, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    invoke-virtual {v7, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->clear()V

    .end local v0           #intent:Landroid/content/Intent;
    :cond_6
    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v5}, Lcom/htc/server/WfdStateMachine;->isMirrorModeEnable()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "WfdStateMachine"

    const-string v6, "Stopping mirror mode anyway."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v5, v3}, Lcom/htc/service/WirelessDisplayManager;->mirrorModeStartStop(Z)Z

    goto/16 :goto_0

    :cond_7
    const-string v5, "WfdStateMachine"

    const-string v6, "Enable scan....@LinkReset"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v5, v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setWifiDisplayUnscan(Landroid/net/wifi/WifiManager;Z)Z

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v6, 0x1a

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v5, v6}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    const-string v5, "WfdStateMachine"

    const-string v6, "Resetting is complete."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v5, Lcom/htc/server/WfdStateMachine;->mIsResetting:Z

    const-string v3, "WfdStateMachine"

    const-string v5, "[0619] ====>>> @LinkReset: Finish service, NOT quit state machine. <<<===="

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "WfdStateMachine"

    const-string v5, "[0619] ====>>> @LinkReset: transitionTo LinkInitState <<<===="

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkResetState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {v3, v5}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x38 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch
.end method
