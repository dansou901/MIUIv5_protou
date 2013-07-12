.class public Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;
.super Landroid/os/Handler;
.source "HtcCdmaEmergencyCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback$1;,
        Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback$AlarmIntentReceiver;
    }
.end annotation


# static fields
.field private static final EVENT_CALL_COLLI_DISCONNECTED:I = 0x2

.field private static final EVENT_CALL_DISCONNECTED:I = 0x1

.field private static final EVENT_CALL_STATE_ACTIVE:I = 0x3

.field private static final EVENT_CALL_STATE_IDLE:I = 0x4

.field private static final EVENT_WAITING_ECM_TIMEOUT:I = 0x5

.field public static final HTC_START_ECM_TIMER:I = 0x64

.field public static final HTC_STOP_ECM_TIMER:I = 0x65

.field private static final INTENT_WAITING_ECM_TIMEOUT_MS:I = 0x5dc

.field private static final INTENT_WAITING_ECM_TIMER:Ljava/lang/String; = "com.htc.intent.telephony.waiting_ecm"

.field private static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field private static final logEcmPrefix:Ljava/lang/String; = "ECM-"


# instance fields
.field private mCallStateActive:Z

.field private mEcmWaitingAlarmIntent:Landroid/app/PendingIntent;

.field private mEmergencyCallBackModeStatus:Z

.field private mEmergencyCallStatus:Z

.field private mIntentReceiver:Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback$AlarmIntentReceiver;

.field private nbrEarlyPendingMoEnds:I

.field private nbrEmergencyCallStarted:I

.field private phone:Lcom/android/internal/telephony/cdma/CDMAPhone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 3
    .parameter "phone"

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 91
    const/4 v1, 0x1

    invoke-virtual {p1, p0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 92
    const/4 v1, 0x2

    invoke-virtual {p1, p0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->registerForCollidedDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 93
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    .line 94
    .local v0, ct:Lcom/android/internal/telephony/CallTracker;
    if-eqz v0, :cond_0

    .line 95
    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 96
    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 98
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->dumpStatus(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->cancelDelayReportingEmergencyCallStateEnding(Ljava/lang/Boolean;)V

    return-void
.end method

.method private cancelDelayReportingEmergencyCallStateEnding(Ljava/lang/Boolean;)V
    .locals 4
    .parameter "updateEmgCallOnWhenCancel"

    .prologue
    const/4 v3, 0x0

    .line 326
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mEcmWaitingAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_2

    .line 327
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->removeMessages(I)V

    .line 329
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 331
    .local v1, context:Landroid/content/Context;
    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 332
    .local v0, am:Landroid/app/AlarmManager;
    if-eqz v0, :cond_0

    .line 333
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mEcmWaitingAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 335
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mEcmWaitingAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V

    .line 336
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mEcmWaitingAlarmIntent:Landroid/app/PendingIntent;

    .line 338
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mIntentReceiver:Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback$AlarmIntentReceiver;

    if-eqz v2, :cond_1

    .line 339
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mIntentReceiver:Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback$AlarmIntentReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 342
    :cond_1
    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->notifyEmergencyStatus(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 344
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v1           #context:Landroid/content/Context;
    :cond_2
    return-void
.end method

.method private delayReportingEmergencyCallStateEnding()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x5dc

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 347
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mEmergencyCallBackModeStatus:Z

    if-nez v4, :cond_2

    .line 349
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mEcmWaitingAlarmIntent:Landroid/app/PendingIntent;

    if-nez v4, :cond_1

    .line 350
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 352
    .local v1, context:Landroid/content/Context;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.intent.telephony.waiting_ecm"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 353
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "com.android.phone"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    invoke-static {v1, v6, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mEcmWaitingAlarmIntent:Landroid/app/PendingIntent;

    .line 356
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 357
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v4, "com.htc.intent.telephony.waiting_ecm"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 358
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mIntentReceiver:Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback$AlarmIntentReceiver;

    if-nez v4, :cond_0

    .line 359
    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback$AlarmIntentReceiver;

    invoke-direct {v4, p0, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback$AlarmIntentReceiver;-><init>(Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback$1;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mIntentReceiver:Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback$AlarmIntentReceiver;

    .line 361
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mIntentReceiver:Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback$AlarmIntentReceiver;

    invoke-virtual {v1, v4, v2, v5, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 363
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4, v7, v8}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 364
    const-string v4, "alarm"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 365
    .local v0, am:Landroid/app/AlarmManager;
    if-eqz v0, :cond_1

    .line 366
    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long/2addr v5, v7

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mEcmWaitingAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 376
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #filter:Landroid/content/IntentFilter;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 374
    :cond_2
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->notifyEmergencyStatus(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private dumpStatus(Ljava/lang/String;)V
    .locals 3
    .parameter "prefix"

    .prologue
    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    .local v0, strBuf:Ljava/lang/StringBuilder;
    const-string v1, "ECM-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    if-eqz p1, :cond_0

    .line 393
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 396
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mEmergencyCallStatus:Z

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->reducedLogBoolean(Z)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 397
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mEmergencyCallBackModeStatus:Z

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->reducedLogBoolean(Z)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 398
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 399
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mCallStateActive:Z

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->reducedLogBoolean(Z)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 400
    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 401
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->nbrEmergencyCallStarted:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 402
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 403
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->nbrEarlyPendingMoEnds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 404
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 405
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mEcmWaitingAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->reducedLogBoolean(Z)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 406
    const-string v1, "CDMA"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return-void

    .line 405
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyEmergencyStatus(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 8
    .parameter "emgCallOn"
    .parameter "emgCallBackOn"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 268
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mEmergencyCallStatus:Z

    .line 269
    .local v1, currEmergencyCallStatus:Z
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mEmergencyCallBackModeStatus:Z

    .line 270
    .local v0, currEmergencyCallBackModeStatus:Z
    if-eqz p1, :cond_0

    .line 271
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 273
    :cond_0
    if-eqz p2, :cond_1

    .line 274
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 277
    :cond_1
    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mEmergencyCallBackModeStatus:Z

    if-eq v0, v6, :cond_2

    .line 278
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v6, :cond_2

    .line 279
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->sendEmergencyCallbackModeChange()V

    .line 280
    if-eqz v0, :cond_6

    .line 281
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleTimerInEmergencyCallbackMode(I)V

    .line 289
    :cond_2
    :goto_0
    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mEmergencyCallStatus:Z

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mEmergencyCallBackModeStatus:Z

    if-eqz v6, :cond_7

    :cond_3
    move v3, v4

    .line 290
    .local v3, prevEmgOn:Z
    :goto_1
    if-nez v1, :cond_4

    if-eqz v0, :cond_8

    :cond_4
    move v2, v4

    .line 291
    .local v2, currEmgOn:Z
    :goto_2
    if-eq v3, v2, :cond_5

    .line 292
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v6, :cond_5

    .line 294
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->sendEmergencyPlusCallBackModeStatus(Z)V

    .line 299
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-eqz v6, :cond_5

    .line 300
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v2, :cond_9

    :goto_3
    invoke-virtual {v6, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->setInternalDataEnabled(Z)Z

    .line 304
    :cond_5
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mEmergencyCallStatus:Z

    .line 305
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mEmergencyCallBackModeStatus:Z

    .line 306
    return-void

    .line 284
    .end local v2           #currEmgOn:Z
    .end local v3           #prevEmgOn:Z
    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/16 v7, 0x65

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleTimerInEmergencyCallbackMode(I)V

    goto :goto_0

    :cond_7
    move v3, v5

    .line 289
    goto :goto_1

    .restart local v3       #prevEmgOn:Z
    :cond_8
    move v2, v5

    .line 290
    goto :goto_2

    .restart local v2       #currEmgOn:Z
    :cond_9
    move v4, v5

    .line 300
    goto :goto_3
.end method

.method private reducedLogBoolean(Ljava/lang/Boolean;)C
    .locals 1
    .parameter "value"

    .prologue
    .line 383
    if-nez p1, :cond_0

    .line 384
    const/16 v0, 0x2d

    .line 386
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->reducedLogBoolean(Z)C

    move-result v0

    goto :goto_0
.end method

.method private reducedLogBoolean(Z)C
    .locals 1
    .parameter "value"

    .prologue
    .line 379
    if-eqz p1, :cond_0

    const/16 v0, 0x31

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x30

    goto :goto_0
.end method


# virtual methods
.method public dialEmergencyCall(Ljava/lang/String;)V
    .locals 2
    .parameter "dialString"

    .prologue
    const/4 v1, 0x0

    .line 195
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->nbrEmergencyCallStarted:I

    if-nez v0, :cond_0

    .line 197
    const-string v0, "dial"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->dumpStatus(Ljava/lang/String;)V

    .line 199
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->nbrEmergencyCallStarted:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->nbrEmergencyCallStarted:I

    .line 201
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->cancelDelayReportingEmergencyCallStateEnding(Ljava/lang/Boolean;)V

    .line 205
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->notifyEmergencyStatus(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 208
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 106
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 107
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unregisterForCollidedDisconnect(Landroid/os/Handler;)V

    .line 108
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    .line 109
    .local v0, ct:Lcom/android/internal/telephony/CallTracker;
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 111
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 114
    :cond_0
    const-string v1, "dispose"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->dumpStatus(Ljava/lang/String;)V

    .line 116
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->cancelDelayReportingEmergencyCallStateEnding(Ljava/lang/Boolean;)V

    .line 117
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mIntentReceiver:Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback$AlarmIntentReceiver;

    .line 118
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->notifyEmergencyStatus(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 119
    return-void
.end method

.method public endPendingMoCall(Ljava/lang/String;)V
    .locals 2
    .parameter "dialString"

    .prologue
    .line 216
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->nbrEmergencyCallStarted:I

    if-lez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    const-string v0, "early"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->dumpStatus(Ljava/lang/String;)V

    .line 222
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->nbrEarlyPendingMoEnds:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->nbrEarlyPendingMoEnds:I

    .line 223
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->nbrEmergencyCallStarted:I

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->nbrEarlyPendingMoEnds:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->delayReportingEmergencyCallStateEnding()V

    .line 229
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 135
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 138
    :pswitch_0
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->nbrEmergencyCallStarted:I

    if-lez v2, :cond_0

    .line 139
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 140
    .local v0, ar:Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    .line 141
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 142
    .local v1, c:Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    const-string v2, "disconnect"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->dumpStatus(Ljava/lang/String;)V

    .line 148
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->nbrEmergencyCallStarted:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->nbrEmergencyCallStarted:I

    .line 149
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->nbrEarlyPendingMoEnds:I

    if-lez v2, :cond_1

    .line 150
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->nbrEarlyPendingMoEnds:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->nbrEarlyPendingMoEnds:I

    .line 152
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->nbrEmergencyCallStarted:I

    if-gtz v2, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->delayReportingEmergencyCallStateEnding()V

    goto :goto_0

    .line 160
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #c:Lcom/android/internal/telephony/Connection;
    :pswitch_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mCallStateActive:Z

    if-nez v2, :cond_0

    .line 161
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mCallStateActive:Z

    goto :goto_0

    .line 165
    :pswitch_2
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mCallStateActive:Z

    if-eqz v2, :cond_0

    .line 166
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mCallStateActive:Z

    .line 167
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->nbrEmergencyCallStarted:I

    if-lez v2, :cond_0

    .line 172
    const-string v2, "call-end"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->dumpStatus(Ljava/lang/String;)V

    .line 174
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->delayReportingEmergencyCallStateEnding()V

    goto :goto_0

    .line 180
    :pswitch_3
    const-string v2, "evt-out"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->dumpStatus(Ljava/lang/String;)V

    .line 182
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->cancelDelayReportingEmergencyCallStateEnding(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isInEmergencyCall()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->mEmergencyCallStatus:Z

    return v0
.end method

.method public modemEmergencyCallBackMode(Z)V
    .locals 3
    .parameter "on"

    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->reducedLogBoolean(Z)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->dumpStatus(Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v2, "ril.cdma.inecmmode"

    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->notifyEmergencyStatus(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 252
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->cancelDelayReportingEmergencyCallStateEnding(Ljava/lang/Boolean;)V

    .line 253
    return-void

    .line 249
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
