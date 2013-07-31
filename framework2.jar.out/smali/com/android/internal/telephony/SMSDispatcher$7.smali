.class Lcom/android/internal/telephony/SMSDispatcher$7;
.super Landroid/content/BroadcastReceiver;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 3085
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$7;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 3088
    const-string v9, "SMS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OoO Intent Received: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3090
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3093
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3094
    const-string v8, "SMS"

    const-string v9, "Receive intent ACTION_BOOT_COMPLETED"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3095
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$7;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v8, v8, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 3097
    .local v7, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 3098
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/android/internal/telephony/SMSDispatcher$7$1;

    invoke-direct {v9, p0}, Lcom/android/internal/telephony/SMSDispatcher$7$1;-><init>(Lcom/android/internal/telephony/SMSDispatcher$7;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 3114
    :cond_0
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$7;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v8}, Lcom/android/internal/telephony/SMSDispatcher;->updateRadiotechForVerizon()V

    .line 3163
    .end local v7           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_0
    return-void

    .line 3118
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.htc.intent.action.ACTION_UPDATE_RADIO_TECH_VERIZON"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3120
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$7;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v8}, Lcom/android/internal/telephony/SMSDispatcher;->updateRadiotechForVerizon()V

    goto :goto_0

    .line 3124
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.htc.intent.action.MARK_TO_SEND_QUEUED_SMS"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3126
    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->isDetectDataActivityAndCallStateForMoSms()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3127
    invoke-static {}, Lcom/android/internal/telephony/PhoneStateUtil;->getDefault()Lcom/android/internal/telephony/PhoneStateUtil;

    move-result-object v3

    .line 3128
    .local v3, psu:Lcom/android/internal/telephony/PhoneStateUtil;
    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneStateUtil;->markToSendSmsAfterStateReady()V

    goto :goto_0

    .line 3134
    .end local v3           #psu:Lcom/android/internal/telephony/PhoneStateUtil;
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3136
    const-string v8, "phoneinECMState"

    invoke-virtual {p2, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 3137
    .local v1, isECM:Z
    const-string v8, "SMS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ACTION_EMERGENCY_CALLBACK_MODE_CHANGED> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3138
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$7;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher$7;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/16 v10, 0x16

    new-instance v11, Ljava/lang/Boolean;

    invoke-direct {v11, v1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 3141
    .end local v1           #isECM:Z
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.htc.intent.action.ACTION_SPRINT_REASSEMBLE_SMS_DISPATCH"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 3142
    const-string v8, "address"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3143
    .local v2, originatingAddress:Ljava/lang/String;
    const-string v8, "count"

    invoke-virtual {p2, v8, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 3144
    .local v5, sequenceCount:I
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$7;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v8, v2, v5}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPendingSprintReassembleSms(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 3148
    .end local v2           #originatingAddress:Ljava/lang/String;
    .end local v5           #sequenceCount:I
    :cond_6
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher$7;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    #calls: Lcom/android/internal/telephony/SMSDispatcher;->resetLastSmsFingerprintForCmas(Landroid/content/Intent;)Z
    invoke-static {v9, p2}, Lcom/android/internal/telephony/SMSDispatcher;->access$400(Lcom/android/internal/telephony/SMSDispatcher;Landroid/content/Intent;)Z

    move-result v9

    if-eq v9, v8, :cond_1

    .line 3155
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher$7;->getResultCode()I

    move-result v4

    .line 3156
    .local v4, rc:I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_7

    if-ne v4, v8, :cond_8

    :cond_7
    move v6, v8

    .line 3161
    .local v6, success:Z
    :cond_8
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$7;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v4, v9}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_0
.end method
