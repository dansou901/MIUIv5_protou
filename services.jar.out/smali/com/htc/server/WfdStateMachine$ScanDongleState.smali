.class Lcom/htc/server/WfdStateMachine$ScanDongleState;
.super Lcom/htc/server/State;
.source "WfdStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WfdStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanDongleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WfdStateMachine;


# direct methods
.method constructor <init>(Lcom/htc/server/WfdStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 894
    iput-object p1, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-direct {p0}, Lcom/htc/server/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 897
    const-string v0, "WfdStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine$ScanDongleState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    sget-boolean v0, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v0}, Lcom/htc/server/WfdStateMachine;->isMirrorModeEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->forceDisableAp()V
    invoke-static {v0}, Lcom/htc/server/WfdStateMachine;->access$1800(Lcom/htc/server/WfdStateMachine;)V

    .line 901
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 905
    const-string v0, "WfdStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exit>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine$ScanDongleState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 907
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/server/WfdStateMachine;->mIsQuickScanning:Z

    .line 908
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/server/WfdStateMachine;->mIsScanComplete:Z

    .line 909
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .parameter "message"

    .prologue
    const-wide/16 v7, 0xbb8

    const/16 v6, 0x25

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/16 v5, 0x19

    .line 913
    const-string v2, "WfdStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Processing==> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine$ScanDongleState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1013
    const-string v0, "WfdStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine$ScanDongleState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " drop message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    move v0, v1

    .line 1015
    :sswitch_0
    return v0

    .line 916
    :sswitch_1
    iget-object v2, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v2, v2, Lcom/htc/server/WfdStateMachine;->mIsQuickScanning:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v2, v2, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v2, v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->startDongleSingleCscan(Landroid/net/wifi/WifiManager;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 917
    const-string v0, "WfdStateMachine"

    const-string v2, "Request startDongleSingleCscan(1) failed."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :goto_1
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v0, v6, v7, v8}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0

    .line 919
    :cond_1
    iget-object v2, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v1, v2, Lcom/htc/server/WfdStateMachine;->mIsQuickScanning:Z

    .line 920
    const-string v2, "WfdStateMachine"

    const-string v3, "Request startDongleSingleCscan"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-object v2, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v0, v2, Lcom/htc/server/WfdStateMachine;->mIsScanComplete:Z

    goto :goto_1

    .line 926
    :sswitch_2
    iget-object v2, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v2, v2, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->startDongleScan(Landroid/net/wifi/WifiManager;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 927
    const-string v0, "WfdStateMachine"

    const-string v2, "Request active scan failed."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :goto_2
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v6, v2, v3}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0

    .line 929
    :cond_2
    const-string v2, "WfdStateMachine"

    const-string v3, "Request startDongleScan"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    iget-object v2, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v0, v2, Lcom/htc/server/WfdStateMachine;->mIsScanComplete:Z

    goto :goto_2

    .line 943
    :sswitch_3
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v2, v2, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {v0, v2}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 944
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 948
    :sswitch_4
    iget-object v2, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v2, v6}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 949
    iget-object v2, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v1, v2, Lcom/htc/server/WfdStateMachine;->mIsScanComplete:Z

    .line 950
    iget-object v2, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v2, v2, Lcom/htc/server/WfdStateMachine;->mIsDeferConfigure:Z

    if-eqz v2, :cond_4

    .line 951
    sget-boolean v0, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-eqz v0, :cond_3

    .line 952
    const-string v0, "WfdStateMachine"

    const-string v2, "Last scan is complete, ready to configure."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v0, v1}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 956
    :cond_3
    const-string v0, "WfdStateMachine"

    const-string v2, "Last scan is complete, send delay msg for WPSOnDemand."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v7, v8}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 960
    :cond_4
    iget-object v2, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v2, v2, Lcom/htc/server/WfdStateMachine;->mIsDeferDiscovery:Z

    if-eqz v2, :cond_5

    .line 961
    const-string v2, "WfdStateMachine"

    const-string v3, "Last scan is complete, ready to discovery."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    iget-object v2, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    .line 963
    iget-object v2, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v0, v2, Lcom/htc/server/WfdStateMachine;->mIsDeferDiscovery:Z

    goto/16 :goto_0

    .line 965
    :cond_5
    iget-object v2, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v2, v2, Lcom/htc/server/WfdStateMachine;->mIsQuickScanning:Z

    if-eqz v2, :cond_6

    .line 966
    iget-object v2, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v2, v5}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    .line 967
    iget-object v2, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v0, v2, Lcom/htc/server/WfdStateMachine;->mIsQuickScanning:Z

    .line 970
    :goto_3
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v5, v2, v3}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 969
    :cond_6
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v0, v5}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    goto :goto_3

    .line 974
    :sswitch_5
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 975
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v0, v5}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 976
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v2, v2, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {v0, v2}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    goto/16 :goto_0

    .line 979
    :sswitch_6
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v2, v2, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {v0, v2}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    goto/16 :goto_0

    .line 987
    :sswitch_7
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v0}, Lcom/htc/server/WfdStateMachine;->isMirrorModeEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->finish()V
    invoke-static {v0}, Lcom/htc/server/WfdStateMachine;->access$1500(Lcom/htc/server/WfdStateMachine;)V

    goto/16 :goto_0

    .line 995
    :sswitch_8
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v2, 0xd

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v0, v2}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    .line 996
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v2, v2, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {v0, v2}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    goto/16 :goto_0

    .line 999
    :sswitch_9
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v2, 0x38

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v0, v2}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    .line 1000
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v0, v5}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 1001
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v2, v2, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {v0, v2}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    goto/16 :goto_0

    .line 1004
    :sswitch_a
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v2, 0x3a

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v0, v2}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    .line 1005
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v0, v5}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 1006
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v2, v2, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {v0, v2}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    goto/16 :goto_0

    .line 1009
    :sswitch_b
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v2, v2, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {v0, v2}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 1010
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ScanDongleState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 914
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_3
        0x2 -> :sswitch_3
        0x11 -> :sswitch_3
        0x18 -> :sswitch_1
        0x19 -> :sswitch_2
        0x25 -> :sswitch_4
        0x26 -> :sswitch_6
        0x27 -> :sswitch_8
        0x28 -> :sswitch_7
        0x2e -> :sswitch_9
        0x2f -> :sswitch_a
        0x32 -> :sswitch_0
        0x33 -> :sswitch_3
        0x34 -> :sswitch_3
        0x38 -> :sswitch_0
        0x39 -> :sswitch_3
        0x3f -> :sswitch_3
        0x40 -> :sswitch_3
        0x44 -> :sswitch_3
        0x46 -> :sswitch_5
        0x47 -> :sswitch_b
        0x64 -> :sswitch_0
    .end sparse-switch
.end method
