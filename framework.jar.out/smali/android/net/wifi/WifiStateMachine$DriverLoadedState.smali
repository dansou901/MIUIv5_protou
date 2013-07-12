.class Landroid/net/wifi/WifiStateMachine$DriverLoadedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DriverLoadedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 6003
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 6006
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->getName()Ljava/lang/String;

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

    .line 6007
    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 6008
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 12
    .parameter "message"

    .prologue
    const v11, 0x20002

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 6011
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v5, v8}, Landroid/net/wifi/WifiStateMachine;->access$3100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6012
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    move v5, v6

    .line 6124
    :goto_0
    return v5

    .line 6014
    :sswitch_0
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverUnloadingState:Lcom/android/internal/util/State;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$5800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v6

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiStateMachine;->access$5900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    :goto_1
    move v5, v7

    .line 6124
    goto :goto_0

    .line 6018
    :sswitch_1
    :try_start_0
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$3000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$2900(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "STA"

    invoke-interface {v5, v8, v9}, Landroid/os/INetworkManagementService;->wifiFirmwareReload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6027
    :goto_2
    :try_start_1
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$3000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$2900(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Landroid/os/INetworkManagementService;->setInterfaceDown(Ljava/lang/String;)V

    .line 6028
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v8, "[DriverLoadedState] CMD_START_SUPPLICANT setInterfaceDown ok"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v5, v8}, Landroid/net/wifi/WifiStateMachine;->access$3100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6031
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$3000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$2900(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v5, v8, v9}, Landroid/os/INetworkManagementService;->setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 6039
    :goto_3
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mP2pSupported:Z
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$6000(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v5

    invoke-static {v5}, Landroid/net/wifi/WifiNative;->startSupplicant(Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6040
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v6, "Supplicant start successful"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiStateMachine;->access$3100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6041
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$6100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiMonitor;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiMonitor;->startMonitoring()V

    .line 6042
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$6200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v6

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiStateMachine;->access$6300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 6019
    :catch_0
    move-exception v0

    .line 6020
    .local v0, e:Ljava/lang/Exception;
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to reload STA firmware "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v8}, Landroid/net/wifi/WifiStateMachine;->access$2300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_2

    .line 6033
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 6034
    .local v3, re:Landroid/os/RemoteException;
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to change interface settings: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v8}, Landroid/net/wifi/WifiStateMachine;->access$2300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_3

    .line 6035
    .end local v3           #re:Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    .line 6036
    .local v2, ie:Ljava/lang/IllegalStateException;
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to change interface settings: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v8}, Landroid/net/wifi/WifiStateMachine;->access$2300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_3

    .line 6044
    .end local v2           #ie:Ljava/lang/IllegalStateException;
    :cond_0
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v8, "Failed to start supplicant!"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v8}, Landroid/net/wifi/WifiStateMachine;->access$2300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6045
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v9, 0x4

    invoke-virtual {v8, v11, v9, v6}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 6049
    :sswitch_2
    const-string v5, "WifiStateMachine"

    const-string v8, "[DriverLoadedState] CMD_START_AP"

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6051
    :try_start_2
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v8, 0x1

    #setter for: Landroid/net/wifi/WifiStateMachine;->mResetWifiApSleepPolicy:Z
    invoke-static {v5, v8}, Landroid/net/wifi/WifiStateMachine;->access$6402(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 6052
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 6053
    .local v4, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 6054
    const-string v5, "WifiStateMachine"

    const-string v8, "[DriverLoadedState] wifiConfig != null"

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6055
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->persistApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v5, v4}, Landroid/net/wifi/WifiStateMachine;->access$6500(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    .line 6064
    :cond_1
    :goto_4
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v5

    if-eq v5, v7, :cond_2

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v8, :cond_2

    .line 6066
    const-string v5, "WifiStateMachine"

    const-string v8, "WiFiDisplay: Turn on hotspot in concurrent case and STA is connected, use WiFi Display IP range"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6067
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->resetWifiDisplayDhcpConfig()V

    .line 6073
    :cond_2
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$3000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$2900(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Landroid/os/INetworkManagementService;->setInterfaceDown(Ljava/lang/String;)V

    .line 6074
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$3000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$2900(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Landroid/os/INetworkManagementService;->setInterfaceUp(Ljava/lang/String;)V

    .line 6077
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string/jumbo v8, "start wifi hotspot"

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/net/wifi/WifiStateMachine;->printProfile(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    .line 6078
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$3000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v8

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v5

    iget v5, v5, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    if-ne v5, v7, :cond_c

    move v5, v7

    :goto_5
    invoke-interface {v8, v5}, Landroid/os/INetworkManagementService;->setTetheringDhcpEnabled(Z)V

    .line 6080
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableImeiPassword:Z
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$2600(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableMdnPassword:Z
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$2700(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->checkWifiApPassword()V

    .line 6081
    :cond_4
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableImeiSsid:Z
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$2800(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->checkWifiApSsid()V

    .line 6083
    :cond_5
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$3000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$2900(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "wlan0"

    invoke-interface {v5, v8, v9, v10}, Landroid/os/INetworkManagementService;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 6110
    .end local v4           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :goto_6
    const-string v5, "WifiStateMachine"

    const-string v8, "Soft AP start successful"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6111
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v8, 0xd

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v5, v8}, Landroid/net/wifi/WifiStateMachine;->access$5300(Landroid/net/wifi/WifiStateMachine;I)V

    .line 6112
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$6800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v8

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v8}, Landroid/net/wifi/WifiStateMachine;->access$6900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 6113
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->checkSleepPolicy()V
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$7000(Landroid/net/wifi/WifiStateMachine;)V

    .line 6115
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mUloghotspotMaxUsers:I
    invoke-static {v5, v6}, Landroid/net/wifi/WifiStateMachine;->access$7102(Landroid/net/wifi/WifiStateMachine;I)I

    .line 6116
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-wide/16 v8, 0x0

    #setter for: Landroid/net/wifi/WifiStateMachine;->mUlogHotspotDuration:J
    invoke-static {v5, v8, v9}, Landroid/net/wifi/WifiStateMachine;->access$7202(Landroid/net/wifi/WifiStateMachine;J)J

    .line 6117
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    #setter for: Landroid/net/wifi/WifiStateMachine;->mUlogHotspotStartTime:J
    invoke-static {v5, v8, v9}, Landroid/net/wifi/WifiStateMachine;->access$7302(Landroid/net/wifi/WifiStateMachine;J)J

    goto/16 :goto_1

    .line 6056
    .restart local v4       #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_6
    if-nez v4, :cond_1

    .line 6057
    :try_start_3
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v5

    if-nez v5, :cond_1

    .line 6058
    :cond_7
    const-string v5, "WifiStateMachine"

    const-string v8, "[DriverLoadedState] mConfig == null"

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6059
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->updateProfile()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_4

    .line 6086
    .end local v4           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :catch_3
    move-exception v0

    .line 6087
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v5, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in softap start "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6090
    :try_start_4
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v8, 0x0

    #setter for: Landroid/net/wifi/WifiStateMachine;->mUser:I
    invoke-static {v5, v8}, Landroid/net/wifi/WifiStateMachine;->access$6702(Landroid/net/wifi/WifiStateMachine;I)I

    .line 6091
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 6092
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v5

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.net.hotspot.ASSOCLIST"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6095
    :cond_8
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$3000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$2900(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Landroid/os/INetworkManagementService;->stopAccessPoint(Ljava/lang/String;)V

    .line 6097
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableImeiPassword:Z
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$2600(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableMdnPassword:Z
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$2700(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_9
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->checkWifiApPassword()V

    .line 6098
    :cond_a
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableImeiSsid:Z
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$2800(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->checkWifiApSsid()V

    .line 6100
    :cond_b
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$3000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v8

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$2900(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "wlan0"

    invoke-interface {v8, v5, v9, v10}, Landroid/os/INetworkManagementService;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V

    .line 6103
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$3000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    invoke-interface {v5, v8}, Landroid/os/INetworkManagementService;->setMACList(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_6

    .line 6104
    :catch_4
    move-exception v1

    .line 6105
    .local v1, ee:Ljava/lang/Exception;
    const-string v5, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception during softap restart : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6106
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v9, 0xe

    invoke-virtual {v8, v11, v9, v6}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ee:Ljava/lang/Exception;
    .restart local v4       #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_c
    move v5, v6

    .line 6078
    goto/16 :goto_5

    .line 6012
    :sswitch_data_0
    .sparse-switch
        0x20002 -> :sswitch_0
        0x2000b -> :sswitch_1
        0x20015 -> :sswitch_2
    .end sparse-switch
.end method
