.class Landroid/net/wifi/WifiStateMachine$12;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiStateMachine;->startScan(Z)V
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
    .line 2167
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$12;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2170
    const-string/jumbo v2, "wlan.quick.scanresult"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2171
    const/16 v2, 0x13

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2172
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$12;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->sendScanResultsAvailableBroadcast()V
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$2200(Landroid/net/wifi/WifiStateMachine;)V

    .line 2174
    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2180
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$12;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->sendScanResultsAvailableBroadcast()V
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$2200(Landroid/net/wifi/WifiStateMachine;)V

    .line 2181
    const-string/jumbo v2, "wlan.quick.scanresult"

    const/4 v3, -0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2182
    .local v1, value:I
    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startScan: ^_^ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    return-void

    .line 2176
    .end local v1           #value:I
    :catch_0
    move-exception v0

    .line 2178
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "WifiStateMachine"

    const-string v3, "LOG , InterruptedException was received "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
