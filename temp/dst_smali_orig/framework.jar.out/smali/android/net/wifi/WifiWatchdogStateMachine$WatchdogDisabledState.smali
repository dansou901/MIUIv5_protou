.class Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WatchdogDisabledState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return v2

    :sswitch_0
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->isWatchdogEnabled()Z
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    move-result-object v3

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .local v0, intent:Landroid/content/Intent;
    const-string v2, "networkInfo"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .local v1, networkInfo:Landroid/net/NetworkInfo;
    sget-object v2, Landroid/net/wifi/WifiWatchdogStateMachine$4;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Watchdog disabled, verify link"

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$900(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x21016

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mHtcLanDetectionEnabled:Z
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1000(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v2, "linkProperties"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v3, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1102(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v2, "wifiInfo"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiInfo;

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1202(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->doLanDetection()V
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1300(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mHtcWanDetectionEnabled:Z
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1400(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "wifi.wan.detection"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->doWanDetection()V
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1500(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    goto/16 :goto_0

    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #networkInfo:Landroid/net/NetworkInfo;
    :sswitch_2
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->doLanDetection()V
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1300(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->doWanDetection()V
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1500(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x21001 -> :sswitch_0
        0x21002 -> :sswitch_1
        0x2101e -> :sswitch_2
        0x2101f -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
