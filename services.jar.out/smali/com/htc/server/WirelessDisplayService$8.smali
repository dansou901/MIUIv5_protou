.class Lcom/htc/server/WirelessDisplayService$8;
.super Landroid/content/BroadcastReceiver;
.source "WirelessDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/server/WirelessDisplayService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WirelessDisplayService;


# direct methods
.method constructor <init>(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter

    .prologue
    .line 2782
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$8;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2785
    const-string v0, "WirelessDisplayService"

    const-string v1, "Receive Configuration Tool notify WIFI DFS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2786
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$8600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2787
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService$8;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/server/WirelessDisplayService;->access$6500(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "4.5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService$8;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/server/WirelessDisplayService;->access$6500(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "4.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2788
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService$8;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiDFSChannelDialog:Lcom/htc/server/medialinkdialog/WifiDFSChannelDialog;
    invoke-static {v0}, Lcom/htc/server/WirelessDisplayService;->access$9800(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/WifiDFSChannelDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2789
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService$8;->this$0:Lcom/htc/server/WirelessDisplayService;

    new-instance v1, Lcom/htc/server/medialinkdialog/WifiDFSChannelDialog;

    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService$8;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/server/WirelessDisplayService$8;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mSupportKDDI:Z
    invoke-static {v3}, Lcom/htc/server/WirelessDisplayService;->access$300(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/htc/server/medialinkdialog/WifiDFSChannelDialog;-><init>(Landroid/content/Context;Z)V

    #setter for: Lcom/htc/server/WirelessDisplayService;->mWifiDFSChannelDialog:Lcom/htc/server/medialinkdialog/WifiDFSChannelDialog;
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$9802(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/medialinkdialog/WifiDFSChannelDialog;)Lcom/htc/server/medialinkdialog/WifiDFSChannelDialog;

    .line 2790
    :cond_0
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService$8;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiDFSChannelDialog:Lcom/htc/server/medialinkdialog/WifiDFSChannelDialog;
    invoke-static {v0}, Lcom/htc/server/WirelessDisplayService;->access$9800(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/WifiDFSChannelDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/server/medialinkdialog/WifiDFSChannelDialog;->show()V

    .line 2792
    :cond_1
    return-void
.end method
