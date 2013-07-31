.class public final Lcom/android/internal/telephony/cdma/CdmaCallTracker;
.super Lcom/android/internal/telephony/CallTracker;
.source "CdmaCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;
    }
.end annotation


# static fields
.field public static final CDMA_SPECIAL_CODE_FOR_FLASH__MERGE_2ND_MO_CALL:I = 0x1

.field public static final CDMA_SPECIAL_CODE_FOR_FLASH__MERGE_2ND_MT_CALL:I = 0x0

.field public static final CDMA_SPECIAL_CODE_FOR_FLASH__SWAP_2ND_MO_CALL:I = 0x3

.field public static final CDMA_SPECIAL_CODE_FOR_FLASH__SWAP_2ND_MT_CALL:I = 0x2

.field private static final DBG_POLL:Z = false

.field private static final FLASH_EMPTY:Ljava/lang/String; = ""

.field private static final FLASH_FOR_CONFERENCE:I = 0x1

.field private static final FLASH_FOR_SWAP:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field static final MAX_CONNECTIONS:I = 0x1

.field static final MAX_CONNECTIONS_PER_CALL:I = 0x1

.field private static final REPEAT_POLLING:Z


# instance fields
.field final THREE_WAY_CALL_DELAY:Z

.field backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

.field callWaitingRegistrants:Landroid/os/RegistrantList;

.field connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

.field desiredMute:Z

.field droppedDuringPoll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/CdmaConnection;",
            ">;"
        }
    .end annotation
.end field

.field foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

.field hangupPendingMO:Z

.field private mHtcBetweenRingAndCallStateQueried:Z

.field private mHtcBetweenRingAndCallStateReturned:Z

.field public mHtcCdmaEmergencyCallback:Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;

.field private mHtcCdmaFgCallNoUpdateRequired:Z

.field private mHtcCdmaPreviousSendFlash:Z

.field private mHtcPendingAcceptInProgress:Z

.field private mHtcPendingMoInProgress:Z

.field private mHtcQueringChangedCallState:Z

.field private mIsEcmTimerCanceled:Z

.field mIsInEmergencyCall:Z

.field private mNeedUpdateForFirstQuery:Z

.field private mPendingRedirectNumber:Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;

.field private mVoiceCallAbility:Z

.field pendingCallClirMode:I

.field pendingCallInEcm:Z

.field pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

.field phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

.field state:Lcom/android/internal/telephony/Phone$State;

.field voiceCallEndedRegistrants:Landroid/os/RegistrantList;

.field voiceCallStartedRegistrants:Landroid/os/RegistrantList;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 7
    .parameter "phone"

    .prologue
    const/16 v6, 0x3a

    const/16 v5, 0xa

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 119
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;-><init>()V

    .line 73
    new-array v0, v2, [Lcom/android/internal/telephony/cdma/CdmaConnection;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 74
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    .line 75
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    .line 76
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;-><init>(Lcom/android/internal/telephony/cdma/CdmaCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 85
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;-><init>(Lcom/android/internal/telephony/cdma/CdmaCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 86
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;-><init>(Lcom/android/internal/telephony/cdma/CdmaCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 90
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallInEcm:Z

    .line 91
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsInEmergencyCall:Z

    .line 94
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->desiredMute:Z

    .line 97
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 99
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

    .line 2416
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x94

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v6, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x91

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v5, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-eq v0, v3, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->THREE_WAY_CALL_DELAY:Z

    .line 2423
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaPreviousSendFlash:Z

    .line 2466
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mVoiceCallAbility:Z

    .line 120
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 121
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    invoke-interface {v0, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x9

    invoke-interface {v0, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v5, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xf

    invoke-interface {v0, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallWaitingInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x35

    invoke-interface {v0, p0, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForRedirNumInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 130
    invoke-virtual {p1, p0, v6, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x3d

    invoke-interface {v0, p0, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForLineControl(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 134
    const-string v0, "CDMA"

    const-string v1, "registerForLineControl"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x40

    invoke-interface {v0, p0, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaEmergencyCallback:Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;

    if-nez v0, :cond_1

    .line 140
    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaEmergencyCallback:Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;

    .line 143
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 2416
    goto :goto_0
.end method

.method private checkAndEnableDataCallAfterEmergencyCallDropped()V
    .locals 0

    .prologue
    .line 1874
    return-void
.end method

.method private checkMtFindNewRinging(Lcom/android/internal/telephony/DriverCall;I)Lcom/android/internal/telephony/Connection;
    .locals 4
    .parameter "dc"
    .parameter "i"

    .prologue
    .line 1882
    const/4 v0, 0x0

    .line 1884
    .local v0, newRinging:Lcom/android/internal/telephony/Connection;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, p0, p2}, Lcom/android/internal/telephony/cdma/CdmaConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/cdma/CdmaCallTracker;I)V

    aput-object v2, v1, p2

    .line 1886
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-ne v1, v2, :cond_1

    .line 1887
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v0, v1, p2

    .line 1888
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notify new ring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1903
    :cond_0
    :goto_0
    return-object v0

    .line 1893
    :cond_1
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phantom call appeared "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v1, v2, :cond_0

    .line 1899
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v1, v1, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/cdma/CdmaConnection;->connectTime:J

    .line 1900
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v1, v1, p2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/cdma/CdmaConnection;->connectTimeReal:J

    goto :goto_0
.end method

.method private dialThreeWay(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 6
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 423
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaCall;->isIdle()Z

    move-result v2

    if-nez v2, :cond_5

    .line 426
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->isUserDialingSwapSpecialCode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 427
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->htcPerformFlashRequest(ILjava/lang/String;)V

    .line 429
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-direct {v0, v2, p1, p0, v3}, Lcom/android/internal/telephony/cdma/CdmaConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 431
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingMoInProgress:Z

    .line 432
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 469
    :goto_0
    return-object v0

    .line 434
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->isUserDialingMergeSpecialCode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 435
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->htcPerformFlashRequest(ILjava/lang/String;)V

    .line 437
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-direct {v0, v2, p1, p0, v3}, Lcom/android/internal/telephony/cdma/CdmaConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 439
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingMoInProgress:Z

    .line 440
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    goto :goto_0

    .line 444
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->disableDataCallInEmergencyCall(Ljava/lang/String;)V

    .line 447
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-direct {v2, v3, v4, p0, v5}, Lcom/android/internal/telephony/cdma/CdmaConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 450
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingMoInProgress:Z

    .line 453
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->THREE_WAY_CALL_DELAY:Z

    if-eqz v2, :cond_4

    .line 454
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaPreviousSendFlash:Z

    if-nez v2, :cond_2

    .line 455
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const-string v3, ""

    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    .line 457
    :cond_2
    const/16 v2, 0x38

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x320

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 459
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "trigger 3 way delayed, dummy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaPreviousSendFlash:Z

    if-nez v4, :cond_3

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    goto :goto_0

    :cond_3
    move v0, v1

    .line 459
    goto :goto_1

    .line 462
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_2

    .line 469
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private disableDataCallInEmergencyCall(Ljava/lang/String;)V
    .locals 1
    .parameter "dialString"

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1838
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaEmergencyCallback:Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;

    if-eqz v0, :cond_0

    .line 1839
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaEmergencyCallback:Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->dialEmergencyCall(Ljava/lang/String;)V

    .line 1843
    :cond_0
    return-void
.end method

.method private fakeHoldForegroundBeforeDial()V
    .locals 5

    .prologue
    .line 283
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 285
    .local v1, connCopy:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, s:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 286
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 288
    .local v0, conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->fakeHoldBeforeDial()V

    .line 285
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 290
    .end local v0           #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_0
    return-void
.end method

.method private flashAndSetGenericTrue()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1328
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->htcFlashAndSetGenericTrue(Ljava/lang/String;)V

    .line 1329
    return-void
.end method

.method private getFailedService(I)Lcom/android/internal/telephony/Phone$SuppService;
    .locals 1
    .parameter "what"

    .prologue
    .line 1343
    packed-switch p1, :pswitch_data_0

    .line 1353
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    :goto_0
    return-object v0

    .line 1345
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 1347
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->CONFERENCE:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 1349
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 1351
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->TRANSFER:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 1343
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V
    .locals 7
    .parameter "cw"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1372
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event EVENT_CALL_WAITING_INFO_CDMA Receiving - single="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaFgCallNoUpdateRequired:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaCall;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcIsConference()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaCall;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " prevFsh="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaPreviousSendFlash:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1376
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaFgCallNoUpdateRequired:Z

    .line 1388
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_0

    .line 1389
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object v2, v3

    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1390
    .local v2, earlistedConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    if-eqz v2, :cond_0

    .line 1391
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaConnection;->updateParent(Lcom/android/internal/telephony/cdma/CdmaCall;Lcom/android/internal/telephony/cdma/CdmaCall;)V

    .line 1392
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onConnectedInOrOut()V

    .line 1393
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    .line 1394
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    .line 1405
    .end local v2           #earlistedConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v5, :cond_1

    .line 1406
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    .line 1410
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    .line 1412
    const/4 v0, 0x1

    .line 1413
    .local v0, bNewConnection:Z
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1414
    .local v1, conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    if-eqz v1, :cond_2

    .line 1416
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_2

    .line 1418
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1, v3, p1, p0, v4}, Lcom/android/internal/telephony/cdma/CdmaConnection;->update(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;)V

    .line 1419
    const/4 v0, 0x0

    .line 1422
    :cond_2
    if-eqz v0, :cond_3

    .line 1425
    new-instance v3, Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-direct {v3, v4, p1, p0, v5}, Lcom/android/internal/telephony/cdma/CdmaConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;)V

    .line 1429
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    .line 1432
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->notifyCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V

    .line 1434
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->THREE_WAY_CALL_DELAY:Z

    if-eqz v3, :cond_4

    .line 1435
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaPreviousSendFlash:Z

    .line 1438
    :cond_4
    return-void
.end method

.method private handleEcmTimer(I)V
    .locals 3
    .parameter "action"

    .prologue
    .line 1809
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleTimerInEmergencyCallbackMode(I)V

    .line 1810
    packed-switch p1, :pswitch_data_0

    .line 1814
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEcmTimer, unsupported action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    :goto_0
    return-void

    .line 1811
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

    goto :goto_0

    .line 1812
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

    goto :goto_0

    .line 1810
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleRadioNotAvailable()V
    .locals 0

    .prologue
    .line 1360
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pollCallsWhenSafe()V

    .line 1361
    return-void
.end method

.method private htcAppendRedirectingNumber(Lcom/android/internal/telephony/Connection;)V
    .locals 3
    .parameter "conn"

    .prologue
    .line 1980
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingRedirectNumber:Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;

    if-eqz v1, :cond_0

    .line 1982
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object v1, v0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingRedirectNumber:Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;->mAddress:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHtcRedirectingNumberAddress:Ljava/lang/String;

    .line 1983
    check-cast p1, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .end local p1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingRedirectNumber:Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;->mName:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHtcRedirectingNumberName:Ljava/lang/String;

    .line 1984
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingRedirectNumber:Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1988
    :cond_0
    :goto_0
    return-void

    .line 1985
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private htcFlashAndSetGenericTrue(Ljava/lang/String;)V
    .locals 2
    .parameter "flashString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    .line 1338
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    .line 1339
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    .line 1340
    return-void
.end method

.method private htcHandleRedirectNumber([Ljava/lang/String;)V
    .locals 7
    .parameter "mIndication"

    .prologue
    const/4 v6, 0x0

    .line 1940
    if-nez p1, :cond_0

    .line 1941
    const-string v4, "RedirNum zero length"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1976
    :goto_0
    return-void

    .line 1945
    :cond_0
    array-length v4, p1

    const/4 v5, 0x5

    if-ge v4, v5, :cond_2

    const/4 v3, 0x0

    .line 1946
    .local v3, mRedirectName:Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RedirNum ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1950
    const/4 v1, 0x0

    .line 1951
    .local v1, conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaCall;->hasConnections()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1953
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1965
    :cond_1
    :goto_2
    if-eqz v1, :cond_4

    .line 1966
    aget-object v4, p1, v6

    iput-object v4, v1, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHtcRedirectingNumberAddress:Ljava/lang/String;

    .line 1967
    iput-object v3, v1, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHtcRedirectingNumberName:Ljava/lang/String;

    .line 1968
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    goto :goto_0

    .line 1945
    .end local v1           #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v3           #mRedirectName:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x4

    aget-object v3, p1, v4

    goto :goto_1

    .line 1954
    .restart local v1       #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .restart local v3       #mRedirectName:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1955
    .local v2, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get redirNum from ring:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1958
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaCall;->hasConnections()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1960
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1961
    :catch_1
    move-exception v2

    .line 1962
    .restart local v2       #e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get redirNum from fg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1971
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    const-string v4, "Pending redirNum for new call"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1972
    new-instance v4, Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;-><init>(Lcom/android/internal/telephony/cdma/CdmaCallTracker;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingRedirectNumber:Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;

    .line 1973
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingRedirectNumber:Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;

    aget-object v5, p1, v6

    iput-object v5, v4, Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;->mAddress:Ljava/lang/String;

    .line 1974
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingRedirectNumber:Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;

    iput-object v3, v4, Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;->mName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private htcPerformFlashRequest(ILjava/lang/String;)V
    .locals 11
    .parameter "flashRequestType"
    .parameter "userDialedSpecialCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2088
    const/4 v4, 0x0

    .line 2089
    .local v4, flashRequestMode:I
    const/4 v3, 0x0

    .line 2090
    .local v3, flashCommandSend:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2091
    .local v6, needFlashAndSetGeneric:Z
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->isGeneric()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2092
    const/16 v4, 0x1f4

    .line 2093
    if-eqz p2, :cond_0

    move-object v3, p2

    .line 2406
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SCC dial ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 2407
    if-eqz v6, :cond_27

    .line 2408
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->htcFlashAndSetGenericTrue(Ljava/lang/String;)V

    .line 2413
    :goto_1
    return-void

    .line 2093
    :cond_0
    const-string v3, ""

    goto :goto_0

    .line 2096
    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 2097
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    if-nez v0, :cond_3

    .line 2098
    const/16 v4, 0x3e8

    .line 2099
    if-eqz p2, :cond_2

    move-object v3, p2

    .line 2100
    :goto_2
    const/4 v6, 0x1

    goto :goto_0

    .line 2099
    :cond_2
    const-string v3, ""

    goto :goto_2

    .line 2103
    :cond_3
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->getConnections()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-gt v8, v9, :cond_5

    .line 2104
    const/16 v4, 0x5dc

    .line 2105
    if-eqz p2, :cond_4

    move-object v3, p2

    :goto_3
    goto :goto_0

    :cond_4
    const-string v3, ""

    goto :goto_3

    .line 2110
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v5

    .line 2111
    .local v5, lastCallMt:Z
    const/4 v1, 0x0

    .line 2112
    .local v1, defaultFlashString:Ljava/lang/String;
    const/4 v2, 0x0

    .line 2113
    .local v2, defaultFlashString_2nd:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->htcSpecialCodesForFlashCommand()[Ljava/lang/String;

    move-result-object v7

    .line 2114
    .local v7, specialCode:[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 2138
    const/16 v4, 0x1770

    .line 2141
    :goto_4
    if-eqz v1, :cond_1a

    .line 2142
    if-eqz p2, :cond_15

    .line 2143
    move-object v3, p2

    .line 2144
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 2146
    packed-switch p1, :pswitch_data_1

    .line 2191
    add-int/lit16 v4, v4, 0xbe

    .line 2192
    const/4 v6, 0x1

    .line 2193
    goto :goto_0

    .line 2116
    :pswitch_0
    if-eqz v5, :cond_6

    .line 2117
    const/16 v4, 0x7d0

    .line 2118
    aget-object v1, v7, v10

    goto :goto_4

    .line 2121
    :cond_6
    const/16 v4, 0xbb8

    .line 2122
    aget-object v1, v7, v9

    .line 2124
    goto :goto_4

    .line 2126
    :pswitch_1
    if-eqz v5, :cond_7

    .line 2127
    const/16 v4, 0xfa0

    .line 2128
    const/4 v8, 0x2

    aget-object v1, v7, v8

    .line 2129
    aget-object v2, v7, v10

    goto :goto_4

    .line 2132
    :cond_7
    const/16 v4, 0x1388

    .line 2133
    const/4 v8, 0x3

    aget-object v1, v7, v8

    .line 2134
    aget-object v2, v7, v9

    .line 2136
    goto :goto_4

    .line 2148
    :pswitch_2
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcIsConference()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2149
    const-string v8, ""

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2150
    add-int/lit8 v4, v4, 0x6e

    .line 2151
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2154
    :cond_8
    add-int/lit8 v4, v4, 0x78

    goto/16 :goto_0

    .line 2158
    :cond_9
    add-int/lit16 v4, v4, 0x82

    .line 2159
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcSetConference()V

    goto/16 :goto_0

    .line 2163
    :pswitch_3
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcIsConference()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 2164
    if-eqz v2, :cond_b

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 2166
    const-string v8, ""

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2167
    add-int/lit16 v4, v4, 0x8c

    .line 2168
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2171
    :cond_a
    add-int/lit16 v4, v4, 0x96

    goto/16 :goto_0

    .line 2175
    :cond_b
    add-int/lit16 v4, v4, 0xa0

    .line 2176
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2180
    :cond_c
    if-eqz v2, :cond_d

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 2182
    add-int/lit16 v4, v4, 0xaa

    .line 2183
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcSetConference()V

    goto/16 :goto_0

    .line 2186
    :cond_d
    add-int/lit16 v4, v4, 0xb4

    .line 2189
    goto/16 :goto_0

    .line 2198
    :cond_e
    packed-switch p1, :pswitch_data_2

    .line 2245
    add-int/lit16 v4, v4, 0x122

    .line 2246
    const/4 v6, 0x1

    .line 2247
    goto/16 :goto_0

    .line 2201
    :pswitch_4
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcIsConference()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 2202
    aget-object v8, v7, v9

    if-eqz v8, :cond_f

    aget-object v8, v7, v9

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    const-string v8, ""

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 2205
    add-int/lit16 v4, v4, 0xd2

    .line 2206
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2209
    :cond_f
    add-int/lit16 v4, v4, 0xdc

    goto/16 :goto_0

    .line 2213
    :cond_10
    add-int/lit16 v4, v4, 0xe6

    .line 2215
    goto/16 :goto_0

    .line 2218
    :pswitch_5
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcIsConference()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 2219
    if-eqz v2, :cond_12

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 2221
    const-string v8, ""

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 2222
    add-int/lit16 v4, v4, 0xf0

    .line 2223
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2226
    :cond_11
    add-int/lit16 v4, v4, 0xfa

    goto/16 :goto_0

    .line 2230
    :cond_12
    add-int/lit16 v4, v4, 0x104

    goto/16 :goto_0

    .line 2234
    :cond_13
    if-eqz v2, :cond_14

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 2236
    add-int/lit16 v4, v4, 0x10e

    .line 2237
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcSetConference()V

    goto/16 :goto_0

    .line 2240
    :cond_14
    add-int/lit16 v4, v4, 0x118

    .line 2243
    goto/16 :goto_0

    .line 2252
    :cond_15
    move-object v3, v1

    .line 2253
    packed-switch p1, :pswitch_data_3

    .line 2290
    add-int/lit16 v4, v4, 0x186

    .line 2291
    const/4 v6, 0x1

    .line 2292
    goto/16 :goto_0

    .line 2255
    :pswitch_6
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcIsConference()Z

    move-result v8

    if-eqz v8, :cond_17

    .line 2256
    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 2257
    add-int/lit16 v4, v4, 0x136

    .line 2258
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2261
    :cond_16
    add-int/lit16 v4, v4, 0x140

    goto/16 :goto_0

    .line 2265
    :cond_17
    add-int/lit16 v4, v4, 0x14a

    .line 2266
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcSetConference()V

    goto/16 :goto_0

    .line 2270
    :pswitch_7
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcIsConference()Z

    move-result v8

    if-eqz v8, :cond_18

    .line 2272
    add-int/lit16 v4, v4, 0x168

    .line 2273
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2276
    :cond_18
    if-eqz v2, :cond_19

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 2280
    move-object v3, v2

    .line 2281
    add-int/lit16 v4, v4, 0x172

    .line 2282
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcSetConference()V

    goto/16 :goto_0

    .line 2285
    :cond_19
    add-int/lit16 v4, v4, 0x17c

    .line 2288
    goto/16 :goto_0

    .line 2297
    :cond_1a
    if-eqz p2, :cond_21

    .line 2298
    move-object v3, p2

    .line 2299
    packed-switch p1, :pswitch_data_4

    .line 2347
    add-int/lit16 v4, v4, 0x1ea

    .line 2348
    const/4 v6, 0x1

    .line 2349
    goto/16 :goto_0

    .line 2301
    :pswitch_8
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcIsConference()Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 2302
    aget-object v8, v7, v9

    if-eqz v8, :cond_1b

    aget-object v8, v7, v9

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    const-string v8, ""

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 2305
    add-int/lit16 v4, v4, 0x19a

    .line 2306
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2309
    :cond_1b
    add-int/lit16 v4, v4, 0x1a4

    goto/16 :goto_0

    .line 2313
    :cond_1c
    add-int/lit16 v4, v4, 0x1ae

    .line 2315
    goto/16 :goto_0

    .line 2318
    :pswitch_9
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcIsConference()Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 2319
    if-eqz v2, :cond_1e

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 2321
    move-object v3, v2

    .line 2322
    const-string v8, ""

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 2323
    add-int/lit16 v4, v4, 0x1b8

    .line 2324
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2327
    :cond_1d
    add-int/lit16 v4, v4, 0x1c2

    goto/16 :goto_0

    .line 2331
    :cond_1e
    add-int/lit16 v4, v4, 0x1cc

    goto/16 :goto_0

    .line 2335
    :cond_1f
    if-eqz v2, :cond_20

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 2337
    move-object v3, v2

    .line 2338
    add-int/lit16 v4, v4, 0x1d6

    .line 2339
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcSetConference()V

    goto/16 :goto_0

    .line 2342
    :cond_20
    add-int/lit16 v4, v4, 0x1e0

    .line 2345
    goto/16 :goto_0

    .line 2353
    :cond_21
    const-string v3, ""

    .line 2354
    packed-switch p1, :pswitch_data_5

    .line 2398
    add-int/lit16 v4, v4, 0x24e

    .line 2399
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2356
    :pswitch_a
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcIsConference()Z

    move-result v8

    if-eqz v8, :cond_23

    .line 2357
    aget-object v8, v7, v9

    if-eqz v8, :cond_22

    aget-object v8, v7, v9

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 2360
    add-int/lit16 v4, v4, 0x1fe

    .line 2361
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2364
    :cond_22
    add-int/lit16 v4, v4, 0x208

    goto/16 :goto_0

    .line 2368
    :cond_23
    add-int/lit16 v4, v4, 0x212

    .line 2370
    goto/16 :goto_0

    .line 2372
    :pswitch_b
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcIsConference()Z

    move-result v8

    if-eqz v8, :cond_25

    .line 2373
    if-eqz v2, :cond_24

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 2375
    move-object v3, v2

    .line 2376
    add-int/lit16 v4, v4, 0x21c

    .line 2377
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2380
    :cond_24
    add-int/lit16 v4, v4, 0x230

    goto/16 :goto_0

    .line 2384
    :cond_25
    if-eqz v2, :cond_26

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    .line 2388
    move-object v3, v2

    .line 2389
    add-int/lit16 v4, v4, 0x23a

    .line 2390
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcSetConference()V

    goto/16 :goto_0

    .line 2393
    :cond_26
    add-int/lit16 v4, v4, 0x244

    .line 2396
    goto/16 :goto_0

    .line 2411
    .end local v0           #conn:Lcom/android/internal/telephony/Connection;
    .end local v1           #defaultFlashString:Ljava/lang/String;
    .end local v2           #defaultFlashString_2nd:Ljava/lang/String;
    .end local v5           #lastCallMt:Z
    .end local v7           #specialCode:[Ljava/lang/String;
    :cond_27
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v9, 0x8

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v8, v3, v9}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 2114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2146
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 2198
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 2253
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 2299
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 2354
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private internalClearDisconnected()V
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->clearDisconnected()V

    .line 656
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->clearDisconnected()V

    .line 657
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->clearDisconnected()V

    .line 658
    return-void
.end method

.method private isUserDialingMergeSpecialCode(Ljava/lang/String;)Z
    .locals 5
    .parameter "userGivenDialing"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2040
    const/4 v0, 0x0

    .line 2041
    .local v0, isSpecialCode:Z
    if-eqz p1, :cond_1

    .line 2042
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->htcSpecialCodesForFlashCommand()[Ljava/lang/String;

    move-result-object v1

    .line 2043
    .local v1, specialCode:[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2044
    aget-object v2, v1, v3

    if-eqz v2, :cond_0

    aget-object v2, v1, v3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2046
    const/4 v0, 0x1

    .line 2049
    :cond_0
    if-nez v0, :cond_1

    .line 2050
    aget-object v2, v1, v4

    if-eqz v2, :cond_1

    aget-object v2, v1, v4

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2052
    const/4 v0, 0x1

    .line 2056
    .end local v1           #specialCode:[Ljava/lang/String;
    :cond_1
    return v0
.end method

.method private isUserDialingSwapSpecialCode(Ljava/lang/String;)Z
    .locals 5
    .parameter "userGivenDialing"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 2061
    const/4 v0, 0x0

    .line 2062
    .local v0, isSpecialCode:Z
    if-eqz p1, :cond_1

    .line 2063
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->htcSpecialCodesForFlashCommand()[Ljava/lang/String;

    move-result-object v1

    .line 2064
    .local v1, specialCode:[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2065
    aget-object v2, v1, v3

    if-eqz v2, :cond_0

    aget-object v2, v1, v3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2067
    const/4 v0, 0x1

    .line 2070
    :cond_0
    if-nez v0, :cond_1

    .line 2071
    aget-object v2, v1, v4

    if-eqz v2, :cond_1

    aget-object v2, v1, v4

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2073
    const/4 v0, 0x1

    .line 2077
    .end local v1           #specialCode:[Ljava/lang/String;
    :cond_1
    return v0
.end method

.method private notifyCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V
    .locals 3
    .parameter "obj"

    .prologue
    const/4 v2, 0x0

    .line 1364
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 1365
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1367
    :cond_0
    return-void
.end method

.method private obtainCompleteMessage()Landroid/os/Message;
    .locals 1

    .prologue
    .line 666
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private obtainCompleteMessage(I)Landroid/os/Message;
    .locals 1
    .parameter "what"

    .prologue
    .line 675
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingOperations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingOperations:I

    .line 676
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 677
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->needsPoll:Z

    .line 682
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private onCdmaOtaProvision(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2427
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 2428
    .local v0, conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :goto_0
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 2429
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .line 2438
    .local v1, otaPrivision:[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lt v2, v4, :cond_0

    .line 2442
    aget v2, v1, v3

    sparse-switch v2, :sswitch_data_0

    .line 2453
    .end local v1           #otaPrivision:[I
    :cond_0
    :goto_1
    return-void

    .line 2427
    .end local v0           #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v0, v2, v3

    goto :goto_0

    .line 2445
    .restart local v0       #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .restart local v1       #otaPrivision:[I
    :sswitch_0
    iput-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isForOtaProvision:Z

    goto :goto_1

    .line 2442
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method private operationComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 687
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingOperations:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingOperations:I

    .line 692
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingOperations:I

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->needsPoll:Z

    if-eqz v0, :cond_3

    .line 697
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingMoInProgress:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x36

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 700
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->lastRelevantPoll:Landroid/os/Message;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentCalls(Landroid/os/Message;)V

    .line 707
    :cond_0
    :goto_1
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingOperations:I

    if-gtz v0, :cond_1

    .line 708
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingAcceptInProgress:Z

    .line 709
    const-string v0, "CDMA"

    const-string v1, "Reset pending accept flag"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_1
    return-void

    .line 697
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 701
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingOperations:I

    if-gez v0, :cond_0

    .line 703
    const-string v0, "CDMA"

    const-string v1, "CdmaCallTracker.pendingOperations < 0"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingOperations:I

    goto :goto_1
.end method

.method private reducedLogBoolean(Z)C
    .locals 1
    .parameter "value"

    .prologue
    .line 2529
    if-eqz p1, :cond_0

    const/16 v0, 0x31

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x30

    goto :goto_0
.end method

.method private updatePhoneState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 718
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 720
    .local v0, oldState:Lcom/android/internal/telephony/Phone$State;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 721
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 729
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_5

    .line 730
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 737
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update phone state, old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 739
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v0, :cond_1

    .line 740
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPhoneStateChanged()V

    .line 742
    :cond_1
    return-void

    .line 722
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->isIdle()Z

    move-result v1

    if-nez v1, :cond_4

    .line 724
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0

    .line 726
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0

    .line 732
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_0

    .line 733
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1
.end method


# virtual methods
.method acceptCall()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 474
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    .line 476
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingAcceptInProgress:Z

    if-eqz v1, :cond_0

    .line 477
    const-string v1, "phone"

    const-string v2, "acceptCall: progressing..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :goto_0
    return-void

    .line 481
    :cond_0
    const-string v1, "phone"

    const-string v2, "acceptCall: incoming..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->setMute(Z)V

    .line 488
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x37

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->acceptCall(Landroid/os/Message;)V

    .line 489
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingAcceptInProgress:Z

    goto :goto_0

    .line 491
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_2

    .line 492
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 495
    .local v0, cwConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 501
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->updateParent(Lcom/android/internal/telephony/cdma/CdmaCall;Lcom/android/internal/telephony/cdma/CdmaCall;)V

    .line 502
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onConnectedInOrOut()V

    .line 504
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcToggleActiveConnection(Z)V

    .line 506
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    .line 511
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    goto :goto_0

    .line 514
    .end local v0           #cwConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_2
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "phone not ringing"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method answerAndEndActive(Ljava/lang/String;)V
    .locals 2
    .parameter "dialSring"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    .line 294
    return-void
.end method

.method protected assignPendingMO(Ljava/lang/String;)V
    .locals 3
    .parameter "dialString"

    .prologue
    .line 2512
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 2513
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->disableDataCallInEmergencyCall(Ljava/lang/String;)V

    .line 2514
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingMoInProgress:Z

    .line 2515
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    .line 2516
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    .line 2517
    return-void
.end method

.method blockCallForKddiOtasp(Z)Z
    .locals 2
    .parameter "isEmergencyCall"

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->needsOtaServiceProvisioning()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x51

    if-ne v0, v1, :cond_0

    .line 634
    if-nez p1, :cond_0

    .line 635
    const-string v0, "CDMA"

    const-string v1, "canDial: false - need kddi otasp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const/4 v0, 0x1

    .line 641
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canConference()Z
    .locals 2

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canDial()Z
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 594
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 595
    .local v2, serviceState:I
    const-string v3, "ro.telephony.disable-call"

    const-string v6, "false"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 598
    .local v0, disableCall:Ljava/lang/String;
    if-eq v2, v9, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->isRinging()Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v6, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v1, v4

    .line 606
    .local v1, ret:Z
    :goto_0
    if-nez v1, :cond_1

    .line 607
    const-string v6, "canDial is false\n((serviceState=%d) != ServiceState.STATE_POWER_OFF)::=%s\n&& pendingMO == null::=%s\n&& !ringingCall.isRinging()::=%s\n&& !disableCall.equals(\"true\")::=%s\n&& (!foregroundCall.getState().isAlive()::=%s\n   || foregroundCall.getState() == CdmaCall.State.ACTIVE::=%s\n   ||!backgroundCall.getState().isAlive())::=%s)"

    const/16 v3, 0x8

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v5

    if-eq v2, v9, :cond_3

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v4

    const/4 v8, 0x2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-nez v3, :cond_4

    move v3, v4

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v8

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->isRinging()Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v4

    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v9

    const/4 v8, 0x4

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v3, v4

    :goto_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v8

    const/4 v8, 0x5

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_7

    move v3, v4

    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v8

    const/4 v8, 0x6

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v9, :cond_8

    move v3, v4

    :goto_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v8

    const/4 v3, 0x7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v8

    if-nez v8, :cond_9

    :goto_7
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 624
    :cond_1
    return v1

    .end local v1           #ret:Z
    :cond_2
    move v1, v5

    .line 598
    goto/16 :goto_0

    .restart local v1       #ret:Z
    :cond_3
    move v3, v5

    .line 607
    goto :goto_1

    :cond_4
    move v3, v5

    goto :goto_2

    :cond_5
    move v3, v5

    goto :goto_3

    :cond_6
    move v3, v5

    goto :goto_4

    :cond_7
    move v3, v5

    goto :goto_5

    :cond_8
    move v3, v5

    goto :goto_6

    :cond_9
    move v4, v5

    goto :goto_7
.end method

.method canTransfer()Z
    .locals 2

    .prologue
    .line 647
    const-string v0, "CDMA"

    const-string v1, "canTransfer: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const/4 v0, 0x0

    return v0
.end method

.method clearDisconnected()V
    .locals 1

    .prologue
    .line 577
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->internalClearDisconnected()V

    .line 579
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    .line 580
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    .line 581
    return-void
.end method

.method conference()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 562
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->htcPerformFlashRequest(ILjava/lang/String;)V

    .line 563
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->isGeneric()Z

    move-result v0

    if-nez v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcIsConference()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcToggleActiveConnection(Z)V

    .line 565
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    .line 568
    :cond_0
    return-void
.end method

.method dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 412
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 10
    .parameter "dialString"
    .parameter "clirMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 303
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->clearDisconnected()V

    .line 305
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->canDial()Z

    move-result v4

    if-nez v4, :cond_0

    .line 306
    new-instance v4, Lcom/android/internal/telephony/CallStateException;

    const-string v5, "cannot dial in current state"

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 309
    :cond_0
    const-string v4, "ril.cdma.inecmmode"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, inEcm:Ljava/lang/String;
    const-string/jumbo v4, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 311
    .local v2, isPhoneInEcmMode:Z
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    .line 314
    .local v1, isEmergencyCall:Z
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->blockCallForKddiOtasp(Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 315
    new-instance v4, Lcom/android/internal/telephony/CallStateException;

    const-string v5, "cannot dial since kddi otasp is needed"

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 320
    :cond_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 321
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleEcmTimer(I)V

    .line 336
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_3

    .line 337
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->dialThreeWay(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v4

    .line 406
    :goto_0
    return-object v4

    .line 343
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    .line 348
    const/4 v3, 0x0

    .line 349
    .local v3, waitingForPendingMoResponse:Z
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-eqz v4, :cond_4

    .line 350
    if-eqz p1, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getOrigDialString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getOrigDialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 352
    const-string v4, "CDMA"

    const-string v5, "avoid dialing twice."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v3, 0x1

    .line 354
    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupPendingMO:Z

    .line 360
    :cond_4
    :goto_1
    if-nez v3, :cond_6

    .line 362
    new-instance v4, Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-direct {v4, v5, v6, p0, v7}, Lcom/android/internal/telephony/cdma/CdmaConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 364
    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupPendingMO:Z

    .line 366
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    const/16 v5, 0x3f

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_8

    .line 369
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v5, v4, Lcom/android/internal/telephony/cdma/CdmaConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 373
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pollCallsWhenSafe()V

    .line 403
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    .line 404
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    .line 406
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    goto :goto_0

    .line 357
    :cond_7
    const-string v4, "CDMA"

    const-string v5, "previous dialing not yet responsed."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 376
    :cond_8
    iput-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingMoInProgress:Z

    .line 379
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->setMute(Z)V

    .line 382
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->disableDataCallInEmergencyCall(Ljava/lang/String;)V

    .line 385
    if-eqz v2, :cond_9

    if-eqz v2, :cond_a

    if-eqz v1, :cond_a

    .line 390
    :cond_9
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    const/16 v6, 0x41

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, p2, v6}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_2

    .line 393
    :cond_a
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->exitEmergencyCallbackMode()V

    .line 394
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-virtual {v4, p0, v5, v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 395
    iput p2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallClirMode:I

    .line 396
    iput-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallInEcm:Z

    goto :goto_2
.end method

.method public dispose()V
    .locals 8

    .prologue
    .line 146
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCallStateChanged(Landroid/os/Handler;)V

    .line 147
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 148
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 149
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCallWaitingInfo(Landroid/os/Handler;)V

    .line 152
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRedirNumInfo(Landroid/os/Handler;)V

    .line 153
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v6, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 155
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForForLineControl(Landroid/os/Handler;)V

    .line 156
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    .local v0, arr$:[Lcom/android/internal/telephony/cdma/CdmaConnection;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v1, v0, v4

    .line 168
    .local v1, c:Lcom/android/internal/telephony/cdma/CdmaConnection;
    if-eqz v1, :cond_2

    .line 169
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getDialString()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getDialString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 170
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangup(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 171
    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 173
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->dispose()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 176
    :catch_0
    move-exception v3

    .line 177
    .local v3, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v6, "CDMA"

    const-string/jumbo v7, "unexpected error on hangup during dispose"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 182
    .end local v1           #c:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v3           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_3
    const/4 v2, 0x0

    .line 195
    .local v2, eccCallSwitchPhone:Z
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-eqz v6, :cond_4

    .line 196
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getDialString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 197
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CdmaConnection;->dispose()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 198
    const/4 v2, 0x1

    .line 211
    :cond_4
    :goto_2
    if-eqz v2, :cond_7

    .line 212
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->internalClearDisconnected()V

    .line 221
    :goto_3
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaEmergencyCallback:Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;

    if-eqz v6, :cond_5

    .line 222
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaEmergencyCallback:Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->dispose()V

    .line 223
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaEmergencyCallback:Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;

    .line 228
    :cond_5
    const-string v6, "CDMA"

    const-string v7, "Remove all registrants "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->removeCleared()V

    .line 230
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->removeCleared()V

    .line 231
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->removeCleared()V

    .line 232
    return-void

    .line 201
    :cond_6
    :try_start_2
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangup(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 202
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 206
    :catch_1
    move-exception v3

    .line 207
    .restart local v3       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v6, "CDMA"

    const-string/jumbo v7, "unexpected error on hangup during dispose"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 216
    .end local v3           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->clearDisconnected()V

    goto :goto_3
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2539
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/CallTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2546
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2547
    const-string v1, " connections[%d]=%s\n"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v3, v3, v0

    aput-object v3, v2, v5

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2546
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2549
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " voiceCallEndedRegistrants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2550
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " voiceCallStartedRegistrants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " callWaitingRegistrants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "droppedDuringPoll: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2553
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2554
    const-string v1, " droppedDuringPoll[%d]=%s\n"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2553
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2556
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ringingCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " foregroundCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " backgroundCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " pendingMO="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " hangupPendingMO="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupPendingMO:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2561
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " pendingCallInEcm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallInEcm:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " desiredMute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->desiredMute:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2570
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " pendingCallClirMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallClirMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mIsEcmTimerCanceled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mFgCallNoUpdateRequired="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaFgCallNoUpdateRequired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPendingMoInProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingMoInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2576
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPendingAcceptInProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingAcceptInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2577
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mQueringChangedCallState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcQueringChangedCallState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mBetweenRingAndCallStateReturned="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcBetweenRingAndCallStateReturned:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mBetweenRingAndCallStateQueried="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcBetweenRingAndCallStateQueried:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2580
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingRedirectNumber:Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;

    if-eqz v1, :cond_2

    .line 2581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPendingRedirectNumber.addr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingRedirectNumber:Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPendingRedirectNumber.name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingRedirectNumber:Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CdmaCallTracker$htcRedirectNumberRec;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2584
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " m3wayCallDelay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->THREE_WAY_CALL_DELAY:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2585
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPreviousSendFlash="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaPreviousSendFlash:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2586
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mVoiceCallAbility="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mVoiceCallAbility:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2587
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mNeedUpdateForFirstQuery="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mNeedUpdateForFirstQuery:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2589
    return-void
.end method

.method public enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z
    .locals 5
    .parameter "enable"

    .prologue
    .line 2468
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mVoiceCallAbility:Z

    .line 2469
    .local v2, result:Z
    if-eqz p1, :cond_1

    .line 2470
    const/high16 v3, 0x4000

    sget v4, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2474
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2476
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2478
    :try_start_0
    const-string v3, "MODE_IN_CALL_CDMA=ON"

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2491
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mVoiceCallAbility:Z

    .line 2493
    :cond_1
    return v2

    .line 2479
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    :catch_0
    move-exception v1

    .line 2480
    .local v1, ex:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "switch to CDMA audio path on exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2485
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v3, "MODE_IN_CALL_CDMA=OFF"

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2486
    :catch_1
    move-exception v1

    .line 2487
    .restart local v1       #ex:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "switch to CDMA audio path off exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method explicitCallTransfer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->explicitCallTransfer(Landroid/os/Message;)V

    .line 573
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 236
    const-string v0, "CDMA"

    const-string v1, "CdmaCallTracker finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void
.end method

.method getConnectionByIndex(Lcom/android/internal/telephony/cdma/CdmaCall;I)Lcom/android/internal/telephony/cdma/CdmaConnection;
    .locals 4
    .parameter "call"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1312
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1313
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1314
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1315
    .local v0, cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCDMAIndex()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 1320
    .end local v0           #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :goto_1
    return-object v0

    .line 1313
    .restart local v0       #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1320
    .end local v0           #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected getCurrentPendingMO()Lcom/android/internal/telephony/Connection;
    .locals 6

    .prologue
    .line 2501
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-eqz v4, :cond_1

    .line 2502
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 2509
    :cond_0
    :goto_0
    return-object v1

    .line 2504
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    .local v0, arr$:[Lcom/android/internal/telephony/cdma/CdmaConnection;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 2505
    .local v1, conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_0

    .line 2504
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2509
    .end local v1           #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getMute()Z
    .locals 4

    .prologue
    .line 1186
    const-string v2, "ro.board.platform"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1187
    .local v1, platform:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, "8k"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "msm7x30"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1189
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1191
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v2

    .line 1194
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :goto_0
    return v2

    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->desiredMute:Z

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .parameter "msg"

    .prologue
    .line 1444
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v17

    if-eqz v17, :cond_1

    sget-boolean v17, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDropEvent:Z

    if-eqz v17, :cond_1

    .line 1445
    const-string v17, "CDMA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " CdmaCalltracker drop event "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    :cond_0
    :goto_0
    return-void

    .line 1451
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    sparse-switch v17, :sswitch_data_0

    .line 1798
    const-string v17, "CDMA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CDMA doesn\'t suport this event :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1454
    :sswitch_0
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingMoInProgress:Z

    .line 1461
    :sswitch_1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 1462
    .local v16, strBuf:Ljava/lang/StringBuilder;
    const-string v17, "Event EVENT_POLL_CALLS_RESULT Received"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1463
    const-string v17, ", st="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1465
    const/16 v17, 0x2f

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1467
    const/16 v17, 0x2f

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1469
    const-string v17, ", htc="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->lastRelevantPoll:Landroid/os/Message;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_3

    const/16 v17, 0x1

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->reducedLogBoolean(Z)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    const/16 v17, 0x1

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->reducedLogBoolean(Z)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1472
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupPendingMO:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->reducedLogBoolean(Z)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1473
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallInEcm:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->reducedLogBoolean(Z)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1474
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsInEmergencyCall:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->reducedLogBoolean(Z)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1475
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->desiredMute:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->reducedLogBoolean(Z)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1476
    const/16 v17, 0x5f

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1477
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->reducedLogBoolean(Z)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1478
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaFgCallNoUpdateRequired:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->reducedLogBoolean(Z)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1479
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingMoInProgress:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->reducedLogBoolean(Z)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1480
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingAcceptInProgress:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->reducedLogBoolean(Z)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1481
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcQueringChangedCallState:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->reducedLogBoolean(Z)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1482
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcBetweenRingAndCallStateReturned:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->reducedLogBoolean(Z)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1483
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcBetweenRingAndCallStateQueried:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->reducedLogBoolean(Z)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1484
    const/16 v17, 0x5f

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1485
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaPreviousSendFlash:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->reducedLogBoolean(Z)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1486
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mVoiceCallAbility:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->reducedLogBoolean(Z)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1487
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mNeedUpdateForFirstQuery:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->reducedLogBoolean(Z)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1488
    const-string v17, "CDMA"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1492
    .local v2, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->lastRelevantPoll:Landroid/os/Message;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 1495
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->needsPoll:Z

    .line 1496
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 1498
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcQueringChangedCallState:Z

    .line 1499
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcBetweenRingAndCallStateReturned:Z

    .line 1501
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    .line 1503
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcBetweenRingAndCallStateQueried:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 1505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v17, v0

    const-string v18, "2GVoiceCallEnded"

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDataConnection(Ljava/lang/String;)V

    .line 1507
    :cond_2
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcBetweenRingAndCallStateQueried:Z

    goto/16 :goto_0

    .line 1470
    .end local v2           #ar:Landroid/os/AsyncResult;
    :cond_3
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 1471
    :cond_4
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 1515
    .end local v16           #strBuf:Ljava/lang/StringBuilder;
    :sswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->operationComplete()V

    goto/16 :goto_0

    .line 1525
    :sswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->THREE_WAY_CALL_DELAY:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1526
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1527
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-nez v17, :cond_6

    .line 1528
    const-string v18, "CDMA"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "EVENT_SWITCH_RESULT pending "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    const/16 v17, 0x1

    :goto_3
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, "/"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingMoInProgress:Z

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, "/"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaPreviousSendFlash:Z

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaPreviousSendFlash:Z

    goto/16 :goto_0

    .line 1528
    :cond_5
    const/16 v17, 0x0

    goto :goto_3

    .line 1533
    :cond_6
    const-string v18, "CDMA"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Flash exception - pending "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    const/16 v17, 0x1

    :goto_4
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, "/"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingMoInProgress:Z

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, "/"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaPreviousSendFlash:Z

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    const/16 v17, 0x38

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->removeMessages(I)V

    .line 1537
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingMoInProgress:Z

    .line 1538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 1540
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    goto/16 :goto_0

    .line 1533
    :cond_7
    const/16 v17, 0x0

    goto :goto_4

    .line 1550
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1552
    .restart local v2       #ar:Landroid/os/AsyncResult;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->operationComplete()V

    .line 1554
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 1557
    const/16 v3, 0x10

    .line 1558
    .local v3, causeCode:I
    const-string v17, "CDMA"

    const-string v18, "Exception during getLastCallFailCause, assuming normal disconnect"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    :goto_5
    const/4 v12, 0x0

    .local v12, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 1565
    .local v15, s:I
    :goto_6
    if-ge v12, v15, :cond_9

    .line 1567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1569
    .local v6, conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onRemoteDisconnect(I)V

    .line 1565
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 1561
    .end local v3           #causeCode:I
    .end local v6           #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v12           #i:I
    .end local v15           #s:I
    :cond_8
    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [I

    check-cast v17, [I

    const/16 v18, 0x0

    aget v3, v17, v18

    .restart local v3       #causeCode:I
    goto :goto_5

    .line 1572
    .restart local v12       #i:I
    .restart local v15       #s:I
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    .line 1574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    .line 1575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 1581
    .end local v2           #ar:Landroid/os/AsyncResult;
    .end local v3           #causeCode:I
    .end local v12           #i:I
    .end local v15           #s:I
    :sswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    const/16 v17, 0x1

    :goto_7
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcQueringChangedCallState:Z

    .line 1583
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pollCallsWhenSafe()V

    goto/16 :goto_0

    .line 1581
    :cond_a
    const/16 v17, 0x0

    goto :goto_7

    .line 1587
    :sswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleRadioAvailable()V

    goto/16 :goto_0

    .line 1591
    :sswitch_7
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleRadioNotAvailable()V

    goto/16 :goto_0

    .line 1596
    :sswitch_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallInEcm:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    .line 1601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallClirMode:I

    move/from16 v19, v0

    const/16 v20, 0x41

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v20

    invoke-interface/range {v17 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILandroid/os/Message;)V

    .line 1603
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallInEcm:Z

    .line 1610
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 1607
    :cond_b
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingMoInProgress:Z

    goto :goto_8

    .line 1614
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1615
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 1616
    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V

    goto/16 :goto_0

    .line 1626
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1627
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-nez v17, :cond_12

    .line 1634
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaFgCallNoUpdateRequired:Z

    .line 1637
    new-instance v10, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v10}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 1639
    .local v10, dc:Lcom/android/internal/telephony/DriverCall;
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v10, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 1640
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v10, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 1641
    sget-object v17, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 1642
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v10, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 1643
    const/16 v17, 0x81

    move/from16 v0, v17

    iput v0, v10, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 1644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 1645
    sget v17, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    move/from16 v0, v17

    iput v0, v10, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 1646
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v10, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 1648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/cdma/CdmaConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    .line 1650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CdmaCall;->getConnections()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v7

    .line 1651
    .local v7, connIdx:I
    const/16 v17, 0x2

    move/from16 v0, v17

    if-le v7, v0, :cond_e

    .line 1652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CdmaCall;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1653
    .local v11, earlyConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1654
    .local v13, lateConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_c
    :goto_9
    if-lez v7, :cond_d

    .line 1655
    add-int/lit8 v7, v7, -0x1

    .line 1656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1657
    .local v4, cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    if-eq v4, v11, :cond_c

    if-eq v4, v13, :cond_c

    .line 1658
    const/16 v17, 0x10

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onRemoteDisconnect(I)V

    goto :goto_9

    .line 1661
    .end local v4           #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    .line 1663
    .end local v11           #earlyConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v13           #lateConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcToggleActiveConnection(Z)V

    .line 1665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    .line 1668
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->THREE_WAY_CALL_DELAY:Z

    move/from16 v17, v0

    if-eqz v17, :cond_f

    .line 1669
    const-string v18, "CDMA"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "EVENT_THREE_WAY_DIAL_L2_RESULT_CDMAreviousSendFlash "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaPreviousSendFlash:Z

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, "/"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_10

    const/16 v17, 0x1

    :goto_a
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_11

    .line 1671
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaPreviousSendFlash:Z

    .line 1677
    :cond_f
    :goto_b
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1678
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingMoInProgress:Z

    goto/16 :goto_0

    .line 1669
    :cond_10
    const/16 v17, 0x0

    goto :goto_a

    .line 1673
    :cond_11
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaPreviousSendFlash:Z

    goto :goto_b

    .line 1682
    .end local v7           #connIdx:I
    .end local v10           #dc:Lcom/android/internal/telephony/DriverCall;
    :cond_12
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingMoInProgress:Z

    .line 1683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 1685
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    goto/16 :goto_0

    .line 1696
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1697
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 1698
    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [Ljava/lang/String;

    check-cast v17, [Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->htcHandleRedirectNumber([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1704
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_c
    const-string v17, "CDMA"

    const-string v18, " Accept Cdma call complete "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->operationComplete()V

    .line 1707
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingAcceptInProgress:Z

    goto/16 :goto_0

    .line 1711
    :sswitch_d
    const-string v17, "CDMA"

    const-string v18, "EVENT_HTC_FWIM"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1715
    .restart local v13       #lateConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    if-eqz v13, :cond_0

    .line 1717
    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onLineControlInfo()V

    goto/16 :goto_0

    .line 1725
    .end local v13           #lateConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :sswitch_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->THREE_WAY_CALL_DELAY:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1726
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    .line 1727
    .local v14, modifiedDialString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    if-eqz v14, :cond_0

    .line 1728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    .line 1730
    const-string v17, "CDMA"

    const-string v18, " send three way call with address"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1736
    .end local v14           #modifiedDialString:Ljava/lang/String;
    :sswitch_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcQueringChangedCallState:Z

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcBetweenRingAndCallStateReturned:Z

    goto/16 :goto_0

    .line 1741
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1742
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-nez v17, :cond_15

    .line 1743
    const-string v17, "CDMA"

    const-string v18, "EVENT_HTC_END_AND_SWITCH success"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CdmaCall;->getConnections()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v8

    .line 1746
    .local v8, count:I
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_c
    if-ge v12, v8, :cond_13

    .line 1747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CdmaCall;->getConnections()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1748
    .local v5, con:Lcom/android/internal/telephony/cdma/CdmaConnection;
    sget-object v17, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_ANSWER_AND_END_ACTIVE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 1746
    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    .line 1750
    .end local v5           #con:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CdmaCall;->clearDisconnected()V

    .line 1753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v9, v17

    check-cast v9, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1754
    .local v9, cwConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->updateParent(Lcom/android/internal/telephony/cdma/CdmaCall;Lcom/android/internal/telephony/cdma/CdmaCall;)V

    .line 1755
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onConnectedInOrOut()V

    .line 1758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CdmaCall;->getConnections()Ljava/util/List;

    move-result-object v17

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1759
    .restart local v5       #con:Lcom/android/internal/telephony/cdma/CdmaConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v5, v17, v18

    .line 1760
    if-eqz v5, :cond_14

    .line 1761
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v5, Lcom/android/internal/telephony/cdma/CdmaConnection;->index:I

    .line 1765
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    .line 1766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    goto/16 :goto_0

    .line 1768
    .end local v5           #con:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v8           #count:I
    .end local v9           #cwConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v12           #i:I
    :cond_15
    const-string v17, "CDMA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "EVENT_HTC_END_AND_SWITCH exception: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1774
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->onCdmaOtaProvision(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1780
    :sswitch_12
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1781
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_16

    .line 1782
    const-string v17, "CDMA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "DIAL exception: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v17, v0

    if-eqz v17, :cond_16

    .line 1785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1786
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1787
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupPendingMO:Z

    .line 1788
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallInEcm:Z

    move/from16 v17, v0

    if-eqz v17, :cond_16

    .line 1789
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallInEcm:Z

    .line 1793
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->operationComplete()V

    goto/16 :goto_0

    .line 1451
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_5
        0x3 -> :sswitch_5
        0x4 -> :sswitch_2
        0x5 -> :sswitch_4
        0x8 -> :sswitch_3
        0x9 -> :sswitch_6
        0xa -> :sswitch_7
        0xe -> :sswitch_8
        0xf -> :sswitch_9
        0x10 -> :sswitch_a
        0x35 -> :sswitch_b
        0x36 -> :sswitch_0
        0x37 -> :sswitch_c
        0x38 -> :sswitch_e
        0x3a -> :sswitch_f
        0x3d -> :sswitch_d
        0x3f -> :sswitch_10
        0x40 -> :sswitch_11
        0x41 -> :sswitch_12
    .end sparse-switch
.end method

.method protected handlePollCalls(Landroid/os/AsyncResult;)V
    .locals 25
    .parameter "ar"

    .prologue
    .line 750
    const/16 v18, 0x0

    .line 753
    .local v18, nrPolledCalls:Ljava/lang/Integer;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-nez v21, :cond_6

    .line 754
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/util/List;

    .line 756
    .local v19, polledCalls:Ljava/util/List;
    if-eqz v19, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v21

    :goto_0
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 769
    :goto_1
    const/16 v17, 0x0

    .line 770
    .local v17, newRinging:Lcom/android/internal/telephony/Connection;
    const/4 v12, 0x0

    .line 772
    .local v12, hasNonHangupStateChanged:Z
    const/16 v16, 0x0

    .line 773
    .local v16, needsPollDelay:Z
    const/16 v20, 0x0

    .line 776
    .local v20, unknownConnectionAppeared:Z
    const/4 v14, 0x0

    .line 778
    .local v14, mHtcCallCount:I
    const/4 v13, 0x0

    .local v13, i:I
    const/4 v7, 0x0

    .local v7, curDC:I
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v9

    .line 779
    .local v9, dcSize:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v13, v0, :cond_18

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v21, v0

    aget-object v5, v21, v13

    .line 781
    .local v5, conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    const/4 v8, 0x0

    .line 784
    .local v8, dc:Lcom/android/internal/telephony/DriverCall;
    if-ge v7, v9, :cond_0

    .line 785
    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #dc:Lcom/android/internal/telephony/DriverCall;
    check-cast v8, Lcom/android/internal/telephony/DriverCall;

    .line 787
    .restart local v8       #dc:Lcom/android/internal/telephony/DriverCall;
    iget v0, v8, Lcom/android/internal/telephony/DriverCall;->index:I

    move/from16 v21, v0

    add-int/lit8 v22, v13, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 788
    add-int/lit8 v7, v7, 0x1

    .line 794
    :cond_0
    :goto_3
    if-eqz v8, :cond_1

    iget-boolean v0, v8, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    move/from16 v21, v0

    if-nez v21, :cond_1

    .line 795
    const/4 v8, 0x0

    .line 797
    :cond_1
    if-eqz v8, :cond_2

    .line 798
    add-int/lit8 v14, v14, 0x1

    .line 805
    :cond_2
    if-nez v5, :cond_d

    if-eqz v8, :cond_d

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v21, v0

    if-eqz v21, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/cdma/CdmaConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 809
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingMoInProgress:Z

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v22, v0

    aput-object v22, v21, v13

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput v13, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->index:I

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/cdma/CdmaConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    .line 818
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 821
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupPendingMO:Z

    move/from16 v21, v0

    if-eqz v21, :cond_b

    .line 822
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupPendingMO:Z

    .line 824
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v21, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleEcmTimer(I)V

    .line 829
    :cond_3
    :try_start_0
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "poll: hangupPendingMO, hangup conn "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v21, v0

    aget-object v21, v21, v13

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangup(Lcom/android/internal/telephony/cdma/CdmaConnection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1101
    .end local v5           #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v7           #curDC:I
    .end local v8           #dc:Lcom/android/internal/telephony/DriverCall;
    .end local v9           #dcSize:I
    .end local v12           #hasNonHangupStateChanged:Z
    .end local v13           #i:I
    .end local v14           #mHtcCallCount:I
    .end local v16           #needsPollDelay:Z
    .end local v17           #newRinging:Lcom/android/internal/telephony/Connection;
    .end local v19           #polledCalls:Ljava/util/List;
    .end local v20           #unknownConnectionAppeared:Z
    :cond_4
    :goto_4
    return-void

    .line 756
    .restart local v19       #polledCalls:Ljava/util/List;
    :cond_5
    const/16 v21, -0x1

    goto/16 :goto_0

    .line 758
    .end local v19           #polledCalls:Ljava/util/List;
    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 761
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .restart local v19       #polledCalls:Ljava/util/List;
    goto/16 :goto_1

    .line 765
    .end local v19           #polledCalls:Ljava/util/List;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pollCallsAfterDelay()V

    goto :goto_4

    .line 790
    .restart local v5       #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .restart local v7       #curDC:I
    .restart local v8       #dc:Lcom/android/internal/telephony/DriverCall;
    .restart local v9       #dcSize:I
    .restart local v12       #hasNonHangupStateChanged:Z
    .restart local v13       #i:I
    .restart local v14       #mHtcCallCount:I
    .restart local v16       #needsPollDelay:Z
    .restart local v17       #newRinging:Lcom/android/internal/telephony/Connection;
    .restart local v19       #polledCalls:Ljava/util/List;
    .restart local v20       #unknownConnectionAppeared:Z
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 832
    :catch_0
    move-exception v11

    .line 833
    .local v11, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v21, "CDMA"

    const-string/jumbo v22, "unexpected error on hangup"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 842
    .end local v11           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_9
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "pendingMo="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", dc="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 845
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkMtFindNewRinging(Lcom/android/internal/telephony/DriverCall;I)Lcom/android/internal/telephony/Connection;

    move-result-object v17

    .line 846
    if-nez v17, :cond_a

    .line 847
    const/16 v20, 0x1

    .line 849
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    .line 851
    :cond_b
    const/4 v12, 0x1

    .line 779
    :cond_c
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 852
    :cond_d
    if-eqz v5, :cond_11

    if-nez v8, :cond_11

    .line 857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 858
    .local v6, count:I
    const/4 v15, 0x0

    .local v15, n:I
    :goto_6
    if-ge v15, v6, :cond_e

    .line 859
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "adding fgCall cn "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " to droppedDuringPoll"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 861
    .local v4, cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 858
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 863
    .end local v4           #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 866
    const/4 v15, 0x0

    :goto_7
    if-ge v15, v6, :cond_f

    .line 867
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "adding rgCall cn "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " to droppedDuringPoll"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 869
    .restart local v4       #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 866
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 871
    .end local v4           #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    .line 875
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_10

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v21, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleEcmTimer(I)V

    .line 879
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v22, v21, v13

    .line 885
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->THREE_WAY_CALL_DELAY:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

    .line 886
    const-string v21, "CDMA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "  RIL has no more active call anymore mHtcCdmaPreviousSendFlash "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaPreviousSendFlash:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaPreviousSendFlash:Z

    goto/16 :goto_5

    .line 890
    .end local v6           #count:I
    .end local v15           #n:I
    :cond_11
    if-eqz v5, :cond_c

    if-eqz v8, :cond_c

    .line 895
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaFgCallNoUpdateRequired:Z

    move/from16 v21, v0

    if-nez v21, :cond_c

    .line 902
    iget-object v0, v8, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_12

    .line 910
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Skip early waiting call - "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 914
    :cond_12
    iget-boolean v0, v5, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming:Z

    move/from16 v21, v0

    iget-boolean v0, v8, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_15

    .line 915
    iget-boolean v0, v8, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_14

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 919
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkMtFindNewRinging(Lcom/android/internal/telephony/DriverCall;I)Lcom/android/internal/telephony/Connection;

    move-result-object v17

    .line 920
    if-nez v17, :cond_13

    .line 921
    const/16 v20, 0x1

    .line 923
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    goto/16 :goto_5

    .line 929
    :cond_14
    const-string v21, "CDMA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error in RIL, Phantom call appeared "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 933
    :cond_15
    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/cdma/CdmaConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v3

    .line 934
    .local v3, changed:Z
    if-nez v12, :cond_16

    if-eqz v3, :cond_17

    :cond_16
    const/4 v12, 0x1

    :goto_8
    goto/16 :goto_5

    :cond_17
    const/4 v12, 0x0

    goto :goto_8

    .line 960
    .end local v3           #changed:Z
    .end local v5           #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v8           #dc:Lcom/android/internal/telephony/DriverCall;
    :cond_18
    if-nez v14, :cond_1a

    .line 961
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaFgCallNoUpdateRequired:Z

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 964
    .restart local v6       #count:I
    const/4 v15, 0x0

    .restart local v15       #n:I
    :goto_9
    if-ge v15, v6, :cond_19

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 966
    .restart local v4       #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 964
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 968
    .end local v4           #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_19
    const-string v21, "CDMA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "All call ends "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->THREE_WAY_CALL_DELAY:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1a

    .line 971
    const-string v21, "CDMA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, " reset the  mHtcCdmaPreviousSendFlash "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaPreviousSendFlash:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaPreviousSendFlash:Z

    .line 981
    .end local v6           #count:I
    .end local v15           #n:I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1c

    .line 984
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcPendingMoInProgress:Z

    move/from16 v21, v0

    if-nez v21, :cond_20

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaEmergencyCallback:Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1b

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaEmergencyCallback:Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getOrigDialString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->endPendingMoCall(Ljava/lang/String;)V

    .line 989
    :cond_1b
    const-string v21, "CDMA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Pending MO dropped before poll fg state:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 993
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 994
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupPendingMO:Z

    .line 995
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallInEcm:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1c

    .line 996
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallInEcm:Z

    .line 1006
    :cond_1c
    :goto_a
    if-eqz v17, :cond_1e

    .line 1008
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->htcAppendRedirectingNumber(Lcom/android/internal/telephony/Connection;)V

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v21

    sget-object v22, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_1d

    .line 1015
    :try_start_1
    const-string v21, "CDMA"

    const-string v22, "critical MT -> MO:foregroundCall.hangup()"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/cdma/CdmaCall;->hangup()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1024
    :cond_1d
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V

    .line 1030
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    add-int/lit8 v13, v21, -0x1

    :goto_c
    if-ltz v13, :cond_25

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1034
    .restart local v5       #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCollided()Z

    move-result v21

    if-eqz v21, :cond_21

    .line 1035
    sget-object v21, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;Z)V

    .line 1030
    :cond_1f
    :goto_d
    add-int/lit8 v13, v13, -0x1

    goto :goto_c

    .line 1001
    .end local v5           #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_20
    const-string v21, "CDMA"

    const-string v22, "Pending MO waiting"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1018
    :catch_1
    move-exception v10

    .line 1020
    .local v10, e:Ljava/lang/Exception;
    const-string v21, "CDMA"

    const-string v22, "critical MT -> MO:"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 1039
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v5       #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_21
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming()Z

    move-result v21

    if-eqz v21, :cond_23

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getConnectTime()J

    move-result-wide v21

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-nez v21, :cond_23

    .line 1042
    iget-object v0, v5, Lcom/android/internal/telephony/cdma/CdmaConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_22

    .line 1043
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 1049
    .local v2, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :goto_e
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "missed/rejected call, conn.cause="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v5, Lcom/android/internal/telephony/cdma/CdmaConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1050
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "setting cause to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1053
    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto :goto_d

    .line 1045
    .end local v2           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_22
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .restart local v2       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    goto :goto_e

    .line 1054
    .end local v2           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_23
    iget-object v0, v5, Lcom/android/internal/telephony/cdma/CdmaConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_24

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1057
    sget-object v21, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto/16 :goto_d

    .line 1058
    :cond_24
    iget-object v0, v5, Lcom/android/internal/telephony/cdma/CdmaConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_1f

    .line 1059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1060
    sget-object v21, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto/16 :goto_d

    .line 1065
    .end local v5           #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_26

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v21, v0

    const/16 v22, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainNoPollCompleteMessage(I)Landroid/os/Message;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Lcom/android/internal/telephony/CommandsInterface;->getLastCallFailCause(Landroid/os/Message;)V

    .line 1070
    :cond_26
    if-eqz v16, :cond_27

    .line 1071
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pollCallsAfterDelay()V

    .line 1079
    :cond_27
    if-nez v17, :cond_28

    if-eqz v12, :cond_29

    .line 1080
    :cond_28
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->internalClearDisconnected()V

    .line 1083
    :cond_29
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    .line 1085
    if-eqz v20, :cond_2a

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyUnknownConnection()V

    .line 1091
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mNeedUpdateForFirstQuery:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2b

    .line 1092
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mNeedUpdateForFirstQuery:Z

    .line 1093
    const/4 v12, 0x1

    .line 1096
    :cond_2b
    if-nez v12, :cond_2c

    if-eqz v17, :cond_4

    .line 1097
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    goto/16 :goto_4
.end method

.method hangup(Lcom/android/internal/telephony/cdma/CdmaCall;)V
    .locals 3
    .parameter "call"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1202
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1203
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "no connections in call"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1206
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-ne p1, v0, :cond_2

    .line 1207
    const-string v0, "(ringing) hangup waiting or background"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1209
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    .line 1210
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangup(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 1240
    :goto_0
    return-void

    .line 1214
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    .line 1238
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->onHangupLocal()V

    .line 1239
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    goto :goto_0

    .line 1215
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-ne p1, v0, :cond_4

    .line 1216
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->isDialingOrAlerting()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1218
    const-string v0, "(foregnd) hangup dialing or alerting..."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1220
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangup(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    goto :goto_1

    .line 1222
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupForegroundResumeBackground()V

    goto :goto_1

    .line 1224
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-ne p1, v0, :cond_6

    .line 1225
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1227
    const-string v0, "hangup all conns in background call"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1229
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/cdma/CdmaCall;)V

    goto :goto_1

    .line 1231
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupWaitingOrBackground()V

    goto :goto_1

    .line 1234
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CdmaCall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "does not belong to CdmaCallTracker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method hangup(Lcom/android/internal/telephony/cdma/CdmaConnection;)V
    .locals 4
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1106
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    if-eq v1, p0, :cond_0

    .line 1107
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CdmaConnection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "does not belong to CdmaCallTracker "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1111
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-ne p1, v1, :cond_1

    .line 1115
    const-string v1, "hangup: set hangupPendingMO to true"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1116
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupPendingMO:Z

    .line 1145
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onHangupLocal()V

    .line 1146
    :goto_1
    return-void

    .line 1117
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_2

    .line 1130
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onLocalDisconnect()V

    .line 1131
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    .line 1132
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    goto :goto_1

    .line 1136
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCDMAIndex()I

    move-result v2

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1137
    :catch_0
    move-exception v0

    .line 1140
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CdmaCallTracker WARN: hangup() on absent connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method hangupAllConnections(Lcom/android/internal/telephony/cdma/CdmaCall;)V
    .locals 7
    .parameter "call"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1273
    :try_start_0
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1274
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1275
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1276
    .local v0, cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCDMAIndex()I

    move-result v5

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1274
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1278
    .end local v0           #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v1           #count:I
    .end local v3           #i:I
    :catch_0
    move-exception v2

    .line 1279
    .local v2, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hangupConnectionByIndex caught "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_0
    return-void
.end method

.method hangupConnectionByIndex(Lcom/android/internal/telephony/cdma/CdmaCall;I)V
    .locals 5
    .parameter "call"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1256
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1257
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1258
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1259
    .local v0, cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCDMAIndex()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 1260
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, p2, v4}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    .line 1262
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onHangupLocal()V

    .line 1264
    return-void

    .line 1257
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1268
    .end local v0           #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    const-string v4, "no gsm index found"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method hangupForegroundResumeBackground()V
    .locals 2

    .prologue
    .line 1250
    const-string v0, "hangupForegroundResumeBackground"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1251
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupForegroundResumeBackground(Landroid/os/Message;)V

    .line 1252
    return-void
.end method

.method hangupWaitingOrBackground()V
    .locals 2

    .prologue
    .line 1244
    const-string v0, "hangupWaitingOrBackground"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1245
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    .line 1246
    return-void
.end method

.method public htcIsRingingButHaventReported()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1992
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcBetweenRingAndCallStateReturned:Z

    if-eqz v1, :cond_0

    .line 1993
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcBetweenRingAndCallStateQueried:Z

    .line 1996
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method htcRequestReleaseAllVoiceCalls(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 1284
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/CommandsInterface;->requestReleaseAllVoiceCalls(Landroid/os/Message;)V

    .line 1290
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1291
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1292
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1293
    .local v0, cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onHangupLocal()V

    .line 1291
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1295
    .end local v0           #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1296
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 1297
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1298
    .restart local v0       #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onHangupLocal()V

    .line 1296
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1300
    .end local v0           #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1301
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_2

    .line 1302
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1303
    .restart local v0       #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onHangupLocal()V

    .line 1301
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1305
    .end local v0           #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupPendingMO:Z

    .line 1306
    return-void
.end method

.method public htcSpecialCodesForFlashCommand()[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x9

    .line 2007
    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/String;

    .line 2011
    .local v1, specialCodes:[Ljava/lang/String;
    aput-object v3, v1, v5

    .line 2012
    const-string v2, ""

    aput-object v2, v1, v6

    .line 2013
    const-string v2, ""

    aput-object v2, v1, v7

    .line 2014
    const/4 v2, 0x3

    aput-object v3, v1, v2

    .line 2016
    const/4 v0, 0x0

    .line 2018
    .local v0, currOperator:[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getCdmaVoiceCampedOperator()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2022
    :goto_0
    if-eqz v0, :cond_0

    .line 2023
    array-length v2, v0

    if-le v2, v4, :cond_0

    aget-object v2, v0, v4

    if-eqz v2, :cond_0

    .line 2024
    aget-object v2, v0, v4

    const-string v3, "INDIA_TATA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2025
    const-string v2, "3"

    aput-object v2, v1, v5

    .line 2035
    :cond_0
    :goto_1
    return-object v1

    .line 2028
    :cond_1
    aget-object v2, v0, v4

    const-string v3, "INDIA_RELIANCE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2029
    const-string v2, "3"

    aput-object v2, v1, v6

    .line 2030
    const-string v2, "2"

    aput-object v2, v1, v7

    goto :goto_1

    .line 2021
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method isInEmergencyCall()Z
    .locals 1

    .prologue
    .line 1914
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaEmergencyCallback:Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;

    if-eqz v0, :cond_0

    .line 1915
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHtcCdmaEmergencyCallback:Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->isInEmergencyCall()Z

    move-result v0

    .line 1918
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsInEmergencyCall:Z

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1922
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaCallTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    return-void
.end method

.method public notifyVoiceCallConnected(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyVoiceCallConnected(Lcom/android/internal/telephony/Connection;)V

    .line 266
    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 269
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 270
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 271
    return-void
.end method

.method public registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 255
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 256
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 257
    return-void
.end method

.method public registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    const/4 v3, 0x0

    .line 243
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 244
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 246
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_0

    .line 247
    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 249
    :cond_0
    return-void
.end method

.method rejectCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->rejectCall(Landroid/os/Message;)V

    .line 527
    return-void

    .line 525
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "phone not ringing"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method separate(Lcom/android/internal/telephony/cdma/CdmaConnection;)V
    .locals 4
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1150
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    if-eq v1, p0, :cond_0

    .line 1151
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CdmaConnection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "does not belong to CdmaCallTracker "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1155
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCDMAIndex()I

    move-result v2

    const/16 v3, 0xc

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->separateConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1163
    :goto_0
    return-void

    .line 1157
    :catch_0
    move-exception v0

    .line 1160
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CdmaCallTracker WARN: separate() on absent connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method setMute(Z)V
    .locals 5
    .parameter "mute"

    .prologue
    const/4 v4, 0x0

    .line 1169
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->desiredMute:Z

    .line 1171
    const-string v2, "ro.board.platform"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1172
    .local v1, platform:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, "8k"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "msm7x30"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1174
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1176
    .local v0, audioManager:Landroid/media/AudioManager;
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->desiredMute:Z

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 1181
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :goto_0
    return-void

    .line 1180
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->desiredMute:Z

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setMute(ZLandroid/os/Message;)V

    goto :goto_0
.end method

.method protected setupInitState(Lcom/android/internal/telephony/Phone$State;)V
    .locals 1
    .parameter "initState"

    .prologue
    .line 2520
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 2521
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mNeedUpdateForFirstQuery:Z

    .line 2522
    return-void
.end method

.method switchWaitingOrHoldingAndActive()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 533
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "cannot be in the incoming state"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 549
    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->htcPerformFlashRequest(ILjava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcToggleActiveConnection(Z)V

    .line 552
    return-void
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 275
    return-void
.end method

.method public unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 261
    return-void
.end method

.method public unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 252
    return-void
.end method
