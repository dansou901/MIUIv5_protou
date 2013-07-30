.class Lcom/htc/server/WirelessDisplayService$ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WirelessDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WirelessDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WirelessDisplayService;


# direct methods
.method private constructor <init>(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$ConnectivityReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/WirelessDisplayService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService$ConnectivityReceiver;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$ConnectivityReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .local v2, curMirrState:I
    const-string v9, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "networkInfo"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkInfo;

    .local v6, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v9

    sget-object v10, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v9, v10, :cond_1

    const-string v9, "WirelessDisplayService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[WFDERR][1] ConnectivityReceiver: mCurNetworkInterface"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$ConnectivityReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$2400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$ConnectivityReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$2400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/server/WirelessDisplayService$ConnectivityReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/server/WirelessDisplayService;->access$2100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "WirelessDisplayService"

    const-string v10, "[WFDERR][1] ConnectivityReceiver: receiver wifi disconnected, wait20000sec"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .local v8, stopWi:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v9

    const-wide/16 v10, 0x4e20

    invoke-virtual {v9, v8, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v9

    const/16 v10, 0x11

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .local v4, msgWifiScan:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .end local v4           #msgWifiScan:Landroid/os/Message;
    .end local v6           #networkInfo:Landroid/net/NetworkInfo;
    .end local v8           #stopWi:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .restart local v6       #networkInfo:Landroid/net/NetworkInfo;
    :cond_1
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v9

    sget-object v10, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v9, v10, :cond_0

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$9200()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$8600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v9

    const/16 v10, 0x11

    invoke-virtual {v9, v10}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$ConnectivityReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    const/4 v10, 0x3

    #setter for: Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I
    invoke-static {v9, v10}, Lcom/htc/server/WirelessDisplayService;->access$1602(Lcom/htc/server/WirelessDisplayService;I)I

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    const-string v9, "WirelessDisplayService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[REVY][0] Wifi disconnet and resume in short time. mCurNetworkInterface"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$ConnectivityReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$2400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v9

    if-nez v9, :cond_2

    const-string v9, "WirelessDisplayService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " ConnectivityReceiver: receiver wifi connected, check dongle : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$ConnectivityReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$8300(Lcom/htc/server/WirelessDisplayService;)Ljava/util/Hashtable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Hashtable;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$ConnectivityReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$8300(Lcom/htc/server/WirelessDisplayService;)Ljava/util/Hashtable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Hashtable;->size()I

    move-result v9

    if-lez v9, :cond_0

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .local v3, getIp:Landroid/os/Message;
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .end local v3           #getIp:Landroid/os/Message;
    :cond_2
    const-string v9, "WirelessDisplayService"

    const-string v10, " ConnectivityReceiver: receiver wifi connected, wivu is not null, setInterface"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, b:Landroid/os/Bundle;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v9

    const/16 v10, 0x1f

    const/16 v11, 0x27

    const/4 v12, -0x1

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    .local v7, setif:Landroid/os/Message;
    const-string v9, "interface"

    iget-object v10, p0, Lcom/htc/server/WirelessDisplayService$ConnectivityReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/server/WirelessDisplayService;->access$2400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    iget-object v9, p0, Lcom/htc/server/WirelessDisplayService$ConnectivityReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v9}, Lcom/htc/server/WirelessDisplayService;->access$2300(Lcom/htc/server/WirelessDisplayService;)Landroid/os/PowerManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v9

    const/16 v10, 0x1f

    const/16 v11, 0x28

    const/4 v12, -0x1

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .local v5, msg_leave:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
