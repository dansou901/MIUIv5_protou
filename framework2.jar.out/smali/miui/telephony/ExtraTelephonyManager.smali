.class public Lmiui/telephony/ExtraTelephonyManager;
.super Ljava/lang/Object;
.source "ExtraTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/ExtraTelephonyManager$TypedSimId;,
        Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;
    }
.end annotation


# static fields
.field public static final ACTION_DEVICE_ID_READY:Ljava/lang/String; = "android.intent.action.DEVICE_ID_READY"

.field public static final ACTION_ENTER_INCALL_SCREEN_DURING_CALL:Ljava/lang/String; = "android.intent.action.ENTER_INCALL_SCREEN_DURING_CALL"

.field public static final ACTION_LEAVE_INCALL_SCREEN_DURING_CALL:Ljava/lang/String; = "android.intent.action.LEAVE_INCALL_SCREEN_DURING_CALL"

.field public static final EXTRA_BASE_TIME:Ljava/lang/String; = "base_time"

.field public static final EXTRA_CALL_STATE:Ljava/lang/String; = "call_state"

.field public static final EXTRA_CALL_STATE_ACTIVE:Ljava/lang/String; = null

.field public static final EXTRA_CALL_STATE_DIALING:Ljava/lang/String; = null

.field public static final EXTRA_CALL_STATE_HOLDING:Ljava/lang/String; = null

.field public static final EXTRA_DEVICE_ID:Ljava/lang/String; = "device_id"

.field private static final TAG:Ljava/lang/String; = "ExtraTelephonyManager"

.field private static volatile sDeviceIdCache:Ljava/lang/String;

.field private static volatile sIccIdCache:Ljava/lang/String;

.field private static volatile sImsiCache:Ljava/lang/String;

.field private static volatile sSimIdCache:Lmiui/telephony/ExtraTelephonyManager$TypedSimId;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/telephony/ExtraTelephonyManager;->EXTRA_CALL_STATE_DIALING:Ljava/lang/String;

    .line 72
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/telephony/ExtraTelephonyManager;->EXTRA_CALL_STATE_ACTIVE:Ljava/lang/String;

    .line 79
    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/telephony/ExtraTelephonyManager;->EXTRA_CALL_STATE_HOLDING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    return-void
.end method

.method static synthetic access$000(Landroid/telephony/TelephonyManager;)Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->getSimIdByPhoneType(Landroid/telephony/TelephonyManager;)Lmiui/telephony/ExtraTelephonyManager$TypedSimId;

    move-result-object v0

    return-object v0
.end method

.method public static blockingCompareSimId(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "simId"

    .prologue
    .line 409
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 410
    const/4 v4, 0x1

    .line 433
    :goto_0
    return v4

    .line 412
    :cond_0
    invoke-static {p1}, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;->parse(Ljava/lang/String;)Lmiui/telephony/ExtraTelephonyManager$TypedSimId;

    move-result-object v3

    .line 413
    .local v3, parsedSimId:Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    iget v4, v3, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;->type:I

    if-nez v4, :cond_1

    .line 414
    const/4 v2, 0x0

    .line 416
    .local v2, iccid:Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->blockingGetIccId(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Lmiui/telephony/exception/IllegalDeviceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 420
    :goto_1
    const-string v4, "ExtraTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iccid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v4, v3, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;->value:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    .line 417
    :catch_0
    move-exception v1

    .line 418
    .local v1, e:Lmiui/telephony/exception/IllegalDeviceException;
    invoke-virtual {v1}, Lmiui/telephony/exception/IllegalDeviceException;->printStackTrace()V

    goto :goto_1

    .line 425
    .end local v1           #e:Lmiui/telephony/exception/IllegalDeviceException;
    .end local v2           #iccid:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 427
    .local v0, currentSimId:Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    :try_start_1
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->blockingGetTypedSimId(Landroid/content/Context;)Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    :try_end_1
    .catch Lmiui/telephony/exception/IllegalDeviceException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 431
    :goto_2
    const-string v4, "ExtraTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parsed sim id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", current: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-virtual {v3, v0}, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    .line 428
    :catch_1
    move-exception v1

    .line 429
    .restart local v1       #e:Lmiui/telephony/exception/IllegalDeviceException;
    invoke-virtual {v1}, Lmiui/telephony/exception/IllegalDeviceException;->printStackTrace()V

    goto :goto_2
.end method

.method public static blockingGetDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/telephony/exception/IllegalDeviceException;
        }
    .end annotation

    .prologue
    .line 126
    sget-object v0, Lmiui/telephony/ExtraTelephonyManager;->sDeviceIdCache:Ljava/lang/String;

    .line 127
    .local v0, result:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v0

    .line 135
    .end local v0           #result:Ljava/lang/String;
    .local v1, result:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 130
    .end local v1           #result:Ljava/lang/String;
    .restart local v0       #result:Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->waitAndGetDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    new-instance v2, Lmiui/telephony/exception/IllegalDeviceException;

    const-string v3, "device id is empty"

    invoke-direct {v2, v3}, Lmiui/telephony/exception/IllegalDeviceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 134
    :cond_1
    sput-object v0, Lmiui/telephony/ExtraTelephonyManager;->sDeviceIdCache:Ljava/lang/String;

    move-object v1, v0

    .line 135
    .end local v0           #result:Ljava/lang/String;
    .restart local v1       #result:Ljava/lang/String;
    goto :goto_0
.end method

.method public static blockingGetIccId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/telephony/exception/IllegalDeviceException;
        }
    .end annotation

    .prologue
    .line 181
    sget-object v0, Lmiui/telephony/ExtraTelephonyManager;->sIccIdCache:Ljava/lang/String;

    .line 182
    .local v0, result:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v0

    .line 190
    .end local v0           #result:Ljava/lang/String;
    .local v1, result:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 185
    .end local v1           #result:Ljava/lang/String;
    .restart local v0       #result:Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->waitAndGetIccid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 187
    new-instance v2, Lmiui/telephony/exception/IllegalDeviceException;

    const-string v3, "icc id is is empty"

    invoke-direct {v2, v3}, Lmiui/telephony/exception/IllegalDeviceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 189
    :cond_1
    sput-object v0, Lmiui/telephony/ExtraTelephonyManager;->sIccIdCache:Ljava/lang/String;

    move-object v1, v0

    .line 190
    .end local v0           #result:Ljava/lang/String;
    .restart local v1       #result:Ljava/lang/String;
    goto :goto_0
.end method

.method public static blockingGetImsi(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/telephony/exception/IllegalDeviceException;
        }
    .end annotation

    .prologue
    .line 249
    sget-object v0, Lmiui/telephony/ExtraTelephonyManager;->sImsiCache:Ljava/lang/String;

    .line 250
    .local v0, result:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v0

    .line 258
    .end local v0           #result:Ljava/lang/String;
    .local v1, result:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 253
    .end local v1           #result:Ljava/lang/String;
    .restart local v0       #result:Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->waitAndGetImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 255
    new-instance v2, Lmiui/telephony/exception/IllegalDeviceException;

    const-string v3, "imsi is is empty"

    invoke-direct {v2, v3}, Lmiui/telephony/exception/IllegalDeviceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 257
    :cond_1
    sput-object v0, Lmiui/telephony/ExtraTelephonyManager;->sImsiCache:Ljava/lang/String;

    move-object v1, v0

    .line 258
    .end local v0           #result:Ljava/lang/String;
    .restart local v1       #result:Ljava/lang/String;
    goto :goto_0
.end method

.method public static blockingGetSimId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/telephony/exception/IllegalDeviceException;
        }
    .end annotation

    .prologue
    .line 311
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->blockingGetTypedSimId(Landroid/content/Context;)Lmiui/telephony/ExtraTelephonyManager$TypedSimId;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;->toPlain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blockingGetTypedSimId(Landroid/content/Context;)Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/telephony/exception/IllegalDeviceException;
        }
    .end annotation

    .prologue
    .line 316
    sget-object v0, Lmiui/telephony/ExtraTelephonyManager;->sSimIdCache:Lmiui/telephony/ExtraTelephonyManager$TypedSimId;

    .line 317
    .local v0, result:Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 325
    .end local v0           #result:Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    .local v1, result:Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    :goto_0
    return-object v1

    .line 320
    .end local v1           #result:Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    .restart local v0       #result:Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    :cond_0
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->waitAndGetSimId(Landroid/content/Context;)Lmiui/telephony/ExtraTelephonyManager$TypedSimId;

    move-result-object v0

    .line 321
    if-nez v0, :cond_1

    .line 322
    new-instance v2, Lmiui/telephony/exception/IllegalDeviceException;

    const-string v3, "failed to get sim id"

    invoke-direct {v2, v3}, Lmiui/telephony/exception/IllegalDeviceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 324
    :cond_1
    sput-object v0, Lmiui/telephony/ExtraTelephonyManager;->sSimIdCache:Lmiui/telephony/ExtraTelephonyManager$TypedSimId;

    move-object v1, v0

    .line 325
    .end local v0           #result:Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    .restart local v1       #result:Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    goto :goto_0
.end method

.method private static ensureNotOnMainThread(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 437
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 438
    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 439
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 442
    :cond_0
    return-void
.end method

.method public static getSimId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 373
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 375
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lmiui/telephony/ExtraTelephonyManager;->getSimIdByPhoneType(Landroid/telephony/TelephonyManager;)Lmiui/telephony/ExtraTelephonyManager$TypedSimId;

    move-result-object v1

    .line 376
    .local v1, typedSimId:Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    if-eqz v1, :cond_0

    .line 377
    invoke-virtual {v1}, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;->toPlain()Ljava/lang/String;

    move-result-object v2

    .line 379
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getSimIdByPhoneType(Landroid/telephony/TelephonyManager;)Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    .locals 8
    .parameter "tm"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 383
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    .line 384
    .local v2, phoneType:I
    const-string v3, "ExtraTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phone type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    if-ne v2, v7, :cond_0

    .line 386
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, iccid:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 388
    new-instance v3, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;

    invoke-direct {v3, v6, v0}, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;-><init>(ILjava/lang/String;)V

    .line 396
    .end local v0           #iccid:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 390
    :cond_0
    if-ne v2, v6, :cond_1

    .line 391
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, imsi:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 393
    new-instance v3, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;

    invoke-direct {v3, v7, v1}, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 396
    .end local v1           #imsi:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getSimOperator(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 94
    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, operator:Ljava/lang/String;
    if-nez p0, :cond_1

    .line 112
    .end local v1           #operator:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 100
    .restart local v1       #operator:Ljava/lang/String;
    :cond_1
    const-string v2, "com.android.vending"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lmiui/telephony/PhoneNumberUtils;->isChineseOperator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fake_mobile_operator_for_vending"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, fake:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 105
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 109
    :cond_2
    const-string v1, "310410"

    goto :goto_0
.end method

.method private static waitAndGetDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/telephony/exception/IllegalDeviceException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 140
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->ensureNotOnMainThread(Landroid/content/Context;)V

    .line 141
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 143
    .local v5, tm:Landroid/telephony/TelephonyManager;
    new-instance v2, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;

    invoke-direct {v2}, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;-><init>()V

    .line 144
    .local v2, future:Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;,"Lmiui/telephony/ExtraTelephonyManager$AsyncFuture<Ljava/lang/String;>;"
    new-instance v4, Lmiui/telephony/ExtraTelephonyManager$1;

    invoke-direct {v4, v2}, Lmiui/telephony/ExtraTelephonyManager$1;-><init>(Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;)V

    .line 151
    .local v4, receiver:Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.DEVICE_ID_READY"

    invoke-direct {v1, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 153
    .local v1, filter:Landroid/content/IntentFilter;
    invoke-virtual {p0, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 154
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, id:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 156
    invoke-virtual {v2, v3}, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;->setResult(Ljava/lang/Object;)V

    .line 159
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 167
    invoke-virtual {p0, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 165
    :goto_0
    return-object v6

    .line 160
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    invoke-virtual {p0, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    move-object v6, v7

    .line 163
    goto :goto_0

    .line 164
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 167
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    move-object v6, v7

    .line 165
    goto :goto_0

    .line 167
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-virtual {p0, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    throw v6
.end method

.method private static waitAndGetIccid(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 202
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->ensureNotOnMainThread(Landroid/content/Context;)V

    .line 203
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 205
    .local v5, tm:Landroid/telephony/TelephonyManager;
    new-instance v2, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;

    invoke-direct {v2}, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;-><init>()V

    .line 206
    .local v2, future:Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;,"Lmiui/telephony/ExtraTelephonyManager$AsyncFuture<Ljava/lang/String;>;"
    new-instance v4, Lmiui/telephony/ExtraTelephonyManager$2;

    invoke-direct {v4, v2}, Lmiui/telephony/ExtraTelephonyManager$2;-><init>(Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;)V

    .line 217
    .local v4, receiver:Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 219
    .local v1, filter:Landroid/content/IntentFilter;
    invoke-virtual {p0, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 220
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, id:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 222
    invoke-virtual {v2, v3}, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;->setResult(Ljava/lang/Object;)V

    .line 225
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 233
    invoke-virtual {p0, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 231
    :goto_0
    return-object v6

    .line 226
    :catch_0
    move-exception v0

    .line 228
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    invoke-virtual {p0, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    move-object v6, v7

    .line 229
    goto :goto_0

    .line 230
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 233
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    move-object v6, v7

    .line 231
    goto :goto_0

    .line 233
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-virtual {p0, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    throw v6
.end method

.method private static waitAndGetImsi(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 266
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->ensureNotOnMainThread(Landroid/content/Context;)V

    .line 267
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 269
    .local v5, tm:Landroid/telephony/TelephonyManager;
    new-instance v2, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;

    invoke-direct {v2}, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;-><init>()V

    .line 270
    .local v2, future:Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;,"Lmiui/telephony/ExtraTelephonyManager$AsyncFuture<Ljava/lang/String;>;"
    new-instance v4, Lmiui/telephony/ExtraTelephonyManager$3;

    invoke-direct {v4, v2}, Lmiui/telephony/ExtraTelephonyManager$3;-><init>(Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;)V

    .line 281
    .local v4, receiver:Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 283
    .local v1, filter:Landroid/content/IntentFilter;
    invoke-virtual {p0, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 284
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 285
    .local v3, id:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 286
    invoke-virtual {v2, v3}, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;->setResult(Ljava/lang/Object;)V

    .line 289
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 297
    invoke-virtual {p0, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 295
    :goto_0
    return-object v6

    .line 290
    :catch_0
    move-exception v0

    .line 292
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    invoke-virtual {p0, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    move-object v6, v7

    .line 293
    goto :goto_0

    .line 294
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 297
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    move-object v6, v7

    .line 295
    goto :goto_0

    .line 297
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-virtual {p0, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    throw v6
.end method

.method private static waitAndGetSimId(Landroid/content/Context;)Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 335
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->ensureNotOnMainThread(Landroid/content/Context;)V

    .line 336
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 338
    .local v5, tm:Landroid/telephony/TelephonyManager;
    new-instance v2, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;

    invoke-direct {v2}, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;-><init>()V

    .line 339
    .local v2, future:Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;,"Lmiui/telephony/ExtraTelephonyManager$AsyncFuture<Lmiui/telephony/ExtraTelephonyManager$TypedSimId;>;"
    new-instance v3, Lmiui/telephony/ExtraTelephonyManager$4;

    invoke-direct {v3, v2, v5}, Lmiui/telephony/ExtraTelephonyManager$4;-><init>(Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;Landroid/telephony/TelephonyManager;)V

    .line 348
    .local v3, receiver:Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 350
    .local v1, filter:Landroid/content/IntentFilter;
    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 351
    invoke-static {v5}, Lmiui/telephony/ExtraTelephonyManager;->getSimIdByPhoneType(Landroid/telephony/TelephonyManager;)Lmiui/telephony/ExtraTelephonyManager$TypedSimId;

    move-result-object v4

    .line 352
    .local v4, simId:Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    if-eqz v4, :cond_0

    .line 353
    invoke-virtual {v2, v4}, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;->setResult(Ljava/lang/Object;)V

    .line 356
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 365
    invoke-virtual {p0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 363
    :goto_0
    return-object v6

    .line 357
    :catch_0
    move-exception v0

    .line 359
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    invoke-virtual {p0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    move-object v6, v7

    .line 360
    goto :goto_0

    .line 361
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 362
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v6, "ExtraTelephonyManager"

    const-string v8, "exception when get sim id"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 365
    invoke-virtual {p0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    move-object v6, v7

    .line 363
    goto :goto_0

    .line 365
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-virtual {p0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    throw v6
.end method
