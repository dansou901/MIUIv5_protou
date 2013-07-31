.class public Lcom/htc/server/WirelessDisplayService$CallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WirelessDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WirelessDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WirelessDisplayService;


# direct methods
.method public constructor <init>(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .local v1, bundle:Landroid/os/Bundle;
    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .local v3, curState:I
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .local v2, condState:I
    const-string v8, "WirelessDisplayService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CallReceiver: action"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x14

    invoke-virtual {v8, v9}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    const-string v8, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "state"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, state:Ljava/lang/String;
    const-string v8, "WirelessDisplayService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IncomingCallReceiver State: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " curState"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " condState"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$4600(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v8

    if-nez v8, :cond_7

    sget-object v8, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    const/4 v9, 0x1

    #setter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static {v8, v9}, Lcom/htc/server/WirelessDisplayService;->access$4602(Lcom/htc/server/WirelessDisplayService;Z)Z

    const/4 v8, 0x3

    if-ne v3, v8, :cond_2

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x29

    const/16 v10, 0x2b

    const/16 v11, 0x2e

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .local v4, msg1:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver: mAppCallScreen:2"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v4           #msg1:Landroid/os/Message;
    :cond_2
    const/4 v8, 0x4

    if-ne v3, v8, :cond_4

    const/4 v8, 0x1

    if-ne v2, v8, :cond_3

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver: mAppCallScreen:3"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    const/4 v8, 0x5

    if-ne v2, v8, :cond_0

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x7

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver: mAppCallScreen:7"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const/4 v8, 0x7

    if-ne v3, v8, :cond_0

    const/4 v8, 0x4

    if-ne v2, v8, :cond_5

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver: mAppCallScreen:6"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const/4 v8, 0x5

    if-ne v2, v8, :cond_6

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x7

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver: mAppCallScreen:7"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    if-nez v2, :cond_0

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver: mAppCallScreen:2"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$4600(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v8

    if-eqz v8, :cond_12

    sget-object v8, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver :EXTRA_STATE_IDLE"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, 0x9

    if-ne v3, v8, :cond_c

    const/4 v8, 0x2

    if-ne v2, v8, :cond_9

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x29

    const/16 v10, 0x2a

    const/16 v11, 0x2e

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .local v5, msg2:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const-wide/16 v9, 0xbb8

    invoke-virtual {v8, v5, v9, v10}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver :mAppCallScreen:0"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5           #msg2:Landroid/os/Message;
    :cond_8
    :goto_1
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    const/4 v9, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static {v8, v9}, Lcom/htc/server/WirelessDisplayService;->access$4602(Lcom/htc/server/WirelessDisplayService;Z)Z

    goto/16 :goto_0

    :cond_9
    const/4 v8, 0x3

    if-ne v2, v8, :cond_a

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver: mAppCallScreen:1"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_a
    const/4 v8, 0x7

    if-ne v2, v8, :cond_b

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver: mAppCallScreen:5"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_b
    const/4 v8, 0x6

    if-ne v2, v8, :cond_8

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver: mAppCallScreen:4"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_c
    const/4 v8, 0x4

    if-ne v3, v8, :cond_f

    const/4 v8, 0x2

    if-ne v2, v8, :cond_d

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x29

    const/16 v10, 0x2a

    const/16 v11, 0x2d

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .restart local v5       #msg2:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const-wide/16 v9, 0xbb8

    invoke-virtual {v8, v5, v9, v10}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver :mAppCallScreen:0"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v5           #msg2:Landroid/os/Message;
    :cond_d
    const/4 v8, 0x7

    if-ne v2, v8, :cond_e

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver :mAppCallScreen:5"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_e
    const/4 v8, 0x3

    if-ne v2, v8, :cond_8

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver :mAppCallScreen:1"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_f
    const/4 v8, 0x7

    if-ne v3, v8, :cond_8

    const/4 v8, 0x2

    if-ne v2, v8, :cond_10

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x1f

    const/16 v10, 0x21

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .restart local v5       #msg2:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const-wide/16 v9, 0xbb8

    invoke-virtual {v8, v5, v9, v10}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x14

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    .local v6, msgFallBackfromAppPause:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const-wide/16 v9, 0xbb8

    invoke-virtual {v8, v6, v9, v10}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver :mAppCallScreen:0"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v5           #msg2:Landroid/os/Message;
    .end local v6           #msgFallBackfromAppPause:Landroid/os/Message;
    :cond_10
    const/4 v8, 0x7

    if-ne v2, v8, :cond_11

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver :mAppCallScreen:5"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_11
    const/4 v8, 0x6

    if-ne v2, v8, :cond_8

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver :mAppCallScreen:4"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_12
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$4600(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v8

    if-nez v8, :cond_0

    sget-object v8, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver :EXTRA_STATE_OFFHOOK"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    const/4 v9, 0x1

    #setter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static {v8, v9}, Lcom/htc/server/WirelessDisplayService;->access$4602(Lcom/htc/server/WirelessDisplayService;Z)Z

    goto/16 :goto_0
.end method
