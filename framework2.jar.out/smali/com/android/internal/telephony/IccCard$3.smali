.class Lcom/android/internal/telephony/IccCard$3;
.super Landroid/os/Handler;
.source "IccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccCard;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccCard;)V
    .locals 0
    .parameter

    .prologue
    .line 2515
    iput-object p1, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    .line 2519
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 2675
    :cond_0
    :goto_0
    return-void

    .line 2522
    :pswitch_0
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v7, v7, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v8, "EVENT_SIM_HOT_SWAP_STATUS"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 2523
    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 2524
    .local v2, ar:Landroid/os/AsyncResult;
    iget-object v7, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [I

    move-object v5, v7

    check-cast v5, [I

    .line 2527
    .local v5, isSIMRemoved:[I
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    sget-object v8, Lcom/android/internal/telephony/IccCard$IccCardState;->CARD_INIT:Lcom/android/internal/telephony/IccCard$IccCardState;

    iput-object v8, v7, Lcom/android/internal/telephony/IccCard;->mOldCardState:Lcom/android/internal/telephony/IccCard$IccCardState;

    .line 2531
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    sget-object v8, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppState;

    #setter for: Lcom/android/internal/telephony/IccCard;->mIccGsmUmtsAppState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    invoke-static {v7, v8}, Lcom/android/internal/telephony/IccCard;->access$102(Lcom/android/internal/telephony/IccCard;Lcom/android/internal/telephony/IccCardApplication$AppState;)Lcom/android/internal/telephony/IccCardApplication$AppState;

    .line 2534
    if-eqz v5, :cond_a

    array-length v7, v5

    if-lez v7, :cond_a

    .line 2535
    sget v7, Lcom/android/internal/telephony/IccCard;->mHotSwap:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/android/internal/telephony/IccCard;->mHotSwap:I

    .line 2537
    const-string/jumbo v7, "sys.shutdown.hibernate.mode"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 2538
    .local v4, hibernate:Z
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v7, v7, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "airplane_mode_on"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    const/4 v1, 0x1

    .line 2539
    .local v1, airplane:Z
    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v7, v7, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_SIM_HOT_SWAP_STATUS hibernate = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " airplane = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 2541
    :cond_2
    const/4 v7, 0x0

    aget v7, v5, v7

    if-nez v7, :cond_4

    .line 2543
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v8, 0x0

    #setter for: Lcom/android/internal/telephony/IccCard;->isHotSwapInserted:Z
    invoke-static {v7, v8}, Lcom/android/internal/telephony/IccCard;->access$1602(Lcom/android/internal/telephony/IccCard;Z)Z

    .line 2545
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v8, "ICC_HOT_SWAP_ABSENT"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/IccCard;->setIccCardRemovedOrInsertedError(Ljava/lang/String;)V

    .line 2549
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v8, 0x51

    if-ne v7, v8, :cond_5

    const/4 v7, 0x1

    if-eq v4, v7, :cond_5

    .line 2551
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2552
    .local v6, shutdown:Landroid/content/Intent;
    const-string v7, "android.intent.extra.KEY_CONFIRM"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2553
    const/high16 v7, 0x1000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2554
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v7, v7, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2538
    .end local v1           #airplane:Z
    .end local v6           #shutdown:Landroid/content/Intent;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 2560
    .restart local v1       #airplane:Z
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v8, 0x1

    #setter for: Lcom/android/internal/telephony/IccCard;->isHotSwapInserted:Z
    invoke-static {v7, v8}, Lcom/android/internal/telephony/IccCard;->access$1602(Lcom/android/internal/telephony/IccCard;Z)Z

    .line 2562
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v8, "ICC_HOT_SWAP_INSERTED"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2565
    :cond_5
    if-nez v4, :cond_6

    if-eqz v1, :cond_7

    .line 2566
    :cond_6
    const/4 v7, 0x0

    sput v7, Lcom/android/internal/telephony/IccCard;->mHotSwap:I

    goto/16 :goto_0

    .line 2568
    :cond_7
    sget v7, Lcom/android/internal/telephony/IccCard;->mHotSwap:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_9

    .line 2569
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v7, v7, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v8, "EVENT_SIM_HOT_SWAP_STATUS radio off"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 2570
    :cond_8
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    sget-object v8, Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;->ACTION_OFF:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    iput-object v8, v7, Lcom/android/internal/telephony/IccCard;->mCurrentAction:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    .line 2571
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v7, v7, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0x3f9

    const/4 v9, 0x0

    invoke-interface {v7, p0, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2573
    const-string v7, "gsm.sim.hotswap.procedure"

    const-string v8, "1"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2575
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v7, v7, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    goto/16 :goto_0

    .line 2577
    :cond_9
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v7, v7, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "wait for previous hot swap procedure completed, mHotSwap = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/internal/telephony/IccCard;->mHotSwap:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2581
    .end local v1           #airplane:Z
    .end local v4           #hibernate:Z
    :cond_a
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v7, v7, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v8, "invalid sim hot swap data"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2586
    .end local v2           #ar:Landroid/os/AsyncResult;
    .end local v5           #isSIMRemoved:[I
    :pswitch_1
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v7, v7, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    .line 2587
    .local v3, currentState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    const-string/jumbo v7, "sys.shutdown.hibernate.mode"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 2588
    .restart local v4       #hibernate:Z
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v7, v7, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "airplane_mode_on"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_e

    const/4 v1, 0x1

    .line 2590
    .restart local v1       #airplane:Z
    :goto_2
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v7, v7, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_RADIO_STATE_CHANGED radioState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "hibernate = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " airplane = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 2592
    :cond_b
    if-nez v4, :cond_c

    if-eqz v1, :cond_10

    .line 2593
    :cond_c
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v7, v7, Lcom/android/internal/telephony/IccCard;->mCurrentAction:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    sget-object v8, Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;->ACTION_OFF:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    if-ne v7, v8, :cond_f

    .line 2594
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v7, v7, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 2598
    :cond_d
    :goto_3
    const/4 v7, 0x0

    sput v7, Lcom/android/internal/telephony/IccCard;->mHotSwap:I

    .line 2599
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    sget-object v8, Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;->ACTION_INIT:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    iput-object v8, v7, Lcom/android/internal/telephony/IccCard;->mCurrentAction:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    goto/16 :goto_0

    .line 2588
    .end local v1           #airplane:Z
    :cond_e
    const/4 v1, 0x0

    goto :goto_2

    .line 2595
    .restart local v1       #airplane:Z
    :cond_f
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v7, v7, Lcom/android/internal/telephony/IccCard;->mCurrentAction:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    sget-object v8, Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;->ACTION_ON:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    if-ne v7, v8, :cond_d

    .line 2596
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v7, v7, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    goto :goto_3

    .line 2603
    :cond_10
    sget-object v7, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v3, v7, :cond_12

    .line 2604
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v7, v7, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v8, "EVENT_SIM_HOT_SWAP_STATUS radio on"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 2605
    :cond_11
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v7, v7, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 2606
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v7, v7, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0x3f9

    const/4 v9, 0x0

    invoke-interface {v7, p0, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2607
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    sget-object v8, Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;->ACTION_ON:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    iput-object v8, v7, Lcom/android/internal/telephony/IccCard;->mCurrentAction:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    .line 2608
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v7, v7, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    goto/16 :goto_0

    .line 2609
    :cond_12
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v7, v7, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2610
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v7, v7, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v7, :cond_13

    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "radio on mHotSwap = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/internal/telephony/IccCard;->mHotSwap:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 2611
    :cond_13
    sget v7, Lcom/android/internal/telephony/IccCard;->mHotSwap:I

    const/4 v8, 0x1

    if-le v7, v8, :cond_15

    .line 2612
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v7, v7, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v7, :cond_14

    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v8, "EVENT_SIM_HOT_SWAP_STATUS radio off"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 2613
    :cond_14
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v7, v7, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 2614
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v7, v7, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0x3f9

    const/4 v9, 0x0

    invoke-interface {v7, p0, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2615
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    sget-object v8, Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;->ACTION_OFF:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    iput-object v8, v7, Lcom/android/internal/telephony/IccCard;->mCurrentAction:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    .line 2616
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v7, v7, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    .line 2617
    const/4 v7, 0x1

    sput v7, Lcom/android/internal/telephony/IccCard;->mHotSwap:I

    goto/16 :goto_0

    .line 2619
    :cond_15
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v7, v7, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v7, :cond_16

    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v8, "Stop to trun radio on/off"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 2621
    :cond_16
    const-string v7, "gsm.sim.hotswap.procedure"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2623
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    sget-object v8, Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;->ACTION_INIT:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    iput-object v8, v7, Lcom/android/internal/telephony/IccCard;->mCurrentAction:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    .line 2624
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v7, v7, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 2625
    const/4 v7, 0x0

    sput v7, Lcom/android/internal/telephony/IccCard;->mHotSwap:I

    goto/16 :goto_0

    .line 2634
    .end local v1           #airplane:Z
    .end local v3           #currentState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .end local v4           #hibernate:Z
    :pswitch_2
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v7, v7, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v7, :cond_17

    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v8, "EVENT_MDMRST_SIM_HOT_SWAP_STATUS"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 2636
    :cond_17
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 2637
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v7, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [I

    move-object v0, v7

    check-cast v0, [I

    .line 2640
    .local v0, SIMStatus:[I
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    sget-object v8, Lcom/android/internal/telephony/IccCard$IccCardState;->CARD_INIT:Lcom/android/internal/telephony/IccCard$IccCardState;

    iput-object v8, v7, Lcom/android/internal/telephony/IccCard;->mOldCardState:Lcom/android/internal/telephony/IccCard$IccCardState;

    .line 2644
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    sget-object v8, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppState;

    #setter for: Lcom/android/internal/telephony/IccCard;->mIccGsmUmtsAppState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    invoke-static {v7, v8}, Lcom/android/internal/telephony/IccCard;->access$102(Lcom/android/internal/telephony/IccCard;Lcom/android/internal/telephony/IccCardApplication$AppState;)Lcom/android/internal/telephony/IccCardApplication$AppState;

    .line 2647
    if-eqz v0, :cond_1a

    array-length v7, v0

    if-lez v7, :cond_1a

    .line 2648
    const/4 v7, 0x0

    aget v7, v0, v7

    if-nez v7, :cond_19

    .line 2649
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v8, "ICC_HOT_SWAP_ABSENT"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/IccCard;->setIccCardRemovedOrInsertedError(Ljava/lang/String;)V

    .line 2653
    const-string/jumbo v7, "sys.shutdown.hibernate.mode"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 2654
    .restart local v4       #hibernate:Z
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v7, v7, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v7, :cond_18

    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_MDMRST_SIM_HOT_SWAP_STATUS hibernate = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 2656
    :cond_18
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v8, 0x51

    if-ne v7, v8, :cond_0

    const/4 v7, 0x1

    if-eq v4, v7, :cond_0

    .line 2658
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2659
    .restart local v6       #shutdown:Landroid/content/Intent;
    const-string v7, "android.intent.extra.KEY_CONFIRM"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2660
    const/high16 v7, 0x1000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2661
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v7, v7, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2666
    .end local v4           #hibernate:Z
    .end local v6           #shutdown:Landroid/content/Intent;
    :cond_19
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v8, "ICC_HOT_SWAP_INSERTED"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2669
    :cond_1a
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v7, v7, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v8, "invalid MdmRst sim hot swap data"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2519
    nop

    :pswitch_data_0
    .packed-switch 0x3f8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
