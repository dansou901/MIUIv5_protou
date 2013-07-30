.class Lcom/htc/server/WirelessDisplayService$9;
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
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$9;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v7, 0x75

    const/4 v6, 0x3

    const/4 v5, 0x0

    const-string v2, "extra_pincode_check_result"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .local v1, pinCodeCheckResult:Z
    const-string v2, "WirelessDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receive Configuration Tool notify INTENT_PINCODE_CHECK_DONE, result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Mirror State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService$9;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v4}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService$9;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/server/WirelessDisplayService;->access$6500(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "4.5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService$9;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/server/WirelessDisplayService;->access$6500(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "4.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService$9;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-virtual {v2, v5}, Lcom/htc/server/WirelessDisplayService;->startPatternLockFakeMirror(Z)V

    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService$9;->this$0:Lcom/htc/server/WirelessDisplayService;

    #calls: Lcom/htc/server/WirelessDisplayService;->startPatternLockStopAudio(Z)V
    invoke-static {v2, v5}, Lcom/htc/server/WirelessDisplayService;->access$7200(Lcom/htc/server/WirelessDisplayService;Z)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService$9;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/htc/server/WirelessDisplayService;->access$2900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$9900()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.intent.action.WIRELESS_DISPLAY_MIRROR_RESULT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, mirrorResultIntent:Landroid/content/Intent;
    const-string v2, "RESULT"

    const-string v3, "SUCCESS"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService$9;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v0           #mirrorResultIntent:Landroid/content/Intent;
    :cond_2
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$9900()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_3
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v2

    const/16 v3, 0x74

    invoke-virtual {v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v2

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v7, v6, v4}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v2

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v3

    invoke-virtual {v3, v7, v6, v6}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
