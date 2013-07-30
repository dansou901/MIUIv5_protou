.class Lcom/htc/server/WirelessDisplayService$ScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WirelessDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WirelessDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WirelessDisplayService;


# direct methods
.method private constructor <init>(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/WirelessDisplayService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .local v2, curState:I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$2300(Lcom/htc/server/WirelessDisplayService;)Landroid/os/PowerManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v10

    .local v10, screenOn:Z
    const-string v11, "WirelessDisplayService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ScreenReceiver;"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",callOnGoing: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static {v13}, Lcom/htc/server/WirelessDisplayService;->access$6000(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", Screen On: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    const/16 v12, 0x14

    invoke-virtual {v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    const-string v11, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$6000(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v11

    if-nez v11, :cond_4

    if-nez v10, :cond_4

    const/4 v11, 0x2

    if-eq v2, v11, :cond_0

    const/16 v11, 0x8

    if-eq v2, v11, :cond_0

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    const/16 v12, 0x1f

    const/16 v13, 0x28

    const/4 v14, -0x1

    invoke-virtual {v11, v12, v13, v14}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    .local v9, msg_leave:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    const-string v11, "WirelessDisplayService"

    const-string v12, "ScreenReceiver: ACTION_SCREEN_OFF && Not in DongleWait nor MirrorEnabling State: REQ_JOIN_GROUP - FALSE"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v9           #msg_leave:Landroid/os/Message;
    :cond_0
    const/4 v11, 0x3

    if-eq v2, v11, :cond_1

    const/4 v11, 0x7

    if-eq v2, v11, :cond_1

    const/16 v11, 0x9

    if-ne v2, v11, :cond_3

    :cond_1
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$3100(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .local v1, condState:I
    const-string v11, "WirelessDisplayService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ScreenReceiver:ACTION_SCREEN_OFF :curState:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " cond:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    const/4 v12, 0x1

    const/4 v13, 0x1

    #calls: Lcom/htc/server/WirelessDisplayService;->updateMirrorPauseState(IIZ)V
    invoke-static {v11, v1, v12, v13}, Lcom/htc/server/WirelessDisplayService;->access$6100(Lcom/htc/server/WirelessDisplayService;IIZ)V

    const/4 v11, 0x3

    if-ne v2, v11, :cond_3

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    const/16 v12, 0x74

    invoke-virtual {v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    const/16 v12, 0x74

    invoke-virtual {v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v12

    const/16 v13, 0x74

    invoke-virtual {v12, v13}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    const/16 v12, 0x29

    const/16 v13, 0x2b

    const/16 v14, 0x2d

    invoke-virtual {v11, v12, v13, v14}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .local v3, msg:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    invoke-virtual {v11, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    const-string v11, "WirelessDisplayService"

    const-string v12, "ScreenReceiver:starting Timeout of 2mins: mAppCallScreen: PAUSE_SCREEN"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .local v7, msgTimeOut:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    const-wide/32 v12, 0x1d4c0

    invoke-virtual {v11, v7, v12, v13}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$3300(Lcom/htc/server/WirelessDisplayService;)Landroid/media/AudioManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .end local v1           #condState:I
    .end local v3           #msg:Landroid/os/Message;
    .end local v7           #msgTimeOut:Landroid/os/Message;
    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string v11, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    const/16 v12, 0x1f

    const/16 v13, 0x28

    const/4 v14, 0x1

    invoke-virtual {v11, v12, v13, v14}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    .local v8, msg_join:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    const-string v11, "WirelessDisplayService"

    const-string v12, "ScreenReceiver: ACTION_USER_PRESENT: REQ_JOIN_GROUP - TRUE"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$3100(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .restart local v1       #condState:I
    const-string v11, "WirelessDisplayService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ScreenReceiver:ACTION_USER_PRESENT: curState"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " condState:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    const/4 v12, 0x1

    const/4 v13, 0x0

    #calls: Lcom/htc/server/WirelessDisplayService;->updateMirrorPauseState(IIZ)V
    invoke-static {v11, v1, v12, v13}, Lcom/htc/server/WirelessDisplayService;->access$6100(Lcom/htc/server/WirelessDisplayService;IIZ)V

    const/4 v11, 0x7

    if-eq v2, v11, :cond_5

    const/4 v11, 0x4

    if-eq v2, v11, :cond_5

    const/16 v11, 0x9

    if-ne v2, v11, :cond_3

    :cond_5
    const/4 v11, 0x4

    if-ne v2, v11, :cond_6

    const/4 v11, 0x1

    if-ne v1, v11, :cond_3

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    const/16 v12, 0x29

    const/16 v13, 0x2a

    const/16 v14, 0x2d

    invoke-virtual {v11, v12, v13, v14}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .restart local v3       #msg:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    const-wide/16 v12, 0x1

    invoke-virtual {v11, v3, v12, v13}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v11, "WirelessDisplayService"

    const-string v12, "ScreenReceiver: ACTION_USER_PRESENT: mAppCallScreen:PAUSE_NA"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v3           #msg:Landroid/os/Message;
    :cond_6
    const/4 v11, 0x7

    if-ne v2, v11, :cond_7

    const/4 v11, 0x1

    if-ne v1, v11, :cond_3

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    const/16 v12, 0x1f

    const/16 v13, 0x21

    const/4 v14, 0x1

    invoke-virtual {v11, v12, v13, v14}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .local v5, msg3:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    const/16 v12, 0x14

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    .local v6, msgFallBackfromAppPause:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    const-wide/16 v12, 0xbb8

    invoke-virtual {v11, v6, v12, v13}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v11, "WirelessDisplayService"

    const-string v12, "ScreenReceiver: ACTION_USER_PRESENT: mAppCallScreen:PAUSE_NA"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v5           #msg3:Landroid/os/Message;
    .end local v6           #msgFallBackfromAppPause:Landroid/os/Message;
    :cond_7
    const/16 v11, 0x9

    if-ne v2, v11, :cond_3

    const/4 v11, 0x1

    if-ne v1, v11, :cond_3

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    const/16 v12, 0x29

    const/16 v13, 0x2a

    const/16 v14, 0x2e

    invoke-virtual {v11, v12, v13, v14}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .local v4, msg2:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    const-wide/16 v12, 0xbb8

    invoke-virtual {v11, v4, v12, v13}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v11, "WirelessDisplayService"

    const-string v12, "ScreenReceiver: ACTION_USER_PRESENT: mAppCallScreen:0 Should not be here"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
