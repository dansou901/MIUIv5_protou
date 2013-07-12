.class final Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$BGFunctionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BGFunctionReceiver"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 460
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 461
    iput-object p2, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$BGFunctionReceiver;->mHandler:Landroid/os/Handler;

    .line 462
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 465
    const-string v4, "HtcDeviceInfoManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BGFunctionReceiver: BGFunctionReceiver receive "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-static {}, Lcom/htc/utils/report/ReportConfig;->isShippingRom()Z

    move-result v4

    if-nez v4, :cond_1

    .line 467
    const-string v4, "com.htc.intent.action.CUSTOMIZATION_FORCE_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 468
    const-string v3, ""

    .line 469
    .local v3, uiMode:Ljava/lang/String;
    const-string v4, "CID"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 470
    .local v0, CID:Z
    const-string v4, "com.htc.CUSTOMIZED_REASON"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 471
    .local v1, customizedReason:Ljava/lang/String;
    const-string v4, "HtcDeviceInfoManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    if-eqz v0, :cond_0

    .line 473
    #calls: Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->getUIMode(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->access$400(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 475
    :cond_0
    iget-object v4, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$BGFunctionReceiver;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$BGFunctionReceiver;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x1b

    invoke-virtual {v5, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 481
    .end local v0           #CID:Z
    .end local v1           #customizedReason:Ljava/lang/String;
    .end local v3           #uiMode:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 476
    :cond_2
    const-string v4, "com.htc.intent.action.ULOG_POLICY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 477
    const-string v4, "isSIE"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 478
    .local v2, isSIE:Z
    iget-object v4, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$BGFunctionReceiver;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$BGFunctionReceiver;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x1c

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method