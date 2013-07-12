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
    .line 3107
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$7;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3110
    const-string v17, "SMS"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "OoO Intent Received: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3112
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 3115
    .local v3, action:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 3116
    const-string v17, "SMS"

    const-string v18, "Receive intent ACTION_BOOT_COMPLETED"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$7;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "phone"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/telephony/TelephonyManager;

    .line 3119
    .local v15, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 3120
    new-instance v17, Ljava/lang/Thread;

    new-instance v18, Lcom/android/internal/telephony/SMSDispatcher$7$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$7$1;-><init>(Lcom/android/internal/telephony/SMSDispatcher$7;)V

    invoke-direct/range {v17 .. v18}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->start()V

    .line 3136
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$7;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/SMSDispatcher;->updateRadiotechForVerizon()V

    .line 3227
    .end local v15           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_0
    return-void

    .line 3140
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "com.htc.intent.action.ACTION_UPDATE_RADIO_TECH_VERIZON"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 3142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$7;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/SMSDispatcher;->updateRadiotechForVerizon()V

    goto :goto_0

    .line 3146
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "com.htc.intent.action.MARK_TO_SEND_QUEUED_SMS"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 3148
    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->isDetectDataActivityAndCallStateForMoSms()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 3149
    invoke-static {}, Lcom/android/internal/telephony/PhoneStateUtil;->getDefault()Lcom/android/internal/telephony/PhoneStateUtil;

    move-result-object v8

    .line 3150
    .local v8, psu:Lcom/android/internal/telephony/PhoneStateUtil;
    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneStateUtil;->markToSendSmsAfterStateReady()V

    goto :goto_0

    .line 3156
    .end local v8           #psu:Lcom/android/internal/telephony/PhoneStateUtil;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "com.htc.intent.action.MARK_TO_CHECK_SERVICE_STATE"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 3158
    const-string v17, "check"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/SMSDispatcher;->access$402(Z)Z

    .line 3161
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->access$500()J

    move-result-wide v17

    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->access$600()J

    move-result-wide v19

    cmp-long v17, v17, v19

    if-lez v17, :cond_5

    const/4 v4, 0x1

    .line 3162
    .local v4, changeToStateInServiceAfterFail:Z
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->access$400()Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v4, v0, :cond_1

    .line 3163
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v16

    .line 3164
    .local v16, telm:Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v13

    .line 3165
    .local v13, ss:I
    if-nez v13, :cond_1

    .line 3166
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/SMSDispatcher;->access$402(Z)Z

    .line 3167
    new-instance v10, Landroid/content/Intent;

    const-string v17, "com.htc.intent.action.SEND_QUEUED_SMS"

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3168
    .local v10, sendIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$7;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3161
    .end local v4           #changeToStateInServiceAfterFail:Z
    .end local v10           #sendIntent:Landroid/content/Intent;
    .end local v13           #ss:I
    .end local v16           #telm:Landroid/telephony/TelephonyManager;
    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    .line 3171
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "android.intent.action.SERVICE_STATE"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 3173
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v12

    .line 3174
    .local v12, serviceState:Landroid/telephony/ServiceState;
    const-string v17, "SMS"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ss: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getState()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3176
    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getState()I

    move-result v17

    if-nez v17, :cond_7

    .line 3177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/SMSDispatcher;->access$502(J)J

    .line 3180
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->access$400()Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 3181
    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getState()I

    move-result v17

    if-nez v17, :cond_1

    .line 3182
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/SMSDispatcher;->access$402(Z)Z

    .line 3183
    new-instance v10, Landroid/content/Intent;

    const-string v17, "com.htc.intent.action.SEND_QUEUED_SMS"

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3184
    .restart local v10       #sendIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$7;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3191
    .end local v10           #sendIntent:Landroid/content/Intent;
    .end local v12           #serviceState:Landroid/telephony/ServiceState;
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 3193
    const-string v17, "phoneinECMState"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 3194
    .local v6, isECM:Z
    const-string v17, "SMS"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ACTION_EMERGENCY_CALLBACK_MODE_CHANGED> "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$7;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$7;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v18, v0

    const/16 v19, 0x16

    new-instance v20, Ljava/lang/Boolean;

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual/range {v18 .. v20}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 3198
    .end local v6           #isECM:Z
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "com.htc.intent.action.ACTION_SPRINT_REASSEMBLE_SMS_DISPATCH"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 3199
    const-string v17, "address"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3200
    .local v7, originatingAddress:Ljava/lang/String;
    const-string v17, "count"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 3201
    .local v11, sequenceCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$7;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v11}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPendingSprintReassembleSms(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 3204
    .end local v7           #originatingAddress:Ljava/lang/String;
    .end local v11           #sequenceCount:I
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "com.htc.intent.action.MONITOR_MOBILE_NETWORK_FOR_CB_IMMUTABLE_NOTIFICATION"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 3205
    const-string v17, "SMS"

    const-string v18, "register receiver for ACTION_ANY_DATA_CONNECTION_STATE_CHANGED"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3206
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 3207
    .local v5, filter:Landroid/content/IntentFilter;
    const-string v17, "android.intent.action.ANY_DATA_STATE"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$7;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$7;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/telephony/SMSDispatcher;->mMobileNetworkReceiver:Landroid/content/BroadcastReceiver;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/SMSDispatcher;->access$700(Lcom/android/internal/telephony/SMSDispatcher;)Landroid/content/BroadcastReceiver;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 3212
    .end local v5           #filter:Landroid/content/IntentFilter;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$7;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    #calls: Lcom/android/internal/telephony/SMSDispatcher;->resetLastSmsFingerprintForCmas(Landroid/content/Intent;)Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->access$800(Lcom/android/internal/telephony/SMSDispatcher;Landroid/content/Intent;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 3219
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher$7;->getResultCode()I

    move-result v9

    .line 3220
    .local v9, rc:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v9, v0, :cond_c

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v9, v0, :cond_d

    :cond_c
    const/4 v14, 0x1

    .line 3225
    .local v14, success:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$7;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v14, v9, v1}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_0

    .line 3220
    .end local v14           #success:Z
    :cond_d
    const/4 v14, 0x0

    goto :goto_2
.end method
