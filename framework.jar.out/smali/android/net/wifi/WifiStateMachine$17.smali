.class Landroid/net/wifi/WifiStateMachine$17;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 9817
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$17;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 9820
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_OFFLOAD_flag:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$17;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mForceWifiOffload:Z
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$9100(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9841
    :cond_0
    :goto_0
    return-void

    .line 9823
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 9825
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.htc.net.wimax.WIMAX_ENABLED_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9826
    const-string v1, "WifiStateMachine"

    const-string v2, "WiFioffload get intent wimax enabled changed action"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9827
    const-string v1, "curWimaxEnabledState"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 9829
    const-string v1, "WifiStateMachine"

    const-string v2, "WiFioffload: Wimax Disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9830
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$17;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v2, 0x0

    #setter for: Landroid/net/wifi/WifiStateMachine;->WimaxStatus:Z
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$9302(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 9831
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$17;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$17;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->WimaxStatus:Z
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$9300(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->setWimaxStatus(Z)Z

    goto :goto_0

    .line 9833
    :cond_2
    const-string v1, "curWimaxEnabledState"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 9835
    const-string v1, "WifiStateMachine"

    const-string v2, "WiFioffload: Wimax Enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9836
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$17;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->WimaxStatus:Z
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$9302(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 9837
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$17;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$17;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->WimaxStatus:Z
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$9300(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->setWimaxStatus(Z)Z

    goto :goto_0
.end method
