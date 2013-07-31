.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .parameter "message"

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x2

    .line 399
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v3, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 400
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 540
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 541
    const/4 v3, 0x0

    .line 543
    :goto_0
    return v3

    .line 402
    :sswitch_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_1

    .line 403
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v5, "Full connection with WifiStateMachine established"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v3, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 404
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v5, v3, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/util/AsyncChannel;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v5, v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$802(Landroid/net/wifi/p2p/WifiP2pService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    :cond_0
    :goto_1
    :sswitch_1
    move v3, v4

    .line 543
    goto :goto_0

    .line 406
    :cond_1
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Full connection failure, error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v3, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 407
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v3, v8}, Landroid/net/wifi/p2p/WifiP2pService;->access$802(Landroid/net/wifi/p2p/WifiP2pService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    goto :goto_1

    .line 412
    :sswitch_2
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v7, :cond_2

    .line 413
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v5, "Send failed, client connection lost"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v3, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 417
    :goto_2
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v3, v8}, Landroid/net/wifi/p2p/WifiP2pService;->access$802(Landroid/net/wifi/p2p/WifiP2pService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    goto :goto_1

    .line 415
    :cond_2
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Client connection lost with reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v3, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    goto :goto_2

    .line 421
    :sswitch_3
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 422
    .local v0, ac:Lcom/android/internal/util/AsyncChannel;
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$1000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v3, v5, v6}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    goto :goto_1

    .line 425
    .end local v0           #ac:Lcom/android/internal/util/AsyncChannel;
    :sswitch_4
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x22002

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v5, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto :goto_1

    .line 429
    :sswitch_5
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x22005

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v5, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto :goto_1

    .line 433
    :sswitch_6
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x2202f

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v5, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 437
    :sswitch_7
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x22008

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v5, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 441
    :sswitch_8
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x2200b

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v5, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 445
    :sswitch_9
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x2200e

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v5, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 449
    :sswitch_a
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x22011

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v5, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 453
    :sswitch_b
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x2201d

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v5, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 457
    :sswitch_c
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x22020

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v5, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 461
    :sswitch_d
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x22023

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v5, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 465
    :sswitch_e
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x22026

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v5, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 469
    :sswitch_f
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x22029

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v5, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 474
    :sswitch_10
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x2202c

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v5, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 479
    :sswitch_11
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x22034

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v5, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 483
    :sswitch_12
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x22014

    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v6

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v3, p1, v5, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 486
    :sswitch_13
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x22016

    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pInfo;

    move-result-object v6

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v3, p1, v5, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 489
    :sswitch_14
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x22018

    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v6

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v3, p1, v5, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 492
    :sswitch_15
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "appPkgName"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 494
    .local v1, appPkgName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "dialogResetFlag"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 496
    .local v2, isReset:Z
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setDialogListenerApp(Landroid/os/Messenger;Ljava/lang/String;Z)Z
    invoke-static {v3, v5, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Messenger;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 497
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x22038

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v3, p1, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 499
    :cond_3
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x22037

    const/4 v6, 0x4

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v5, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 524
    .end local v1           #appPkgName:Ljava/lang/String;
    .end local v2           #isReset:Z
    :sswitch_16
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v5, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1502(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 525
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected group creation, remove "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v3, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 526
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v3

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiNative;->p2pGroupRemove(Ljava/lang/String;)Z

    .line 527
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x24

    if-eq v3, v5, :cond_4

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0xe1

    if-eq v3, v5, :cond_4

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x49

    if-ne v3, v5, :cond_0

    .line 531
    :cond_4
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->WifiReconnectNeeded:Z
    invoke-static {v3, v4}, Landroid/net/wifi/p2p/WifiP2pService;->access$1902(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    goto/16 :goto_1

    .line 400
    nop

    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_0
        0x11001 -> :sswitch_3
        0x11004 -> :sswitch_2
        0x20083 -> :sswitch_1
        0x20084 -> :sswitch_1
        0x22001 -> :sswitch_4
        0x22004 -> :sswitch_5
        0x22007 -> :sswitch_7
        0x2200a -> :sswitch_8
        0x2200d -> :sswitch_9
        0x22010 -> :sswitch_a
        0x22013 -> :sswitch_12
        0x22015 -> :sswitch_13
        0x22017 -> :sswitch_14
        0x2201c -> :sswitch_b
        0x2201f -> :sswitch_c
        0x22022 -> :sswitch_d
        0x22025 -> :sswitch_e
        0x22028 -> :sswitch_f
        0x2202b -> :sswitch_10
        0x2202e -> :sswitch_6
        0x22033 -> :sswitch_11
        0x22036 -> :sswitch_15
        0x23001 -> :sswitch_1
        0x23002 -> :sswitch_1
        0x23003 -> :sswitch_1
        0x24001 -> :sswitch_1
        0x24002 -> :sswitch_1
        0x24003 -> :sswitch_1
        0x24004 -> :sswitch_1
        0x24005 -> :sswitch_1
        0x24006 -> :sswitch_1
        0x24015 -> :sswitch_1
        0x24016 -> :sswitch_1
        0x2401c -> :sswitch_1
        0x2401d -> :sswitch_16
        0x2401e -> :sswitch_1
        0x24020 -> :sswitch_1
        0x24025 -> :sswitch_1
        0x24026 -> :sswitch_1
    .end sparse-switch
.end method
