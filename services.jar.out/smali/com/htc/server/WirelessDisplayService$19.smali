.class Lcom/htc/server/WirelessDisplayService$19;
.super Landroid/content/BroadcastReceiver;
.source "WirelessDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WirelessDisplayService;
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
    .line 3165
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$19;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    .line 3169
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3170
    .local v0, action:Ljava/lang/String;
    const-string v5, "WirelessDisplayService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DialogIntentReceiver: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3171
    const-string v5, "com.htc.intent.action.WIRELESS_DISPLAY_CONNECTING_DIALOG"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3173
    .local v2, startTime:J
    const-string v5, "visible"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 3175
    .local v4, visible:Z
    const-string v5, "device"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3177
    .local v1, device:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$19;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mConnectingDialog:Lcom/htc/server/medialinkdialog/ConnectingDialog;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$10700(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/ConnectingDialog;

    move-result-object v5

    if-nez v5, :cond_0

    .line 3178
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$19;->this$0:Lcom/htc/server/WirelessDisplayService;

    new-instance v6, Lcom/htc/server/medialinkdialog/ConnectingDialog;

    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService$19;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mSupportKDDI:Z
    invoke-static {v7}, Lcom/htc/server/WirelessDisplayService;->access$300(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v7

    invoke-direct {v6, p1, v7}, Lcom/htc/server/medialinkdialog/ConnectingDialog;-><init>(Landroid/content/Context;Z)V

    #setter for: Lcom/htc/server/WirelessDisplayService;->mConnectingDialog:Lcom/htc/server/medialinkdialog/ConnectingDialog;
    invoke-static {v5, v6}, Lcom/htc/server/WirelessDisplayService;->access$10702(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/medialinkdialog/ConnectingDialog;)Lcom/htc/server/medialinkdialog/ConnectingDialog;

    .line 3180
    :cond_0
    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 3182
    if-nez v1, :cond_2

    .line 3183
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$19;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mConnectingDialog:Lcom/htc/server/medialinkdialog/ConnectingDialog;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$10700(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/ConnectingDialog;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/htc/server/medialinkdialog/ConnectingDialog;->setContentString(Ljava/lang/String;)V

    .line 3188
    :goto_0
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$19;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mConnectingDialog:Lcom/htc/server/medialinkdialog/ConnectingDialog;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$10700(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/ConnectingDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/server/medialinkdialog/ConnectingDialog;->show()V

    .line 3206
    .end local v1           #device:Ljava/lang/String;
    .end local v2           #startTime:J
    .end local v4           #visible:Z
    :cond_1
    :goto_1
    return-void

    .line 3185
    .restart local v1       #device:Ljava/lang/String;
    .restart local v2       #startTime:J
    .restart local v4       #visible:Z
    :cond_2
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$19;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mConnectingDialog:Lcom/htc/server/medialinkdialog/ConnectingDialog;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$10700(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/ConnectingDialog;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService$19;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mResource:Landroid/content/res/Resources;
    invoke-static {v7}, Lcom/htc/server/WirelessDisplayService;->access$10800(Lcom/htc/server/WirelessDisplayService;)Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x407010c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/server/medialinkdialog/ConnectingDialog;->setContentString(Ljava/lang/String;)V

    goto :goto_0

    .line 3192
    :cond_3
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$19;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mConnectingDialog:Lcom/htc/server/medialinkdialog/ConnectingDialog;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$10700(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/ConnectingDialog;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/htc/server/medialinkdialog/ConnectingDialog;->setContentString(Ljava/lang/String;)V

    .line 3193
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$19;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mConnectingDialog:Lcom/htc/server/medialinkdialog/ConnectingDialog;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$10700(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/ConnectingDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/server/medialinkdialog/ConnectingDialog;->dismiss()V

    goto :goto_1

    .line 3195
    .end local v1           #device:Ljava/lang/String;
    .end local v2           #startTime:J
    .end local v4           #visible:Z
    :cond_4
    const-string v5, "com.htc.intent.action.WIRELESS_DISPLAY_SHOW_DONGLE_CONNECTED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3196
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$19;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mDongleConnectedDialog:Lcom/htc/server/medialinkdialog/DongleConnectedDialog;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$8400(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/DongleConnectedDialog;

    move-result-object v5

    if-nez v5, :cond_5

    .line 3197
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$19;->this$0:Lcom/htc/server/WirelessDisplayService;

    new-instance v6, Lcom/htc/server/medialinkdialog/DongleConnectedDialog;

    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService$19;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mSupportKDDI:Z
    invoke-static {v7}, Lcom/htc/server/WirelessDisplayService;->access$300(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v7

    invoke-direct {v6, p1, v7}, Lcom/htc/server/medialinkdialog/DongleConnectedDialog;-><init>(Landroid/content/Context;Z)V

    #setter for: Lcom/htc/server/WirelessDisplayService;->mDongleConnectedDialog:Lcom/htc/server/medialinkdialog/DongleConnectedDialog;
    invoke-static {v5, v6}, Lcom/htc/server/WirelessDisplayService;->access$8402(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/medialinkdialog/DongleConnectedDialog;)Lcom/htc/server/medialinkdialog/DongleConnectedDialog;

    .line 3198
    :cond_5
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$19;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mDongleConnectedDialog:Lcom/htc/server/medialinkdialog/DongleConnectedDialog;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$8400(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/DongleConnectedDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/server/medialinkdialog/DongleConnectedDialog;->show()V

    goto :goto_1

    .line 3199
    :cond_6
    const-string v5, "com.htc.intent.action.INTENT_NOTIFY_DONGLE_CONNECTION_FAIL"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3200
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$19;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$6500(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "4.5"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$19;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$6500(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "4.0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3201
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$19;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mConnectFailDialog:Lcom/htc/server/medialinkdialog/ConnectFailDialog;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$10900(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/ConnectFailDialog;

    move-result-object v5

    if-nez v5, :cond_7

    .line 3202
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$19;->this$0:Lcom/htc/server/WirelessDisplayService;

    new-instance v6, Lcom/htc/server/medialinkdialog/ConnectFailDialog;

    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService$19;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mSupportKDDI:Z
    invoke-static {v7}, Lcom/htc/server/WirelessDisplayService;->access$300(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v7

    invoke-direct {v6, p1, v7}, Lcom/htc/server/medialinkdialog/ConnectFailDialog;-><init>(Landroid/content/Context;Z)V

    #setter for: Lcom/htc/server/WirelessDisplayService;->mConnectFailDialog:Lcom/htc/server/medialinkdialog/ConnectFailDialog;
    invoke-static {v5, v6}, Lcom/htc/server/WirelessDisplayService;->access$10902(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/medialinkdialog/ConnectFailDialog;)Lcom/htc/server/medialinkdialog/ConnectFailDialog;

    .line 3203
    :cond_7
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$19;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mConnectFailDialog:Lcom/htc/server/medialinkdialog/ConnectFailDialog;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$10900(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/ConnectFailDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/server/medialinkdialog/ConnectFailDialog;->show()V

    goto/16 :goto_1
.end method