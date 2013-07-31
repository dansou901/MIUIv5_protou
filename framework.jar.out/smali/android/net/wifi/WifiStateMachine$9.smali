.class Landroid/net/wifi/WifiStateMachine$9;
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
    .line 1387
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$9;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1390
    const-string v0, "WifiStateMachine"

    const-string v1, "Receive Intent.ACTION_LOCALE_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$9;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatusFeature:Z
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$1500(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1392
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$9;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$9;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$1600(Landroid/net/wifi/WifiStateMachine;)I

    move-result v1

    #calls: Landroid/net/wifi/WifiStateMachine;->sendVzwStatusNotification(I)I
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;I)I

    .line 1394
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$9;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$9;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotificationShown:Z
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$1800(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->setWepErrorNotificationVisible(Z)V

    .line 1395
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$9;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$9;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiApNotificationShown:Z
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$1900(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->setConnectionReqNotificationVisible(Z)V

    .line 1396
    return-void
.end method
