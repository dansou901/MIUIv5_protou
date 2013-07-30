.class Lcom/android/server/WifiService$5;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v5, "cw_reg_state"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .local v1, cwState:I
    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[C+W] get cwState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x65

    if-ne v1, v5, :cond_2

    const-string v5, "WifiService"

    const-string v6, "[C+W] get C+W register success"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    const-string v6, "cw_reg_expire"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    int-to-long v6, v6

    #setter for: Lcom/android/server/WifiService;->mCwExpiredTime:J
    invoke-static {v5, v6, v7}, Lcom/android/server/WifiService;->access$3902(Lcom/android/server/WifiService;J)J

    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[C+W] get C+W register expired time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mCwExpiredTime:J
    invoke-static {v7}, Lcom/android/server/WifiService;->access$3900(Lcom/android/server/WifiService;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->setCWExpiredReregisterAlarm()V
    invoke-static {v5}, Lcom/android/server/WifiService;->access$4000(Lcom/android/server/WifiService;)V

    iget-object v5, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;
    invoke-static {v5}, Lcom/android/server/WifiService;->access$4100(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$AsyncServiceHandler;

    move-result-object v5

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Lcom/android/server/WifiService$AsyncServiceHandler;->removeMessages(I)V

    iget-object v5, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v5}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/net/wifi/WifiStateMachine;->setCwRegisterState(Z)V

    iget-object v6, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    iget-object v5, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v5

    const-string v7, "connectivity"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    iput-object v5, v6, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    :try_start_0
    iget-object v5, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    invoke-virtual {v5}, Lcom/android/server/WifiService;->getWagAsUserDefined()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    invoke-virtual {v5}, Lcom/android/server/WifiService;->getWagAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .local v0, addr:Ljava/net/InetAddress;
    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[C+W] get C+W user defined WAG Server address: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    iget-object v5, v5, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v0}, Landroid/net/ConnectivityManager;->requestRouteToHost(ILjava/net/InetAddress;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #addr:Ljava/net/InetAddress;
    :goto_0
    iget-object v5, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v5}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiStateMachine;->cWsetDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_1
    const-string v5, "chinanetcw.chinatelecom.cn"

    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .restart local v0       #addr:Ljava/net/InetAddress;
    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[C+W] get C+W WAG Server address: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    iget-object v5, v5, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v0}, Landroid/net/ConnectivityManager;->requestRouteToHost(ILjava/net/InetAddress;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v0           #addr:Ljava/net/InetAddress;
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[C+W] Unable to add route for WAG server: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    const/16 v5, 0x66

    if-ne v1, v5, :cond_4

    iget-object v5, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v5}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->increseCwRetryCounter()I

    move-result v3

    .local v3, retryCounter:I
    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[C+W] retryCounter = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_3

    iget-object v5, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v5}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->tryToTriggerCWReregister()V

    :cond_3
    iget-object v5, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v5}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/net/wifi/WifiStateMachine;->setCwRegisterState(Z)V

    iget-object v5, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mCWRegisteredWhenScreenOff:Z
    invoke-static {v5, v8}, Lcom/android/server/WifiService;->access$1402(Lcom/android/server/WifiService;Z)Z

    goto/16 :goto_1

    .end local v3           #retryCounter:I
    :cond_4
    const/16 v5, 0x67

    if-eq v1, v5, :cond_5

    const/16 v5, 0x68

    if-ne v1, v5, :cond_6

    :cond_5
    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[C+W] RIL_CW_DEREGISTER = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v5}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v4

    .local v4, suppState:Landroid/net/wifi/SupplicantState;
    iget-object v5, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mCWRegisteredWhenScreenOff:Z
    invoke-static {v5, v8}, Lcom/android/server/WifiService;->access$1402(Lcom/android/server/WifiService;Z)Z

    iget-object v5, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v5}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/net/wifi/WifiStateMachine;->setCwRegisterState(Z)V

    iget-object v5, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->Wifienabled:Z
    invoke-static {v5}, Lcom/android/server/WifiService;->access$4200(Lcom/android/server/WifiService;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v4, v5, :cond_0

    const-string v5, "WifiService"

    const-string v6, "[C+W] Wi-Fi is on and SupplicantState is COMPLETED!!! updtae Connected"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v5}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiStateMachine;->cWsetDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_1

    .end local v4           #suppState:Landroid/net/wifi/SupplicantState;
    :cond_6
    iget-object v5, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v5}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/net/wifi/WifiStateMachine;->setCwRegisterState(Z)V

    iget-object v5, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mCWRegisteredWhenScreenOff:Z
    invoke-static {v5, v8}, Lcom/android/server/WifiService;->access$1402(Lcom/android/server/WifiService;Z)Z

    goto/16 :goto_1
.end method
