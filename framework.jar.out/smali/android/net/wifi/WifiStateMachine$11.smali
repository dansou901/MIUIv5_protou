.class Landroid/net/wifi/WifiStateMachine$11;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;)V
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
    .line 1494
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$11;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1497
    const-string v2, "WifiStateMachine"

    const-string v3, "Get WIFI_P2P_CONNECTION_CHANGED_ACTION intent"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    const-string/jumbo v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 1499
    .local v0, mNetworkInfo_intent:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 1500
    .local v1, state:Landroid/net/NetworkInfo$State;
    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_1

    .line 1502
    const-string v2, "WifiStateMachine"

    const-string/jumbo v3, "start P2P ARP filter"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$11;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_p2p_arp()V

    .line 1504
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$11;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2, v6}, Landroid/net/wifi/WifiStateMachine;->setP2pConnected(Z)V

    .line 1505
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$11;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mP2pIsConnected:Z
    invoke-static {v2, v6}, Landroid/net/wifi/WifiStateMachine;->access$2202(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 1513
    :cond_0
    :goto_0
    return-void

    .line 1506
    :cond_1
    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_0

    .line 1507
    const-string v2, "WifiStateMachine"

    const-string/jumbo v3, "stop P2P ARP filter"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$11;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->stopPacketFiltering_p2p_arp()V

    .line 1509
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$11;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiStateMachine;->setP2pConnected(Z)V

    .line 1510
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$11;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mP2pIsConnected:Z
    invoke-static {v2, v5}, Landroid/net/wifi/WifiStateMachine;->access$2202(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto :goto_0
.end method
